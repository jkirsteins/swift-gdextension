import godot_native

fileprivate var __godot_name_VisualShaderNodeColorFunc: StringName! = nil

/// A [Color] function to be used within the visual shader graph.
/// 
/// Accept a [Color] to the input port and transform it according to [member function].
public class VisualShaderNodeColorFunc : VisualShaderNode {

    public enum Function : Int32 {
        case FUNC_GRAYSCALE = 0
        case FUNC_HSV2RGB = 1
        case FUNC_RGB2HSV = 2
        case FUNC_SEPIA = 3
        case FUNC_MAX = 4
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeColorFunc }

    static var _method_set_function_3973396138: GDExtensionMethodBindPtr! = nil
    static var _method_get_function_554863321: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeColorFunc = StringName(from: "VisualShaderNodeColorFunc")

        let _method_set_function_3973396138_name = StringName(from: "set_function")
        self._method_set_function_3973396138 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_function_3973396138_name._native_ptr(), 3973396138)
        assert(VisualShaderNodeColorFunc._method_set_function_3973396138 != nil)
        let _method_get_function_554863321_name = StringName(from: "get_function")
        self._method_get_function_554863321 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_function_554863321_name._native_ptr(), 554863321)
        assert(VisualShaderNodeColorFunc._method_get_function_554863321 != nil)
    }

    public func set_function(`func`: VisualShaderNodeColorFunc.Function)  {
        withUnsafePointer(to: `func`.rawValue) { func_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(func_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_function_3973396138,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_function_554863321,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeColorFunc.Function(from: __resPtr.pointee)
    }
}