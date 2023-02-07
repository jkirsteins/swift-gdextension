import godot_native

fileprivate var __godot_name_VisualShaderNodeMultiplyAdd: StringName! = nil

/// Performs a fused multiply-add operation within the visual shader graph.
/// 
/// Uses three operands to compute [code](a * b + c)[/code] expression.
public class VisualShaderNodeMultiplyAdd : VisualShaderNode {

    public enum OpType : Int32 {
        case OP_TYPE_SCALAR = 0
        case OP_TYPE_VECTOR_2D = 1
        case OP_TYPE_VECTOR_3D = 2
        case OP_TYPE_VECTOR_4D = 3
        case OP_TYPE_MAX = 4
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeMultiplyAdd }

    static var _method_set_op_type_1409862380: GDExtensionMethodBindPtr! = nil
    static var _method_get_op_type_2823201991: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeMultiplyAdd = StringName(from: "VisualShaderNodeMultiplyAdd")

        let _method_set_op_type_1409862380_name = StringName(from: "set_op_type")
        self._method_set_op_type_1409862380 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_op_type_1409862380_name._native_ptr(), 1409862380)
        assert(VisualShaderNodeMultiplyAdd._method_set_op_type_1409862380 != nil)
        let _method_get_op_type_2823201991_name = StringName(from: "get_op_type")
        self._method_get_op_type_2823201991 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_op_type_2823201991_name._native_ptr(), 2823201991)
        assert(VisualShaderNodeMultiplyAdd._method_get_op_type_2823201991 != nil)
    }

    public func set_op_type(`type`: VisualShaderNodeMultiplyAdd.OpType)  {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_op_type_1409862380,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_op_type() -> VisualShaderNodeMultiplyAdd.OpType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_op_type_2823201991,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeMultiplyAdd.OpType(from: __resPtr.pointee)
    }
}