import godot_native

fileprivate var __godot_name_PanelContainer: StringName! = nil

/// Panel container type.
/// 
/// Panel container type. This container fits controls inside of the delimited area of a stylebox. It's useful for giving controls an outline.
open class PanelContainer : Container {

    

    public override class var __godot_name: StringName { __godot_name_PanelContainer }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_PanelContainer == nil)
        __godot_name_PanelContainer = StringName(from: "PanelContainer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}