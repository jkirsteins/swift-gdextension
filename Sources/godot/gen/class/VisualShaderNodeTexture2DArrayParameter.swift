import godot_native

fileprivate var __godot_name_VisualShaderNodeTexture2DArrayParameter: StringName! = nil

/// A visual shader node for shader parameter (uniform) of type [Texture2DArray].
/// 
/// This parameter allows to provide a collection of textures for the shader. You can use [VisualShaderNodeTexture2DArray] to extract the textures from array.
public class VisualShaderNodeTexture2DArrayParameter : VisualShaderNodeTextureParameter {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeTexture2DArrayParameter }

    
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeTexture2DArrayParameter = StringName(from: "VisualShaderNodeTexture2DArrayParameter")

        
    }

    
}