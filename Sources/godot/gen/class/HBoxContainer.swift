import godot_native

fileprivate var __godot_name_HBoxContainer: StringName! = nil

/// Horizontal box container.
/// 
/// Horizontal box container. See [BoxContainer].
open class HBoxContainer : BoxContainer {

    

    public override class var __godot_name: StringName { __godot_name_HBoxContainer }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_HBoxContainer == nil)
        __godot_name_HBoxContainer = StringName(from: "HBoxContainer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}