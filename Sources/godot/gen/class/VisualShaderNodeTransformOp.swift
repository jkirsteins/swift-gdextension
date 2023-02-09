import godot_native

fileprivate var __godot_name_VisualShaderNodeTransformOp: StringName! = nil

/// A [Transform3D] operator to be used within the visual shader graph.
/// 
/// Applies [member operator] to two transform (4x4 matrices) inputs.
open class VisualShaderNodeTransformOp : VisualShaderNode {

    public enum Operator : Int32 {
        case OP_AxB = 0
        case OP_BxA = 1
        case OP_AxB_COMP = 2
        case OP_BxA_COMP = 3
        case OP_ADD = 4
        case OP_A_MINUS_B = 5
        case OP_B_MINUS_A = 6
        case OP_A_DIV_B = 7
        case OP_B_DIV_A = 8
        case OP_MAX = 9
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeTransformOp }

    static var _method_set_operator_2287310733: StringName! = nil
    static var _method_get_operator_1238663601: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeTransformOp == nil)
        __godot_name_VisualShaderNodeTransformOp = StringName(from: "VisualShaderNodeTransformOp")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_operator_2287310733 = StringName(from: "set_operator")
        assert(self._method_set_operator_2287310733 != nil)
        self._method_get_operator_1238663601 = StringName(from: "get_operator")
        assert(self._method_get_operator_1238663601 != nil)
    }

    public func set_operator(op: VisualShaderNodeTransformOp.Operator)  {
        withUnsafePointer(to: op.rawValue) { op_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(op_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_operator_2287310733._native_ptr(),
                    2287310733)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_operator() -> VisualShaderNodeTransformOp.Operator {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_operator_1238663601._native_ptr(),
                    1238663601)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeTransformOp.Operator(godot: __resPtr.pointee)
    }
}