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

    static var _method_set_operator_2287310733: GDExtensionMethodBindPtr! = nil
    static var _method_get_operator_1238663601: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VisualShaderNodeTransformOp = StringName(from: "VisualShaderNodeTransformOp")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_operator_2287310733_name = StringName(from: "set_operator")
        self._method_set_operator_2287310733 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeTransformOp._native_ptr(), _method_set_operator_2287310733_name._native_ptr(), 2287310733)
        assert(VisualShaderNodeTransformOp._method_set_operator_2287310733 != nil)
        let _method_get_operator_1238663601_name = StringName(from: "get_operator")
        self._method_get_operator_1238663601 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeTransformOp._native_ptr(), _method_get_operator_1238663601_name._native_ptr(), 1238663601)
        assert(VisualShaderNodeTransformOp._method_get_operator_1238663601 != nil)
    }

    public func set_operator(op: VisualShaderNodeTransformOp.Operator)  {
        withUnsafePointer(to: op.rawValue) { op_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(op_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_operator_2287310733,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_operator_1238663601,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeTransformOp.Operator(godot: __resPtr.pointee)
    }
}