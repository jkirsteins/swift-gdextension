import godot_native

fileprivate var __godot_name_VisualShaderNodeMultiplyAdd: StringName! = nil

/// Performs a fused multiply-add operation within the visual shader graph.
/// 
/// Uses three operands to compute [code](a * b + c)[/code] expression.
open class VisualShaderNodeMultiplyAdd : VisualShaderNode {

    public enum OpType : Int32 {
        case OP_TYPE_SCALAR = 0
        case OP_TYPE_VECTOR_2D = 1
        case OP_TYPE_VECTOR_3D = 2
        case OP_TYPE_VECTOR_4D = 3
        case OP_TYPE_MAX = 4
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeMultiplyAdd }

    static var _method_set_op_type_1409862380: StringName! = nil
    static var _method_get_op_type_2823201991: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeMultiplyAdd == nil)
        __godot_name_VisualShaderNodeMultiplyAdd = StringName(from: "VisualShaderNodeMultiplyAdd")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_op_type_1409862380 = StringName(from: "set_op_type")
        assert(self._method_set_op_type_1409862380 != nil)
        self._method_get_op_type_2823201991 = StringName(from: "get_op_type")
        assert(self._method_get_op_type_2823201991 != nil)
    }

    public func set_op_type(`type`: VisualShaderNodeMultiplyAdd.OpType)  {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_op_type_1409862380._native_ptr(),
                    1409862380)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_op_type_2823201991._native_ptr(),
                    2823201991)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeMultiplyAdd.OpType(godot: __resPtr.pointee)
    }
}