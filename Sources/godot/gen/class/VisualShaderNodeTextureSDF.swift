import godot_native

fileprivate var __godot_name_VisualShaderNodeTextureSDF: StringName! = nil

/// Performs an SDF (signed-distance field) texture lookup within the visual shader graph.
/// 
/// Translates to [code]texture_sdf(sdf_pos)[/code] in the shader language.
public class VisualShaderNodeTextureSDF : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeTextureSDF }

    
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeTextureSDF = StringName(from: "VisualShaderNodeTextureSDF")

        
    }

    
}