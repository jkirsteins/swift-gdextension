import godot_native

fileprivate var __godot_name_GeometryInstance3D: StringName! = nil

/// Base node for geometry-based visual instances.
/// 
/// Base node for geometry-based visual instances. Shares some common functionality like visibility and custom materials.
open class GeometryInstance3D : VisualInstance3D {

    public enum ShadowCastingSetting : Int32 {
        case SHADOW_CASTING_SETTING_OFF = 0
        case SHADOW_CASTING_SETTING_ON = 1
        case SHADOW_CASTING_SETTING_DOUBLE_SIDED = 2
        case SHADOW_CASTING_SETTING_SHADOWS_ONLY = 3
    }
    public enum GIMode : Int32 {
        case GI_MODE_DISABLED = 0
        case GI_MODE_STATIC = 1
        case GI_MODE_DYNAMIC = 2
    }
    public enum LightmapScale : Int32 {
        case LIGHTMAP_SCALE_1X = 0
        case LIGHTMAP_SCALE_2X = 1
        case LIGHTMAP_SCALE_4X = 2
        case LIGHTMAP_SCALE_8X = 3
        case LIGHTMAP_SCALE_MAX = 4
    }
    public enum VisibilityRangeFadeMode : Int32 {
        case VISIBILITY_RANGE_FADE_DISABLED = 0
        case VISIBILITY_RANGE_FADE_SELF = 1
        case VISIBILITY_RANGE_FADE_DEPENDENCIES = 2
    }

    public override class var __godot_name: StringName { __godot_name_GeometryInstance3D }

    static var _method_set_material_override_2757459619: StringName! = nil
    static var _method_get_material_override_5934680: StringName! = nil
    static var _method_set_material_overlay_2757459619: StringName! = nil
    static var _method_get_material_overlay_5934680: StringName! = nil
    static var _method_set_cast_shadows_setting_856677339: StringName! = nil
    static var _method_get_cast_shadows_setting_3383019359: StringName! = nil
    static var _method_set_lod_bias_373806689: StringName! = nil
    static var _method_get_lod_bias_1740695150: StringName! = nil
    static var _method_set_transparency_373806689: StringName! = nil
    static var _method_get_transparency_1740695150: StringName! = nil
    static var _method_set_visibility_range_end_margin_373806689: StringName! = nil
    static var _method_get_visibility_range_end_margin_1740695150: StringName! = nil
    static var _method_set_visibility_range_end_373806689: StringName! = nil
    static var _method_get_visibility_range_end_1740695150: StringName! = nil
    static var _method_set_visibility_range_begin_margin_373806689: StringName! = nil
    static var _method_get_visibility_range_begin_margin_1740695150: StringName! = nil
    static var _method_set_visibility_range_begin_373806689: StringName! = nil
    static var _method_get_visibility_range_begin_1740695150: StringName! = nil
    static var _method_set_visibility_range_fade_mode_1440117808: StringName! = nil
    static var _method_get_visibility_range_fade_mode_2067221882: StringName! = nil
    static var _method_set_instance_shader_parameter_3776071444: StringName! = nil
    static var _method_get_instance_shader_parameter_2760726917: StringName! = nil
    static var _method_set_extra_cull_margin_373806689: StringName! = nil
    static var _method_get_extra_cull_margin_1740695150: StringName! = nil
    static var _method_set_lightmap_scale_2462696582: StringName! = nil
    static var _method_get_lightmap_scale_798767852: StringName! = nil
    static var _method_set_gi_mode_2548557163: StringName! = nil
    static var _method_get_gi_mode_2188566509: StringName! = nil
    static var _method_set_ignore_occlusion_culling_2586408642: StringName! = nil
    static var _method_is_ignoring_occlusion_culling_2240911060: StringName! = nil
    static var _method_set_custom_aabb_259215842: StringName! = nil
    static var _method_get_custom_aabb_1068685055: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_GeometryInstance3D == nil)
        __godot_name_GeometryInstance3D = StringName(from: "GeometryInstance3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_material_override_2757459619 = StringName(from: "set_material_override")
        assert(self._method_set_material_override_2757459619 != nil)
        self._method_get_material_override_5934680 = StringName(from: "get_material_override")
        assert(self._method_get_material_override_5934680 != nil)
        self._method_set_material_overlay_2757459619 = StringName(from: "set_material_overlay")
        assert(self._method_set_material_overlay_2757459619 != nil)
        self._method_get_material_overlay_5934680 = StringName(from: "get_material_overlay")
        assert(self._method_get_material_overlay_5934680 != nil)
        self._method_set_cast_shadows_setting_856677339 = StringName(from: "set_cast_shadows_setting")
        assert(self._method_set_cast_shadows_setting_856677339 != nil)
        self._method_get_cast_shadows_setting_3383019359 = StringName(from: "get_cast_shadows_setting")
        assert(self._method_get_cast_shadows_setting_3383019359 != nil)
        self._method_set_lod_bias_373806689 = StringName(from: "set_lod_bias")
        assert(self._method_set_lod_bias_373806689 != nil)
        self._method_get_lod_bias_1740695150 = StringName(from: "get_lod_bias")
        assert(self._method_get_lod_bias_1740695150 != nil)
        self._method_set_transparency_373806689 = StringName(from: "set_transparency")
        assert(self._method_set_transparency_373806689 != nil)
        self._method_get_transparency_1740695150 = StringName(from: "get_transparency")
        assert(self._method_get_transparency_1740695150 != nil)
        self._method_set_visibility_range_end_margin_373806689 = StringName(from: "set_visibility_range_end_margin")
        assert(self._method_set_visibility_range_end_margin_373806689 != nil)
        self._method_get_visibility_range_end_margin_1740695150 = StringName(from: "get_visibility_range_end_margin")
        assert(self._method_get_visibility_range_end_margin_1740695150 != nil)
        self._method_set_visibility_range_end_373806689 = StringName(from: "set_visibility_range_end")
        assert(self._method_set_visibility_range_end_373806689 != nil)
        self._method_get_visibility_range_end_1740695150 = StringName(from: "get_visibility_range_end")
        assert(self._method_get_visibility_range_end_1740695150 != nil)
        self._method_set_visibility_range_begin_margin_373806689 = StringName(from: "set_visibility_range_begin_margin")
        assert(self._method_set_visibility_range_begin_margin_373806689 != nil)
        self._method_get_visibility_range_begin_margin_1740695150 = StringName(from: "get_visibility_range_begin_margin")
        assert(self._method_get_visibility_range_begin_margin_1740695150 != nil)
        self._method_set_visibility_range_begin_373806689 = StringName(from: "set_visibility_range_begin")
        assert(self._method_set_visibility_range_begin_373806689 != nil)
        self._method_get_visibility_range_begin_1740695150 = StringName(from: "get_visibility_range_begin")
        assert(self._method_get_visibility_range_begin_1740695150 != nil)
        self._method_set_visibility_range_fade_mode_1440117808 = StringName(from: "set_visibility_range_fade_mode")
        assert(self._method_set_visibility_range_fade_mode_1440117808 != nil)
        self._method_get_visibility_range_fade_mode_2067221882 = StringName(from: "get_visibility_range_fade_mode")
        assert(self._method_get_visibility_range_fade_mode_2067221882 != nil)
        self._method_set_instance_shader_parameter_3776071444 = StringName(from: "set_instance_shader_parameter")
        assert(self._method_set_instance_shader_parameter_3776071444 != nil)
        self._method_get_instance_shader_parameter_2760726917 = StringName(from: "get_instance_shader_parameter")
        assert(self._method_get_instance_shader_parameter_2760726917 != nil)
        self._method_set_extra_cull_margin_373806689 = StringName(from: "set_extra_cull_margin")
        assert(self._method_set_extra_cull_margin_373806689 != nil)
        self._method_get_extra_cull_margin_1740695150 = StringName(from: "get_extra_cull_margin")
        assert(self._method_get_extra_cull_margin_1740695150 != nil)
        self._method_set_lightmap_scale_2462696582 = StringName(from: "set_lightmap_scale")
        assert(self._method_set_lightmap_scale_2462696582 != nil)
        self._method_get_lightmap_scale_798767852 = StringName(from: "get_lightmap_scale")
        assert(self._method_get_lightmap_scale_798767852 != nil)
        self._method_set_gi_mode_2548557163 = StringName(from: "set_gi_mode")
        assert(self._method_set_gi_mode_2548557163 != nil)
        self._method_get_gi_mode_2188566509 = StringName(from: "get_gi_mode")
        assert(self._method_get_gi_mode_2188566509 != nil)
        self._method_set_ignore_occlusion_culling_2586408642 = StringName(from: "set_ignore_occlusion_culling")
        assert(self._method_set_ignore_occlusion_culling_2586408642 != nil)
        self._method_is_ignoring_occlusion_culling_2240911060 = StringName(from: "is_ignoring_occlusion_culling")
        assert(self._method_is_ignoring_occlusion_culling_2240911060 != nil)
        self._method_set_custom_aabb_259215842 = StringName(from: "set_custom_aabb")
        assert(self._method_set_custom_aabb_259215842 != nil)
        self._method_get_custom_aabb_1068685055 = StringName(from: "get_custom_aabb")
        assert(self._method_get_custom_aabb_1068685055 != nil)
    }

    public func set_material_override(material: Material)  {
        let material_native = material._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(material_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_material_override_2757459619._native_ptr(),
                    2757459619)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_material_override() -> Material {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_material_override_5934680._native_ptr(),
                    5934680)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Material(godot: __resPtr.pointee)
    }
    public func set_material_overlay(material: Material)  {
        let material_native = material._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(material_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_material_overlay_2757459619._native_ptr(),
                    2757459619)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_material_overlay() -> Material {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_material_overlay_5934680._native_ptr(),
                    5934680)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Material(godot: __resPtr.pointee)
    }
    public func set_cast_shadows_setting(shadow_casting_setting: GeometryInstance3D.ShadowCastingSetting)  {
        withUnsafePointer(to: shadow_casting_setting.rawValue) { shadow_casting_setting_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shadow_casting_setting_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_cast_shadows_setting_856677339._native_ptr(),
                    856677339)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_cast_shadows_setting() -> GeometryInstance3D.ShadowCastingSetting {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_cast_shadows_setting_3383019359._native_ptr(),
                    3383019359)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return GeometryInstance3D.ShadowCastingSetting(godot: __resPtr.pointee)
    }
    public func set_lod_bias(bias: Float64)  {
        withUnsafePointer(to: bias) { bias_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bias_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_lod_bias_373806689._native_ptr(),
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
    public func get_lod_bias() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_lod_bias_1740695150._native_ptr(),
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
    public func set_transparency(transparency: Float64)  {
        withUnsafePointer(to: transparency) { transparency_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(transparency_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_transparency_373806689._native_ptr(),
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
    public func get_transparency() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_transparency_1740695150._native_ptr(),
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
    public func set_visibility_range_end_margin(distance: Float64)  {
        withUnsafePointer(to: distance) { distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(distance_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_visibility_range_end_margin_373806689._native_ptr(),
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
    public func get_visibility_range_end_margin() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_visibility_range_end_margin_1740695150._native_ptr(),
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
    public func set_visibility_range_end(distance: Float64)  {
        withUnsafePointer(to: distance) { distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(distance_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_visibility_range_end_373806689._native_ptr(),
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
    public func get_visibility_range_end() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_visibility_range_end_1740695150._native_ptr(),
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
    public func set_visibility_range_begin_margin(distance: Float64)  {
        withUnsafePointer(to: distance) { distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(distance_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_visibility_range_begin_margin_373806689._native_ptr(),
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
    public func get_visibility_range_begin_margin() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_visibility_range_begin_margin_1740695150._native_ptr(),
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
    public func set_visibility_range_begin(distance: Float64)  {
        withUnsafePointer(to: distance) { distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(distance_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_visibility_range_begin_373806689._native_ptr(),
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
    public func get_visibility_range_begin() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_visibility_range_begin_1740695150._native_ptr(),
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
    public func set_visibility_range_fade_mode(mode: GeometryInstance3D.VisibilityRangeFadeMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_visibility_range_fade_mode_1440117808._native_ptr(),
                    1440117808)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_visibility_range_fade_mode() -> GeometryInstance3D.VisibilityRangeFadeMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_visibility_range_fade_mode_2067221882._native_ptr(),
                    2067221882)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return GeometryInstance3D.VisibilityRangeFadeMode(godot: __resPtr.pointee)
    }
    public func set_instance_shader_parameter(name: StringName, value: Variant)  {
        let value_native = value._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(value_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_instance_shader_parameter_3776071444._native_ptr(),
                    3776071444)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_instance_shader_parameter(name: StringName) -> Variant {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_instance_shader_parameter_2760726917._native_ptr(),
                    2760726917)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
    }
    public func set_extra_cull_margin(margin: Float64)  {
        withUnsafePointer(to: margin) { margin_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(margin_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_extra_cull_margin_373806689._native_ptr(),
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
    public func get_extra_cull_margin() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_extra_cull_margin_1740695150._native_ptr(),
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
    public func set_lightmap_scale(scale: GeometryInstance3D.LightmapScale)  {
        withUnsafePointer(to: scale.rawValue) { scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_lightmap_scale_2462696582._native_ptr(),
                    2462696582)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_lightmap_scale() -> GeometryInstance3D.LightmapScale {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_lightmap_scale_798767852._native_ptr(),
                    798767852)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return GeometryInstance3D.LightmapScale(godot: __resPtr.pointee)
    }
    public func set_gi_mode(mode: GeometryInstance3D.GIMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_gi_mode_2548557163._native_ptr(),
                    2548557163)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_gi_mode() -> GeometryInstance3D.GIMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_gi_mode_2188566509._native_ptr(),
                    2188566509)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return GeometryInstance3D.GIMode(godot: __resPtr.pointee)
    }
    public func set_ignore_occlusion_culling(ignore_culling: UInt8)  {
        withUnsafePointer(to: ignore_culling) { ignore_culling_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ignore_culling_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ignore_occlusion_culling_2586408642._native_ptr(),
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
    public func is_ignoring_occlusion_culling() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_ignoring_occlusion_culling_2240911060._native_ptr(),
                    2240911060)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_custom_aabb(aabb: AABB)  {
        let aabb_native = aabb._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(aabb_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_custom_aabb_259215842._native_ptr(),
                    259215842)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_custom_aabb() -> AABB {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_custom_aabb_1068685055._native_ptr(),
                    1068685055)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AABB(godot: __resPtr.pointee)
    }
}