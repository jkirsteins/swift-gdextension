import godot_native

fileprivate var __godot_name_VisualShaderNodeDotProduct: StringName! = nil

/// Calculates a dot product of two vectors within the visual shader graph.
/// 
/// Translates to [code]dot(a, b)[/code] in the shader language.
public class VisualShaderNodeDotProduct : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeDotProduct }

    
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeDotProduct = StringName(from: "VisualShaderNodeDotProduct")

        
    }

    
}