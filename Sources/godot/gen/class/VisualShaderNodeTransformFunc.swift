import godot_native

fileprivate var __godot_name_VisualShaderNodeTransformFunc: StringName! = nil

/// Computes a [Transform3D] function within the visual shader graph.
/// 
/// Computes an inverse or transpose function on the provided [Transform3D].
open class VisualShaderNodeTransformFunc : VisualShaderNode {

    public enum Function : Int32 {
        case FUNC_INVERSE = 0
        case FUNC_TRANSPOSE = 1
        case FUNC_MAX = 2
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeTransformFunc }

    static var _method_set_function_2900990409: StringName! = nil
    static var _method_get_function_2839926569: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeTransformFunc == nil)
        __godot_name_VisualShaderNodeTransformFunc = StringName(from: "VisualShaderNodeTransformFunc")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_function_2900990409 = StringName(from: "set_function")
        assert(self._method_set_function_2900990409 != nil)
        self._method_get_function_2839926569 = StringName(from: "get_function")
        assert(self._method_get_function_2839926569 != nil)
    }

    public func set_function(`func`: VisualShaderNodeTransformFunc.Function)  {
        withUnsafePointer(to: `func`.rawValue) { func_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(func_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_function_2900990409._native_ptr(),
                    2900990409)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_function() -> VisualShaderNodeTransformFunc.Function {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_function_2839926569._native_ptr(),
                    2839926569)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeTransformFunc.Function(godot: __resPtr.pointee)
    }
}