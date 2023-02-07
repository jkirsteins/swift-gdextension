import godot_native

fileprivate var __godot_name_VisualShaderNodeTextureSDFNormal: StringName! = nil

/// Performs an SDF (signed-distance field) normal texture lookup within the visual shader graph.
/// 
/// Translates to [code]texture_sdf_normal(sdf_pos)[/code] in the shader language.
public class VisualShaderNodeTextureSDFNormal : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeTextureSDFNormal }

    
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeTextureSDFNormal = StringName(from: "VisualShaderNodeTextureSDFNormal")

        
    }

    
}