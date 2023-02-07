import godot_native

fileprivate var __godot_name_VisualShaderNodeSDFRaymarch: StringName! = nil

/// SDF raymarching algorithm to be used within the visual shader graph.
/// 
/// Casts a ray against the screen SDF (signed-distance field) and returns the distance travelled.
public class VisualShaderNodeSDFRaymarch : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeSDFRaymarch }

    
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeSDFRaymarch = StringName(from: "VisualShaderNodeSDFRaymarch")

        
    }

    
}