import godot_native

fileprivate var __godot_name_VisualShaderNodeTexture2DParameter: StringName! = nil

/// Provides a 2D texture parameter within the visual shader graph.
/// 
/// Translated to [code]uniform sampler2D[/code] in the shader language.
public class VisualShaderNodeTexture2DParameter : VisualShaderNodeTextureParameter {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeTexture2DParameter }

    
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeTexture2DParameter = StringName(from: "VisualShaderNodeTexture2DParameter")

        
    }

    
}