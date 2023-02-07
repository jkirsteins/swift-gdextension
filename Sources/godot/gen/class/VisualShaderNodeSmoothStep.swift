import godot_native

fileprivate var __godot_name_VisualShaderNodeSmoothStep: StringName! = nil

/// Calculates a SmoothStep function within the visual shader graph.
/// 
/// Translates to [code]smoothstep(edge0, edge1, x)[/code] in the shader language.
///  
/// Returns [code]0.0[/code] if [code]x[/code] is smaller than [code]edge0[/code] and [code]1.0[/code] if [code]x[/code] is larger than [code]edge1[/code]. Otherwise, the return value is interpolated between [code]0.0[/code] and [code]1.0[/code] using Hermite polynomials.
public class VisualShaderNodeSmoothStep : VisualShaderNode {

    public enum OpType : Int32 {
        case OP_TYPE_SCALAR = 0
        case OP_TYPE_VECTOR_2D = 1
        case OP_TYPE_VECTOR_2D_SCALAR = 2
        case OP_TYPE_VECTOR_3D = 3
        case OP_TYPE_VECTOR_3D_SCALAR = 4
        case OP_TYPE_VECTOR_4D = 5
        case OP_TYPE_VECTOR_4D_SCALAR = 6
        case OP_TYPE_MAX = 7
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeSmoothStep }

    static var _method_set_op_type_2427426148: GDExtensionMethodBindPtr! = nil
    static var _method_get_op_type_359640855: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeSmoothStep = StringName(from: "VisualShaderNodeSmoothStep")

        let _method_set_op_type_2427426148_name = StringName(from: "set_op_type")
        self._method_set_op_type_2427426148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_op_type_2427426148_name._native_ptr(), 2427426148)
        assert(VisualShaderNodeSmoothStep._method_set_op_type_2427426148 != nil)
        let _method_get_op_type_359640855_name = StringName(from: "get_op_type")
        self._method_get_op_type_359640855 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_op_type_359640855_name._native_ptr(), 359640855)
        assert(VisualShaderNodeSmoothStep._method_get_op_type_359640855 != nil)
    }

    public func set_op_type(op_type: VisualShaderNodeSmoothStep.OpType)  {
        withUnsafePointer(to: op_type.rawValue) { op_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(op_type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_op_type_2427426148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_op_type() -> VisualShaderNodeSmoothStep.OpType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_op_type_359640855,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeSmoothStep.OpType(from: __resPtr.pointee)
    }
}