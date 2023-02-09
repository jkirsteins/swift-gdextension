import godot
import godot_native

class ClassUserMetadata {
    let type: Any.Type
    let memoryLayoutSize: Int
    
    let className: Swift.String
    let parentName: Swift.String
    
    let gClassName: StringName
    let gParentName: StringName
    
    let createInstance: ()->any GDClass
    
    init<T: GDClass>(type: T.Type) {
        self.type = type
        self.memoryLayoutSize = MemoryLayout<T>.size
        self.className = "className"//T.className
        self.parentName = "parentName"//T.classNameT.parentName
        self.gClassName = StringName(from: "gClassName")//T.classNameT.gClassName
        self.gParentName = StringName(from: "gParentName")//T.classNameT.gParentName
        self.createInstance = { fatalError("nop") }
        print("Creating meta for", self)
    }
}

let global_initialize: (@convention(c) (_ userdata: UnsafeMutableRawPointer?, _ p_level: GDExtensionInitializationLevel)->()) = {userdata,p_level in
    
    print("Initializing from swift")
    
    if p_level == GDEXTENSION_INITIALIZATION_SCENE {
        let test = Utility.wrapi(-6, -5, -1)
        assert(test == -2)
        let x = Utility.wrapi(10, 4, 7)
        assert(x == 4)
        fatalError("yay")
    }
    
//    guard let interface: GDExtensionInterface = gde_interface?.pointee else {
//        fatalError("NO INTERFACE")
//    }
//
//    print("p_level", p_level)
//    if p_level == GDEXTENSION_INITIALIZATION_SCENE {//} GDEXTENSION_INITIALIZATION_CORE {
//        print("Initializing class bindings")
//        initialize_classes(false)
//        return
//    }
//
//    if p_level == GDEXTENSION_INITIALIZATION_CORE {
//        print("Initializing class constructors")
//        initialize_classes(true)
//        return
//    }
//
//    var toString: GDExtensionClassToString = {
//        instPtr, optExtBool, optStringPtr in
//
//        print("entered tostring")
//        fatalError("fatal tostring")
//    }
//
//    var create: GDExtensionClassCreateInstance = {
//        opaqueUserdata in
//
//        guard let opaqueUserdata = opaqueUserdata else {
//            fatalError("Can not create when no user data passed")
//        }
//        let i = gde_interface!
//
//        // TODO: test if `free` crashes if we take retained here
//        let classUser: ClassUserMetadata = Unmanaged.fromOpaque(opaqueUserdata).takeUnretainedValue()
//
////        memalloc
//
//        var _name = classUser.gClassName
//        var _parentName = classUser.gParentName
//
//        print("Allocating base")
//        let basePtr = i.pointee.classdb_construct_object(_parentName._native_ptr())
//
//        print("Done, allocating instance")
//
//        let currentInstance: UnsafeMutablePointer<any GDClass> = .allocate(capacity: 1)
//        currentInstance.initialize(to: classUser.createInstance())
//        print("Allocated", currentInstance)
//
//        print("Setting instance", currentInstance)
//        i.pointee.object_set_instance(basePtr, _name._native_ptr(), currentInstance)
//
//        // callbacks
//        print("Setting instance binding")
////        i.pointee.object_set_instance_binding(basePtr, gde_library, currentInstance, nil)
//        print("Done")
//
//        return basePtr
//    }
//
//    var free: GDExtensionClassFreeInstance = {
//        opaqueUserdata, _instancePtr in
//
//        guard let opaqueUserdata = opaqueUserdata else {
//            fatalError("Can not free when no user data passed")
//        }
//
//        let classUser: ClassUserMetadata = Unmanaged.fromOpaque(opaqueUserdata).takeRetainedValue()
//
//        let instancePtr: UnsafeMutablePointer<any GDClass> = .init(OpaquePointer(_instancePtr)!)
//        print("Deallocating", instancePtr)
//        instancePtr.deallocate()
//    }
//
//    let user = ClassUserMetadata(type: SwiftSprite2D.self)
//    let opaqueUser = Unmanaged.passRetained(user).toOpaque()
//
//
//
//    var cci = GDExtensionClassCreationInfo(
//        is_virtual: 0,
//        is_abstract: 0,
//        set_func: nil,
//        get_func: nil,
//        get_property_list_func: nil,
//        free_property_list_func: nil,
//        property_can_revert_func: nil,
//        property_get_revert_func: nil,
//        notification_func: nil,
//        to_string_func: toString,
//        reference_func: nil,
//        unreference_func: nil,
//        create_instance_func: create,
//        free_instance_func: free,
//        get_virtual_func: nil,
//        get_rid_func: nil,
//        class_userdata: opaqueUser)
//
//    if p_level == GDEXTENSION_INITIALIZATION_SCENE {
//        print("==== REGISTERING CLASS ====")
//        let urp: UnsafeRawPointer = .init(OpaquePointer(SwiftSprite2D.__godot_name.opaque))
//        let x: Swift.String = .init(godot: urp)
//
////        gde_interface!.pointee.classdb_register_extension_class(
////            gde_library,
////            SwiftSprite2D.gClassName._native_ptr(),
////            SwiftSprite2D.gParentName._native_ptr(), &cci
////        )
//        print("==== AFTER REGISTERING \(x) ====")
//    }
}

let global_deinitialize: (@convention(c) (_ userdata: UnsafeMutableRawPointer?, _ p_level: GDExtensionInitializationLevel)->()) = {userdata,p_level in
    print("deinitialize from swift", p_level);
}

@_cdecl("godot_extension_entry")
func hello_extension_entry(
    p_interface: UnsafeMutablePointer<GDExtensionInterface>,
    p_library: GDExtensionClassLibraryPtr,
    r_initialization: UnsafeMutablePointer<GDExtensionInitialization>
) -> GDExtensionBool {
    
    let initializer = GodotInitializer(
        p_interface,
        p_library,
        r_initialization)
    
    initializer.register_scene_initializer(global_initialize)
    initializer.register_scene_terminator(global_deinitialize)
    
    return initializer.initialize();
    
//    // returning 0 means error, returning non-zero means success
//    r_initialization.pointee.initialize = global_initialize
//    r_initialization.pointee.deinitialize = global_deinitialize
//
//    godot.register_interface(p_interface, p_library)
//
//    print("Entry point called")
//    return 1;
}
