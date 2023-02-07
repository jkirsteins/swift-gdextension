import godot_native

fileprivate var __godot_name_VisualShaderNodeOutput: StringName! = nil

/// Represents the output shader parameters within the visual shader graph.
/// 
/// This visual shader node is present in all shader graphs in form of "Output" block with multiple output value ports.
public class VisualShaderNodeOutput : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeOutput }

    
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeOutput = StringName(from: "VisualShaderNodeOutput")

        
    }

    
}