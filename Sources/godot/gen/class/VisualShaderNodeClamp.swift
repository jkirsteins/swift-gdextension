import godot_native

fileprivate var __godot_name_VisualShaderNodeClamp: StringName! = nil

/// Clamps a value within the visual shader graph.
/// 
/// Constrains a value to lie between [code]min[/code] and [code]max[/code] values.
open class VisualShaderNodeClamp : VisualShaderNode {

    public enum OpType : Int32 {
        case OP_TYPE_FLOAT = 0
        case OP_TYPE_INT = 1
        case OP_TYPE_UINT = 2
        case OP_TYPE_VECTOR_2D = 3
        case OP_TYPE_VECTOR_3D = 4
        case OP_TYPE_VECTOR_4D = 5
        case OP_TYPE_MAX = 6
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeClamp }

    static var _method_set_op_type_405010749: StringName! = nil
    static var _method_get_op_type_233276050: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeClamp == nil)
        __godot_name_VisualShaderNodeClamp = StringName(from: "VisualShaderNodeClamp")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_op_type_405010749 = StringName(from: "set_op_type")
        assert(self._method_set_op_type_405010749 != nil)
        self._method_get_op_type_233276050 = StringName(from: "get_op_type")
        assert(self._method_get_op_type_233276050 != nil)
    }

    public func set_op_type(op_type: VisualShaderNodeClamp.OpType)  {
        withUnsafePointer(to: op_type.rawValue) { op_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(op_type_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_op_type_405010749._native_ptr(),
                    405010749)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_op_type() -> VisualShaderNodeClamp.OpType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_op_type_233276050._native_ptr(),
                    233276050)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeClamp.OpType(godot: __resPtr.pointee)
    }
}