import godot_native

fileprivate var __godot_name_VisualShaderNodeIs: StringName! = nil

/// A boolean comparison operator to be used within the visual shader graph.
/// 
/// Returns the boolean result of the comparison between [code]INF[/code] or [code]NaN[/code] and a scalar parameter.
public class VisualShaderNodeIs : VisualShaderNode {

    public enum Function : Int32 {
        case FUNC_IS_INF = 0
        case FUNC_IS_NAN = 1
        case FUNC_MAX = 2
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeIs }

    static var _method_set_function_1438374690: GDExtensionMethodBindPtr! = nil
    static var _method_get_function_580678557: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeIs = StringName(from: "VisualShaderNodeIs")

        let _method_set_function_1438374690_name = StringName(from: "set_function")
        self._method_set_function_1438374690 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_function_1438374690_name._native_ptr(), 1438374690)
        assert(VisualShaderNodeIs._method_set_function_1438374690 != nil)
        let _method_get_function_580678557_name = StringName(from: "get_function")
        self._method_get_function_580678557 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_function_580678557_name._native_ptr(), 580678557)
        assert(VisualShaderNodeIs._method_get_function_580678557 != nil)
    }

    public func set_function(`func`: VisualShaderNodeIs.Function)  {
        withUnsafePointer(to: `func`.rawValue) { func_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(func_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_function_1438374690,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_function() -> VisualShaderNodeIs.Function {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_function_580678557,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeIs.Function(from: __resPtr.pointee)
    }
}