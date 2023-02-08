import godot_native

fileprivate var __godot_name_VisualShaderNodeOutput: StringName! = nil

/// Represents the output shader parameters within the visual shader graph.
/// 
/// This visual shader node is present in all shader graphs in form of "Output" block with multiple output value ports.
open class VisualShaderNodeOutput : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeOutput }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VisualShaderNodeOutput = StringName(from: "VisualShaderNodeOutput")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}