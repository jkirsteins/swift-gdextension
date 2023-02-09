import godot_native

fileprivate var __godot_name_VisualShaderNodeVectorLen: StringName! = nil

/// Returns the length of a [Vector3] within the visual shader graph.
/// 
/// Translated to [code]length(p0)[/code] in the shader language.
open class VisualShaderNodeVectorLen : VisualShaderNodeVectorBase {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeVectorLen }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeVectorLen == nil)
        __godot_name_VisualShaderNodeVectorLen = StringName(from: "VisualShaderNodeVectorLen")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}