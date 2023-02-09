import godot_native

fileprivate var __godot_name_VisualShaderNodeUIntOp: StringName! = nil

/// An unsigned integer scalar operator to be used within the visual shader graph.
/// 
/// Applies [member operator] to two unsigned integer inputs: [code]a[/code] and [code]b[/code].
open class VisualShaderNodeUIntOp : VisualShaderNode {

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

    static var _method_set_operator_3463048345: StringName! = nil
    static var _method_get_operator_256631461: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeUIntOp == nil)
        __godot_name_VisualShaderNodeUIntOp = StringName(from: "VisualShaderNodeUIntOp")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_operator_3463048345 = StringName(from: "set_operator")
        assert(self._method_set_operator_3463048345 != nil)
        self._method_get_operator_256631461 = StringName(from: "get_operator")
        assert(self._method_get_operator_256631461 != nil)
    }

    public func set_operator(op: VisualShaderNodeUIntOp.Operator)  {
        withUnsafePointer(to: op.rawValue) { op_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(op_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_operator_3463048345._native_ptr(),
                    3463048345)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_operator_256631461._native_ptr(),
                    256631461)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeUIntOp.Operator(godot: __resPtr.pointee)
    }
}