import godot_native

fileprivate var __godot_name_VisualShaderNodeFresnel: StringName! = nil

/// A Fresnel effect to be used within the visual shader graph.
/// 
/// Returns falloff based on the dot product of surface normal and view direction of camera (pass associated inputs to it).
public class VisualShaderNodeFresnel : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeFresnel }

    
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeFresnel = StringName(from: "VisualShaderNodeFresnel")

        
    }

    
}