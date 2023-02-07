import godot_native

fileprivate var __godot_name_Light3D: StringName! = nil

/// Provides a base class for different kinds of light nodes.
/// 
/// Light3D is the [i]abstract[/i] base class for light nodes. As it can't be instantiated, it shouldn't be used directly. Other types of light nodes inherit from it. Light3D contains the common variables and parameters used for lighting.
public class Light3D : VisualInstance3D {

    public enum Param : Int32 {
        case PARAM_ENERGY = 0
        case PARAM_INDIRECT_ENERGY = 1
        case PARAM_VOLUMETRIC_FOG_ENERGY = 2
        case PARAM_SPECULAR = 3
        case PARAM_RANGE = 4
        case PARAM_SIZE = 5
        case PARAM_ATTENUATION = 6
        case PARAM_SPOT_ANGLE = 7
        case PARAM_SPOT_ATTENUATION = 8
        case PARAM_SHADOW_MAX_DISTANCE = 9
        case PARAM_SHADOW_SPLIT_1_OFFSET = 10
        case PARAM_SHADOW_SPLIT_2_OFFSET = 11
        case PARAM_SHADOW_SPLIT_3_OFFSET = 12
        case PARAM_SHADOW_FADE_START = 13
        case PARAM_SHADOW_NORMAL_BIAS = 14
        case PARAM_SHADOW_BIAS = 15
        case PARAM_SHADOW_PANCAKE_SIZE = 16
        case PARAM_SHADOW_OPACITY = 17
        case PARAM_SHADOW_BLUR = 18
        case PARAM_TRANSMITTANCE_BIAS = 19
        case PARAM_INTENSITY = 20
        case PARAM_MAX = 21
    }
    public enum BakeMode : Int32 {
        case BAKE_DISABLED = 0
        case BAKE_STATIC = 1
        case BAKE_DYNAMIC = 2
    }

    public override class var __godot_name: StringName { __godot_name_Light3D }

    static var _method_set_editor_only_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_editor_only_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_param_1722734213: GDExtensionMethodBindPtr! = nil
    static var _method_get_param_1844084987: GDExtensionMethodBindPtr! = nil
    static var _method_set_shadow_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_has_shadow_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_negative_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_negative_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_cull_mask_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_cull_mask_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_enable_distance_fade_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_distance_fade_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_distance_fade_begin_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_distance_fade_begin_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_distance_fade_shadow_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_distance_fade_shadow_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_distance_fade_length_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_distance_fade_length_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_shadow_reverse_cull_face_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_shadow_reverse_cull_face_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_bake_mode_37739303: GDExtensionMethodBindPtr! = nil
    static var _method_get_bake_mode_371737608: GDExtensionMethodBindPtr! = nil
    static var _method_set_projector_4051416890: GDExtensionMethodBindPtr! = nil
    static var _method_get_projector_3635182373: GDExtensionMethodBindPtr! = nil
    static var _method_set_temperature_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_temperature_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_correlated_color_3444240500: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Light3D = StringName(from: "Light3D")

        let _method_set_editor_only_2586408642_name = StringName(from: "set_editor_only")
        self._method_set_editor_only_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_editor_only_2586408642_name._native_ptr(), 2586408642)
        assert(Light3D._method_set_editor_only_2586408642 != nil)
        let _method_is_editor_only_36873697_name = StringName(from: "is_editor_only")
        self._method_is_editor_only_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_editor_only_36873697_name._native_ptr(), 36873697)
        assert(Light3D._method_is_editor_only_36873697 != nil)
        let _method_set_param_1722734213_name = StringName(from: "set_param")
        self._method_set_param_1722734213 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_param_1722734213_name._native_ptr(), 1722734213)
        assert(Light3D._method_set_param_1722734213 != nil)
        let _method_get_param_1844084987_name = StringName(from: "get_param")
        self._method_get_param_1844084987 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_param_1844084987_name._native_ptr(), 1844084987)
        assert(Light3D._method_get_param_1844084987 != nil)
        let _method_set_shadow_2586408642_name = StringName(from: "set_shadow")
        self._method_set_shadow_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_shadow_2586408642_name._native_ptr(), 2586408642)
        assert(Light3D._method_set_shadow_2586408642 != nil)
        let _method_has_shadow_36873697_name = StringName(from: "has_shadow")
        self._method_has_shadow_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_shadow_36873697_name._native_ptr(), 36873697)
        assert(Light3D._method_has_shadow_36873697 != nil)
        let _method_set_negative_2586408642_name = StringName(from: "set_negative")
        self._method_set_negative_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_negative_2586408642_name._native_ptr(), 2586408642)
        assert(Light3D._method_set_negative_2586408642 != nil)
        let _method_is_negative_36873697_name = StringName(from: "is_negative")
        self._method_is_negative_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_negative_36873697_name._native_ptr(), 36873697)
        assert(Light3D._method_is_negative_36873697 != nil)
        let _method_set_cull_mask_1286410249_name = StringName(from: "set_cull_mask")
        self._method_set_cull_mask_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_cull_mask_1286410249_name._native_ptr(), 1286410249)
        assert(Light3D._method_set_cull_mask_1286410249 != nil)
        let _method_get_cull_mask_3905245786_name = StringName(from: "get_cull_mask")
        self._method_get_cull_mask_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_cull_mask_3905245786_name._native_ptr(), 3905245786)
        assert(Light3D._method_get_cull_mask_3905245786 != nil)
        let _method_set_enable_distance_fade_2586408642_name = StringName(from: "set_enable_distance_fade")
        self._method_set_enable_distance_fade_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_enable_distance_fade_2586408642_name._native_ptr(), 2586408642)
        assert(Light3D._method_set_enable_distance_fade_2586408642 != nil)
        let _method_is_distance_fade_enabled_36873697_name = StringName(from: "is_distance_fade_enabled")
        self._method_is_distance_fade_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_distance_fade_enabled_36873697_name._native_ptr(), 36873697)
        assert(Light3D._method_is_distance_fade_enabled_36873697 != nil)
        let _method_set_distance_fade_begin_373806689_name = StringName(from: "set_distance_fade_begin")
        self._method_set_distance_fade_begin_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_distance_fade_begin_373806689_name._native_ptr(), 373806689)
        assert(Light3D._method_set_distance_fade_begin_373806689 != nil)
        let _method_get_distance_fade_begin_1740695150_name = StringName(from: "get_distance_fade_begin")
        self._method_get_distance_fade_begin_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_distance_fade_begin_1740695150_name._native_ptr(), 1740695150)
        assert(Light3D._method_get_distance_fade_begin_1740695150 != nil)
        let _method_set_distance_fade_shadow_373806689_name = StringName(from: "set_distance_fade_shadow")
        self._method_set_distance_fade_shadow_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_distance_fade_shadow_373806689_name._native_ptr(), 373806689)
        assert(Light3D._method_set_distance_fade_shadow_373806689 != nil)
        let _method_get_distance_fade_shadow_1740695150_name = StringName(from: "get_distance_fade_shadow")
        self._method_get_distance_fade_shadow_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_distance_fade_shadow_1740695150_name._native_ptr(), 1740695150)
        assert(Light3D._method_get_distance_fade_shadow_1740695150 != nil)
        let _method_set_distance_fade_length_373806689_name = StringName(from: "set_distance_fade_length")
        self._method_set_distance_fade_length_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_distance_fade_length_373806689_name._native_ptr(), 373806689)
        assert(Light3D._method_set_distance_fade_length_373806689 != nil)
        let _method_get_distance_fade_length_1740695150_name = StringName(from: "get_distance_fade_length")
        self._method_get_distance_fade_length_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_distance_fade_length_1740695150_name._native_ptr(), 1740695150)
        assert(Light3D._method_get_distance_fade_length_1740695150 != nil)
        let _method_set_color_2920490490_name = StringName(from: "set_color")
        self._method_set_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_color_2920490490_name._native_ptr(), 2920490490)
        assert(Light3D._method_set_color_2920490490 != nil)
        let _method_get_color_3444240500_name = StringName(from: "get_color")
        self._method_get_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_color_3444240500_name._native_ptr(), 3444240500)
        assert(Light3D._method_get_color_3444240500 != nil)
        let _method_set_shadow_reverse_cull_face_2586408642_name = StringName(from: "set_shadow_reverse_cull_face")
        self._method_set_shadow_reverse_cull_face_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_shadow_reverse_cull_face_2586408642_name._native_ptr(), 2586408642)
        assert(Light3D._method_set_shadow_reverse_cull_face_2586408642 != nil)
        let _method_get_shadow_reverse_cull_face_36873697_name = StringName(from: "get_shadow_reverse_cull_face")
        self._method_get_shadow_reverse_cull_face_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_shadow_reverse_cull_face_36873697_name._native_ptr(), 36873697)
        assert(Light3D._method_get_shadow_reverse_cull_face_36873697 != nil)
        let _method_set_bake_mode_37739303_name = StringName(from: "set_bake_mode")
        self._method_set_bake_mode_37739303 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_bake_mode_37739303_name._native_ptr(), 37739303)
        assert(Light3D._method_set_bake_mode_37739303 != nil)
        let _method_get_bake_mode_371737608_name = StringName(from: "get_bake_mode")
        self._method_get_bake_mode_371737608 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_bake_mode_371737608_name._native_ptr(), 371737608)
        assert(Light3D._method_get_bake_mode_371737608 != nil)
        let _method_set_projector_4051416890_name = StringName(from: "set_projector")
        self._method_set_projector_4051416890 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_projector_4051416890_name._native_ptr(), 4051416890)
        assert(Light3D._method_set_projector_4051416890 != nil)
        let _method_get_projector_3635182373_name = StringName(from: "get_projector")
        self._method_get_projector_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_projector_3635182373_name._native_ptr(), 3635182373)
        assert(Light3D._method_get_projector_3635182373 != nil)
        let _method_set_temperature_373806689_name = StringName(from: "set_temperature")
        self._method_set_temperature_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_temperature_373806689_name._native_ptr(), 373806689)
        assert(Light3D._method_set_temperature_373806689 != nil)
        let _method_get_temperature_1740695150_name = StringName(from: "get_temperature")
        self._method_get_temperature_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_temperature_1740695150_name._native_ptr(), 1740695150)
        assert(Light3D._method_get_temperature_1740695150 != nil)
        let _method_get_correlated_color_3444240500_name = StringName(from: "get_correlated_color")
        self._method_get_correlated_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_correlated_color_3444240500_name._native_ptr(), 3444240500)
        assert(Light3D._method_get_correlated_color_3444240500 != nil)
    }

    public func set_editor_only(editor_only: UInt8)  {
        withUnsafePointer(to: editor_only) { editor_only_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(editor_only_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_editor_only_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_editor_only() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_editor_only_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_param(param: Light3D.Param, value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: param.rawValue) { param_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(param_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_param_1722734213,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_param(param: Light3D.Param) -> Float64 {
        withUnsafePointer(to: param.rawValue) { param_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(param_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_param_1844084987,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func set_shadow(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_shadow_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func has_shadow() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_shadow_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_negative(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_negative_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_negative() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_negative_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_cull_mask(cull_mask: Int64)  {
        withUnsafePointer(to: cull_mask) { cull_mask_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cull_mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cull_mask_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_cull_mask() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cull_mask_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_enable_distance_fade(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_enable_distance_fade_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_distance_fade_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_distance_fade_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_distance_fade_begin(distance: Float64)  {
        withUnsafePointer(to: distance) { distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(distance_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_distance_fade_begin_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_distance_fade_begin() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_distance_fade_begin_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_distance_fade_shadow(distance: Float64)  {
        withUnsafePointer(to: distance) { distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(distance_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_distance_fade_shadow_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_distance_fade_shadow() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_distance_fade_shadow_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_distance_fade_length(distance: Float64)  {
        withUnsafePointer(to: distance) { distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(distance_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_distance_fade_length_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_distance_fade_length() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_distance_fade_length_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_shadow_reverse_cull_face(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_shadow_reverse_cull_face_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_shadow_reverse_cull_face() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_shadow_reverse_cull_face_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_bake_mode(bake_mode: Light3D.BakeMode)  {
        withUnsafePointer(to: bake_mode.rawValue) { bake_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bake_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bake_mode_37739303,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_bake_mode() -> Light3D.BakeMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bake_mode_371737608,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Light3D.BakeMode(from: __resPtr.pointee)
    }
    public func set_projector(projector: Texture2D)  {
        let projector_native = projector._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(projector_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_projector_4051416890,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_projector() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_projector_3635182373,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(from: __resPtr.pointee)
    }
    public func set_temperature(temperature: Float64)  {
        withUnsafePointer(to: temperature) { temperature_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(temperature_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_temperature_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_temperature() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_temperature_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func get_correlated_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_correlated_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
}