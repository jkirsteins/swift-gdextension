import godot_native

fileprivate var __godot_name_VisualShaderNodeVectorOp: StringName! = nil

/// A vector operator to be used within the visual shader graph.
/// 
/// A visual shader node for use of vector operators. Operates on vector [code]a[/code] and vector [code]b[/code].
open class VisualShaderNodeVectorOp : VisualShaderNodeVectorBase {

    public enum Operator : Int32 {
        case OP_ADD = 0
        case OP_SUB = 1
        case OP_MUL = 2
        case OP_DIV = 3
        case OP_MOD = 4
        case OP_POW = 5
        case OP_MAX = 6
        case OP_MIN = 7
        case OP_CROSS = 8
        case OP_ATAN2 = 9
        case OP_REFLECT = 10
        case OP_STEP = 11
        case OP_ENUM_SIZE = 12
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeVectorOp }

    static var _method_set_operator_3371507302: StringName! = nil
    static var _method_get_operator_11793929: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeVectorOp == nil)
        __godot_name_VisualShaderNodeVectorOp = StringName(from: "VisualShaderNodeVectorOp")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_operator_3371507302 = StringName(from: "set_operator")
        assert(self._method_set_operator_3371507302 != nil)
        self._method_get_operator_11793929 = StringName(from: "get_operator")
        assert(self._method_get_operator_11793929 != nil)
    }

    public func set_operator(op: VisualShaderNodeVectorOp.Operator)  {
        withUnsafePointer(to: op.rawValue) { op_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(op_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_operator_3371507302._native_ptr(),
                    3371507302)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_operator() -> VisualShaderNodeVectorOp.Operator {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_operator_11793929._native_ptr(),
                    11793929)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeVectorOp.Operator(godot: __resPtr.pointee)
    }
}