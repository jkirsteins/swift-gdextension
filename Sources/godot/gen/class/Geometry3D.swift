import godot_native

fileprivate var __godot_name_Geometry3D: StringName! = nil

/// Helper node to calculate generic geometry operations in 3D space.
/// 
/// Geometry3D provides users with a set of helper functions to create geometric shapes, compute intersections between shapes, and process various other geometric operations.
public class Geometry3D : Object {

    

    public override class var __godot_name: StringName { __godot_name_Geometry3D }

    static var _method_build_box_planes_3622277145: GDExtensionMethodBindPtr! = nil
    static var _method_build_cylinder_planes_3142160516: GDExtensionMethodBindPtr! = nil
    static var _method_build_capsule_planes_410870045: GDExtensionMethodBindPtr! = nil
    static var _method_get_closest_points_between_segments_1056373962: GDExtensionMethodBindPtr! = nil
    static var _method_get_closest_point_to_segment_2168193209: GDExtensionMethodBindPtr! = nil
    static var _method_get_closest_point_to_segment_uncapped_2168193209: GDExtensionMethodBindPtr! = nil
    static var _method_ray_intersects_triangle_1718655448: GDExtensionMethodBindPtr! = nil
    static var _method_segment_intersects_triangle_1718655448: GDExtensionMethodBindPtr! = nil
    static var _method_segment_intersects_sphere_4080141172: GDExtensionMethodBindPtr! = nil
    static var _method_segment_intersects_cylinder_2361316491: GDExtensionMethodBindPtr! = nil
    static var _method_segment_intersects_convex_537425332: GDExtensionMethodBindPtr! = nil
    static var _method_clip_polygon_2603188319: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Geometry3D = StringName(from: "Geometry3D")

        let _method_build_box_planes_3622277145_name = StringName(from: "build_box_planes")
        self._method_build_box_planes_3622277145 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_build_box_planes_3622277145_name._native_ptr(), 3622277145)
        assert(Geometry3D._method_build_box_planes_3622277145 != nil)
        let _method_build_cylinder_planes_3142160516_name = StringName(from: "build_cylinder_planes")
        self._method_build_cylinder_planes_3142160516 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_build_cylinder_planes_3142160516_name._native_ptr(), 3142160516)
        assert(Geometry3D._method_build_cylinder_planes_3142160516 != nil)
        let _method_build_capsule_planes_410870045_name = StringName(from: "build_capsule_planes")
        self._method_build_capsule_planes_410870045 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_build_capsule_planes_410870045_name._native_ptr(), 410870045)
        assert(Geometry3D._method_build_capsule_planes_410870045 != nil)
        let _method_get_closest_points_between_segments_1056373962_name = StringName(from: "get_closest_points_between_segments")
        self._method_get_closest_points_between_segments_1056373962 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_closest_points_between_segments_1056373962_name._native_ptr(), 1056373962)
        assert(Geometry3D._method_get_closest_points_between_segments_1056373962 != nil)
        let _method_get_closest_point_to_segment_2168193209_name = StringName(from: "get_closest_point_to_segment")
        self._method_get_closest_point_to_segment_2168193209 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_closest_point_to_segment_2168193209_name._native_ptr(), 2168193209)
        assert(Geometry3D._method_get_closest_point_to_segment_2168193209 != nil)
        let _method_get_closest_point_to_segment_uncapped_2168193209_name = StringName(from: "get_closest_point_to_segment_uncapped")
        self._method_get_closest_point_to_segment_uncapped_2168193209 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_closest_point_to_segment_uncapped_2168193209_name._native_ptr(), 2168193209)
        assert(Geometry3D._method_get_closest_point_to_segment_uncapped_2168193209 != nil)
        let _method_ray_intersects_triangle_1718655448_name = StringName(from: "ray_intersects_triangle")
        self._method_ray_intersects_triangle_1718655448 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_ray_intersects_triangle_1718655448_name._native_ptr(), 1718655448)
        assert(Geometry3D._method_ray_intersects_triangle_1718655448 != nil)
        let _method_segment_intersects_triangle_1718655448_name = StringName(from: "segment_intersects_triangle")
        self._method_segment_intersects_triangle_1718655448 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_segment_intersects_triangle_1718655448_name._native_ptr(), 1718655448)
        assert(Geometry3D._method_segment_intersects_triangle_1718655448 != nil)
        let _method_segment_intersects_sphere_4080141172_name = StringName(from: "segment_intersects_sphere")
        self._method_segment_intersects_sphere_4080141172 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_segment_intersects_sphere_4080141172_name._native_ptr(), 4080141172)
        assert(Geometry3D._method_segment_intersects_sphere_4080141172 != nil)
        let _method_segment_intersects_cylinder_2361316491_name = StringName(from: "segment_intersects_cylinder")
        self._method_segment_intersects_cylinder_2361316491 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_segment_intersects_cylinder_2361316491_name._native_ptr(), 2361316491)
        assert(Geometry3D._method_segment_intersects_cylinder_2361316491 != nil)
        let _method_segment_intersects_convex_537425332_name = StringName(from: "segment_intersects_convex")
        self._method_segment_intersects_convex_537425332 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_segment_intersects_convex_537425332_name._native_ptr(), 537425332)
        assert(Geometry3D._method_segment_intersects_convex_537425332 != nil)
        let _method_clip_polygon_2603188319_name = StringName(from: "clip_polygon")
        self._method_clip_polygon_2603188319 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clip_polygon_2603188319_name._native_ptr(), 2603188319)
        assert(Geometry3D._method_clip_polygon_2603188319 != nil)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_build_box_planes_3622277145,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Plane](from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_build_cylinder_planes_3142160516,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Plane](from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_build_capsule_planes_410870045,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Plane](from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_closest_points_between_segments_1056373962,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector3Array(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_closest_point_to_segment_2168193209,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_closest_point_to_segment_uncapped_2168193209,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_ray_intersects_triangle_1718655448,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_segment_intersects_triangle_1718655448,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_segment_intersects_sphere_4080141172,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector3Array(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_segment_intersects_cylinder_2361316491,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector3Array(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_segment_intersects_convex_537425332,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector3Array(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clip_polygon_2603188319,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector3Array(from: __resPtr.pointee)
    }
}