import godot_native

fileprivate var __godot_name_Geometry3D: StringName! = nil

/// Helper node to calculate generic geometry operations in 3D space.
/// 
/// Geometry3D provides users with a set of helper functions to create geometric shapes, compute intersections between shapes, and process various other geometric operations.
open class Geometry3D : Object {

    

    public override class var __godot_name: StringName { __godot_name_Geometry3D }

    static var _method_build_box_planes_3622277145: StringName! = nil
    static var _method_build_cylinder_planes_3142160516: StringName! = nil
    static var _method_build_capsule_planes_410870045: StringName! = nil
    static var _method_get_closest_points_between_segments_1056373962: StringName! = nil
    static var _method_get_closest_point_to_segment_2168193209: StringName! = nil
    static var _method_get_closest_point_to_segment_uncapped_2168193209: StringName! = nil
    static var _method_ray_intersects_triangle_1718655448: StringName! = nil
    static var _method_segment_intersects_triangle_1718655448: StringName! = nil
    static var _method_segment_intersects_sphere_4080141172: StringName! = nil
    static var _method_segment_intersects_cylinder_2361316491: StringName! = nil
    static var _method_segment_intersects_convex_537425332: StringName! = nil
    static var _method_clip_polygon_2603188319: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_Geometry3D == nil)
        __godot_name_Geometry3D = StringName(from: "Geometry3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_build_box_planes_3622277145 = StringName(from: "build_box_planes")
        assert(self._method_build_box_planes_3622277145 != nil)
        self._method_build_cylinder_planes_3142160516 = StringName(from: "build_cylinder_planes")
        assert(self._method_build_cylinder_planes_3142160516 != nil)
        self._method_build_capsule_planes_410870045 = StringName(from: "build_capsule_planes")
        assert(self._method_build_capsule_planes_410870045 != nil)
        self._method_get_closest_points_between_segments_1056373962 = StringName(from: "get_closest_points_between_segments")
        assert(self._method_get_closest_points_between_segments_1056373962 != nil)
        self._method_get_closest_point_to_segment_2168193209 = StringName(from: "get_closest_point_to_segment")
        assert(self._method_get_closest_point_to_segment_2168193209 != nil)
        self._method_get_closest_point_to_segment_uncapped_2168193209 = StringName(from: "get_closest_point_to_segment_uncapped")
        assert(self._method_get_closest_point_to_segment_uncapped_2168193209 != nil)
        self._method_ray_intersects_triangle_1718655448 = StringName(from: "ray_intersects_triangle")
        assert(self._method_ray_intersects_triangle_1718655448 != nil)
        self._method_segment_intersects_triangle_1718655448 = StringName(from: "segment_intersects_triangle")
        assert(self._method_segment_intersects_triangle_1718655448 != nil)
        self._method_segment_intersects_sphere_4080141172 = StringName(from: "segment_intersects_sphere")
        assert(self._method_segment_intersects_sphere_4080141172 != nil)
        self._method_segment_intersects_cylinder_2361316491 = StringName(from: "segment_intersects_cylinder")
        assert(self._method_segment_intersects_cylinder_2361316491 != nil)
        self._method_segment_intersects_convex_537425332 = StringName(from: "segment_intersects_convex")
        assert(self._method_segment_intersects_convex_537425332 != nil)
        self._method_clip_polygon_2603188319 = StringName(from: "clip_polygon")
        assert(self._method_clip_polygon_2603188319 != nil)
    }

    public func build_box_planes(extents: Vector3) -> [Plane] {
        let extents_native = extents._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(extents_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_build_box_planes_3622277145._native_ptr(),
                    3622277145)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Plane](godot: __resPtr.pointee)
    }
    public func build_cylinder_planes(radius: Float64, height: Float64, sides: Int64, axis: Vector3.Axis) -> [Plane] {
        withUnsafePointer(to: sides) { sides_native in
        withUnsafePointer(to: height) { height_native in
        withUnsafePointer(to: radius) { radius_native in
        withUnsafePointer(to: axis.rawValue) { axis_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(radius_native), .init(height_native), .init(sides_native), .init(axis_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_build_cylinder_planes_3142160516._native_ptr(),
                    3142160516)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Plane](godot: __resPtr.pointee)
        }
        }
        }
        }
    }
    public func build_capsule_planes(radius: Float64, height: Float64, sides: Int64, lats: Int64, axis: Vector3.Axis) -> [Plane] {
        withUnsafePointer(to: lats) { lats_native in
        withUnsafePointer(to: sides) { sides_native in
        withUnsafePointer(to: height) { height_native in
        withUnsafePointer(to: radius) { radius_native in
        withUnsafePointer(to: axis.rawValue) { axis_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(radius_native), .init(height_native), .init(sides_native), .init(lats_native), .init(axis_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_build_capsule_planes_410870045._native_ptr(),
                    410870045)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Plane](godot: __resPtr.pointee)
        }
        }
        }
        }
        }
    }
    public func get_closest_points_between_segments(p1: Vector3, p2: Vector3, q1: Vector3, q2: Vector3) -> PackedVector3Array {
        let q2_native = q2._native_ptr()
        let q1_native = q1._native_ptr()
        let p2_native = p2._native_ptr()
        let p1_native = p1._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p1_native), .init(p2_native), .init(q1_native), .init(q2_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_closest_points_between_segments_1056373962._native_ptr(),
                    1056373962)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector3Array(godot: __resPtr.pointee)
    }
    public func get_closest_point_to_segment(point: Vector3, s1: Vector3, s2: Vector3) -> Vector3 {
        let s2_native = s2._native_ptr()
        let s1_native = s1._native_ptr()
        let point_native = point._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(point_native), .init(s1_native), .init(s2_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_closest_point_to_segment_2168193209._native_ptr(),
                    2168193209)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func get_closest_point_to_segment_uncapped(point: Vector3, s1: Vector3, s2: Vector3) -> Vector3 {
        let s2_native = s2._native_ptr()
        let s1_native = s1._native_ptr()
        let point_native = point._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(point_native), .init(s1_native), .init(s2_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_closest_point_to_segment_uncapped_2168193209._native_ptr(),
                    2168193209)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func ray_intersects_triangle(from: Vector3, dir: Vector3, a: Vector3, b: Vector3, c: Vector3) -> Variant {
        let c_native = c._native_ptr()
        let b_native = b._native_ptr()
        let a_native = a._native_ptr()
        let dir_native = dir._native_ptr()
        let from_native = from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native), .init(dir_native), .init(a_native), .init(b_native), .init(c_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_ray_intersects_triangle_1718655448._native_ptr(),
                    1718655448)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
    }
    public func segment_intersects_triangle(from: Vector3, to: Vector3, a: Vector3, b: Vector3, c: Vector3) -> Variant {
        let c_native = c._native_ptr()
        let b_native = b._native_ptr()
        let a_native = a._native_ptr()
        let to_native = to._native_ptr()
        let from_native = from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native), .init(to_native), .init(a_native), .init(b_native), .init(c_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_segment_intersects_triangle_1718655448._native_ptr(),
                    1718655448)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
    }
    public func segment_intersects_sphere(from: Vector3, to: Vector3, sphere_position: Vector3, sphere_radius: Float64) -> PackedVector3Array {
        withUnsafePointer(to: sphere_radius) { sphere_radius_native in
        let sphere_position_native = sphere_position._native_ptr()
        let to_native = to._native_ptr()
        let from_native = from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native), .init(to_native), .init(sphere_position_native), .init(sphere_radius_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_segment_intersects_sphere_4080141172._native_ptr(),
                    4080141172)
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
    public func segment_intersects_cylinder(from: Vector3, to: Vector3, height: Float64, radius: Float64) -> PackedVector3Array {
        withUnsafePointer(to: radius) { radius_native in
        withUnsafePointer(to: height) { height_native in
        let to_native = to._native_ptr()
        let from_native = from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native), .init(to_native), .init(height_native), .init(radius_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_segment_intersects_cylinder_2361316491._native_ptr(),
                    2361316491)
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
    public func segment_intersects_convex(from: Vector3, to: Vector3, planes: Array) -> PackedVector3Array {
        let planes_native = planes._native_ptr()
        let to_native = to._native_ptr()
        let from_native = from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native), .init(to_native), .init(planes_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_segment_intersects_convex_537425332._native_ptr(),
                    537425332)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector3Array(godot: __resPtr.pointee)
    }
    public func clip_polygon(points: PackedVector3Array, plane: Plane) -> PackedVector3Array {
        let plane_native = plane._native_ptr()
        let points_native = points._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(points_native), .init(plane_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clip_polygon_2603188319._native_ptr(),
                    2603188319)
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