import godot_native

fileprivate var __godot_name_VisualShaderNodeUIntFunc: StringName! = nil

/// An unsigned scalar integer function to be used within the visual shader graph.
/// 
/// Accept an unsigned integer scalar ([code]x[/code]) to the input port and transform it according to [member function].
open class VisualShaderNodeUIntFunc : VisualShaderNode {

    public enum Function : Int32 {
        case FUNC_NEGATE = 0
        case FUNC_BITWISE_NOT = 1
        case FUNC_MAX = 2
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeUIntFunc }

    static var _method_set_function_2273148961: StringName! = nil
    static var _method_get_function_4187123296: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeUIntFunc == nil)
        __godot_name_VisualShaderNodeUIntFunc = StringName(from: "VisualShaderNodeUIntFunc")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_function_2273148961 = StringName(from: "set_function")
        assert(self._method_set_function_2273148961 != nil)
        self._method_get_function_4187123296 = StringName(from: "get_function")
        assert(self._method_get_function_4187123296 != nil)
    }

    public func set_function(`func`: VisualShaderNodeUIntFunc.Function)  {
        withUnsafePointer(to: `func`.rawValue) { func_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(func_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_function_2273148961._native_ptr(),
                    2273148961)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_function() -> VisualShaderNodeUIntFunc.Function {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_function_4187123296._native_ptr(),
                    4187123296)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeUIntFunc.Function(godot: __resPtr.pointee)
    }
}