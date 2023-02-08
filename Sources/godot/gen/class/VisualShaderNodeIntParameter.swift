import godot_native

fileprivate var __godot_name_VisualShaderNodeIntParameter: StringName! = nil

/// A visual shader node for shader parameter (uniform) of type [int].
/// 
/// A [VisualShaderNodeParameter] of type [int]. Offers additional customization for range of accepted values.
open class VisualShaderNodeIntParameter : VisualShaderNodeParameter {

    public enum Hint : Int32 {
        case HINT_NONE = 0
        case HINT_RANGE = 1
        case HINT_RANGE_STEP = 2
        case HINT_MAX = 3
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeIntParameter }

    static var _method_set_hint_2540512075: GDExtensionMethodBindPtr! = nil
    static var _method_get_hint_4250814924: GDExtensionMethodBindPtr! = nil
    static var _method_set_min_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_min_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_max_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_step_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_step_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_default_value_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_default_value_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_default_value_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_default_value_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VisualShaderNodeIntParameter = StringName(from: "VisualShaderNodeIntParameter")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_hint_2540512075_name = StringName(from: "set_hint")
        self._method_set_hint_2540512075 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeIntParameter._native_ptr(), _method_set_hint_2540512075_name._native_ptr(), 2540512075)
        assert(VisualShaderNodeIntParameter._method_set_hint_2540512075 != nil)
        let _method_get_hint_4250814924_name = StringName(from: "get_hint")
        self._method_get_hint_4250814924 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeIntParameter._native_ptr(), _method_get_hint_4250814924_name._native_ptr(), 4250814924)
        assert(VisualShaderNodeIntParameter._method_get_hint_4250814924 != nil)
        let _method_set_min_1286410249_name = StringName(from: "set_min")
        self._method_set_min_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeIntParameter._native_ptr(), _method_set_min_1286410249_name._native_ptr(), 1286410249)
        assert(VisualShaderNodeIntParameter._method_set_min_1286410249 != nil)
        let _method_get_min_3905245786_name = StringName(from: "get_min")
        self._method_get_min_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeIntParameter._native_ptr(), _method_get_min_3905245786_name._native_ptr(), 3905245786)
        assert(VisualShaderNodeIntParameter._method_get_min_3905245786 != nil)
        let _method_set_max_1286410249_name = StringName(from: "set_max")
        self._method_set_max_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeIntParameter._native_ptr(), _method_set_max_1286410249_name._native_ptr(), 1286410249)
        assert(VisualShaderNodeIntParameter._method_set_max_1286410249 != nil)
        let _method_get_max_3905245786_name = StringName(from: "get_max")
        self._method_get_max_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeIntParameter._native_ptr(), _method_get_max_3905245786_name._native_ptr(), 3905245786)
        assert(VisualShaderNodeIntParameter._method_get_max_3905245786 != nil)
        let _method_set_step_1286410249_name = StringName(from: "set_step")
        self._method_set_step_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeIntParameter._native_ptr(), _method_set_step_1286410249_name._native_ptr(), 1286410249)
        assert(VisualShaderNodeIntParameter._method_set_step_1286410249 != nil)
        let _method_get_step_3905245786_name = StringName(from: "get_step")
        self._method_get_step_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeIntParameter._native_ptr(), _method_get_step_3905245786_name._native_ptr(), 3905245786)
        assert(VisualShaderNodeIntParameter._method_get_step_3905245786 != nil)
        let _method_set_default_value_enabled_2586408642_name = StringName(from: "set_default_value_enabled")
        self._method_set_default_value_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeIntParameter._native_ptr(), _method_set_default_value_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(VisualShaderNodeIntParameter._method_set_default_value_enabled_2586408642 != nil)
        let _method_is_default_value_enabled_36873697_name = StringName(from: "is_default_value_enabled")
        self._method_is_default_value_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeIntParameter._native_ptr(), _method_is_default_value_enabled_36873697_name._native_ptr(), 36873697)
        assert(VisualShaderNodeIntParameter._method_is_default_value_enabled_36873697 != nil)
        let _method_set_default_value_1286410249_name = StringName(from: "set_default_value")
        self._method_set_default_value_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeIntParameter._native_ptr(), _method_set_default_value_1286410249_name._native_ptr(), 1286410249)
        assert(VisualShaderNodeIntParameter._method_set_default_value_1286410249 != nil)
        let _method_get_default_value_3905245786_name = StringName(from: "get_default_value")
        self._method_get_default_value_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeIntParameter._native_ptr(), _method_get_default_value_3905245786_name._native_ptr(), 3905245786)
        assert(VisualShaderNodeIntParameter._method_get_default_value_3905245786 != nil)
    }

    public func set_hint(hint: VisualShaderNodeIntParameter.Hint)  {
        withUnsafePointer(to: hint.rawValue) { hint_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(hint_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_hint_2540512075,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_hint() -> VisualShaderNodeIntParameter.Hint {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_hint_4250814924,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeIntParameter.Hint(godot: __resPtr.pointee)
    }
    public func set_min(value: Int64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_min_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_min() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_min_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_max(value: Int64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_max_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_max() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_max_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_step(value: Int64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_step_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_step() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_step_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
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
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_default_value(value: Int64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_default_value_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_default_value() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_default_value_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
}