import godot_native

fileprivate var __godot_name_VisualShaderNodeVectorRefract: StringName! = nil

/// Returns the vector that points in the direction of refraction. For use within the visual shader graph.
/// 
/// Translated to [code]refract(I, N, eta)[/code] in the shader language, where [code]I[/code] is the incident vector, [code]N[/code] is the normal vector and [code]eta[/code] is the ratio of the indices of the refraction.
public class VisualShaderNodeVectorRefract : VisualShaderNodeVectorBase {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeVectorRefract }

    
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeVectorRefract = StringName(from: "VisualShaderNodeVectorRefract")

        
    }

    
}