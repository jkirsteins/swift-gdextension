import godot

class TestClass {
    let name: String
    init(name: String) {
        self.name = name
        print("Initializing Swift TestClass: \(name)")
    }
}

let global_initialize: (@convention(c) (_ userdata: UnsafeMutableRawPointer?, _ p_level: GDExtensionInitializationLevel)->()) = {userdata,p_level in
    
    guard let interface: GDExtensionInterface = gde_interface?.pointee else {
        fatalError("NO INTERFACE")
    }
    
    StringName.initialize_class()
    
    var name = StringName(GString("SwiftSprite2D"))
    var parentName = StringName(GString("Sprite2D"))
    
    var toString: GDExtensionClassToString = {
        instPtr, optExtBool, optStringPtr in
        
        print("entered tostring")
        fatalError("fatal tostring")
    }
    
    var create: GDExtensionClassCreateInstance = {
        _userdata in
        
        print("entered create")
        fatalError("fatal create")
    }
    
    var free: GDExtensionClassFreeInstance = {
        _userdata, _instancePtr in
        
        print("entered free")
        fatalError("fatal free")
    }

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
        create_instance_func: create,
        free_instance_func: free,
        get_virtual_func: nil,
        get_rid_func: nil,
        class_userdata: nil)
    
    if p_level == GDEXTENSION_INITIALIZATION_SCENE {
        print("==== REGISTERING CLASS \(name) \(name._native_ptr()) ====")
        gde_interface!.pointee.classdb_register_extension_class(
            gde_library, name._native_ptr(), parentName._native_ptr(), &cci
        )
        print("==== AFTER REGISTERING ====")
    }
}

let global_deinitialize: (@convention(c) (_ userdata: UnsafeMutableRawPointer?, _ p_level: GDExtensionInitializationLevel)->()) = {userdata,p_level in
    print("deinitialize from swift", p_level);
}

var gde_interface: UnsafeMutablePointer<godot.GDExtensionInterface>? = nil
var gde_library: GDExtensionClassLibraryPtr? = nil

@_cdecl("godot_extension_entry")
func hello_extension_entry(
    p_interface: UnsafeMutablePointer<GDExtensionInterface>,
    p_library: GDExtensionClassLibraryPtr,
    r_initialization: UnsafeMutablePointer<GDExtensionInitialization>
) -> GDExtensionBool {
    // returning 0 means error, returning non-zero means success
    r_initialization.pointee.initialize = global_initialize
    r_initialization.pointee.deinitialize = global_deinitialize
    
    gde_interface = p_interface
    gde_library = p_library
    
    print("Entry point called")
    return 1;
}
