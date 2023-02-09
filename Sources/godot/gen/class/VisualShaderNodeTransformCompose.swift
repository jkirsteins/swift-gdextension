import godot_native

fileprivate var __godot_name_VisualShaderNodeTransformCompose: StringName! = nil

/// Composes a [Transform3D] from four [Vector3]s within the visual shader graph.
/// 
/// Creates a 4x4 transform matrix using four vectors of type [code]vec3[/code]. Each vector is one row in the matrix and the last column is a [code]vec4(0, 0, 0, 1)[/code].
open class VisualShaderNodeTransformCompose : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeTransformCompose }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeTransformCompose == nil)
        __godot_name_VisualShaderNodeTransformCompose = StringName(from: "VisualShaderNodeTransformCompose")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}