import godot_native

fileprivate var __godot_name_HScrollBar: StringName! = nil

/// Horizontal scroll bar.
/// 
/// Horizontal version of [ScrollBar], which goes from left (min) to right (max).
open class HScrollBar : ScrollBar {

    

    public override class var __godot_name: StringName { __godot_name_HScrollBar }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_HScrollBar = StringName(from: "HScrollBar")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}