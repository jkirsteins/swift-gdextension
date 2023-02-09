import godot_native

fileprivate var __godot_name_VisualShaderNodeCompare: StringName! = nil

/// A comparison function for common types within the visual shader graph.
/// 
/// Compares [code]a[/code] and [code]b[/code] of [member type] by [member function]. Returns a boolean scalar. Translates to [code]if[/code] instruction in shader code.
open class VisualShaderNodeCompare : VisualShaderNode {

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

    static var _method_set_comparison_type_516558320: StringName! = nil
    static var _method_get_comparison_type_3495315961: StringName! = nil
    static var _method_set_function_2370951349: StringName! = nil
    static var _method_get_function_4089164265: StringName! = nil
    static var _method_set_condition_918742392: StringName! = nil
    static var _method_get_condition_3281078941: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeCompare == nil)
        __godot_name_VisualShaderNodeCompare = StringName(from: "VisualShaderNodeCompare")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_comparison_type_516558320 = StringName(from: "set_comparison_type")
        assert(self._method_set_comparison_type_516558320 != nil)
        self._method_get_comparison_type_3495315961 = StringName(from: "get_comparison_type")
        assert(self._method_get_comparison_type_3495315961 != nil)
        self._method_set_function_2370951349 = StringName(from: "set_function")
        assert(self._method_set_function_2370951349 != nil)
        self._method_get_function_4089164265 = StringName(from: "get_function")
        assert(self._method_get_function_4089164265 != nil)
        self._method_set_condition_918742392 = StringName(from: "set_condition")
        assert(self._method_set_condition_918742392 != nil)
        self._method_get_condition_3281078941 = StringName(from: "get_condition")
        assert(self._method_get_condition_3281078941 != nil)
    }

    public func set_comparison_type(`type`: VisualShaderNodeCompare.ComparisonType)  {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_comparison_type_516558320._native_ptr(),
                    516558320)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_comparison_type_3495315961._native_ptr(),
                    3495315961)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeCompare.ComparisonType(godot: __resPtr.pointee)
    }
    public func set_function(`func`: VisualShaderNodeCompare.Function)  {
        withUnsafePointer(to: `func`.rawValue) { func_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(func_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_function_2370951349._native_ptr(),
                    2370951349)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_function_4089164265._native_ptr(),
                    4089164265)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeCompare.Function(godot: __resPtr.pointee)
    }
    public func set_condition(condition: VisualShaderNodeCompare.Condition)  {
        withUnsafePointer(to: condition.rawValue) { condition_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(condition_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_condition_918742392._native_ptr(),
                    918742392)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_condition_3281078941._native_ptr(),
                    3281078941)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeCompare.Condition(godot: __resPtr.pointee)
    }
}