import godot_native

fileprivate var __godot_name_VisualShaderNodeVaryingGetter: StringName! = nil

/// A visual shader node that gets a value of a varying.
/// 
/// Outputs a value of a varying defined in the shader. You need to first create a varying that can be used in the given function, e.g. varying getter in Fragment shader requires a varying with mode set to [constant VisualShader.VARYING_MODE_VERTEX_TO_FRAG_LIGHT].
public class VisualShaderNodeVaryingGetter : VisualShaderNodeVarying {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeVaryingGetter }

    
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeVaryingGetter = StringName(from: "VisualShaderNodeVaryingGetter")

        
    }

    
}