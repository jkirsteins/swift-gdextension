import godot_native

fileprivate var __godot_name_Curve3D: StringName! = nil

/// Describes a Bézier curve in 3D space.
/// 
/// This class describes a Bézier curve in 3D space. It is mainly used to give a shape to a [Path3D], but can be manually sampled for other purposes.
///  
/// It keeps a cache of precalculated points along the curve, to speed up further calculations.
open class Curve3D : Resource {

    

    public override class var __godot_name: StringName { __godot_name_Curve3D }

    static var _method_get_point_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_point_count_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_add_point_3836314258: GDExtensionMethodBindPtr! = nil
    static var _method_set_point_position_1530502735: GDExtensionMethodBindPtr! = nil
    static var _method_get_point_position_711720468: GDExtensionMethodBindPtr! = nil
    static var _method_set_point_tilt_1602489585: GDExtensionMethodBindPtr! = nil
    static var _method_get_point_tilt_2339986948: GDExtensionMethodBindPtr! = nil
    static var _method_set_point_in_1530502735: GDExtensionMethodBindPtr! = nil
    static var _method_get_point_in_711720468: GDExtensionMethodBindPtr! = nil
    static var _method_set_point_out_1530502735: GDExtensionMethodBindPtr! = nil
    static var _method_get_point_out_711720468: GDExtensionMethodBindPtr! = nil
    static var _method_remove_point_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_clear_points_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_sample_3285246857: GDExtensionMethodBindPtr! = nil
    static var _method_samplef_2553580215: GDExtensionMethodBindPtr! = nil
    static var _method_set_bake_interval_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_bake_interval_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_up_vector_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_up_vector_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_baked_length_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_sample_baked_4240323138: GDExtensionMethodBindPtr! = nil
    static var _method_sample_baked_with_rotation_2486289007: GDExtensionMethodBindPtr! = nil
    static var _method_sample_baked_up_vector_1362627031: GDExtensionMethodBindPtr! = nil
    static var _method_get_baked_points_497664490: GDExtensionMethodBindPtr! = nil
    static var _method_get_baked_tilts_675695659: GDExtensionMethodBindPtr! = nil
    static var _method_get_baked_up_vectors_497664490: GDExtensionMethodBindPtr! = nil
    static var _method_get_closest_point_192990374: GDExtensionMethodBindPtr! = nil
    static var _method_get_closest_offset_1109078154: GDExtensionMethodBindPtr! = nil
    static var _method_tessellate_1519759391: GDExtensionMethodBindPtr! = nil
    static var _method_tessellate_even_length_3915530683: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_Curve3D = StringName(from: "Curve3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_get_point_count_3905245786_name = StringName(from: "get_point_count")
        self._method_get_point_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_Curve3D._native_ptr(), _method_get_point_count_3905245786_name._native_ptr(), 3905245786)
        assert(Curve3D._method_get_point_count_3905245786 != nil)
        let _method_set_point_count_1286410249_name = StringName(from: "set_point_count")
        self._method_set_point_count_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_Curve3D._native_ptr(), _method_set_point_count_1286410249_name._native_ptr(), 1286410249)
        assert(Curve3D._method_set_point_count_1286410249 != nil)
        let _method_add_point_3836314258_name = StringName(from: "add_point")
        self._method_add_point_3836314258 = self.interface.pointee.classdb_get_method_bind(__godot_name_Curve3D._native_ptr(), _method_add_point_3836314258_name._native_ptr(), 3836314258)
        assert(Curve3D._method_add_point_3836314258 != nil)
        let _method_set_point_position_1530502735_name = StringName(from: "set_point_position")
        self._method_set_point_position_1530502735 = self.interface.pointee.classdb_get_method_bind(__godot_name_Curve3D._native_ptr(), _method_set_point_position_1530502735_name._native_ptr(), 1530502735)
        assert(Curve3D._method_set_point_position_1530502735 != nil)
        let _method_get_point_position_711720468_name = StringName(from: "get_point_position")
        self._method_get_point_position_711720468 = self.interface.pointee.classdb_get_method_bind(__godot_name_Curve3D._native_ptr(), _method_get_point_position_711720468_name._native_ptr(), 711720468)
        assert(Curve3D._method_get_point_position_711720468 != nil)
        let _method_set_point_tilt_1602489585_name = StringName(from: "set_point_tilt")
        self._method_set_point_tilt_1602489585 = self.interface.pointee.classdb_get_method_bind(__godot_name_Curve3D._native_ptr(), _method_set_point_tilt_1602489585_name._native_ptr(), 1602489585)
        assert(Curve3D._method_set_point_tilt_1602489585 != nil)
        let _method_get_point_tilt_2339986948_name = StringName(from: "get_point_tilt")
        self._method_get_point_tilt_2339986948 = self.interface.pointee.classdb_get_method_bind(__godot_name_Curve3D._native_ptr(), _method_get_point_tilt_2339986948_name._native_ptr(), 2339986948)
        assert(Curve3D._method_get_point_tilt_2339986948 != nil)
        let _method_set_point_in_1530502735_name = StringName(from: "set_point_in")
        self._method_set_point_in_1530502735 = self.interface.pointee.classdb_get_method_bind(__godot_name_Curve3D._native_ptr(), _method_set_point_in_1530502735_name._native_ptr(), 1530502735)
        assert(Curve3D._method_set_point_in_1530502735 != nil)
        let _method_get_point_in_711720468_name = StringName(from: "get_point_in")
        self._method_get_point_in_711720468 = self.interface.pointee.classdb_get_method_bind(__godot_name_Curve3D._native_ptr(), _method_get_point_in_711720468_name._native_ptr(), 711720468)
        assert(Curve3D._method_get_point_in_711720468 != nil)
        let _method_set_point_out_1530502735_name = StringName(from: "set_point_out")
        self._method_set_point_out_1530502735 = self.interface.pointee.classdb_get_method_bind(__godot_name_Curve3D._native_ptr(), _method_set_point_out_1530502735_name._native_ptr(), 1530502735)
        assert(Curve3D._method_set_point_out_1530502735 != nil)
        let _method_get_point_out_711720468_name = StringName(from: "get_point_out")
        self._method_get_point_out_711720468 = self.interface.pointee.classdb_get_method_bind(__godot_name_Curve3D._native_ptr(), _method_get_point_out_711720468_name._native_ptr(), 711720468)
        assert(Curve3D._method_get_point_out_711720468 != nil)
        let _method_remove_point_1286410249_name = StringName(from: "remove_point")
        self._method_remove_point_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_Curve3D._native_ptr(), _method_remove_point_1286410249_name._native_ptr(), 1286410249)
        assert(Curve3D._method_remove_point_1286410249 != nil)
        let _method_clear_points_3218959716_name = StringName(from: "clear_points")
        self._method_clear_points_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_Curve3D._native_ptr(), _method_clear_points_3218959716_name._native_ptr(), 3218959716)
        assert(Curve3D._method_clear_points_3218959716 != nil)
        let _method_sample_3285246857_name = StringName(from: "sample")
        self._method_sample_3285246857 = self.interface.pointee.classdb_get_method_bind(__godot_name_Curve3D._native_ptr(), _method_sample_3285246857_name._native_ptr(), 3285246857)
        assert(Curve3D._method_sample_3285246857 != nil)
        let _method_samplef_2553580215_name = StringName(from: "samplef")
        self._method_samplef_2553580215 = self.interface.pointee.classdb_get_method_bind(__godot_name_Curve3D._native_ptr(), _method_samplef_2553580215_name._native_ptr(), 2553580215)
        assert(Curve3D._method_samplef_2553580215 != nil)
        let _method_set_bake_interval_373806689_name = StringName(from: "set_bake_interval")
        self._method_set_bake_interval_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_Curve3D._native_ptr(), _method_set_bake_interval_373806689_name._native_ptr(), 373806689)
        assert(Curve3D._method_set_bake_interval_373806689 != nil)
        let _method_get_bake_interval_1740695150_name = StringName(from: "get_bake_interval")
        self._method_get_bake_interval_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_Curve3D._native_ptr(), _method_get_bake_interval_1740695150_name._native_ptr(), 1740695150)
        assert(Curve3D._method_get_bake_interval_1740695150 != nil)
        let _method_set_up_vector_enabled_2586408642_name = StringName(from: "set_up_vector_enabled")
        self._method_set_up_vector_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_Curve3D._native_ptr(), _method_set_up_vector_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(Curve3D._method_set_up_vector_enabled_2586408642 != nil)
        let _method_is_up_vector_enabled_36873697_name = StringName(from: "is_up_vector_enabled")
        self._method_is_up_vector_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_Curve3D._native_ptr(), _method_is_up_vector_enabled_36873697_name._native_ptr(), 36873697)
        assert(Curve3D._method_is_up_vector_enabled_36873697 != nil)
        let _method_get_baked_length_1740695150_name = StringName(from: "get_baked_length")
        self._method_get_baked_length_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_Curve3D._native_ptr(), _method_get_baked_length_1740695150_name._native_ptr(), 1740695150)
        assert(Curve3D._method_get_baked_length_1740695150 != nil)
        let _method_sample_baked_4240323138_name = StringName(from: "sample_baked")
        self._method_sample_baked_4240323138 = self.interface.pointee.classdb_get_method_bind(__godot_name_Curve3D._native_ptr(), _method_sample_baked_4240323138_name._native_ptr(), 4240323138)
        assert(Curve3D._method_sample_baked_4240323138 != nil)
        let _method_sample_baked_with_rotation_2486289007_name = StringName(from: "sample_baked_with_rotation")
        self._method_sample_baked_with_rotation_2486289007 = self.interface.pointee.classdb_get_method_bind(__godot_name_Curve3D._native_ptr(), _method_sample_baked_with_rotation_2486289007_name._native_ptr(), 2486289007)
        assert(Curve3D._method_sample_baked_with_rotation_2486289007 != nil)
        let _method_sample_baked_up_vector_1362627031_name = StringName(from: "sample_baked_up_vector")
        self._method_sample_baked_up_vector_1362627031 = self.interface.pointee.classdb_get_method_bind(__godot_name_Curve3D._native_ptr(), _method_sample_baked_up_vector_1362627031_name._native_ptr(), 1362627031)
        assert(Curve3D._method_sample_baked_up_vector_1362627031 != nil)
        let _method_get_baked_points_497664490_name = StringName(from: "get_baked_points")
        self._method_get_baked_points_497664490 = self.interface.pointee.classdb_get_method_bind(__godot_name_Curve3D._native_ptr(), _method_get_baked_points_497664490_name._native_ptr(), 497664490)
        assert(Curve3D._method_get_baked_points_497664490 != nil)
        let _method_get_baked_tilts_675695659_name = StringName(from: "get_baked_tilts")
        self._method_get_baked_tilts_675695659 = self.interface.pointee.classdb_get_method_bind(__godot_name_Curve3D._native_ptr(), _method_get_baked_tilts_675695659_name._native_ptr(), 675695659)
        assert(Curve3D._method_get_baked_tilts_675695659 != nil)
        let _method_get_baked_up_vectors_497664490_name = StringName(from: "get_baked_up_vectors")
        self._method_get_baked_up_vectors_497664490 = self.interface.pointee.classdb_get_method_bind(__godot_name_Curve3D._native_ptr(), _method_get_baked_up_vectors_497664490_name._native_ptr(), 497664490)
        assert(Curve3D._method_get_baked_up_vectors_497664490 != nil)
        let _method_get_closest_point_192990374_name = StringName(from: "get_closest_point")
        self._method_get_closest_point_192990374 = self.interface.pointee.classdb_get_method_bind(__godot_name_Curve3D._native_ptr(), _method_get_closest_point_192990374_name._native_ptr(), 192990374)
        assert(Curve3D._method_get_closest_point_192990374 != nil)
        let _method_get_closest_offset_1109078154_name = StringName(from: "get_closest_offset")
        self._method_get_closest_offset_1109078154 = self.interface.pointee.classdb_get_method_bind(__godot_name_Curve3D._native_ptr(), _method_get_closest_offset_1109078154_name._native_ptr(), 1109078154)
        assert(Curve3D._method_get_closest_offset_1109078154 != nil)
        let _method_tessellate_1519759391_name = StringName(from: "tessellate")
        self._method_tessellate_1519759391 = self.interface.pointee.classdb_get_method_bind(__godot_name_Curve3D._native_ptr(), _method_tessellate_1519759391_name._native_ptr(), 1519759391)
        assert(Curve3D._method_tessellate_1519759391 != nil)
        let _method_tessellate_even_length_3915530683_name = StringName(from: "tessellate_even_length")
        self._method_tessellate_even_length_3915530683 = self.interface.pointee.classdb_get_method_bind(__godot_name_Curve3D._native_ptr(), _method_tessellate_even_length_3915530683_name._native_ptr(), 3915530683)
        assert(Curve3D._method_tessellate_even_length_3915530683 != nil)
    }

    public func get_point_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_point_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_point_count(count: Int64)  {
        withUnsafePointer(to: count) { count_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(count_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_point_count_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_point(position: Vector3, `in`: Vector3, out: Vector3, index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        let out_native = out._native_ptr()
        let in_native = `in`._native_ptr()
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native), .init(in_native), .init(out_native), .init(index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_point_3836314258,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_point_position(idx: Int64, position: Vector3)  {
        withUnsafePointer(to: idx) { idx_native in
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_point_position_1530502735,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_point_position(idx: Int64) -> Vector3 {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_point_position_711720468,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
        }
    }
    public func set_point_tilt(idx: Int64, tilt: Float64)  {
        withUnsafePointer(to: tilt) { tilt_native in
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(tilt_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_point_tilt_1602489585,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_point_tilt(idx: Int64) -> Float64 {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_point_tilt_2339986948,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func set_point_in(idx: Int64, position: Vector3)  {
        withUnsafePointer(to: idx) { idx_native in
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_point_in_1530502735,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_point_in(idx: Int64) -> Vector3 {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_point_in_711720468,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
        }
    }
    public func set_point_out(idx: Int64, position: Vector3)  {
        withUnsafePointer(to: idx) { idx_native in
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_point_out_1530502735,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_point_out(idx: Int64) -> Vector3 {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_point_out_711720468,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
        }
    }
    public func remove_point(idx: Int64)  {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_point_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func clear_points()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_points_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func sample(idx: Int64, t: Float64) -> Vector3 {
        withUnsafePointer(to: t) { t_native in
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(t_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_sample_3285246857,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
        }
        }
    }
    public func samplef(fofs: Float64) -> Vector3 {
        withUnsafePointer(to: fofs) { fofs_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(fofs_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_samplef_2553580215,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
        }
    }
    public func set_bake_interval(distance: Float64)  {
        withUnsafePointer(to: distance) { distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(distance_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bake_interval_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_bake_interval() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bake_interval_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_up_vector_enabled(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_up_vector_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_up_vector_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_up_vector_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_baked_length() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_baked_length_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func sample_baked(offset: Float64, cubic: UInt8) -> Vector3 {
        withUnsafePointer(to: cubic) { cubic_native in
        withUnsafePointer(to: offset) { offset_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native), .init(cubic_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_sample_baked_4240323138,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
        }
        }
    }
    public func sample_baked_with_rotation(offset: Float64, cubic: UInt8, apply_tilt: UInt8) -> Transform3D {
        withUnsafePointer(to: apply_tilt) { apply_tilt_native in
        withUnsafePointer(to: cubic) { cubic_native in
        withUnsafePointer(to: offset) { offset_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native), .init(cubic_native), .init(apply_tilt_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_sample_baked_with_rotation_2486289007,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(godot: __resPtr.pointee)
        }
        }
        }
    }
    public func sample_baked_up_vector(offset: Float64, apply_tilt: UInt8) -> Vector3 {
        withUnsafePointer(to: apply_tilt) { apply_tilt_native in
        withUnsafePointer(to: offset) { offset_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native), .init(apply_tilt_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_sample_baked_up_vector_1362627031,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
        }
        }
    }
    public func get_baked_points() -> PackedVector3Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_baked_points_497664490,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector3Array(godot: __resPtr.pointee)
    }
    public func get_baked_tilts() -> PackedFloat32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_baked_tilts_675695659,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedFloat32Array(godot: __resPtr.pointee)
    }
    public func get_baked_up_vectors() -> PackedVector3Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_baked_up_vectors_497664490,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector3Array(godot: __resPtr.pointee)
    }
    public func get_closest_point(to_point: Vector3) -> Vector3 {
        let to_point_native = to_point._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(to_point_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_closest_point_192990374,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func get_closest_offset(to_point: Vector3) -> Float64 {
        let to_point_native = to_point._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(to_point_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_closest_offset_1109078154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func tessellate(max_stages: Int64, tolerance_degrees: Float64) -> PackedVector3Array {
        withUnsafePointer(to: tolerance_degrees) { tolerance_degrees_native in
        withUnsafePointer(to: max_stages) { max_stages_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_stages_native), .init(tolerance_degrees_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_tessellate_1519759391,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector3Array(godot: __resPtr.pointee)
        }
        }
    }
    public func tessellate_even_length(max_stages: Int64, tolerance_length: Float64) -> PackedVector3Array {
        withUnsafePointer(to: tolerance_length) { tolerance_length_native in
        withUnsafePointer(to: max_stages) { max_stages_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_stages_native), .init(tolerance_length_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_tessellate_even_length_3915530683,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector3Array(godot: __resPtr.pointee)
        }
        }
    }
}