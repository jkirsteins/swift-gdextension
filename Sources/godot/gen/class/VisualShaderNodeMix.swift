import godot_native

fileprivate var __godot_name_VisualShaderNodeMix: StringName! = nil

/// Linearly interpolates between two values within the visual shader graph.
/// 
/// Translates to [code]mix(a, b, weight)[/code] in the shader language.
open class VisualShaderNodeMix : VisualShaderNode {

    public enum OpType : Int32 {
        case OP_TYPE_SCALAR = 0
        case OP_TYPE_VECTOR_2D = 1
        case OP_TYPE_VECTOR_2D_SCALAR = 2
        case OP_TYPE_VECTOR_3D = 3
        case OP_TYPE_VECTOR_3D_SCALAR = 4
        case OP_TYPE_VECTOR_4D = 5
        case OP_TYPE_VECTOR_4D_SCALAR = 6
        case OP_TYPE_MAX = 7
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeMix }

    static var _method_set_op_type_3397501671: StringName! = nil
    static var _method_get_op_type_4013957297: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeMix == nil)
        __godot_name_VisualShaderNodeMix = StringName(from: "VisualShaderNodeMix")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_op_type_3397501671 = StringName(from: "set_op_type")
        assert(self._method_set_op_type_3397501671 != nil)
        self._method_get_op_type_4013957297 = StringName(from: "get_op_type")
        assert(self._method_get_op_type_4013957297 != nil)
    }

    public func set_op_type(op_type: VisualShaderNodeMix.OpType)  {
        withUnsafePointer(to: op_type.rawValue) { op_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(op_type_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_op_type_3397501671._native_ptr(),
                    3397501671)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_op_type() -> VisualShaderNodeMix.OpType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_op_type_4013957297._native_ptr(),
                    4013957297)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeMix.OpType(godot: __resPtr.pointee)
    }
}