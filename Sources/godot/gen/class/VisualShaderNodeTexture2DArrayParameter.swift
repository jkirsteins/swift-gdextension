import godot_native

fileprivate var __godot_name_VisualShaderNodeTexture2DArrayParameter: StringName! = nil

/// A visual shader node for shader parameter (uniform) of type [Texture2DArray].
/// 
/// This parameter allows to provide a collection of textures for the shader. You can use [VisualShaderNodeTexture2DArray] to extract the textures from array.
open class VisualShaderNodeTexture2DArrayParameter : VisualShaderNodeTextureParameter {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeTexture2DArrayParameter }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VisualShaderNodeTexture2DArrayParameter = StringName(from: "VisualShaderNodeTexture2DArrayParameter")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}