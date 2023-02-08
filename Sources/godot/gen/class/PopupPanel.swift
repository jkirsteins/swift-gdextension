import godot_native

fileprivate var __godot_name_PopupPanel: StringName! = nil

/// Class for displaying popups with a panel background.
/// 
/// Class for displaying popups with a panel background. In some cases it might be simpler to use than [Popup], since it provides a configurable background. If you are making windows, better check [Window].
///  
/// If any [Control] node is added as a child of this [PopupPanel], it will be stretched to fit the panel's size (similar to how [PanelContainer] works).
open class PopupPanel : Popup {

    

    public override class var __godot_name: StringName { __godot_name_PopupPanel }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_PopupPanel = StringName(from: "PopupPanel")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}