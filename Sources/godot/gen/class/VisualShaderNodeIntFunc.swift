import godot_native

fileprivate var __godot_name_VisualShaderNodeIntFunc: StringName! = nil

/// A scalar integer function to be used within the visual shader graph.
/// 
/// Accept an integer scalar ([code]x[/code]) to the input port and transform it according to [member function].
open class VisualShaderNodeIntFunc : VisualShaderNode {

    public enum Function : Int32 {
        case FUNC_ABS = 0
        case FUNC_NEGATE = 1
        case FUNC_SIGN = 2
        case FUNC_BITWISE_NOT = 3
        case FUNC_MAX = 4
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeIntFunc }

    static var _method_set_function_424195284: GDExtensionMethodBindPtr! = nil
    static var _method_get_function_2753496911: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VisualShaderNodeIntFunc = StringName(from: "VisualShaderNodeIntFunc")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_function_424195284_name = StringName(from: "set_function")
        self._method_set_function_424195284 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeIntFunc._native_ptr(), _method_set_function_424195284_name._native_ptr(), 424195284)
        assert(VisualShaderNodeIntFunc._method_set_function_424195284 != nil)
        let _method_get_function_2753496911_name = StringName(from: "get_function")
        self._method_get_function_2753496911 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeIntFunc._native_ptr(), _method_get_function_2753496911_name._native_ptr(), 2753496911)
        assert(VisualShaderNodeIntFunc._method_get_function_2753496911 != nil)
    }

    public func set_function(`func`: VisualShaderNodeIntFunc.Function)  {
        withUnsafePointer(to: `func`.rawValue) { func_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(func_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_function_424195284,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_function() -> VisualShaderNodeIntFunc.Function {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_function_2753496911,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeIntFunc.Function(godot: __resPtr.pointee)
    }
}