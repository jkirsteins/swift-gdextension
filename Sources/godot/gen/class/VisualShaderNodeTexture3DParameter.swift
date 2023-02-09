import godot_native

fileprivate var __godot_name_VisualShaderNodeTexture3DParameter: StringName! = nil

/// Provides a 3D texture parameter within the visual shader graph.
/// 
/// Translated to [code]uniform sampler3D[/code] in the shader language.
open class VisualShaderNodeTexture3DParameter : VisualShaderNodeTextureParameter {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeTexture3DParameter }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeTexture3DParameter == nil)
        __godot_name_VisualShaderNodeTexture3DParameter = StringName(from: "VisualShaderNodeTexture3DParameter")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}