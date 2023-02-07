import godot_native

fileprivate var __godot_name_VisualShaderNodeIf: StringName! = nil

/// Compares two floating-point numbers in order to return a required vector within the visual shader graph.
/// 
/// First two ports are scalar floating-point numbers to compare, third is tolerance comparison amount and last three ports represents a vectors returned if [code]a == b[/code], [code]a > b[/code] and [code]a < b[/code] respectively.
public class VisualShaderNodeIf : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeIf }

    
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeIf = StringName(from: "VisualShaderNodeIf")

        
    }

    
}