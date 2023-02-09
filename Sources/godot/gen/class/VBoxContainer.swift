import godot_native

fileprivate var __godot_name_VBoxContainer: StringName! = nil

/// Vertical box container.
/// 
/// Vertical box container. See [BoxContainer].
open class VBoxContainer : BoxContainer {

    

    public override class var __godot_name: StringName { __godot_name_VBoxContainer }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VBoxContainer == nil)
        __godot_name_VBoxContainer = StringName(from: "VBoxContainer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}