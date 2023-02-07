import godot_native

fileprivate var __godot_name_VisualShaderNodeCubemapParameter: StringName! = nil

/// A [Cubemap] parameter node to be used within the visual shader graph.
/// 
/// Translated to [code]uniform samplerCube[/code] in the shader language. The output value can be used as port for [VisualShaderNodeCubemap].
public class VisualShaderNodeCubemapParameter : VisualShaderNodeTextureParameter {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeCubemapParameter }

    
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeCubemapParameter = StringName(from: "VisualShaderNodeCubemapParameter")

        
    }

    
}