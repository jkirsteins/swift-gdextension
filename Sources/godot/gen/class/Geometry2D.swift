import godot_native

fileprivate var __godot_name_Geometry2D: StringName! = nil

/// Helper node to calculate generic geometry operations in 2D space.
/// 
/// Geometry2D provides users with a set of helper functions to create geometric shapes, compute intersections between shapes, and process various other geometric operations.
public class Geometry2D : Object {

    public enum PolyBooleanOperation : Int32 {
        case OPERATION_UNION = 0
        case OPERATION_DIFFERENCE = 1
        case OPERATION_INTERSECTION = 2
        case OPERATION_XOR = 3
    }
    public enum PolyJoinType : Int32 {
        case JOIN_SQUARE = 0
        case JOIN_ROUND = 1
        case JOIN_MITER = 2
    }
    public enum PolyEndType : Int32 {
        case END_POLYGON = 0
        case END_JOINED = 1
        case END_BUTT = 2
        case END_SQUARE = 3
        case END_ROUND = 4
    }

    public override class var __godot_name: StringName { __godot_name_Geometry2D }

    static var _method_is_point_in_circle_2929491703: GDExtensionMethodBindPtr! = nil
    static var _method_segment_intersects_circle_1356928167: GDExtensionMethodBindPtr! = nil
    static var _method_segment_intersects_segment_2058025344: GDExtensionMethodBindPtr! = nil
    static var _method_line_intersects_line_2058025344: GDExtensionMethodBindPtr! = nil
    static var _method_get_closest_points_between_segments_3344690961: GDExtensionMethodBindPtr! = nil
    static var _method_get_closest_point_to_segment_4172901909: GDExtensionMethodBindPtr! = nil
    static var _method_get_closest_point_to_segment_uncapped_4172901909: GDExtensionMethodBindPtr! = nil
    static var _method_point_is_inside_triangle_1025948137: GDExtensionMethodBindPtr! = nil
    static var _method_is_polygon_clockwise_1361156557: GDExtensionMethodBindPtr! = nil
    static var _method_is_point_in_polygon_738277916: GDExtensionMethodBindPtr! = nil
    static var _method_triangulate_polygon_1389921771: GDExtensionMethodBindPtr! = nil
    static var _method_triangulate_delaunay_1389921771: GDExtensionMethodBindPtr! = nil
    static var _method_convex_hull_2004331998: GDExtensionMethodBindPtr! = nil
    static var _method_decompose_polygon_in_convex_3982393695: GDExtensionMethodBindPtr! = nil
    static var _method_merge_polygons_3637387053: GDExtensionMethodBindPtr! = nil
    static var _method_clip_polygons_3637387053: GDExtensionMethodBindPtr! = nil
    static var _method_intersect_polygons_3637387053: GDExtensionMethodBindPtr! = nil
    static var _method_exclude_polygons_3637387053: GDExtensionMethodBindPtr! = nil
    static var _method_clip_polyline_with_polygon_3637387053: GDExtensionMethodBindPtr! = nil
    static var _method_intersect_polyline_with_polygon_3637387053: GDExtensionMethodBindPtr! = nil
    static var _method_offset_polygon_3837618924: GDExtensionMethodBindPtr! = nil
    static var _method_offset_polyline_328033063: GDExtensionMethodBindPtr! = nil
    static var _method_make_atlas_1337682371: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Geometry2D = StringName(from: "Geometry2D")

        let _method_is_point_in_circle_2929491703_name = StringName(from: "is_point_in_circle")
        self._method_is_point_in_circle_2929491703 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_point_in_circle_2929491703_name._native_ptr(), 2929491703)
        assert(Geometry2D._method_is_point_in_circle_2929491703 != nil)
        let _method_segment_intersects_circle_1356928167_name = StringName(from: "segment_intersects_circle")
        self._method_segment_intersects_circle_1356928167 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_segment_intersects_circle_1356928167_name._native_ptr(), 1356928167)
        assert(Geometry2D._method_segment_intersects_circle_1356928167 != nil)
        let _method_segment_intersects_segment_2058025344_name = StringName(from: "segment_intersects_segment")
        self._method_segment_intersects_segment_2058025344 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_segment_intersects_segment_2058025344_name._native_ptr(), 2058025344)
        assert(Geometry2D._method_segment_intersects_segment_2058025344 != nil)
        let _method_line_intersects_line_2058025344_name = StringName(from: "line_intersects_line")
        self._method_line_intersects_line_2058025344 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_line_intersects_line_2058025344_name._native_ptr(), 2058025344)
        assert(Geometry2D._method_line_intersects_line_2058025344 != nil)
        let _method_get_closest_points_between_segments_3344690961_name = StringName(from: "get_closest_points_between_segments")
        self._method_get_closest_points_between_segments_3344690961 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_closest_points_between_segments_3344690961_name._native_ptr(), 3344690961)
        assert(Geometry2D._method_get_closest_points_between_segments_3344690961 != nil)
        let _method_get_closest_point_to_segment_4172901909_name = StringName(from: "get_closest_point_to_segment")
        self._method_get_closest_point_to_segment_4172901909 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_closest_point_to_segment_4172901909_name._native_ptr(), 4172901909)
        assert(Geometry2D._method_get_closest_point_to_segment_4172901909 != nil)
        let _method_get_closest_point_to_segment_uncapped_4172901909_name = StringName(from: "get_closest_point_to_segment_uncapped")
        self._method_get_closest_point_to_segment_uncapped_4172901909 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_closest_point_to_segment_uncapped_4172901909_name._native_ptr(), 4172901909)
        assert(Geometry2D._method_get_closest_point_to_segment_uncapped_4172901909 != nil)
        let _method_point_is_inside_triangle_1025948137_name = StringName(from: "point_is_inside_triangle")
        self._method_point_is_inside_triangle_1025948137 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_point_is_inside_triangle_1025948137_name._native_ptr(), 1025948137)
        assert(Geometry2D._method_point_is_inside_triangle_1025948137 != nil)
        let _method_is_polygon_clockwise_1361156557_name = StringName(from: "is_polygon_clockwise")
        self._method_is_polygon_clockwise_1361156557 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_polygon_clockwise_1361156557_name._native_ptr(), 1361156557)
        assert(Geometry2D._method_is_polygon_clockwise_1361156557 != nil)
        let _method_is_point_in_polygon_738277916_name = StringName(from: "is_point_in_polygon")
        self._method_is_point_in_polygon_738277916 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_point_in_polygon_738277916_name._native_ptr(), 738277916)
        assert(Geometry2D._method_is_point_in_polygon_738277916 != nil)
        let _method_triangulate_polygon_1389921771_name = StringName(from: "triangulate_polygon")
        self._method_triangulate_polygon_1389921771 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_triangulate_polygon_1389921771_name._native_ptr(), 1389921771)
        assert(Geometry2D._method_triangulate_polygon_1389921771 != nil)
        let _method_triangulate_delaunay_1389921771_name = StringName(from: "triangulate_delaunay")
        self._method_triangulate_delaunay_1389921771 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_triangulate_delaunay_1389921771_name._native_ptr(), 1389921771)
        assert(Geometry2D._method_triangulate_delaunay_1389921771 != nil)
        let _method_convex_hull_2004331998_name = StringName(from: "convex_hull")
        self._method_convex_hull_2004331998 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_convex_hull_2004331998_name._native_ptr(), 2004331998)
        assert(Geometry2D._method_convex_hull_2004331998 != nil)
        let _method_decompose_polygon_in_convex_3982393695_name = StringName(from: "decompose_polygon_in_convex")
        self._method_decompose_polygon_in_convex_3982393695 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_decompose_polygon_in_convex_3982393695_name._native_ptr(), 3982393695)
        assert(Geometry2D._method_decompose_polygon_in_convex_3982393695 != nil)
        let _method_merge_polygons_3637387053_name = StringName(from: "merge_polygons")
        self._method_merge_polygons_3637387053 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_merge_polygons_3637387053_name._native_ptr(), 3637387053)
        assert(Geometry2D._method_merge_polygons_3637387053 != nil)
        let _method_clip_polygons_3637387053_name = StringName(from: "clip_polygons")
        self._method_clip_polygons_3637387053 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clip_polygons_3637387053_name._native_ptr(), 3637387053)
        assert(Geometry2D._method_clip_polygons_3637387053 != nil)
        let _method_intersect_polygons_3637387053_name = StringName(from: "intersect_polygons")
        self._method_intersect_polygons_3637387053 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_intersect_polygons_3637387053_name._native_ptr(), 3637387053)
        assert(Geometry2D._method_intersect_polygons_3637387053 != nil)
        let _method_exclude_polygons_3637387053_name = StringName(from: "exclude_polygons")
        self._method_exclude_polygons_3637387053 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_exclude_polygons_3637387053_name._native_ptr(), 3637387053)
        assert(Geometry2D._method_exclude_polygons_3637387053 != nil)
        let _method_clip_polyline_with_polygon_3637387053_name = StringName(from: "clip_polyline_with_polygon")
        self._method_clip_polyline_with_polygon_3637387053 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clip_polyline_with_polygon_3637387053_name._native_ptr(), 3637387053)
        assert(Geometry2D._method_clip_polyline_with_polygon_3637387053 != nil)
        let _method_intersect_polyline_with_polygon_3637387053_name = StringName(from: "intersect_polyline_with_polygon")
        self._method_intersect_polyline_with_polygon_3637387053 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_intersect_polyline_with_polygon_3637387053_name._native_ptr(), 3637387053)
        assert(Geometry2D._method_intersect_polyline_with_polygon_3637387053 != nil)
        let _method_offset_polygon_3837618924_name = StringName(from: "offset_polygon")
        self._method_offset_polygon_3837618924 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_offset_polygon_3837618924_name._native_ptr(), 3837618924)
        assert(Geometry2D._method_offset_polygon_3837618924 != nil)
        let _method_offset_polyline_328033063_name = StringName(from: "offset_polyline")
        self._method_offset_polyline_328033063 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_offset_polyline_328033063_name._native_ptr(), 328033063)
        assert(Geometry2D._method_offset_polyline_328033063 != nil)
        let _method_make_atlas_1337682371_name = StringName(from: "make_atlas")
        self._method_make_atlas_1337682371 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_make_atlas_1337682371_name._native_ptr(), 1337682371)
        assert(Geometry2D._method_make_atlas_1337682371 != nil)
    }

    public func is_point_in_circle(point: Vector2, circle_position: Vector2, circle_radius: Float64) -> UInt8 {
        withUnsafePointer(to: circle_radius) { circle_radius_native in
        let circle_position_native = circle_position._native_ptr()
        let point_native = point._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(point_native), .init(circle_position_native), .init(circle_radius_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_point_in_circle_2929491703,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func segment_intersects_circle(segment_from: Vector2, segment_to: Vector2, circle_position: Vector2, circle_radius: Float64) -> Float64 {
        withUnsafePointer(to: circle_radius) { circle_radius_native in
        let circle_position_native = circle_position._native_ptr()
        let segment_to_native = segment_to._native_ptr()
        let segment_from_native = segment_from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(segment_from_native), .init(segment_to_native), .init(circle_position_native), .init(circle_radius_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_segment_intersects_circle_1356928167,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func segment_intersects_segment(from_a: Vector2, to_a: Vector2, from_b: Vector2, to_b: Vector2) -> Variant {
        let to_b_native = to_b._native_ptr()
        let from_b_native = from_b._native_ptr()
        let to_a_native = to_a._native_ptr()
        let from_a_native = from_a._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_a_native), .init(to_a_native), .init(from_b_native), .init(to_b_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_segment_intersects_segment_2058025344,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
    }
    public func line_intersects_line(from_a: Vector2, dir_a: Vector2, from_b: Vector2, dir_b: Vector2) -> Variant {
        let dir_b_native = dir_b._native_ptr()
        let from_b_native = from_b._native_ptr()
        let dir_a_native = dir_a._native_ptr()
        let from_a_native = from_a._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_a_native), .init(dir_a_native), .init(from_b_native), .init(dir_b_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_line_intersects_line_2058025344,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
    }
    public func get_closest_points_between_segments(p1: Vector2, q1: Vector2, p2: Vector2, q2: Vector2) -> PackedVector2Array {
        let q2_native = q2._native_ptr()
        let p2_native = p2._native_ptr()
        let q1_native = q1._native_ptr()
        let p1_native = p1._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p1_native), .init(q1_native), .init(p2_native), .init(q2_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_closest_points_between_segments_3344690961,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(from: __resPtr.pointee)
    }
    public func get_closest_point_to_segment(point: Vector2, s1: Vector2, s2: Vector2) -> Vector2 {
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
                    Self._method_get_closest_point_to_segment_4172901909,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func get_closest_point_to_segment_uncapped(point: Vector2, s1: Vector2, s2: Vector2) -> Vector2 {
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
                    Self._method_get_closest_point_to_segment_uncapped_4172901909,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func point_is_inside_triangle(point: Vector2, a: Vector2, b: Vector2, c: Vector2) -> UInt8 {
        let c_native = c._native_ptr()
        let b_native = b._native_ptr()
        let a_native = a._native_ptr()
        let point_native = point._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(point_native), .init(a_native), .init(b_native), .init(c_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_point_is_inside_triangle_1025948137,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func is_polygon_clockwise(polygon: PackedVector2Array) -> UInt8 {
        let polygon_native = polygon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(polygon_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_polygon_clockwise_1361156557,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func is_point_in_polygon(point: Vector2, polygon: PackedVector2Array) -> UInt8 {
        let polygon_native = polygon._native_ptr()
        let point_native = point._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(point_native), .init(polygon_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_point_in_polygon_738277916,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func triangulate_polygon(polygon: PackedVector2Array) -> PackedInt32Array {
        let polygon_native = polygon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(polygon_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_triangulate_polygon_1389921771,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(from: __resPtr.pointee)
    }
    public func triangulate_delaunay(points: PackedVector2Array) -> PackedInt32Array {
        let points_native = points._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(points_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_triangulate_delaunay_1389921771,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(from: __resPtr.pointee)
    }
    public func convex_hull(points: PackedVector2Array) -> PackedVector2Array {
        let points_native = points._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(points_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_convex_hull_2004331998,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(from: __resPtr.pointee)
    }
    public func decompose_polygon_in_convex(polygon: PackedVector2Array) -> [PackedVector2Array] {
        let polygon_native = polygon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(polygon_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_decompose_polygon_in_convex_3982393695,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [PackedVector2Array](from: __resPtr.pointee)
    }
    public func merge_polygons(polygon_a: PackedVector2Array, polygon_b: PackedVector2Array) -> [PackedVector2Array] {
        let polygon_b_native = polygon_b._native_ptr()
        let polygon_a_native = polygon_a._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(polygon_a_native), .init(polygon_b_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_merge_polygons_3637387053,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [PackedVector2Array](from: __resPtr.pointee)
    }
    public func clip_polygons(polygon_a: PackedVector2Array, polygon_b: PackedVector2Array) -> [PackedVector2Array] {
        let polygon_b_native = polygon_b._native_ptr()
        let polygon_a_native = polygon_a._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(polygon_a_native), .init(polygon_b_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clip_polygons_3637387053,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [PackedVector2Array](from: __resPtr.pointee)
    }
    public func intersect_polygons(polygon_a: PackedVector2Array, polygon_b: PackedVector2Array) -> [PackedVector2Array] {
        let polygon_b_native = polygon_b._native_ptr()
        let polygon_a_native = polygon_a._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(polygon_a_native), .init(polygon_b_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_intersect_polygons_3637387053,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [PackedVector2Array](from: __resPtr.pointee)
    }
    public func exclude_polygons(polygon_a: PackedVector2Array, polygon_b: PackedVector2Array) -> [PackedVector2Array] {
        let polygon_b_native = polygon_b._native_ptr()
        let polygon_a_native = polygon_a._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(polygon_a_native), .init(polygon_b_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_exclude_polygons_3637387053,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [PackedVector2Array](from: __resPtr.pointee)
    }
    public func clip_polyline_with_polygon(polyline: PackedVector2Array, polygon: PackedVector2Array) -> [PackedVector2Array] {
        let polygon_native = polygon._native_ptr()
        let polyline_native = polyline._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(polyline_native), .init(polygon_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clip_polyline_with_polygon_3637387053,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [PackedVector2Array](from: __resPtr.pointee)
    }
    public func intersect_polyline_with_polygon(polyline: PackedVector2Array, polygon: PackedVector2Array) -> [PackedVector2Array] {
        let polygon_native = polygon._native_ptr()
        let polyline_native = polyline._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(polyline_native), .init(polygon_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_intersect_polyline_with_polygon_3637387053,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [PackedVector2Array](from: __resPtr.pointee)
    }
    public func offset_polygon(polygon: PackedVector2Array, delta: Float64, join_type: Geometry2D.PolyJoinType) -> [PackedVector2Array] {
        withUnsafePointer(to: delta) { delta_native in
        withUnsafePointer(to: join_type.rawValue) { join_type_native in
        let polygon_native = polygon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(polygon_native), .init(delta_native), .init(join_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_offset_polygon_3837618924,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [PackedVector2Array](from: __resPtr.pointee)
        }
        }
    }
    public func offset_polyline(polyline: PackedVector2Array, delta: Float64, join_type: Geometry2D.PolyJoinType, end_type: Geometry2D.PolyEndType) -> [PackedVector2Array] {
        withUnsafePointer(to: delta) { delta_native in
        withUnsafePointer(to: end_type.rawValue) { end_type_native in
        withUnsafePointer(to: join_type.rawValue) { join_type_native in
        let polyline_native = polyline._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(polyline_native), .init(delta_native), .init(join_type_native), .init(end_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_offset_polyline_328033063,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [PackedVector2Array](from: __resPtr.pointee)
        }
        }
        }
    }
    public func make_atlas(sizes: PackedVector2Array) -> Dictionary {
        let sizes_native = sizes._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sizes_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_make_atlas_1337682371,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
    }
}