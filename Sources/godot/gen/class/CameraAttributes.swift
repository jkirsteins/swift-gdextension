import godot_native

fileprivate var __godot_name_CameraAttributes: StringName! = nil

/// Parent class for camera settings.
/// 
/// Controls camera-specific attributes such as depth of field and exposure override.
///  
/// When used in a [WorldEnvironment] it provides default settings for exposure, auto-exposure, and depth of field that will be used by all cameras without their own [CameraAttributes], including the editor camera. When used in a [Camera3D] it will override any [CameraAttributes] set in the [WorldEnvironment]. When used in [VoxelGI] or [LightmapGI], only the exposure settings will be used.
///  
/// See also [Environment] for general 3D environment settings.
///  
/// This is a pure virtual class that is inherited by [CameraAttributesPhysical] and [CameraAttributesPractical].
public class CameraAttributes : Resource {

    

    public override class var __godot_name: StringName { __godot_name_CameraAttributes }

    static var _method_set_exposure_multiplier_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_exposure_multiplier_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_exposure_sensitivity_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_exposure_sensitivity_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_auto_exposure_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_auto_exposure_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_auto_exposure_speed_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_auto_exposure_speed_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_auto_exposure_scale_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_auto_exposure_scale_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_CameraAttributes = StringName(from: "CameraAttributes")

        let _method_set_exposure_multiplier_373806689_name = StringName(from: "set_exposure_multiplier")
        self._method_set_exposure_multiplier_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_exposure_multiplier_373806689_name._native_ptr(), 373806689)
        assert(CameraAttributes._method_set_exposure_multiplier_373806689 != nil)
        let _method_get_exposure_multiplier_1740695150_name = StringName(from: "get_exposure_multiplier")
        self._method_get_exposure_multiplier_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_exposure_multiplier_1740695150_name._native_ptr(), 1740695150)
        assert(CameraAttributes._method_get_exposure_multiplier_1740695150 != nil)
        let _method_set_exposure_sensitivity_373806689_name = StringName(from: "set_exposure_sensitivity")
        self._method_set_exposure_sensitivity_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_exposure_sensitivity_373806689_name._native_ptr(), 373806689)
        assert(CameraAttributes._method_set_exposure_sensitivity_373806689 != nil)
        let _method_get_exposure_sensitivity_1740695150_name = StringName(from: "get_exposure_sensitivity")
        self._method_get_exposure_sensitivity_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_exposure_sensitivity_1740695150_name._native_ptr(), 1740695150)
        assert(CameraAttributes._method_get_exposure_sensitivity_1740695150 != nil)
        let _method_set_auto_exposure_enabled_2586408642_name = StringName(from: "set_auto_exposure_enabled")
        self._method_set_auto_exposure_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_auto_exposure_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(CameraAttributes._method_set_auto_exposure_enabled_2586408642 != nil)
        let _method_is_auto_exposure_enabled_36873697_name = StringName(from: "is_auto_exposure_enabled")
        self._method_is_auto_exposure_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_auto_exposure_enabled_36873697_name._native_ptr(), 36873697)
        assert(CameraAttributes._method_is_auto_exposure_enabled_36873697 != nil)
        let _method_set_auto_exposure_speed_373806689_name = StringName(from: "set_auto_exposure_speed")
        self._method_set_auto_exposure_speed_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_auto_exposure_speed_373806689_name._native_ptr(), 373806689)
        assert(CameraAttributes._method_set_auto_exposure_speed_373806689 != nil)
        let _method_get_auto_exposure_speed_1740695150_name = StringName(from: "get_auto_exposure_speed")
        self._method_get_auto_exposure_speed_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_auto_exposure_speed_1740695150_name._native_ptr(), 1740695150)
        assert(CameraAttributes._method_get_auto_exposure_speed_1740695150 != nil)
        let _method_set_auto_exposure_scale_373806689_name = StringName(from: "set_auto_exposure_scale")
        self._method_set_auto_exposure_scale_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_auto_exposure_scale_373806689_name._native_ptr(), 373806689)
        assert(CameraAttributes._method_set_auto_exposure_scale_373806689 != nil)
        let _method_get_auto_exposure_scale_1740695150_name = StringName(from: "get_auto_exposure_scale")
        self._method_get_auto_exposure_scale_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_auto_exposure_scale_1740695150_name._native_ptr(), 1740695150)
        assert(CameraAttributes._method_get_auto_exposure_scale_1740695150 != nil)
    }

    public func set_exposure_multiplier(multiplier: Float64)  {
        withUnsafePointer(to: multiplier) { multiplier_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(multiplier_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_exposure_multiplier_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_exposure_multiplier() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_exposure_multiplier_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_exposure_sensitivity(sensitivity: Float64)  {
        withUnsafePointer(to: sensitivity) { sensitivity_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sensitivity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_exposure_sensitivity_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_exposure_sensitivity() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_exposure_sensitivity_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_auto_exposure_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_auto_exposure_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_auto_exposure_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_auto_exposure_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_auto_exposure_speed(exposure_speed: Float64)  {
        withUnsafePointer(to: exposure_speed) { exposure_speed_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(exposure_speed_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_auto_exposure_speed_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_auto_exposure_speed() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_auto_exposure_speed_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_auto_exposure_scale(exposure_grey: Float64)  {
        withUnsafePointer(to: exposure_grey) { exposure_grey_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(exposure_grey_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_auto_exposure_scale_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_auto_exposure_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_auto_exposure_scale_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
}