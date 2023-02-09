import godot_native

fileprivate var __godot_name_VisualShaderNodeGlobalExpression: StringName! = nil

/// A custom global visual shader graph expression written in Godot Shading Language.
/// 
/// Custom Godot Shader Language expression, which is placed on top of the generated shader. You can place various function definitions inside to call later in [VisualShaderNodeExpression]s (which are injected in the main shader functions). You can also declare varyings, uniforms and global constants.
open class VisualShaderNodeGlobalExpression : VisualShaderNodeExpression {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeGlobalExpression }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeGlobalExpression == nil)
        __godot_name_VisualShaderNodeGlobalExpression = StringName(from: "VisualShaderNodeGlobalExpression")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}