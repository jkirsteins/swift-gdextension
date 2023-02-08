import godot_native

fileprivate var __godot_name_VisualShaderNodeSDFToScreenUV: StringName! = nil

/// A function to convert an SDF (signed-distance field) to screen UV, to be used within the visual shader graph.
/// 
/// Translates to [code]sdf_to_screen_uv(sdf_pos)[/code] in the shader language.
open class VisualShaderNodeSDFToScreenUV : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeSDFToScreenUV }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VisualShaderNodeSDFToScreenUV = StringName(from: "VisualShaderNodeSDFToScreenUV")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}