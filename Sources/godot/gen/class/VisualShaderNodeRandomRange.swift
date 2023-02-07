import godot_native

fileprivate var __godot_name_VisualShaderNodeRandomRange: StringName! = nil

/// A visual shader node that generates a pseudo-random scalar.
/// 
/// Random range node will output a pseudo-random scalar value in the specified range, based on the seed. The value is always the same for the given seed and range, so you should provide a changing input, e.g. by using time.
public class VisualShaderNodeRandomRange : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeRandomRange }

    
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeRandomRange = StringName(from: "VisualShaderNodeRandomRange")

        
    }

    
}