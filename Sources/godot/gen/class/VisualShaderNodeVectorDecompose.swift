import godot_native

fileprivate var __godot_name_VisualShaderNodeVectorDecompose: StringName! = nil

/// Decomposes a [Vector2], [Vector3] or 4D vector (represented as a [Quaternion]) into scalars within the visual shader graph.
/// 
/// Takes a [code]vec2[/code], [code]vec3[/code] or [code]vec4[/code] and decomposes it into scalar values that can be used as separate outputs.
public class VisualShaderNodeVectorDecompose : VisualShaderNodeVectorBase {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeVectorDecompose }

    
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeVectorDecompose = StringName(from: "VisualShaderNodeVectorDecompose")

        
    }

    
}