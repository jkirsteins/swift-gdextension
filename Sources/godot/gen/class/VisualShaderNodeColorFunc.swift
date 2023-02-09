import godot_native

fileprivate var __godot_name_VisualShaderNodeColorFunc: StringName! = nil

/// A [Color] function to be used within the visual shader graph.
/// 
/// Accept a [Color] to the input port and transform it according to [member function].
open class VisualShaderNodeColorFunc : VisualShaderNode {

    public enum Function : Int32 {
        case FUNC_GRAYSCALE = 0
        case FUNC_HSV2RGB = 1
        case FUNC_RGB2HSV = 2
        case FUNC_SEPIA = 3
        case FUNC_MAX = 4
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeColorFunc }

    static var _method_set_function_3973396138: StringName! = nil
    static var _method_get_function_554863321: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeColorFunc == nil)
        __godot_name_VisualShaderNodeColorFunc = StringName(from: "VisualShaderNodeColorFunc")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_function_3973396138 = StringName(from: "set_function")
        assert(self._method_set_function_3973396138 != nil)
        self._method_get_function_554863321 = StringName(from: "get_function")
        assert(self._method_get_function_554863321 != nil)
    }

    public func set_function(`func`: VisualShaderNodeColorFunc.Function)  {
        withUnsafePointer(to: `func`.rawValue) { func_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(func_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_function_3973396138._native_ptr(),
                    3973396138)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_function() -> VisualShaderNodeColorFunc.Function {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_function_554863321._native_ptr(),
                    554863321)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeColorFunc.Function(godot: __resPtr.pointee)
    }
}