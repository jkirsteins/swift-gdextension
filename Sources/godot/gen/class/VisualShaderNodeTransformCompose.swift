import godot_native

fileprivate var __godot_name_VisualShaderNodeTransformCompose: StringName! = nil

/// Composes a [Transform3D] from four [Vector3]s within the visual shader graph.
/// 
/// Creates a 4x4 transform matrix using four vectors of type [code]vec3[/code]. Each vector is one row in the matrix and the last column is a [code]vec4(0, 0, 0, 1)[/code].
public class VisualShaderNodeTransformCompose : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeTransformCompose }

    
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeTransformCompose = StringName(from: "VisualShaderNodeTransformCompose")

        
    }

    
}