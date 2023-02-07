import godot_native

fileprivate var __godot_name_VisualShaderNodeLinearSceneDepth: StringName! = nil

/// A visual shader node that returns the depth value of the DEPTH_TEXTURE node in a linear space.
/// 
/// This node can be used in fragment shaders.
public class VisualShaderNodeLinearSceneDepth : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeLinearSceneDepth }

    
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeLinearSceneDepth = StringName(from: "VisualShaderNodeLinearSceneDepth")

        
    }

    
}