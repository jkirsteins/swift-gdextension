import godot_native

fileprivate var __godot_name_VisualShaderNodeDeterminant: StringName! = nil

/// Calculates the determinant of a [Transform3D] within the visual shader graph.
/// 
/// Translates to [code]determinant(x)[/code] in the shader language.
public class VisualShaderNodeDeterminant : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeDeterminant }

    
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeDeterminant = StringName(from: "VisualShaderNodeDeterminant")

        
    }

    
}