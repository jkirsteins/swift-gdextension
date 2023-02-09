import godot_native

fileprivate var __godot_name_ReflectionProbe: StringName! = nil

/// Captures its surroundings to create fast, accurate reflections from a given point.
/// 
/// Captures its surroundings as a cubemap, and stores versions of it with increasing levels of blur to simulate different material roughnesses.
///  
/// The [ReflectionProbe] is used to create high-quality reflections at a low performance cost (when [member update_mode] is [constant UPDATE_ONCE]). [ReflectionProbe]s can be blended together and with the rest of the scene smoothly. [ReflectionProbe]s can also be combined with [VoxelGI], SDFGI ([member Environment.sdfgi_enabled]) and screen-space reflections ([member Environment.ssr_enabled]) to get more accurate reflections in specific areas. [ReflectionProbe]s render all objects within their [member cull_mask], so updating them can be quite expensive. It is best to update them once with the important static objects and then leave them as-is.
///  
/// [b]Note:[/b] Unlike [VoxelGI] and SDFGI, [ReflectionProbe]s only source their environment from a [WorldEnvironment] node. If you specify an [Environment] resource within a [Camera3D] node, it will be ignored by the [ReflectionProbe]. This can lead to incorrect lighting within the [ReflectionProbe].
open class ReflectionProbe : VisualInstance3D {

    public enum UpdateMode : Int32 {
        case UPDATE_ONCE = 0
        case UPDATE_ALWAYS = 1
    }
    public enum AmbientMode : Int32 {
        case AMBIENT_DISABLED = 0
        case AMBIENT_ENVIRONMENT = 1
        case AMBIENT_COLOR = 2
    }

    public override class var __godot_name: StringName { __godot_name_ReflectionProbe }

    static var _method_set_intensity_373806689: StringName! = nil
    static var _method_get_intensity_1740695150: StringName! = nil
    static var _method_set_ambient_mode_1748981278: StringName! = nil
    static var _method_get_ambient_mode_1014607621: StringName! = nil
    static var _method_set_ambient_color_2920490490: StringName! = nil
    static var _method_get_ambient_color_3444240500: StringName! = nil
    static var _method_set_ambient_color_energy_373806689: StringName! = nil
    static var _method_get_ambient_color_energy_1740695150: StringName! = nil
    static var _method_set_max_distance_373806689: StringName! = nil
    static var _method_get_max_distance_1740695150: StringName! = nil
    static var _method_set_mesh_lod_threshold_373806689: StringName! = nil
    static var _method_get_mesh_lod_threshold_1740695150: StringName! = nil
    static var _method_set_size_3460891852: StringName! = nil
    static var _method_get_size_3360562783: StringName! = nil
    static var _method_set_origin_offset_3460891852: StringName! = nil
    static var _method_get_origin_offset_3360562783: StringName! = nil
    static var _method_set_as_interior_2586408642: StringName! = nil
    static var _method_is_set_as_interior_36873697: StringName! = nil
    static var _method_set_enable_box_projection_2586408642: StringName! = nil
    static var _method_is_box_projection_enabled_36873697: StringName! = nil
    static var _method_set_enable_shadows_2586408642: StringName! = nil
    static var _method_are_shadows_enabled_36873697: StringName! = nil
    static var _method_set_cull_mask_1286410249: StringName! = nil
    static var _method_get_cull_mask_3905245786: StringName! = nil
    static var _method_set_update_mode_4090221187: StringName! = nil
    static var _method_get_update_mode_2367550552: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_ReflectionProbe == nil)
        __godot_name_ReflectionProbe = StringName(from: "ReflectionProbe")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_intensity_373806689 = StringName(from: "set_intensity")
        assert(self._method_set_intensity_373806689 != nil)
        self._method_get_intensity_1740695150 = StringName(from: "get_intensity")
        assert(self._method_get_intensity_1740695150 != nil)
        self._method_set_ambient_mode_1748981278 = StringName(from: "set_ambient_mode")
        assert(self._method_set_ambient_mode_1748981278 != nil)
        self._method_get_ambient_mode_1014607621 = StringName(from: "get_ambient_mode")
        assert(self._method_get_ambient_mode_1014607621 != nil)
        self._method_set_ambient_color_2920490490 = StringName(from: "set_ambient_color")
        assert(self._method_set_ambient_color_2920490490 != nil)
        self._method_get_ambient_color_3444240500 = StringName(from: "get_ambient_color")
        assert(self._method_get_ambient_color_3444240500 != nil)
        self._method_set_ambient_color_energy_373806689 = StringName(from: "set_ambient_color_energy")
        assert(self._method_set_ambient_color_energy_373806689 != nil)
        self._method_get_ambient_color_energy_1740695150 = StringName(from: "get_ambient_color_energy")
        assert(self._method_get_ambient_color_energy_1740695150 != nil)
        self._method_set_max_distance_373806689 = StringName(from: "set_max_distance")
        assert(self._method_set_max_distance_373806689 != nil)
        self._method_get_max_distance_1740695150 = StringName(from: "get_max_distance")
        assert(self._method_get_max_distance_1740695150 != nil)
        self._method_set_mesh_lod_threshold_373806689 = StringName(from: "set_mesh_lod_threshold")
        assert(self._method_set_mesh_lod_threshold_373806689 != nil)
        self._method_get_mesh_lod_threshold_1740695150 = StringName(from: "get_mesh_lod_threshold")
        assert(self._method_get_mesh_lod_threshold_1740695150 != nil)
        self._method_set_size_3460891852 = StringName(from: "set_size")
        assert(self._method_set_size_3460891852 != nil)
        self._method_get_size_3360562783 = StringName(from: "get_size")
        assert(self._method_get_size_3360562783 != nil)
        self._method_set_origin_offset_3460891852 = StringName(from: "set_origin_offset")
        assert(self._method_set_origin_offset_3460891852 != nil)
        self._method_get_origin_offset_3360562783 = StringName(from: "get_origin_offset")
        assert(self._method_get_origin_offset_3360562783 != nil)
        self._method_set_as_interior_2586408642 = StringName(from: "set_as_interior")
        assert(self._method_set_as_interior_2586408642 != nil)
        self._method_is_set_as_interior_36873697 = StringName(from: "is_set_as_interior")
        assert(self._method_is_set_as_interior_36873697 != nil)
        self._method_set_enable_box_projection_2586408642 = StringName(from: "set_enable_box_projection")
        assert(self._method_set_enable_box_projection_2586408642 != nil)
        self._method_is_box_projection_enabled_36873697 = StringName(from: "is_box_projection_enabled")
        assert(self._method_is_box_projection_enabled_36873697 != nil)
        self._method_set_enable_shadows_2586408642 = StringName(from: "set_enable_shadows")
        assert(self._method_set_enable_shadows_2586408642 != nil)
        self._method_are_shadows_enabled_36873697 = StringName(from: "are_shadows_enabled")
        assert(self._method_are_shadows_enabled_36873697 != nil)
        self._method_set_cull_mask_1286410249 = StringName(from: "set_cull_mask")
        assert(self._method_set_cull_mask_1286410249 != nil)
        self._method_get_cull_mask_3905245786 = StringName(from: "get_cull_mask")
        assert(self._method_get_cull_mask_3905245786 != nil)
        self._method_set_update_mode_4090221187 = StringName(from: "set_update_mode")
        assert(self._method_set_update_mode_4090221187 != nil)
        self._method_get_update_mode_2367550552 = StringName(from: "get_update_mode")
        assert(self._method_get_update_mode_2367550552 != nil)
    }

    public func set_intensity(intensity: Float64)  {
        withUnsafePointer(to: intensity) { intensity_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(intensity_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_intensity_373806689._native_ptr(),
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
    public func get_intensity() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_intensity_1740695150._native_ptr(),
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
    public func set_ambient_mode(ambient: ReflectionProbe.AmbientMode)  {
        withUnsafePointer(to: ambient.rawValue) { ambient_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ambient_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ambient_mode_1748981278._native_ptr(),
                    1748981278)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_ambient_mode() -> ReflectionProbe.AmbientMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_ambient_mode_1014607621._native_ptr(),
                    1014607621)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ReflectionProbe.AmbientMode(godot: __resPtr.pointee)
    }
    public func set_ambient_color(ambient: Color)  {
        let ambient_native = ambient._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ambient_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ambient_color_2920490490._native_ptr(),
                    2920490490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_ambient_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_ambient_color_3444240500._native_ptr(),
                    3444240500)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
    public func set_ambient_color_energy(ambient_energy: Float64)  {
        withUnsafePointer(to: ambient_energy) { ambient_energy_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ambient_energy_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ambient_color_energy_373806689._native_ptr(),
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
    public func get_ambient_color_energy() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_ambient_color_energy_1740695150._native_ptr(),
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
    public func set_max_distance(max_distance: Float64)  {
        withUnsafePointer(to: max_distance) { max_distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_distance_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_max_distance_373806689._native_ptr(),
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
    public func get_max_distance() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_max_distance_1740695150._native_ptr(),
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
    public func set_mesh_lod_threshold(ratio: Float64)  {
        withUnsafePointer(to: ratio) { ratio_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ratio_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_mesh_lod_threshold_373806689._native_ptr(),
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
    public func get_mesh_lod_threshold() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_mesh_lod_threshold_1740695150._native_ptr(),
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
    public func set_size(size: Vector3)  {
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_size_3460891852._native_ptr(),
                    3460891852)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_size() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_size_3360562783._native_ptr(),
                    3360562783)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func set_origin_offset(origin_offset: Vector3)  {
        let origin_offset_native = origin_offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(origin_offset_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_origin_offset_3460891852._native_ptr(),
                    3460891852)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_origin_offset() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_origin_offset_3360562783._native_ptr(),
                    3360562783)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func set_as_interior(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_as_interior_2586408642._native_ptr(),
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
    public func is_set_as_interior() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_set_as_interior_36873697._native_ptr(),
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
    public func set_enable_box_projection(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_enable_box_projection_2586408642._native_ptr(),
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
    public func is_box_projection_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_box_projection_enabled_36873697._native_ptr(),
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
    public func set_enable_shadows(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_enable_shadows_2586408642._native_ptr(),
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
    public func are_shadows_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_are_shadows_enabled_36873697._native_ptr(),
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
    public func set_cull_mask(layers: Int64)  {
        withUnsafePointer(to: layers) { layers_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layers_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_cull_mask_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_cull_mask_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_update_mode(mode: ReflectionProbe.UpdateMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_update_mode_4090221187._native_ptr(),
                    4090221187)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_update_mode() -> ReflectionProbe.UpdateMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_update_mode_2367550552._native_ptr(),
                    2367550552)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ReflectionProbe.UpdateMode(godot: __resPtr.pointee)
    }
}