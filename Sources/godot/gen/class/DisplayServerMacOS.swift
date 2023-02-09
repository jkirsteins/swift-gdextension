import godot_native

fileprivate var __godot_name_DisplayServerMacOS: StringName! = nil

/// MISSING
/// 
/// MISSING
open class DisplayServerMacOS : DisplayServer {

    

    public override class var __godot_name: StringName { __godot_name_DisplayServerMacOS }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_DisplayServerMacOS == nil)
        __godot_name_DisplayServerMacOS = StringName(from: "DisplayServerMacOS")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}