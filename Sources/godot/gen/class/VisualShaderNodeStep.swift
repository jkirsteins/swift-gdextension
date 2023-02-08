import godot_native

fileprivate var __godot_name_VisualShaderNodeStep: StringName! = nil

/// Calculates a Step function within the visual shader graph.
/// 
/// Translates to [code]step(edge, x)[/code] in the shader language.
///  
/// Returns [code]0.0[/code] if [code]x[/code] is smaller than [code]edge[/code] and [code]1.0[/code] otherwise.
open class VisualShaderNodeStep : VisualShaderNode {

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

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeStep }

    static var _method_set_op_type_715172489: GDExtensionMethodBindPtr! = nil
    static var _method_get_op_type_3274022781: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VisualShaderNodeStep = StringName(from: "VisualShaderNodeStep")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_op_type_715172489_name = StringName(from: "set_op_type")
        self._method_set_op_type_715172489 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeStep._native_ptr(), _method_set_op_type_715172489_name._native_ptr(), 715172489)
        assert(VisualShaderNodeStep._method_set_op_type_715172489 != nil)
        let _method_get_op_type_3274022781_name = StringName(from: "get_op_type")
        self._method_get_op_type_3274022781 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeStep._native_ptr(), _method_get_op_type_3274022781_name._native_ptr(), 3274022781)
        assert(VisualShaderNodeStep._method_get_op_type_3274022781 != nil)
    }

    public func set_op_type(op_type: VisualShaderNodeStep.OpType)  {
        withUnsafePointer(to: op_type.rawValue) { op_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(op_type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_op_type_715172489,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_op_type() -> VisualShaderNodeStep.OpType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_op_type_3274022781,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeStep.OpType(godot: __resPtr.pointee)
    }
}