import godot_native

fileprivate var __godot_name_VisualShaderNodeScreenUVToSDF: StringName! = nil

/// A function to convert screen UV to an SDF (signed-distance field), to be used within the visual shader graph.
/// 
/// Translates to [code]screen_uv_to_sdf(uv)[/code] in the shader language. If the UV port isn't connected, [code]SCREEN_UV[/code] is used instead.
public class VisualShaderNodeScreenUVToSDF : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeScreenUVToSDF }

    
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeScreenUVToSDF = StringName(from: "VisualShaderNodeScreenUVToSDF")

        
    }

    
}