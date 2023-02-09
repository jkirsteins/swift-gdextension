import godot_native

fileprivate var __godot_name_CameraAttributesPractical: StringName! = nil

/// Camera settings in an easy to use format.
/// 
/// Controls camera-specific attributes such as auto-exposure, depth of field, and exposure override.
///  
/// When used in a [WorldEnvironment] it provides default settings for exposure, auto-exposure, and depth of field that will be used by all cameras without their own [CameraAttributes], including the editor camera. When used in a [Camera3D] it will override any [CameraAttributes] set in the [WorldEnvironment]. When used in [VoxelGI] or [LightmapGI], only the exposure settings will be used.
open class CameraAttributesPractical : CameraAttributes {

    

    public override class var __godot_name: StringName { __godot_name_CameraAttributesPractical }

    static var _method_set_dof_blur_far_enabled_2586408642: StringName! = nil
    static var _method_is_dof_blur_far_enabled_36873697: StringName! = nil
    static var _method_set_dof_blur_far_distance_373806689: StringName! = nil
    static var _method_get_dof_blur_far_distance_1740695150: StringName! = nil
    static var _method_set_dof_blur_far_transition_373806689: StringName! = nil
    static var _method_get_dof_blur_far_transition_1740695150: StringName! = nil
    static var _method_set_dof_blur_near_enabled_2586408642: StringName! = nil
    static var _method_is_dof_blur_near_enabled_36873697: StringName! = nil
    static var _method_set_dof_blur_near_distance_373806689: StringName! = nil
    static var _method_get_dof_blur_near_distance_1740695150: StringName! = nil
    static var _method_set_dof_blur_near_transition_373806689: StringName! = nil
    static var _method_get_dof_blur_near_transition_1740695150: StringName! = nil
    static var _method_set_dof_blur_amount_373806689: StringName! = nil
    static var _method_get_dof_blur_amount_1740695150: StringName! = nil
    static var _method_set_auto_exposure_max_sensitivity_373806689: StringName! = nil
    static var _method_get_auto_exposure_max_sensitivity_1740695150: StringName! = nil
    static var _method_set_auto_exposure_min_sensitivity_373806689: StringName! = nil
    static var _method_get_auto_exposure_min_sensitivity_1740695150: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_CameraAttributesPractical == nil)
        __godot_name_CameraAttributesPractical = StringName(from: "CameraAttributesPractical")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_dof_blur_far_enabled_2586408642 = StringName(from: "set_dof_blur_far_enabled")
        assert(self._method_set_dof_blur_far_enabled_2586408642 != nil)
        self._method_is_dof_blur_far_enabled_36873697 = StringName(from: "is_dof_blur_far_enabled")
        assert(self._method_is_dof_blur_far_enabled_36873697 != nil)
        self._method_set_dof_blur_far_distance_373806689 = StringName(from: "set_dof_blur_far_distance")
        assert(self._method_set_dof_blur_far_distance_373806689 != nil)
        self._method_get_dof_blur_far_distance_1740695150 = StringName(from: "get_dof_blur_far_distance")
        assert(self._method_get_dof_blur_far_distance_1740695150 != nil)
        self._method_set_dof_blur_far_transition_373806689 = StringName(from: "set_dof_blur_far_transition")
        assert(self._method_set_dof_blur_far_transition_373806689 != nil)
        self._method_get_dof_blur_far_transition_1740695150 = StringName(from: "get_dof_blur_far_transition")
        assert(self._method_get_dof_blur_far_transition_1740695150 != nil)
        self._method_set_dof_blur_near_enabled_2586408642 = StringName(from: "set_dof_blur_near_enabled")
        assert(self._method_set_dof_blur_near_enabled_2586408642 != nil)
        self._method_is_dof_blur_near_enabled_36873697 = StringName(from: "is_dof_blur_near_enabled")
        assert(self._method_is_dof_blur_near_enabled_36873697 != nil)
        self._method_set_dof_blur_near_distance_373806689 = StringName(from: "set_dof_blur_near_distance")
        assert(self._method_set_dof_blur_near_distance_373806689 != nil)
        self._method_get_dof_blur_near_distance_1740695150 = StringName(from: "get_dof_blur_near_distance")
        assert(self._method_get_dof_blur_near_distance_1740695150 != nil)
        self._method_set_dof_blur_near_transition_373806689 = StringName(from: "set_dof_blur_near_transition")
        assert(self._method_set_dof_blur_near_transition_373806689 != nil)
        self._method_get_dof_blur_near_transition_1740695150 = StringName(from: "get_dof_blur_near_transition")
        assert(self._method_get_dof_blur_near_transition_1740695150 != nil)
        self._method_set_dof_blur_amount_373806689 = StringName(from: "set_dof_blur_amount")
        assert(self._method_set_dof_blur_amount_373806689 != nil)
        self._method_get_dof_blur_amount_1740695150 = StringName(from: "get_dof_blur_amount")
        assert(self._method_get_dof_blur_amount_1740695150 != nil)
        self._method_set_auto_exposure_max_sensitivity_373806689 = StringName(from: "set_auto_exposure_max_sensitivity")
        assert(self._method_set_auto_exposure_max_sensitivity_373806689 != nil)
        self._method_get_auto_exposure_max_sensitivity_1740695150 = StringName(from: "get_auto_exposure_max_sensitivity")
        assert(self._method_get_auto_exposure_max_sensitivity_1740695150 != nil)
        self._method_set_auto_exposure_min_sensitivity_373806689 = StringName(from: "set_auto_exposure_min_sensitivity")
        assert(self._method_set_auto_exposure_min_sensitivity_373806689 != nil)
        self._method_get_auto_exposure_min_sensitivity_1740695150 = StringName(from: "get_auto_exposure_min_sensitivity")
        assert(self._method_get_auto_exposure_min_sensitivity_1740695150 != nil)
    }

    public func set_dof_blur_far_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_dof_blur_far_enabled_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_dof_blur_far_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_dof_blur_far_enabled_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_dof_blur_far_distance(distance: Float64)  {
        withUnsafePointer(to: distance) { distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(distance_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_dof_blur_far_distance_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_dof_blur_far_distance() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_dof_blur_far_distance_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_dof_blur_far_transition(distance: Float64)  {
        withUnsafePointer(to: distance) { distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(distance_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_dof_blur_far_transition_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_dof_blur_far_transition() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_dof_blur_far_transition_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_dof_blur_near_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_dof_blur_near_enabled_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_dof_blur_near_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_dof_blur_near_enabled_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_dof_blur_near_distance(distance: Float64)  {
        withUnsafePointer(to: distance) { distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(distance_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_dof_blur_near_distance_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_dof_blur_near_distance() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_dof_blur_near_distance_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_dof_blur_near_transition(distance: Float64)  {
        withUnsafePointer(to: distance) { distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(distance_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_dof_blur_near_transition_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_dof_blur_near_transition() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_dof_blur_near_transition_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_dof_blur_amount(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_dof_blur_amount_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_dof_blur_amount() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_dof_blur_amount_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_auto_exposure_max_sensitivity(max_sensitivity: Float64)  {
        withUnsafePointer(to: max_sensitivity) { max_sensitivity_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_sensitivity_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_auto_exposure_max_sensitivity_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_auto_exposure_max_sensitivity() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_auto_exposure_max_sensitivity_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_auto_exposure_min_sensitivity(min_sensitivity: Float64)  {
        withUnsafePointer(to: min_sensitivity) { min_sensitivity_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(min_sensitivity_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_auto_exposure_min_sensitivity_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_auto_exposure_min_sensitivity() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_auto_exposure_min_sensitivity_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
}