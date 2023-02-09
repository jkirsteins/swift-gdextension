import godot_native

fileprivate var __godot_name_VisualShaderNodeScreenUVToSDF: StringName! = nil

/// A function to convert screen UV to an SDF (signed-distance field), to be used within the visual shader graph.
/// 
/// Translates to [code]screen_uv_to_sdf(uv)[/code] in the shader language. If the UV port isn't connected, [code]SCREEN_UV[/code] is used instead.
open class VisualShaderNodeScreenUVToSDF : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeScreenUVToSDF }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeScreenUVToSDF == nil)
        __godot_name_VisualShaderNodeScreenUVToSDF = StringName(from: "VisualShaderNodeScreenUVToSDF")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}