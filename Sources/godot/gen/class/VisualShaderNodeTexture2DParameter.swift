import godot_native

fileprivate var __godot_name_VisualShaderNodeTexture2DParameter: StringName! = nil

/// Provides a 2D texture parameter within the visual shader graph.
/// 
/// Translated to [code]uniform sampler2D[/code] in the shader language.
open class VisualShaderNodeTexture2DParameter : VisualShaderNodeTextureParameter {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeTexture2DParameter }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeTexture2DParameter == nil)
        __godot_name_VisualShaderNodeTexture2DParameter = StringName(from: "VisualShaderNodeTexture2DParameter")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}