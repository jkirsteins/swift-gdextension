import godot_native

fileprivate var __godot_name_VisualShaderNodeIntOp: StringName! = nil

/// An integer scalar operator to be used within the visual shader graph.
/// 
/// Applies [member operator] to two integer inputs: [code]a[/code] and [code]b[/code].
public class VisualShaderNodeIntOp : VisualShaderNode {

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

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeIntOp }

    static var _method_set_operator_1677909323: GDExtensionMethodBindPtr! = nil
    static var _method_get_operator_1236987913: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeIntOp = StringName(from: "VisualShaderNodeIntOp")

        let _method_set_operator_1677909323_name = StringName(from: "set_operator")
        self._method_set_operator_1677909323 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_operator_1677909323_name._native_ptr(), 1677909323)
        assert(VisualShaderNodeIntOp._method_set_operator_1677909323 != nil)
        let _method_get_operator_1236987913_name = StringName(from: "get_operator")
        self._method_get_operator_1236987913 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_operator_1236987913_name._native_ptr(), 1236987913)
        assert(VisualShaderNodeIntOp._method_get_operator_1236987913 != nil)
    }

    public func set_operator(op: VisualShaderNodeIntOp.Operator)  {
        withUnsafePointer(to: op.rawValue) { op_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(op_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_operator_1677909323,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_operator() -> VisualShaderNodeIntOp.Operator {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_operator_1236987913,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeIntOp.Operator(from: __resPtr.pointee)
    }
}