import godot_native

fileprivate var __godot_name_HFlowContainer: StringName! = nil

/// Horizontal flow container.
/// 
/// Horizontal version of [FlowContainer].
open class HFlowContainer : FlowContainer {

    

    public override class var __godot_name: StringName { __godot_name_HFlowContainer }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_HFlowContainer = StringName(from: "HFlowContainer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}