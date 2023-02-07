import godot_native

fileprivate var __godot_name_VisualShaderNodeTexture3DParameter: StringName! = nil

/// Provides a 3D texture parameter within the visual shader graph.
/// 
/// Translated to [code]uniform sampler3D[/code] in the shader language.
public class VisualShaderNodeTexture3DParameter : VisualShaderNodeTextureParameter {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeTexture3DParameter }

    
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeTexture3DParameter = StringName(from: "VisualShaderNodeTexture3DParameter")

        
    }

    
}