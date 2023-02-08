import godot_native

fileprivate var __godot_name_VisualShaderNodeTransformVecMult: StringName! = nil

/// Multiplies a [Transform3D] and a [Vector3] within the visual shader graph.
/// 
/// A multiplication operation on a transform (4x4 matrix) and a vector, with support for different multiplication operators.
open class VisualShaderNodeTransformVecMult : VisualShaderNode {

    public enum Operator : Int32 {
        case OP_AxB = 0
        case OP_BxA = 1
        case OP_3x3_AxB = 2
        case OP_3x3_BxA = 3
        case OP_MAX = 4
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeTransformVecMult }

    static var _method_set_operator_1785665912: GDExtensionMethodBindPtr! = nil
    static var _method_get_operator_1622088722: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VisualShaderNodeTransformVecMult = StringName(from: "VisualShaderNodeTransformVecMult")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_operator_1785665912_name = StringName(from: "set_operator")
        self._method_set_operator_1785665912 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeTransformVecMult._native_ptr(), _method_set_operator_1785665912_name._native_ptr(), 1785665912)
        assert(VisualShaderNodeTransformVecMult._method_set_operator_1785665912 != nil)
        let _method_get_operator_1622088722_name = StringName(from: "get_operator")
        self._method_get_operator_1622088722 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeTransformVecMult._native_ptr(), _method_get_operator_1622088722_name._native_ptr(), 1622088722)
        assert(VisualShaderNodeTransformVecMult._method_get_operator_1622088722 != nil)
    }

    public func set_operator(op: VisualShaderNodeTransformVecMult.Operator)  {
        withUnsafePointer(to: op.rawValue) { op_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(op_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_operator_1785665912,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_operator() -> VisualShaderNodeTransformVecMult.Operator {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_operator_1622088722,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeTransformVecMult.Operator(godot: __resPtr.pointee)
    }
}