import godot_native

fileprivate var __godot_name_Range: StringName! = nil

/// Abstract base class for range-based controls.
/// 
/// Range is a base class for [Control] nodes that change a floating-point [member value] between a [member min_value] and [member max_value], using a configured [member step] and [member page] size. See e.g. [ScrollBar] and [Slider] for examples of higher level nodes using Range.
open class Range : Control {

    

    public override class var __godot_name: StringName { __godot_name_Range }

    static var _method__value_changed_0: GDExtensionMethodBindPtr! = nil
    static var _method_get_value_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_min_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_step_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_page_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_as_ratio_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_value_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_set_value_no_signal_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_set_min_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_set_max_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_set_step_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_set_page_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_set_as_ratio_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_rounded_values_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_using_rounded_values_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_exp_ratio_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_ratio_exp_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_allow_greater_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_greater_allowed_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_allow_lesser_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_lesser_allowed_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_share_1078189570: GDExtensionMethodBindPtr! = nil
    static var _method_unshare_3218959716: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_Range = StringName(from: "Range")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_get_value_1740695150_name = StringName(from: "get_value")
        self._method_get_value_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_Range._native_ptr(), _method_get_value_1740695150_name._native_ptr(), 1740695150)
        assert(Range._method_get_value_1740695150 != nil)
        let _method_get_min_1740695150_name = StringName(from: "get_min")
        self._method_get_min_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_Range._native_ptr(), _method_get_min_1740695150_name._native_ptr(), 1740695150)
        assert(Range._method_get_min_1740695150 != nil)
        let _method_get_max_1740695150_name = StringName(from: "get_max")
        self._method_get_max_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_Range._native_ptr(), _method_get_max_1740695150_name._native_ptr(), 1740695150)
        assert(Range._method_get_max_1740695150 != nil)
        let _method_get_step_1740695150_name = StringName(from: "get_step")
        self._method_get_step_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_Range._native_ptr(), _method_get_step_1740695150_name._native_ptr(), 1740695150)
        assert(Range._method_get_step_1740695150 != nil)
        let _method_get_page_1740695150_name = StringName(from: "get_page")
        self._method_get_page_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_Range._native_ptr(), _method_get_page_1740695150_name._native_ptr(), 1740695150)
        assert(Range._method_get_page_1740695150 != nil)
        let _method_get_as_ratio_1740695150_name = StringName(from: "get_as_ratio")
        self._method_get_as_ratio_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_Range._native_ptr(), _method_get_as_ratio_1740695150_name._native_ptr(), 1740695150)
        assert(Range._method_get_as_ratio_1740695150 != nil)
        let _method_set_value_373806689_name = StringName(from: "set_value")
        self._method_set_value_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_Range._native_ptr(), _method_set_value_373806689_name._native_ptr(), 373806689)
        assert(Range._method_set_value_373806689 != nil)
        let _method_set_value_no_signal_373806689_name = StringName(from: "set_value_no_signal")
        self._method_set_value_no_signal_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_Range._native_ptr(), _method_set_value_no_signal_373806689_name._native_ptr(), 373806689)
        assert(Range._method_set_value_no_signal_373806689 != nil)
        let _method_set_min_373806689_name = StringName(from: "set_min")
        self._method_set_min_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_Range._native_ptr(), _method_set_min_373806689_name._native_ptr(), 373806689)
        assert(Range._method_set_min_373806689 != nil)
        let _method_set_max_373806689_name = StringName(from: "set_max")
        self._method_set_max_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_Range._native_ptr(), _method_set_max_373806689_name._native_ptr(), 373806689)
        assert(Range._method_set_max_373806689 != nil)
        let _method_set_step_373806689_name = StringName(from: "set_step")
        self._method_set_step_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_Range._native_ptr(), _method_set_step_373806689_name._native_ptr(), 373806689)
        assert(Range._method_set_step_373806689 != nil)
        let _method_set_page_373806689_name = StringName(from: "set_page")
        self._method_set_page_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_Range._native_ptr(), _method_set_page_373806689_name._native_ptr(), 373806689)
        assert(Range._method_set_page_373806689 != nil)
        let _method_set_as_ratio_373806689_name = StringName(from: "set_as_ratio")
        self._method_set_as_ratio_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_Range._native_ptr(), _method_set_as_ratio_373806689_name._native_ptr(), 373806689)
        assert(Range._method_set_as_ratio_373806689 != nil)
        let _method_set_use_rounded_values_2586408642_name = StringName(from: "set_use_rounded_values")
        self._method_set_use_rounded_values_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_Range._native_ptr(), _method_set_use_rounded_values_2586408642_name._native_ptr(), 2586408642)
        assert(Range._method_set_use_rounded_values_2586408642 != nil)
        let _method_is_using_rounded_values_36873697_name = StringName(from: "is_using_rounded_values")
        self._method_is_using_rounded_values_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_Range._native_ptr(), _method_is_using_rounded_values_36873697_name._native_ptr(), 36873697)
        assert(Range._method_is_using_rounded_values_36873697 != nil)
        let _method_set_exp_ratio_2586408642_name = StringName(from: "set_exp_ratio")
        self._method_set_exp_ratio_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_Range._native_ptr(), _method_set_exp_ratio_2586408642_name._native_ptr(), 2586408642)
        assert(Range._method_set_exp_ratio_2586408642 != nil)
        let _method_is_ratio_exp_36873697_name = StringName(from: "is_ratio_exp")
        self._method_is_ratio_exp_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_Range._native_ptr(), _method_is_ratio_exp_36873697_name._native_ptr(), 36873697)
        assert(Range._method_is_ratio_exp_36873697 != nil)
        let _method_set_allow_greater_2586408642_name = StringName(from: "set_allow_greater")
        self._method_set_allow_greater_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_Range._native_ptr(), _method_set_allow_greater_2586408642_name._native_ptr(), 2586408642)
        assert(Range._method_set_allow_greater_2586408642 != nil)
        let _method_is_greater_allowed_36873697_name = StringName(from: "is_greater_allowed")
        self._method_is_greater_allowed_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_Range._native_ptr(), _method_is_greater_allowed_36873697_name._native_ptr(), 36873697)
        assert(Range._method_is_greater_allowed_36873697 != nil)
        let _method_set_allow_lesser_2586408642_name = StringName(from: "set_allow_lesser")
        self._method_set_allow_lesser_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_Range._native_ptr(), _method_set_allow_lesser_2586408642_name._native_ptr(), 2586408642)
        assert(Range._method_set_allow_lesser_2586408642 != nil)
        let _method_is_lesser_allowed_36873697_name = StringName(from: "is_lesser_allowed")
        self._method_is_lesser_allowed_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_Range._native_ptr(), _method_is_lesser_allowed_36873697_name._native_ptr(), 36873697)
        assert(Range._method_is_lesser_allowed_36873697 != nil)
        let _method_share_1078189570_name = StringName(from: "share")
        self._method_share_1078189570 = self.interface.pointee.classdb_get_method_bind(__godot_name_Range._native_ptr(), _method_share_1078189570_name._native_ptr(), 1078189570)
        assert(Range._method_share_1078189570 != nil)
        let _method_unshare_3218959716_name = StringName(from: "unshare")
        self._method_unshare_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_Range._native_ptr(), _method_unshare_3218959716_name._native_ptr(), 3218959716)
        assert(Range._method_unshare_3218959716 != nil)
    }

    public func _value_changed(new_value: Float64)  {
        withUnsafePointer(to: new_value) { new_value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(new_value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__value_changed_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_value() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_value_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
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
            return Float64(godot: __resPtr.pointee)
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
            return Float64(godot: __resPtr.pointee)
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
            return Float64(godot: __resPtr.pointee)
    }
    public func get_page() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_page_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func get_as_ratio() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_as_ratio_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_value(value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_value_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_value_no_signal(value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_value_no_signal_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_min(minimum: Float64)  {
        withUnsafePointer(to: minimum) { minimum_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(minimum_native)
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
    public func set_max(maximum: Float64)  {
        withUnsafePointer(to: maximum) { maximum_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(maximum_native)
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
    public func set_step(step: Float64)  {
        withUnsafePointer(to: step) { step_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(step_native)
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
    public func set_page(pagesize: Float64)  {
        withUnsafePointer(to: pagesize) { pagesize_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pagesize_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_page_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_as_ratio(value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_as_ratio_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_use_rounded_values(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_use_rounded_values_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_using_rounded_values() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_using_rounded_values_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_exp_ratio(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_exp_ratio_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_ratio_exp() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_ratio_exp_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_allow_greater(allow: UInt8)  {
        withUnsafePointer(to: allow) { allow_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(allow_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_allow_greater_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_greater_allowed() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_greater_allowed_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_allow_lesser(allow: UInt8)  {
        withUnsafePointer(to: allow) { allow_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(allow_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_allow_lesser_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_lesser_allowed() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_lesser_allowed_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func share(with: Node)  {
        let with_native = with._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(with_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_share_1078189570,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func unshare()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_unshare_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}