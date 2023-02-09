import godot_native

fileprivate var __godot_name_Popup: StringName! = nil

/// Popup is a base window container for popup-like subwindows.
/// 
/// Popup is a base window container for popup-like subwindows. It's a modal by default (see [member Window.popup_window]) and has helpers for custom popup behavior.
open class Popup : Window {

    

    public override class var __godot_name: StringName { __godot_name_Popup }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_Popup == nil)
        __godot_name_Popup = StringName(from: "Popup")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}