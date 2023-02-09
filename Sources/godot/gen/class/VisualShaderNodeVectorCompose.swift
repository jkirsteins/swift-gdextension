import godot_native

fileprivate var __godot_name_VisualShaderNodeVectorCompose: StringName! = nil

/// Composes a [Vector2], [Vector3] or 4D vector (represented as a [Quaternion]) from scalars within the visual shader graph.
/// 
/// Creates a [code]vec2[/code], [code]vec3[/code] or [code]vec4[/code] using scalar values that can be provided from separate inputs.
open class VisualShaderNodeVectorCompose : VisualShaderNodeVectorBase {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeVectorCompose }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeVectorCompose == nil)
        __godot_name_VisualShaderNodeVectorCompose = StringName(from: "VisualShaderNodeVectorCompose")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}