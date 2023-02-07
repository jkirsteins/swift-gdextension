import godot_native

fileprivate var __godot_name_VisualShaderNodeVectorDistance: StringName! = nil

/// Returns the distance between two points. To be used within the visual shader graph.
/// 
/// Calculates distance from point represented by vector [code]p0[/code] to vector [code]p1[/code].
///  
/// Translated to [code]distance(p0, p1)[/code] in the shader language.
public class VisualShaderNodeVectorDistance : VisualShaderNodeVectorBase {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeVectorDistance }

    
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeVectorDistance = StringName(from: "VisualShaderNodeVectorDistance")

        
    }

    
}