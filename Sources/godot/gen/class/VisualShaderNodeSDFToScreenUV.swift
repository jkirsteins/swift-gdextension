import godot_native

fileprivate var __godot_name_VisualShaderNodeSDFToScreenUV: StringName! = nil

/// A function to convert an SDF (signed-distance field) to screen UV, to be used within the visual shader graph.
/// 
/// Translates to [code]sdf_to_screen_uv(sdf_pos)[/code] in the shader language.
public class VisualShaderNodeSDFToScreenUV : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeSDFToScreenUV }

    
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeSDFToScreenUV = StringName(from: "VisualShaderNodeSDFToScreenUV")

        
    }

    
}