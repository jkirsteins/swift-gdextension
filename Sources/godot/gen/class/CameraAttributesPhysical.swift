import godot_native

fileprivate var __godot_name_CameraAttributesPhysical: StringName! = nil

/// Physically-based camera settings.
/// 
/// [CameraAttributesPhysical] is used to set rendering settings based on a physically-based camera's settings. It is responsible for exposure, auto-exposure, and depth of field.
///  
/// When used in a [WorldEnvironment] it provides default settings for exposure, auto-exposure, and depth of field that will be used by all cameras without their own [CameraAttributes], including the editor camera. When used in a [Camera3D] it will override any [CameraAttributes] set in the [WorldEnvironment] and will override the [Camera3D]s [member Camera3D.far], [member Camera3D.near], [member Camera3D.fov], and [member Camera3D.keep_aspect] properties. When used in [VoxelGI] or [LightmapGI], only the exposure settings will be used.
///  
/// The default settings are intended for use in an outdoor environment, tips for settings for use in an indoor environment can be found in each setting's documentation.
public class CameraAttributesPhysical : CameraAttributes {

    

    public override class var __godot_name: StringName { __godot_name_CameraAttributesPhysical }

    static var _method_set_aperture_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_aperture_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_shutter_speed_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_shutter_speed_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_focal_length_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_focal_length_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_focus_distance_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_focus_distance_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_near_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_near_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_far_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_far_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_fov_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_auto_exposure_max_exposure_value_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_auto_exposure_max_exposure_value_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_auto_exposure_min_exposure_value_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_auto_exposure_min_exposure_value_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_CameraAttributesPhysical = StringName(from: "CameraAttributesPhysical")

        let _method_set_aperture_373806689_name = StringName(from: "set_aperture")
        self._method_set_aperture_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_aperture_373806689_name._native_ptr(), 373806689)
        assert(CameraAttributesPhysical._method_set_aperture_373806689 != nil)
        let _method_get_aperture_1740695150_name = StringName(from: "get_aperture")
        self._method_get_aperture_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_aperture_1740695150_name._native_ptr(), 1740695150)
        assert(CameraAttributesPhysical._method_get_aperture_1740695150 != nil)
        let _method_set_shutter_speed_373806689_name = StringName(from: "set_shutter_speed")
        self._method_set_shutter_speed_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_shutter_speed_373806689_name._native_ptr(), 373806689)
        assert(CameraAttributesPhysical._method_set_shutter_speed_373806689 != nil)
        let _method_get_shutter_speed_1740695150_name = StringName(from: "get_shutter_speed")
        self._method_get_shutter_speed_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_shutter_speed_1740695150_name._native_ptr(), 1740695150)
        assert(CameraAttributesPhysical._method_get_shutter_speed_1740695150 != nil)
        let _method_set_focal_length_373806689_name = StringName(from: "set_focal_length")
        self._method_set_focal_length_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_focal_length_373806689_name._native_ptr(), 373806689)
        assert(CameraAttributesPhysical._method_set_focal_length_373806689 != nil)
        let _method_get_focal_length_1740695150_name = StringName(from: "get_focal_length")
        self._method_get_focal_length_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_focal_length_1740695150_name._native_ptr(), 1740695150)
        assert(CameraAttributesPhysical._method_get_focal_length_1740695150 != nil)
        let _method_set_focus_distance_373806689_name = StringName(from: "set_focus_distance")
        self._method_set_focus_distance_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_focus_distance_373806689_name._native_ptr(), 373806689)
        assert(CameraAttributesPhysical._method_set_focus_distance_373806689 != nil)
        let _method_get_focus_distance_1740695150_name = StringName(from: "get_focus_distance")
        self._method_get_focus_distance_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_focus_distance_1740695150_name._native_ptr(), 1740695150)
        assert(CameraAttributesPhysical._method_get_focus_distance_1740695150 != nil)
        let _method_set_near_373806689_name = StringName(from: "set_near")
        self._method_set_near_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_near_373806689_name._native_ptr(), 373806689)
        assert(CameraAttributesPhysical._method_set_near_373806689 != nil)
        let _method_get_near_1740695150_name = StringName(from: "get_near")
        self._method_get_near_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_near_1740695150_name._native_ptr(), 1740695150)
        assert(CameraAttributesPhysical._method_get_near_1740695150 != nil)
        let _method_set_far_373806689_name = StringName(from: "set_far")
        self._method_set_far_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_far_373806689_name._native_ptr(), 373806689)
        assert(CameraAttributesPhysical._method_set_far_373806689 != nil)
        let _method_get_far_1740695150_name = StringName(from: "get_far")
        self._method_get_far_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_far_1740695150_name._native_ptr(), 1740695150)
        assert(CameraAttributesPhysical._method_get_far_1740695150 != nil)
        let _method_get_fov_1740695150_name = StringName(from: "get_fov")
        self._method_get_fov_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_fov_1740695150_name._native_ptr(), 1740695150)
        assert(CameraAttributesPhysical._method_get_fov_1740695150 != nil)
        let _method_set_auto_exposure_max_exposure_value_373806689_name = StringName(from: "set_auto_exposure_max_exposure_value")
        self._method_set_auto_exposure_max_exposure_value_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_auto_exposure_max_exposure_value_373806689_name._native_ptr(), 373806689)
        assert(CameraAttributesPhysical._method_set_auto_exposure_max_exposure_value_373806689 != nil)
        let _method_get_auto_exposure_max_exposure_value_1740695150_name = StringName(from: "get_auto_exposure_max_exposure_value")
        self._method_get_auto_exposure_max_exposure_value_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_auto_exposure_max_exposure_value_1740695150_name._native_ptr(), 1740695150)
        assert(CameraAttributesPhysical._method_get_auto_exposure_max_exposure_value_1740695150 != nil)
        let _method_set_auto_exposure_min_exposure_value_373806689_name = StringName(from: "set_auto_exposure_min_exposure_value")
        self._method_set_auto_exposure_min_exposure_value_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_auto_exposure_min_exposure_value_373806689_name._native_ptr(), 373806689)
        assert(CameraAttributesPhysical._method_set_auto_exposure_min_exposure_value_373806689 != nil)
        let _method_get_auto_exposure_min_exposure_value_1740695150_name = StringName(from: "get_auto_exposure_min_exposure_value")
        self._method_get_auto_exposure_min_exposure_value_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_auto_exposure_min_exposure_value_1740695150_name._native_ptr(), 1740695150)
        assert(CameraAttributesPhysical._method_get_auto_exposure_min_exposure_value_1740695150 != nil)
    }

    public func set_aperture(aperture: Float64)  {
        withUnsafePointer(to: aperture) { aperture_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(aperture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_aperture_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_aperture() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_aperture_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_shutter_speed(shutter_speed: Float64)  {
        withUnsafePointer(to: shutter_speed) { shutter_speed_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shutter_speed_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_shutter_speed_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_shutter_speed() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_shutter_speed_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_focal_length(focal_length: Float64)  {
        withUnsafePointer(to: focal_length) { focal_length_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(focal_length_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_focal_length_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_focal_length() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_focal_length_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_focus_distance(focus_distance: Float64)  {
        withUnsafePointer(to: focus_distance) { focus_distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(focus_distance_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_focus_distance_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_focus_distance() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_focus_distance_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_near(near: Float64)  {
        withUnsafePointer(to: near) { near_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(near_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_near_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_near() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_near_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_far(far: Float64)  {
        withUnsafePointer(to: far) { far_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(far_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_far_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_far() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_far_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func get_fov() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_fov_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_auto_exposure_max_exposure_value(exposure_value_max: Float64)  {
        withUnsafePointer(to: exposure_value_max) { exposure_value_max_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(exposure_value_max_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_auto_exposure_max_exposure_value_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_auto_exposure_max_exposure_value() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_auto_exposure_max_exposure_value_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_auto_exposure_min_exposure_value(exposure_value_min: Float64)  {
        withUnsafePointer(to: exposure_value_min) { exposure_value_min_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(exposure_value_min_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_auto_exposure_min_exposure_value_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_auto_exposure_min_exposure_value() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_auto_exposure_min_exposure_value_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
}