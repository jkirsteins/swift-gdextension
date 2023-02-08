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

    static var _method_set_intensity_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_intensity_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_ambient_mode_1748981278: GDExtensionMethodBindPtr! = nil
    static var _method_get_ambient_mode_1014607621: GDExtensionMethodBindPtr! = nil
    static var _method_set_ambient_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_ambient_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_ambient_color_energy_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_ambient_color_energy_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_max_distance_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_distance_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_mesh_lod_threshold_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_mesh_lod_threshold_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_size_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_size_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_origin_offset_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_origin_offset_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_as_interior_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_set_as_interior_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_enable_box_projection_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_box_projection_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_enable_shadows_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_are_shadows_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_cull_mask_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_cull_mask_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_update_mode_4090221187: GDExtensionMethodBindPtr! = nil
    static var _method_get_update_mode_2367550552: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_ReflectionProbe = StringName(from: "ReflectionProbe")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_intensity_373806689_name = StringName(from: "set_intensity")
        self._method_set_intensity_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_ReflectionProbe._native_ptr(), _method_set_intensity_373806689_name._native_ptr(), 373806689)
        assert(ReflectionProbe._method_set_intensity_373806689 != nil)
        let _method_get_intensity_1740695150_name = StringName(from: "get_intensity")
        self._method_get_intensity_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_ReflectionProbe._native_ptr(), _method_get_intensity_1740695150_name._native_ptr(), 1740695150)
        assert(ReflectionProbe._method_get_intensity_1740695150 != nil)
        let _method_set_ambient_mode_1748981278_name = StringName(from: "set_ambient_mode")
        self._method_set_ambient_mode_1748981278 = self.interface.pointee.classdb_get_method_bind(__godot_name_ReflectionProbe._native_ptr(), _method_set_ambient_mode_1748981278_name._native_ptr(), 1748981278)
        assert(ReflectionProbe._method_set_ambient_mode_1748981278 != nil)
        let _method_get_ambient_mode_1014607621_name = StringName(from: "get_ambient_mode")
        self._method_get_ambient_mode_1014607621 = self.interface.pointee.classdb_get_method_bind(__godot_name_ReflectionProbe._native_ptr(), _method_get_ambient_mode_1014607621_name._native_ptr(), 1014607621)
        assert(ReflectionProbe._method_get_ambient_mode_1014607621 != nil)
        let _method_set_ambient_color_2920490490_name = StringName(from: "set_ambient_color")
        self._method_set_ambient_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name_ReflectionProbe._native_ptr(), _method_set_ambient_color_2920490490_name._native_ptr(), 2920490490)
        assert(ReflectionProbe._method_set_ambient_color_2920490490 != nil)
        let _method_get_ambient_color_3444240500_name = StringName(from: "get_ambient_color")
        self._method_get_ambient_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name_ReflectionProbe._native_ptr(), _method_get_ambient_color_3444240500_name._native_ptr(), 3444240500)
        assert(ReflectionProbe._method_get_ambient_color_3444240500 != nil)
        let _method_set_ambient_color_energy_373806689_name = StringName(from: "set_ambient_color_energy")
        self._method_set_ambient_color_energy_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_ReflectionProbe._native_ptr(), _method_set_ambient_color_energy_373806689_name._native_ptr(), 373806689)
        assert(ReflectionProbe._method_set_ambient_color_energy_373806689 != nil)
        let _method_get_ambient_color_energy_1740695150_name = StringName(from: "get_ambient_color_energy")
        self._method_get_ambient_color_energy_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_ReflectionProbe._native_ptr(), _method_get_ambient_color_energy_1740695150_name._native_ptr(), 1740695150)
        assert(ReflectionProbe._method_get_ambient_color_energy_1740695150 != nil)
        let _method_set_max_distance_373806689_name = StringName(from: "set_max_distance")
        self._method_set_max_distance_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_ReflectionProbe._native_ptr(), _method_set_max_distance_373806689_name._native_ptr(), 373806689)
        assert(ReflectionProbe._method_set_max_distance_373806689 != nil)
        let _method_get_max_distance_1740695150_name = StringName(from: "get_max_distance")
        self._method_get_max_distance_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_ReflectionProbe._native_ptr(), _method_get_max_distance_1740695150_name._native_ptr(), 1740695150)
        assert(ReflectionProbe._method_get_max_distance_1740695150 != nil)
        let _method_set_mesh_lod_threshold_373806689_name = StringName(from: "set_mesh_lod_threshold")
        self._method_set_mesh_lod_threshold_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_ReflectionProbe._native_ptr(), _method_set_mesh_lod_threshold_373806689_name._native_ptr(), 373806689)
        assert(ReflectionProbe._method_set_mesh_lod_threshold_373806689 != nil)
        let _method_get_mesh_lod_threshold_1740695150_name = StringName(from: "get_mesh_lod_threshold")
        self._method_get_mesh_lod_threshold_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_ReflectionProbe._native_ptr(), _method_get_mesh_lod_threshold_1740695150_name._native_ptr(), 1740695150)
        assert(ReflectionProbe._method_get_mesh_lod_threshold_1740695150 != nil)
        let _method_set_size_3460891852_name = StringName(from: "set_size")
        self._method_set_size_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name_ReflectionProbe._native_ptr(), _method_set_size_3460891852_name._native_ptr(), 3460891852)
        assert(ReflectionProbe._method_set_size_3460891852 != nil)
        let _method_get_size_3360562783_name = StringName(from: "get_size")
        self._method_get_size_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name_ReflectionProbe._native_ptr(), _method_get_size_3360562783_name._native_ptr(), 3360562783)
        assert(ReflectionProbe._method_get_size_3360562783 != nil)
        let _method_set_origin_offset_3460891852_name = StringName(from: "set_origin_offset")
        self._method_set_origin_offset_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name_ReflectionProbe._native_ptr(), _method_set_origin_offset_3460891852_name._native_ptr(), 3460891852)
        assert(ReflectionProbe._method_set_origin_offset_3460891852 != nil)
        let _method_get_origin_offset_3360562783_name = StringName(from: "get_origin_offset")
        self._method_get_origin_offset_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name_ReflectionProbe._native_ptr(), _method_get_origin_offset_3360562783_name._native_ptr(), 3360562783)
        assert(ReflectionProbe._method_get_origin_offset_3360562783 != nil)
        let _method_set_as_interior_2586408642_name = StringName(from: "set_as_interior")
        self._method_set_as_interior_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_ReflectionProbe._native_ptr(), _method_set_as_interior_2586408642_name._native_ptr(), 2586408642)
        assert(ReflectionProbe._method_set_as_interior_2586408642 != nil)
        let _method_is_set_as_interior_36873697_name = StringName(from: "is_set_as_interior")
        self._method_is_set_as_interior_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_ReflectionProbe._native_ptr(), _method_is_set_as_interior_36873697_name._native_ptr(), 36873697)
        assert(ReflectionProbe._method_is_set_as_interior_36873697 != nil)
        let _method_set_enable_box_projection_2586408642_name = StringName(from: "set_enable_box_projection")
        self._method_set_enable_box_projection_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_ReflectionProbe._native_ptr(), _method_set_enable_box_projection_2586408642_name._native_ptr(), 2586408642)
        assert(ReflectionProbe._method_set_enable_box_projection_2586408642 != nil)
        let _method_is_box_projection_enabled_36873697_name = StringName(from: "is_box_projection_enabled")
        self._method_is_box_projection_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_ReflectionProbe._native_ptr(), _method_is_box_projection_enabled_36873697_name._native_ptr(), 36873697)
        assert(ReflectionProbe._method_is_box_projection_enabled_36873697 != nil)
        let _method_set_enable_shadows_2586408642_name = StringName(from: "set_enable_shadows")
        self._method_set_enable_shadows_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_ReflectionProbe._native_ptr(), _method_set_enable_shadows_2586408642_name._native_ptr(), 2586408642)
        assert(ReflectionProbe._method_set_enable_shadows_2586408642 != nil)
        let _method_are_shadows_enabled_36873697_name = StringName(from: "are_shadows_enabled")
        self._method_are_shadows_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_ReflectionProbe._native_ptr(), _method_are_shadows_enabled_36873697_name._native_ptr(), 36873697)
        assert(ReflectionProbe._method_are_shadows_enabled_36873697 != nil)
        let _method_set_cull_mask_1286410249_name = StringName(from: "set_cull_mask")
        self._method_set_cull_mask_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_ReflectionProbe._native_ptr(), _method_set_cull_mask_1286410249_name._native_ptr(), 1286410249)
        assert(ReflectionProbe._method_set_cull_mask_1286410249 != nil)
        let _method_get_cull_mask_3905245786_name = StringName(from: "get_cull_mask")
        self._method_get_cull_mask_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_ReflectionProbe._native_ptr(), _method_get_cull_mask_3905245786_name._native_ptr(), 3905245786)
        assert(ReflectionProbe._method_get_cull_mask_3905245786 != nil)
        let _method_set_update_mode_4090221187_name = StringName(from: "set_update_mode")
        self._method_set_update_mode_4090221187 = self.interface.pointee.classdb_get_method_bind(__godot_name_ReflectionProbe._native_ptr(), _method_set_update_mode_4090221187_name._native_ptr(), 4090221187)
        assert(ReflectionProbe._method_set_update_mode_4090221187 != nil)
        let _method_get_update_mode_2367550552_name = StringName(from: "get_update_mode")
        self._method_get_update_mode_2367550552 = self.interface.pointee.classdb_get_method_bind(__godot_name_ReflectionProbe._native_ptr(), _method_get_update_mode_2367550552_name._native_ptr(), 2367550552)
        assert(ReflectionProbe._method_get_update_mode_2367550552 != nil)
    }

    public func set_intensity(intensity: Float64)  {
        withUnsafePointer(to: intensity) { intensity_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(intensity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_intensity_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_intensity_1740695150,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ambient_mode_1748981278,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ambient_mode_1014607621,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ambient_color_2920490490,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ambient_color_3444240500,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ambient_color_energy_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ambient_color_energy_1740695150,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_max_distance_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_max_distance_1740695150,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_mesh_lod_threshold_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mesh_lod_threshold_1740695150,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_size_3460891852,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_size_3360562783,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_origin_offset_3460891852,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_origin_offset_3360562783,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_as_interior_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_set_as_interior_36873697,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_enable_box_projection_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_box_projection_enabled_36873697,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_enable_shadows_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_are_shadows_enabled_36873697,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_update_mode_4090221187,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_update_mode_2367550552,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ReflectionProbe.UpdateMode(godot: __resPtr.pointee)
    }
}