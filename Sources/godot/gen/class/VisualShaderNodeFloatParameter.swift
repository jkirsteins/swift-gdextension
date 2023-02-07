import godot_native

fileprivate var __godot_name_VisualShaderNodeFloatParameter: StringName! = nil

/// A scalar float parameter to be used within the visual shader graph.
/// 
/// Translated to [code]uniform float[/code] in the shader language.
public class VisualShaderNodeFloatParameter : VisualShaderNodeParameter {

    public enum Hint : Int32 {
        case HINT_NONE = 0
        case HINT_RANGE = 1
        case HINT_RANGE_STEP = 2
        case HINT_MAX = 3
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeFloatParameter }

    static var _method_set_hint_3712586466: GDExtensionMethodBindPtr! = nil
    static var _method_get_hint_3042240429: GDExtensionMethodBindPtr! = nil
    static var _method_set_min_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_min_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_max_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_step_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_step_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_default_value_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_default_value_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_default_value_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_default_value_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeFloatParameter = StringName(from: "VisualShaderNodeFloatParameter")

        let _method_set_hint_3712586466_name = StringName(from: "set_hint")
        self._method_set_hint_3712586466 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_hint_3712586466_name._native_ptr(), 3712586466)
        assert(VisualShaderNodeFloatParameter._method_set_hint_3712586466 != nil)
        let _method_get_hint_3042240429_name = StringName(from: "get_hint")
        self._method_get_hint_3042240429 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_hint_3042240429_name._native_ptr(), 3042240429)
        assert(VisualShaderNodeFloatParameter._method_get_hint_3042240429 != nil)
        let _method_set_min_373806689_name = StringName(from: "set_min")
        self._method_set_min_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_min_373806689_name._native_ptr(), 373806689)
        assert(VisualShaderNodeFloatParameter._method_set_min_373806689 != nil)
        let _method_get_min_1740695150_name = StringName(from: "get_min")
        self._method_get_min_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_min_1740695150_name._native_ptr(), 1740695150)
        assert(VisualShaderNodeFloatParameter._method_get_min_1740695150 != nil)
        let _method_set_max_373806689_name = StringName(from: "set_max")
        self._method_set_max_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_max_373806689_name._native_ptr(), 373806689)
        assert(VisualShaderNodeFloatParameter._method_set_max_373806689 != nil)
        let _method_get_max_1740695150_name = StringName(from: "get_max")
        self._method_get_max_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_max_1740695150_name._native_ptr(), 1740695150)
        assert(VisualShaderNodeFloatParameter._method_get_max_1740695150 != nil)
        let _method_set_step_373806689_name = StringName(from: "set_step")
        self._method_set_step_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_step_373806689_name._native_ptr(), 373806689)
        assert(VisualShaderNodeFloatParameter._method_set_step_373806689 != nil)
        let _method_get_step_1740695150_name = StringName(from: "get_step")
        self._method_get_step_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_step_1740695150_name._native_ptr(), 1740695150)
        assert(VisualShaderNodeFloatParameter._method_get_step_1740695150 != nil)
        let _method_set_default_value_enabled_2586408642_name = StringName(from: "set_default_value_enabled")
        self._method_set_default_value_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_default_value_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(VisualShaderNodeFloatParameter._method_set_default_value_enabled_2586408642 != nil)
        let _method_is_default_value_enabled_36873697_name = StringName(from: "is_default_value_enabled")
        self._method_is_default_value_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_default_value_enabled_36873697_name._native_ptr(), 36873697)
        assert(VisualShaderNodeFloatParameter._method_is_default_value_enabled_36873697 != nil)
        let _method_set_default_value_373806689_name = StringName(from: "set_default_value")
        self._method_set_default_value_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_default_value_373806689_name._native_ptr(), 373806689)
        assert(VisualShaderNodeFloatParameter._method_set_default_value_373806689 != nil)
        let _method_get_default_value_1740695150_name = StringName(from: "get_default_value")
        self._method_get_default_value_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_default_value_1740695150_name._native_ptr(), 1740695150)
        assert(VisualShaderNodeFloatParameter._method_get_default_value_1740695150 != nil)
    }

    public func set_hint(hint: VisualShaderNodeFloatParameter.Hint)  {
        withUnsafePointer(to: hint.rawValue) { hint_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(hint_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_hint_3712586466,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_hint() -> VisualShaderNodeFloatParameter.Hint {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_hint_3042240429,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeFloatParameter.Hint(from: __resPtr.pointee)
    }
    public func set_min(value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_min_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_min() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_min_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_max(value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_max_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_max() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_max_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_step(value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_step_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_step() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_step_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_default_value_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_default_value_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_default_value_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_default_value_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_default_value(value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_default_value_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_default_value() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_default_value_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
}