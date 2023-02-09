import godot_native

fileprivate var __godot_name_VisualShaderNodeDeterminant: StringName! = nil

/// Calculates the determinant of a [Transform3D] within the visual shader graph.
/// 
/// Translates to [code]determinant(x)[/code] in the shader language.
open class VisualShaderNodeDeterminant : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeDeterminant }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeDeterminant == nil)
        __godot_name_VisualShaderNodeDeterminant = StringName(from: "VisualShaderNodeDeterminant")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}