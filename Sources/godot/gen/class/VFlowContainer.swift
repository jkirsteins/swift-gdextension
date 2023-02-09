import godot_native

fileprivate var __godot_name_VFlowContainer: StringName! = nil

/// Vertical flow container.
/// 
/// Vertical version of [FlowContainer].
open class VFlowContainer : FlowContainer {

    

    public override class var __godot_name: StringName { __godot_name_VFlowContainer }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VFlowContainer == nil)
        __godot_name_VFlowContainer = StringName(from: "VFlowContainer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}