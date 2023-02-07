import godot_native

fileprivate var __godot_name_VisualShaderNodeOuterProduct: StringName! = nil

/// Calculates an outer product of two vectors within the visual shader graph.
/// 
/// [code]OuterProduct[/code] treats the first parameter [code]c[/code] as a column vector (matrix with one column) and the second parameter [code]r[/code] as a row vector (matrix with one row) and does a linear algebraic matrix multiply [code]c * r[/code], yielding a matrix whose number of rows is the number of components in [code]c[/code] and whose number of columns is the number of components in [code]r[/code].
public class VisualShaderNodeOuterProduct : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeOuterProduct }

    
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeOuterProduct = StringName(from: "VisualShaderNodeOuterProduct")

        
    }

    
}