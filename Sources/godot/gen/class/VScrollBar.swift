import godot_native

fileprivate var __godot_name_VScrollBar: StringName! = nil

/// Vertical scroll bar.
/// 
/// Vertical version of [ScrollBar], which goes from top (min) to bottom (max).
open class VScrollBar : ScrollBar {

    

    public override class var __godot_name: StringName { __godot_name_VScrollBar }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VScrollBar == nil)
        __godot_name_VScrollBar = StringName(from: "VScrollBar")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}