import godot_native

fileprivate var __godot_name_Curve3D: StringName! = nil

/// Describes a Bézier curve in 3D space.
/// 
/// This class describes a Bézier curve in 3D space. It is mainly used to give a shape to a [Path3D], but can be manually sampled for other purposes.
///  
/// It keeps a cache of precalculated points along the curve, to speed up further calculations.
open class Curve3D : Resource {

    

    public override class var __godot_name: StringName { __godot_name_Curve3D }

    static var _method_get_point_count_3905245786: StringName! = nil
    static var _method_set_point_count_1286410249: StringName! = nil
    static var _method_add_point_3836314258: StringName! = nil
    static var _method_set_point_position_1530502735: StringName! = nil
    static var _method_get_point_position_711720468: StringName! = nil
    static var _method_set_point_tilt_1602489585: StringName! = nil
    static var _method_get_point_tilt_2339986948: StringName! = nil
    static var _method_set_point_in_1530502735: StringName! = nil
    static var _method_get_point_in_711720468: StringName! = nil
    static var _method_set_point_out_1530502735: StringName! = nil
    static var _method_get_point_out_711720468: StringName! = nil
    static var _method_remove_point_1286410249: StringName! = nil
    static var _method_clear_points_3218959716: StringName! = nil
    static var _method_sample_3285246857: StringName! = nil
    static var _method_samplef_2553580215: StringName! = nil
    static var _method_set_bake_interval_373806689: StringName! = nil
    static var _method_get_bake_interval_1740695150: StringName! = nil
    static var _method_set_up_vector_enabled_2586408642: StringName! = nil
    static var _method_is_up_vector_enabled_36873697: StringName! = nil
    static var _method_get_baked_length_1740695150: StringName! = nil
    static var _method_sample_baked_4240323138: StringName! = nil
    static var _method_sample_baked_with_rotation_2486289007: StringName! = nil
    static var _method_sample_baked_up_vector_1362627031: StringName! = nil
    static var _method_get_baked_points_497664490: StringName! = nil
    static var _method_get_baked_tilts_675695659: StringName! = nil
    static var _method_get_baked_up_vectors_497664490: StringName! = nil
    static var _method_get_closest_point_192990374: StringName! = nil
    static var _method_get_closest_offset_1109078154: StringName! = nil
    static var _method_tessellate_1519759391: StringName! = nil
    static var _method_tessellate_even_length_3915530683: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_Curve3D == nil)
        __godot_name_Curve3D = StringName(from: "Curve3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_point_count_3905245786 = StringName(from: "get_point_count")
        assert(self._method_get_point_count_3905245786 != nil)
        self._method_set_point_count_1286410249 = StringName(from: "set_point_count")
        assert(self._method_set_point_count_1286410249 != nil)
        self._method_add_point_3836314258 = StringName(from: "add_point")
        assert(self._method_add_point_3836314258 != nil)
        self._method_set_point_position_1530502735 = StringName(from: "set_point_position")
        assert(self._method_set_point_position_1530502735 != nil)
        self._method_get_point_position_711720468 = StringName(from: "get_point_position")
        assert(self._method_get_point_position_711720468 != nil)
        self._method_set_point_tilt_1602489585 = StringName(from: "set_point_tilt")
        assert(self._method_set_point_tilt_1602489585 != nil)
        self._method_get_point_tilt_2339986948 = StringName(from: "get_point_tilt")
        assert(self._method_get_point_tilt_2339986948 != nil)
        self._method_set_point_in_1530502735 = StringName(from: "set_point_in")
        assert(self._method_set_point_in_1530502735 != nil)
        self._method_get_point_in_711720468 = StringName(from: "get_point_in")
        assert(self._method_get_point_in_711720468 != nil)
        self._method_set_point_out_1530502735 = StringName(from: "set_point_out")
        assert(self._method_set_point_out_1530502735 != nil)
        self._method_get_point_out_711720468 = StringName(from: "get_point_out")
        assert(self._method_get_point_out_711720468 != nil)
        self._method_remove_point_1286410249 = StringName(from: "remove_point")
        assert(self._method_remove_point_1286410249 != nil)
        self._method_clear_points_3218959716 = StringName(from: "clear_points")
        assert(self._method_clear_points_3218959716 != nil)
        self._method_sample_3285246857 = StringName(from: "sample")
        assert(self._method_sample_3285246857 != nil)
        self._method_samplef_2553580215 = StringName(from: "samplef")
        assert(self._method_samplef_2553580215 != nil)
        self._method_set_bake_interval_373806689 = StringName(from: "set_bake_interval")
        assert(self._method_set_bake_interval_373806689 != nil)
        self._method_get_bake_interval_1740695150 = StringName(from: "get_bake_interval")
        assert(self._method_get_bake_interval_1740695150 != nil)
        self._method_set_up_vector_enabled_2586408642 = StringName(from: "set_up_vector_enabled")
        assert(self._method_set_up_vector_enabled_2586408642 != nil)
        self._method_is_up_vector_enabled_36873697 = StringName(from: "is_up_vector_enabled")
        assert(self._method_is_up_vector_enabled_36873697 != nil)
        self._method_get_baked_length_1740695150 = StringName(from: "get_baked_length")
        assert(self._method_get_baked_length_1740695150 != nil)
        self._method_sample_baked_4240323138 = StringName(from: "sample_baked")
        assert(self._method_sample_baked_4240323138 != nil)
        self._method_sample_baked_with_rotation_2486289007 = StringName(from: "sample_baked_with_rotation")
        assert(self._method_sample_baked_with_rotation_2486289007 != nil)
        self._method_sample_baked_up_vector_1362627031 = StringName(from: "sample_baked_up_vector")
        assert(self._method_sample_baked_up_vector_1362627031 != nil)
        self._method_get_baked_points_497664490 = StringName(from: "get_baked_points")
        assert(self._method_get_baked_points_497664490 != nil)
        self._method_get_baked_tilts_675695659 = StringName(from: "get_baked_tilts")
        assert(self._method_get_baked_tilts_675695659 != nil)
        self._method_get_baked_up_vectors_497664490 = StringName(from: "get_baked_up_vectors")
        assert(self._method_get_baked_up_vectors_497664490 != nil)
        self._method_get_closest_point_192990374 = StringName(from: "get_closest_point")
        assert(self._method_get_closest_point_192990374 != nil)
        self._method_get_closest_offset_1109078154 = StringName(from: "get_closest_offset")
        assert(self._method_get_closest_offset_1109078154 != nil)
        self._method_tessellate_1519759391 = StringName(from: "tessellate")
        assert(self._method_tessellate_1519759391 != nil)
        self._method_tessellate_even_length_3915530683 = StringName(from: "tessellate_even_length")
        assert(self._method_tessellate_even_length_3915530683 != nil)
    }

    public func get_point_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_point_count_3905245786._native_ptr(),
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
    public func set_point_count(count: Int64)  {
        withUnsafePointer(to: count) { count_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(count_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_point_count_1286410249._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_point_3836314258._native_ptr(),
                    3836314258)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_point_position_1530502735._native_ptr(),
                    1530502735)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_point_position_711720468._native_ptr(),
                    711720468)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_point_tilt_1602489585._native_ptr(),
                    1602489585)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_point_tilt_2339986948._native_ptr(),
                    2339986948)
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
    public func set_point_in(idx: Int64, position: Vector3)  {
        withUnsafePointer(to: idx) { idx_native in
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(position_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_point_in_1530502735._native_ptr(),
                    1530502735)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_point_in_711720468._native_ptr(),
                    711720468)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_point_out_1530502735._native_ptr(),
                    1530502735)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_point_out_711720468._native_ptr(),
                    711720468)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_point_1286410249._native_ptr(),
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
    public func clear_points()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_points_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_sample_3285246857._native_ptr(),
                    3285246857)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_samplef_2553580215._native_ptr(),
                    2553580215)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_bake_interval_373806689._native_ptr(),
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
    public func get_bake_interval() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_bake_interval_1740695150._native_ptr(),
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
    public func set_up_vector_enabled(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_up_vector_enabled_2586408642._native_ptr(),
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
    public func is_up_vector_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_up_vector_enabled_36873697._native_ptr(),
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
    public func get_baked_length() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_baked_length_1740695150._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_sample_baked_4240323138._native_ptr(),
                    4240323138)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_sample_baked_with_rotation_2486289007._native_ptr(),
                    2486289007)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_sample_baked_up_vector_1362627031._native_ptr(),
                    1362627031)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_baked_points_497664490._native_ptr(),
                    497664490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_baked_tilts_675695659._native_ptr(),
                    675695659)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_baked_up_vectors_497664490._native_ptr(),
                    497664490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_closest_point_192990374._native_ptr(),
                    192990374)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_closest_offset_1109078154._native_ptr(),
                    1109078154)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_tessellate_1519759391._native_ptr(),
                    1519759391)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_tessellate_even_length_3915530683._native_ptr(),
                    3915530683)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector3Array(godot: __resPtr.pointee)
        }
        }
    }
}