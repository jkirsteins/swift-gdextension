import godot_native

fileprivate var __godot_name_VisualShaderNodeTransformDecompose: StringName! = nil

/// Decomposes a [Transform3D] into four [Vector3]s within the visual shader graph.
/// 
/// Takes a 4x4 transform matrix and decomposes it into four [code]vec3[/code] values, one from each row of the matrix.
public class VisualShaderNodeTransformDecompose : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeTransformDecompose }

    
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeTransformDecompose = StringName(from: "VisualShaderNodeTransformDecompose")

        
    }

    
}