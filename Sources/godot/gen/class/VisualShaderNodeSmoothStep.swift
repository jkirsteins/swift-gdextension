import godot_native

fileprivate var __godot_name_VisualShaderNodeSmoothStep: StringName! = nil

/// Calculates a SmoothStep function within the visual shader graph.
/// 
/// Translates to [code]smoothstep(edge0, edge1, x)[/code] in the shader language.
///  
/// Returns [code]0.0[/code] if [code]x[/code] is smaller than [code]edge0[/code] and [code]1.0[/code] if [code]x[/code] is larger than [code]edge1[/code]. Otherwise, the return value is interpolated between [code]0.0[/code] and [code]1.0[/code] using Hermite polynomials.
open class VisualShaderNodeSmoothStep : VisualShaderNode {

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

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeSmoothStep }

    static var _method_set_op_type_2427426148: StringName! = nil
    static var _method_get_op_type_359640855: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeSmoothStep == nil)
        __godot_name_VisualShaderNodeSmoothStep = StringName(from: "VisualShaderNodeSmoothStep")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_op_type_2427426148 = StringName(from: "set_op_type")
        assert(self._method_set_op_type_2427426148 != nil)
        self._method_get_op_type_359640855 = StringName(from: "get_op_type")
        assert(self._method_get_op_type_359640855 != nil)
    }

    public func set_op_type(op_type: VisualShaderNodeSmoothStep.OpType)  {
        withUnsafePointer(to: op_type.rawValue) { op_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(op_type_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_op_type_2427426148._native_ptr(),
                    2427426148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_op_type() -> VisualShaderNodeSmoothStep.OpType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_op_type_359640855._native_ptr(),
                    359640855)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeSmoothStep.OpType(godot: __resPtr.pointee)
    }
}