import godot_native

fileprivate var __godot_name_VisualShaderNodeTextureSDF: StringName! = nil

/// Performs an SDF (signed-distance field) texture lookup within the visual shader graph.
/// 
/// Translates to [code]texture_sdf(sdf_pos)[/code] in the shader language.
open class VisualShaderNodeTextureSDF : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeTextureSDF }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeTextureSDF == nil)
        __godot_name_VisualShaderNodeTextureSDF = StringName(from: "VisualShaderNodeTextureSDF")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}