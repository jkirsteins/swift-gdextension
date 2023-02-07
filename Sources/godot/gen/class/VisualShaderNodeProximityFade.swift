import godot_native

fileprivate var __godot_name_VisualShaderNodeProximityFade: StringName! = nil

/// A visual shader node representing proximity fade effect.
/// 
/// The proximity fade effect fades out each pixel based on its distance to another object.
public class VisualShaderNodeProximityFade : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeProximityFade }

    
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeProximityFade = StringName(from: "VisualShaderNodeProximityFade")

        
    }

    
}