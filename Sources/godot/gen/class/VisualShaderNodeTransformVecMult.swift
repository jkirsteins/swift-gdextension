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

    static var _method_set_operator_1785665912: StringName! = nil
    static var _method_get_operator_1622088722: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeTransformVecMult == nil)
        __godot_name_VisualShaderNodeTransformVecMult = StringName(from: "VisualShaderNodeTransformVecMult")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_operator_1785665912 = StringName(from: "set_operator")
        assert(self._method_set_operator_1785665912 != nil)
        self._method_get_operator_1622088722 = StringName(from: "get_operator")
        assert(self._method_get_operator_1622088722 != nil)
    }

    public func set_operator(op: VisualShaderNodeTransformVecMult.Operator)  {
        withUnsafePointer(to: op.rawValue) { op_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(op_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_operator_1785665912._native_ptr(),
                    1785665912)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_operator_1622088722._native_ptr(),
                    1622088722)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeTransformVecMult.Operator(godot: __resPtr.pointee)
    }
}