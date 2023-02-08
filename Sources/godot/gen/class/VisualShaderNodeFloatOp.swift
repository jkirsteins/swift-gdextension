import godot_native

fileprivate var __godot_name_VisualShaderNodeFloatOp: StringName! = nil

/// A floating-point scalar operator to be used within the visual shader graph.
/// 
/// Applies [member operator] to two floating-point inputs: [code]a[/code] and [code]b[/code].
open class VisualShaderNodeFloatOp : VisualShaderNode {

    public enum Operator : Int32 {
        case OP_ADD = 0
        case OP_SUB = 1
        case OP_MUL = 2
        case OP_DIV = 3
        case OP_MOD = 4
        case OP_POW = 5
        case OP_MAX = 6
        case OP_MIN = 7
        case OP_ATAN2 = 8
        case OP_STEP = 9
        case OP_ENUM_SIZE = 10
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeFloatOp }

    static var _method_set_operator_2488468047: GDExtensionMethodBindPtr! = nil
    static var _method_get_operator_1867979390: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VisualShaderNodeFloatOp = StringName(from: "VisualShaderNodeFloatOp")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_operator_2488468047_name = StringName(from: "set_operator")
        self._method_set_operator_2488468047 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeFloatOp._native_ptr(), _method_set_operator_2488468047_name._native_ptr(), 2488468047)
        assert(VisualShaderNodeFloatOp._method_set_operator_2488468047 != nil)
        let _method_get_operator_1867979390_name = StringName(from: "get_operator")
        self._method_get_operator_1867979390 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeFloatOp._native_ptr(), _method_get_operator_1867979390_name._native_ptr(), 1867979390)
        assert(VisualShaderNodeFloatOp._method_get_operator_1867979390 != nil)
    }

    public func set_operator(op: VisualShaderNodeFloatOp.Operator)  {
        withUnsafePointer(to: op.rawValue) { op_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(op_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_operator_2488468047,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_operator() -> VisualShaderNodeFloatOp.Operator {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_operator_1867979390,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeFloatOp.Operator(godot: __resPtr.pointee)
    }
}