import godot_native

fileprivate var __godot_name_VisualShaderNodeVectorFunc: StringName! = nil

/// A vector function to be used within the visual shader graph.
/// 
/// A visual shader node able to perform different functions using vectors.
open class VisualShaderNodeVectorFunc : VisualShaderNodeVectorBase {

    public enum Function : Int32 {
        case FUNC_NORMALIZE = 0
        case FUNC_SATURATE = 1
        case FUNC_NEGATE = 2
        case FUNC_RECIPROCAL = 3
        case FUNC_ABS = 4
        case FUNC_ACOS = 5
        case FUNC_ACOSH = 6
        case FUNC_ASIN = 7
        case FUNC_ASINH = 8
        case FUNC_ATAN = 9
        case FUNC_ATANH = 10
        case FUNC_CEIL = 11
        case FUNC_COS = 12
        case FUNC_COSH = 13
        case FUNC_DEGREES = 14
        case FUNC_EXP = 15
        case FUNC_EXP2 = 16
        case FUNC_FLOOR = 17
        case FUNC_FRACT = 18
        case FUNC_INVERSE_SQRT = 19
        case FUNC_LOG = 20
        case FUNC_LOG2 = 21
        case FUNC_RADIANS = 22
        case FUNC_ROUND = 23
        case FUNC_ROUNDEVEN = 24
        case FUNC_SIGN = 25
        case FUNC_SIN = 26
        case FUNC_SINH = 27
        case FUNC_SQRT = 28
        case FUNC_TAN = 29
        case FUNC_TANH = 30
        case FUNC_TRUNC = 31
        case FUNC_ONEMINUS = 32
        case FUNC_MAX = 33
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeVectorFunc }

    static var _method_set_function_629964457: StringName! = nil
    static var _method_get_function_4047776843: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeVectorFunc == nil)
        __godot_name_VisualShaderNodeVectorFunc = StringName(from: "VisualShaderNodeVectorFunc")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_function_629964457 = StringName(from: "set_function")
        assert(self._method_set_function_629964457 != nil)
        self._method_get_function_4047776843 = StringName(from: "get_function")
        assert(self._method_get_function_4047776843 != nil)
    }

    public func set_function(`func`: VisualShaderNodeVectorFunc.Function)  {
        withUnsafePointer(to: `func`.rawValue) { func_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(func_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_function_629964457._native_ptr(),
                    629964457)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_function() -> VisualShaderNodeVectorFunc.Function {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_function_4047776843._native_ptr(),
                    4047776843)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeVectorFunc.Function(godot: __resPtr.pointee)
    }
}