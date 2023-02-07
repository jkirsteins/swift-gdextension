import godot_native

fileprivate var __godot_name_VisualShaderNodeVectorLen: StringName! = nil

/// Returns the length of a [Vector3] within the visual shader graph.
/// 
/// Translated to [code]length(p0)[/code] in the shader language.
public class VisualShaderNodeVectorLen : VisualShaderNodeVectorBase {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeVectorLen }

    
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeVectorLen = StringName(from: "VisualShaderNodeVectorLen")

        
    }

    
}