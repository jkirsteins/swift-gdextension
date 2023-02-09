import godot_native

fileprivate var __godot_name_VisualShaderNodeFloatFunc: StringName! = nil

/// A scalar floating-point function to be used within the visual shader graph.
/// 
/// Accept a floating-point scalar ([code]x[/code]) to the input port and transform it according to [member function].
open class VisualShaderNodeFloatFunc : VisualShaderNode {

    public enum Function : Int32 {
        case FUNC_SIN = 0
        case FUNC_COS = 1
        case FUNC_TAN = 2
        case FUNC_ASIN = 3
        case FUNC_ACOS = 4
        case FUNC_ATAN = 5
        case FUNC_SINH = 6
        case FUNC_COSH = 7
        case FUNC_TANH = 8
        case FUNC_LOG = 9
        case FUNC_EXP = 10
        case FUNC_SQRT = 11
        case FUNC_ABS = 12
        case FUNC_SIGN = 13
        case FUNC_FLOOR = 14
        case FUNC_ROUND = 15
        case FUNC_CEIL = 16
        case FUNC_FRACT = 17
        case FUNC_SATURATE = 18
        case FUNC_NEGATE = 19
        case FUNC_ACOSH = 20
        case FUNC_ASINH = 21
        case FUNC_ATANH = 22
        case FUNC_DEGREES = 23
        case FUNC_EXP2 = 24
        case FUNC_INVERSE_SQRT = 25
        case FUNC_LOG2 = 26
        case FUNC_RADIANS = 27
        case FUNC_RECIPROCAL = 28
        case FUNC_ROUNDEVEN = 29
        case FUNC_TRUNC = 30
        case FUNC_ONEMINUS = 31
        case FUNC_MAX = 32
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeFloatFunc }

    static var _method_set_function_536026177: StringName! = nil
    static var _method_get_function_2033948868: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeFloatFunc == nil)
        __godot_name_VisualShaderNodeFloatFunc = StringName(from: "VisualShaderNodeFloatFunc")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_function_536026177 = StringName(from: "set_function")
        assert(self._method_set_function_536026177 != nil)
        self._method_get_function_2033948868 = StringName(from: "get_function")
        assert(self._method_get_function_2033948868 != nil)
    }

    public func set_function(`func`: VisualShaderNodeFloatFunc.Function)  {
        withUnsafePointer(to: `func`.rawValue) { func_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(func_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_function_536026177._native_ptr(),
                    536026177)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_function() -> VisualShaderNodeFloatFunc.Function {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_function_2033948868._native_ptr(),
                    2033948868)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeFloatFunc.Function(godot: __resPtr.pointee)
    }
}