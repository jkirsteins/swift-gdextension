import godot_native

fileprivate var __godot_name_VisualShaderNodeDotProduct: StringName! = nil

/// Calculates a dot product of two vectors within the visual shader graph.
/// 
/// Translates to [code]dot(a, b)[/code] in the shader language.
open class VisualShaderNodeDotProduct : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeDotProduct }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeDotProduct == nil)
        __godot_name_VisualShaderNodeDotProduct = StringName(from: "VisualShaderNodeDotProduct")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}