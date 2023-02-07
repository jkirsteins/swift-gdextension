import godot_native

fileprivate var __godot_name_VisualShaderNodeCompare: StringName! = nil

/// A comparison function for common types within the visual shader graph.
/// 
/// Compares [code]a[/code] and [code]b[/code] of [member type] by [member function]. Returns a boolean scalar. Translates to [code]if[/code] instruction in shader code.
public class VisualShaderNodeCompare : VisualShaderNode {

    public enum ComparisonType : Int32 {
        case CTYPE_SCALAR = 0
        case CTYPE_SCALAR_INT = 1
        case CTYPE_SCALAR_UINT = 2
        case CTYPE_VECTOR_2D = 3
        case CTYPE_VECTOR_3D = 4
        case CTYPE_VECTOR_4D = 5
        case CTYPE_BOOLEAN = 6
        case CTYPE_TRANSFORM = 7
        case CTYPE_MAX = 8
    }
    public enum Function : Int32 {
        case FUNC_EQUAL = 0
        case FUNC_NOT_EQUAL = 1
        case FUNC_GREATER_THAN = 2
        case FUNC_GREATER_THAN_EQUAL = 3
        case FUNC_LESS_THAN = 4
        case FUNC_LESS_THAN_EQUAL = 5
        case FUNC_MAX = 6
    }
    public enum Condition : Int32 {
        case COND_ALL = 0
        case COND_ANY = 1
        case COND_MAX = 2
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeCompare }

    static var _method_set_comparison_type_516558320: GDExtensionMethodBindPtr! = nil
    static var _method_get_comparison_type_3495315961: GDExtensionMethodBindPtr! = nil
    static var _method_set_function_2370951349: GDExtensionMethodBindPtr! = nil
    static var _method_get_function_4089164265: GDExtensionMethodBindPtr! = nil
    static var _method_set_condition_918742392: GDExtensionMethodBindPtr! = nil
    static var _method_get_condition_3281078941: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeCompare = StringName(from: "VisualShaderNodeCompare")

        let _method_set_comparison_type_516558320_name = StringName(from: "set_comparison_type")
        self._method_set_comparison_type_516558320 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_comparison_type_516558320_name._native_ptr(), 516558320)
        assert(VisualShaderNodeCompare._method_set_comparison_type_516558320 != nil)
        let _method_get_comparison_type_3495315961_name = StringName(from: "get_comparison_type")
        self._method_get_comparison_type_3495315961 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_comparison_type_3495315961_name._native_ptr(), 3495315961)
        assert(VisualShaderNodeCompare._method_get_comparison_type_3495315961 != nil)
        let _method_set_function_2370951349_name = StringName(from: "set_function")
        self._method_set_function_2370951349 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_function_2370951349_name._native_ptr(), 2370951349)
        assert(VisualShaderNodeCompare._method_set_function_2370951349 != nil)
        let _method_get_function_4089164265_name = StringName(from: "get_function")
        self._method_get_function_4089164265 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_function_4089164265_name._native_ptr(), 4089164265)
        assert(VisualShaderNodeCompare._method_get_function_4089164265 != nil)
        let _method_set_condition_918742392_name = StringName(from: "set_condition")
        self._method_set_condition_918742392 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_condition_918742392_name._native_ptr(), 918742392)
        assert(VisualShaderNodeCompare._method_set_condition_918742392 != nil)
        let _method_get_condition_3281078941_name = StringName(from: "get_condition")
        self._method_get_condition_3281078941 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_condition_3281078941_name._native_ptr(), 3281078941)
        assert(VisualShaderNodeCompare._method_get_condition_3281078941 != nil)
    }

    public func set_comparison_type(`type`: VisualShaderNodeCompare.ComparisonType)  {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_comparison_type_516558320,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_comparison_type() -> VisualShaderNodeCompare.ComparisonType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_comparison_type_3495315961,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeCompare.ComparisonType(from: __resPtr.pointee)
    }
    public func set_function(`func`: VisualShaderNodeCompare.Function)  {
        withUnsafePointer(to: `func`.rawValue) { func_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(func_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_function_2370951349,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_function() -> VisualShaderNodeCompare.Function {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_function_4089164265,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeCompare.Function(from: __resPtr.pointee)
    }
    public func set_condition(condition: VisualShaderNodeCompare.Condition)  {
        withUnsafePointer(to: condition.rawValue) { condition_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(condition_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_condition_918742392,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_condition() -> VisualShaderNodeCompare.Condition {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_condition_3281078941,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeCompare.Condition(from: __resPtr.pointee)
    }
}