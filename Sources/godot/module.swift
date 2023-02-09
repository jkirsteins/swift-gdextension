import godot_native

var gInit: GodotInitializer? = nil


typealias InitializerType = (@convention(c) (_ userdata: UnsafeMutableRawPointer?, _ p_level: GDExtensionInitializationLevel)->())

typealias DeinitializerType = (@convention(c) (_ userdata: UnsafeMutableRawPointer?, _ p_level: GDExtensionInitializationLevel)->())

public class GodotInitializer {
    let p_interface: UnsafePointer<GDExtensionInterface>
    let p_library: GDExtensionClassLibraryPtr
    
    let r_initialization: UnsafeMutablePointer<GDExtensionInitialization>
    
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
        print("Deinitializing level... \(p_level)")
    }

    fileprivate let global_initialize: InitializerType = {
        userdata,p_level in
        
        guard let userdata = userdata else {
            fatalError("global_initialize called without userdata")
        }
        
        let obj: GodotInitializer = Unmanaged.fromOpaque(userdata).takeUnretainedValue()
        
        // initialize builtins asap
        if p_level == GDEXTENSION_INITIALIZATION_CORE {
            initialize_classes(true, obj, p_level)
        }
        
        // initialize classes before user initializers
        initialize_classes(false, obj, p_level)
        
        if p_level == GDEXTENSION_INITIALIZATION_SCENE {
            // user initializers
            for i in obj.sceneInitializers {
                i(userdata, p_level)
            }
        }
        
        print("Initializing level... \(p_level)")
    }
    
    func register_scene_initializer(_ i: InitializerType) {
        self.sceneInitializers.append(i)
    }
    
    func register_scene_terminator(_ t: DeinitializerType) {
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


