import godot_native

fileprivate var __godot_name_VisualShaderNodeVaryingSetter: StringName! = nil

/// A visual shader node that sets a value of a varying.
/// 
/// Inputs a value to a varying defined in the shader. You need to first create a varying that can be used in the given function, e.g. varying setter in Fragment shader requires a varying with mode set to [constant VisualShader.VARYING_MODE_FRAG_TO_LIGHT].
public class VisualShaderNodeVaryingSetter : VisualShaderNodeVarying {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeVaryingSetter }

    
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeVaryingSetter = StringName(from: "VisualShaderNodeVaryingSetter")

        
    }

    
}