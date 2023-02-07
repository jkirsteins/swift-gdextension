import godot_native

fileprivate var __godot_name_VisualShaderNodeUIntOp: StringName! = nil

/// An unsigned integer scalar operator to be used within the visual shader graph.
/// 
/// Applies [member operator] to two unsigned integer inputs: [code]a[/code] and [code]b[/code].
public class VisualShaderNodeUIntOp : VisualShaderNode {

    public enum Operator : Int32 {
        case OP_ADD = 0
        case OP_SUB = 1
        case OP_MUL = 2
        case OP_DIV = 3
        case OP_MOD = 4
        case OP_MAX = 5
        case OP_MIN = 6
        case OP_BITWISE_AND = 7
        case OP_BITWISE_OR = 8
        case OP_BITWISE_XOR = 9
        case OP_BITWISE_LEFT_SHIFT = 10
        case OP_BITWISE_RIGHT_SHIFT = 11
        case OP_ENUM_SIZE = 12
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeUIntOp }

    static var _method_set_operator_3463048345: GDExtensionMethodBindPtr! = nil
    static var _method_get_operator_256631461: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeUIntOp = StringName(from: "VisualShaderNodeUIntOp")

        let _method_set_operator_3463048345_name = StringName(from: "set_operator")
        self._method_set_operator_3463048345 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_operator_3463048345_name._native_ptr(), 3463048345)
        assert(VisualShaderNodeUIntOp._method_set_operator_3463048345 != nil)
        let _method_get_operator_256631461_name = StringName(from: "get_operator")
        self._method_get_operator_256631461 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_operator_256631461_name._native_ptr(), 256631461)
        assert(VisualShaderNodeUIntOp._method_get_operator_256631461 != nil)
    }

    public func set_operator(op: VisualShaderNodeUIntOp.Operator)  {
        withUnsafePointer(to: op.rawValue) { op_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(op_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_operator_3463048345,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_operator() -> VisualShaderNodeUIntOp.Operator {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_operator_256631461,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeUIntOp.Operator(from: __resPtr.pointee)
    }
}