import godot_native

fileprivate var __godot_name_VisualShaderNodeTextureParameterTriplanar: StringName! = nil

/// Performs a uniform texture lookup with triplanar within the visual shader graph.
/// 
/// Performs a lookup operation on the texture provided as a uniform for the shader, with support for triplanar mapping.
open class VisualShaderNodeTextureParameterTriplanar : VisualShaderNodeTextureParameter {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeTextureParameterTriplanar }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VisualShaderNodeTextureParameterTriplanar = StringName(from: "VisualShaderNodeTextureParameterTriplanar")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}