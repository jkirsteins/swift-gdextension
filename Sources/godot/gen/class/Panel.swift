import godot_native

fileprivate var __godot_name_Panel: StringName! = nil

/// Provides an opaque background for [Control] children.
/// 
/// Panel is a [Control] that displays an opaque background. It's commonly used as a parent and container for other types of [Control] nodes.
open class Panel : Control {

    

    public override class var __godot_name: StringName { __godot_name_Panel }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_Panel = StringName(from: "Panel")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}