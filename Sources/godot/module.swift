import godot_native
import godot_gen

var gInit: GodotInitializer? = nil


public typealias InitializerType = (@convention(c) (_ userdata: UnsafeMutableRawPointer?, _ p_level: GDExtensionInitializationLevel)->())

public typealias DeinitializerType = (@convention(c) (_ userdata: UnsafeMutableRawPointer?, _ p_level: GDExtensionInitializationLevel)->())

class GDCustomClassMeta {
    let selfName: godot.StringName
    let parentName: godot.StringName
    let create: () -> any GDCustomClass
    
    init<T: GDCustomClass>(selfName: godot.StringName, parentName: godot.StringName, type: T.Type) {
        self.selfName = selfName
        self.parentName = parentName
        self.create = type.init
    }
}

public protocol GDCustomClass {
//    static void to_string_bind(GDExtensionClassInstancePtr p_instance, GDExtensionBool *r_is_valid, GDExtensionStringPtr r_out) {}
//    static toString(instance: Self) -> Swift.String
    
    static var parentName: Swift.String { get }
    
    init()
    
    func whoami() -> Swift.String
}

extension GDCustomClass {
    static var selfName: Swift.String {
        Swift.String(describing: self)
    }
    
    var selfName: Swift.String { Self.selfName }
    
    static func createMeta() -> GDCustomClassMeta {
        return GDCustomClassMeta(
            selfName: StringName(from: Swift.String(describing: self)),
            parentName: StringName(from: Swift.String(describing: self.parentName)),
            type: Self.self
            )
    }
    
    static func makeFree() -> GDExtensionClassFreeInstance {
        return {
            opaqueUserdata, _instancePtr in
    
//            guard let opaqueUserdata = opaqueUserdata else {
//                fatalError("Can not free when no user data passed")
//            }
     
//            let classUser: ClassUserMetadata = Unmanaged.fromOpaque(opaqueUserdata).takeRetainedValue()
    
            let instancePtr: UnsafeMutablePointer<any GDCustomClass> = .init(OpaquePointer(_instancePtr)!)
            print("Deallocating", instancePtr.pointee.whoami())
            instancePtr.deallocate()
        }
    }
    
    static func makeCreate() -> GDExtensionClassCreateInstance {
        return {
            opaqueUserdata in
            
            guard let opaqueUserdata = opaqueUserdata else {
                fatalError("Can not create when no user data passed")
            }
            
            let userdata: GDCustomClassMeta = Unmanaged.fromOpaque(opaqueUserdata).takeUnretainedValue()
            
            let i = Wrapped.interface!
//
//            // TODO: test if `free` crashes if we take retained here
//            //            let classUser: ClassUserMetadata = Unmanaged.fromOpaque(opaqueUserdata).takeUnretainedValue()
//
//            //        memalloc
//
            
            print("Allocating base")
            let basePtr = i.pointee.classdb_construct_object(userdata.parentName._native_ptr())
//
            print("Done, allocating instance")

            let currentInstance: UnsafeMutablePointer<any GDCustomClass> = .allocate(capacity: 1)
            currentInstance.initialize(to: userdata.create())
            print("Allocated", currentInstance)

            print("Setting instance", currentInstance, currentInstance.pointee.whoami())
            i.pointee.object_set_instance(basePtr, userdata.selfName._native_ptr(), currentInstance)

            // callbacks
            print("Setting instance binding")
            //        i.pointee.object_set_instance_binding(basePtr, gde_library, currentInstance, nil)
            print("Done")

            return basePtr
        }
    }
}

public class GodotInitializer {
    let p_interface: UnsafePointer<GDExtensionInterface>
    let p_library: GDExtensionClassLibraryPtr
    
    let r_initialization: UnsafeMutablePointer<GDExtensionInitialization>
    
    var _metaRefs: [GDCustomClassMeta] = []
    
    public init(
        _ p_interface: UnsafeMutablePointer<GDExtensionInterface>,
        _ p_library: GDExtensionClassLibraryPtr,
        _ r_initialization: UnsafeMutablePointer<GDExtensionInitialization>
    )
    {
        self.p_interface = .init(p_interface)
        self.p_library = p_library
        self.r_initialization = .init(r_initialization)
    }
    
    var minimumInitializationLevel: GDExtensionInitializationLevel = GDEXTENSION_INITIALIZATION_SCENE
    var sceneInitializers: [InitializerType] = []
    var sceneTerminators: [DeinitializerType] = []
    var userData: OpaquePointer?
    
    var typesToRegister: [ (GDCustomClass.Type, ()->GDCustomClassMeta, Bool, Bool) ] = []
    
    public func register<T: GDCustomClass>(_ `class`: T.Type, isAbstract: Bool = false, isVirtual: Bool = false) {
        
        //        _metaRefs.append(meta)
        
        typesToRegister.append( (`class`, T.createMeta, isAbstract, isVirtual) )
    }
    
    func reallyRegister(_ `class`: GDCustomClass.Type, metaCreate: ()->GDCustomClassMeta, isAbstract: Bool = false, isVirtual: Bool = false) {
        
        guard !isAbstract else {
            fatalError("Abstract classes not implemented")
        }
        guard !isVirtual else {
            fatalError("Virtual classes not implemented")
        }
         
        let meta = metaCreate()
        _metaRefs.append(meta)
        
        
        var toString: GDExtensionClassToString = {
            instPtr, optExtBool, optStringPtr in
    
            guard let outPtr: UnsafeMutablePointer<godot.String> = .init(OpaquePointer(optStringPtr)) else {
                fatalError("toString called with null return pointer")
            }
            
            guard let castInstPtr: UnsafePointer<any GDCustomClass> = .init(OpaquePointer(instPtr)) else {
                fatalError("Invalid instance pointer in toString")
            }
            
            guard let resultBoolPtr = optExtBool else {
                fatalError("Result bool pointer not set in toString")
            }
            
            outPtr.pointee = String(from: castInstPtr.pointee.selfName)
            resultBoolPtr.pointee = 1
        }
    
//        var _nameOuter = StringName(from: Swift.String(describing: `class`.self))
//        var _parentNameOuter = StringName(from: "Sprite2D")  // TODO: hardcoded parent name

        let opaqueMeta = Unmanaged.passRetained(meta).toOpaque()
        
        var cci = GDExtensionClassCreationInfo(
                is_virtual: 0,
                is_abstract: 0,
                set_func: nil,
                get_func: nil,
                get_property_list_func: nil,
                free_property_list_func: nil,
                property_can_revert_func: nil,
                property_get_revert_func: nil,
                notification_func: nil,
                to_string_func: toString,
                reference_func: nil,
                unreference_func: nil,
                create_instance_func: `class`.makeCreate(),
                free_instance_func: `class`.makeFree(),
                get_virtual_func: nil,
                get_rid_func: nil,
                class_userdata: opaqueMeta)
        Wrapped.interface!.pointee.classdb_register_extension_class(
            Wrapped.library!,
            meta.selfName._native_ptr(),
            meta.parentName._native_ptr(),
            &cci)
        
        print("Registered class ", `class`.selfName, "<-", `class`.parentName)
    }
    
    fileprivate let global_deinitialize: DeinitializerType = {
        userdata, p_level in
        
        guard let userdata = userdata else {
            fatalError("global_deinitialize called without userdata")
        }
        
        let obj: GodotInitializer
        
        if p_level == GDEXTENSION_INITIALIZATION_SCENE {
            obj = Unmanaged.fromOpaque(userdata).takeUnretainedValue()
            
            for t in obj.sceneTerminators {
                t(userdata, p_level)
            }
        } else if p_level == GDEXTENSION_MAX_INITIALIZATION_LEVEL {
            obj = Unmanaged.fromOpaque(userdata).takeRetainedValue()
            
            print("Deinit MAX")
        } else {
            
        }
    }

    fileprivate let global_initialize: InitializerType = {
        userdata,p_level in
        
        guard let userdata = userdata else {
            fatalError("global_initialize called without userdata")
        }
        
        let obj: GodotInitializer = Unmanaged.fromOpaque(userdata).takeUnretainedValue()
        
        // initialize builtins asap 
        if p_level == GDEXTENSION_INITIALIZATION_CORE {
            godot_gen.initialize_classes(true, obj.p_interface, obj.p_library, p_level)
        }
        
        // initialize classes before user initializers
        godot_gen.initialize_classes(false, obj.p_interface, obj.p_library, p_level)
        
        if p_level == GDEXTENSION_INITIALIZATION_SCENE {
            // register types
            for i in obj.typesToRegister {
                obj.reallyRegister(i.0, metaCreate: i.1, isAbstract: i.2, isVirtual: i.3)
            }
            
            // user initializers
            for i in obj.sceneInitializers {
                i(userdata, p_level)
            }
        }
    }
    
    public func register_scene_initializer(_ i: InitializerType) {
        self.sceneInitializers.append(i)
    }
    
    public func register_scene_terminator(_ t: DeinitializerType) {
        self.sceneTerminators.append(t)
    }
    
    public func initialize() -> GDExtensionBool {
        
        guard gInit == nil else {
            print("\(GodotInitializer.self) already initialized")
            return 0;
        }
        
        gInit = self
        
        let opaqueUserData = Unmanaged.passRetained(self).toOpaque()
        
        // returning 0 means error, returning non-zero means success
        self.r_initialization.pointee.initialize = self.global_initialize
        self.r_initialization.pointee.deinitialize = self.global_deinitialize
        self.r_initialization.pointee.userdata = opaqueUserData
        self.r_initialization.pointee.minimum_initialization_level = self.minimumInitializationLevel
        
        guard self.minimumInitializationLevel == GDEXTENSION_INITIALIZATION_SCENE else {
            fatalError("TODO: If the minimum init level is not GDEXTENSION_INITIALIZATION_SCENE, class initialization will fail")
        }
        
        return 1
    }
}


