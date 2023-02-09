import godot_native

fileprivate var __godot_name_VisualShaderNodeUVFunc: StringName! = nil

/// Contains functions to modify texture coordinates ([code]uv[/code]) to be used within the visual shader graph.
/// 
/// UV functions are similar to [Vector2] functions, but the input port of this node uses the shader's UV value by default.
open class VisualShaderNodeUVFunc : VisualShaderNode {

    public enum Function : Int32 {
        case FUNC_PANNING = 0
        case FUNC_SCALING = 1
        case FUNC_MAX = 2
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeUVFunc }

    static var _method_set_function_765791915: StringName! = nil
    static var _method_get_function_3772902164: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeUVFunc == nil)
        __godot_name_VisualShaderNodeUVFunc = StringName(from: "VisualShaderNodeUVFunc")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_function_765791915 = StringName(from: "set_function")
        assert(self._method_set_function_765791915 != nil)
        self._method_get_function_3772902164 = StringName(from: "get_function")
        assert(self._method_get_function_3772902164 != nil)
    }

    public func set_function(`func`: VisualShaderNodeUVFunc.Function)  {
        withUnsafePointer(to: `func`.rawValue) { func_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(func_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_function_765791915._native_ptr(),
                    765791915)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_function() -> VisualShaderNodeUVFunc.Function {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_function_3772902164._native_ptr(),
                    3772902164)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeUVFunc.Function(godot: __resPtr.pointee)
    }
}