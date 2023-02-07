import godot_native

fileprivate var __godot_name_VisualShaderNodeGlobalExpression: StringName! = nil

/// A custom global visual shader graph expression written in Godot Shading Language.
/// 
/// Custom Godot Shader Language expression, which is placed on top of the generated shader. You can place various function definitions inside to call later in [VisualShaderNodeExpression]s (which are injected in the main shader functions). You can also declare varyings, uniforms and global constants.
public class VisualShaderNodeGlobalExpression : VisualShaderNodeExpression {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeGlobalExpression }

    
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeGlobalExpression = StringName(from: "VisualShaderNodeGlobalExpression")

        
    }

    
}