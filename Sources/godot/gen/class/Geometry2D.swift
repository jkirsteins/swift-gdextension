import godot_native

fileprivate var __godot_name_Geometry2D: StringName! = nil

/// Helper node to calculate generic geometry operations in 2D space.
/// 
/// Geometry2D provides users with a set of helper functions to create geometric shapes, compute intersections between shapes, and process various other geometric operations.
open class Geometry2D : Object {

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

    static var _method_is_point_in_circle_2929491703: StringName! = nil
    static var _method_segment_intersects_circle_1356928167: StringName! = nil
    static var _method_segment_intersects_segment_2058025344: StringName! = nil
    static var _method_line_intersects_line_2058025344: StringName! = nil
    static var _method_get_closest_points_between_segments_3344690961: StringName! = nil
    static var _method_get_closest_point_to_segment_4172901909: StringName! = nil
    static var _method_get_closest_point_to_segment_uncapped_4172901909: StringName! = nil
    static var _method_point_is_inside_triangle_1025948137: StringName! = nil
    static var _method_is_polygon_clockwise_1361156557: StringName! = nil
    static var _method_is_point_in_polygon_738277916: StringName! = nil
    static var _method_triangulate_polygon_1389921771: StringName! = nil
    static var _method_triangulate_delaunay_1389921771: StringName! = nil
    static var _method_convex_hull_2004331998: StringName! = nil
    static var _method_decompose_polygon_in_convex_3982393695: StringName! = nil
    static var _method_merge_polygons_3637387053: StringName! = nil
    static var _method_clip_polygons_3637387053: StringName! = nil
    static var _method_intersect_polygons_3637387053: StringName! = nil
    static var _method_exclude_polygons_3637387053: StringName! = nil
    static var _method_clip_polyline_with_polygon_3637387053: StringName! = nil
    static var _method_intersect_polyline_with_polygon_3637387053: StringName! = nil
    static var _method_offset_polygon_3837618924: StringName! = nil
    static var _method_offset_polyline_328033063: StringName! = nil
    static var _method_make_atlas_1337682371: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_Geometry2D == nil)
        __godot_name_Geometry2D = StringName(from: "Geometry2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_is_point_in_circle_2929491703 = StringName(from: "is_point_in_circle")
        assert(self._method_is_point_in_circle_2929491703 != nil)
        self._method_segment_intersects_circle_1356928167 = StringName(from: "segment_intersects_circle")
        assert(self._method_segment_intersects_circle_1356928167 != nil)
        self._method_segment_intersects_segment_2058025344 = StringName(from: "segment_intersects_segment")
        assert(self._method_segment_intersects_segment_2058025344 != nil)
        self._method_line_intersects_line_2058025344 = StringName(from: "line_intersects_line")
        assert(self._method_line_intersects_line_2058025344 != nil)
        self._method_get_closest_points_between_segments_3344690961 = StringName(from: "get_closest_points_between_segments")
        assert(self._method_get_closest_points_between_segments_3344690961 != nil)
        self._method_get_closest_point_to_segment_4172901909 = StringName(from: "get_closest_point_to_segment")
        assert(self._method_get_closest_point_to_segment_4172901909 != nil)
        self._method_get_closest_point_to_segment_uncapped_4172901909 = StringName(from: "get_closest_point_to_segment_uncapped")
        assert(self._method_get_closest_point_to_segment_uncapped_4172901909 != nil)
        self._method_point_is_inside_triangle_1025948137 = StringName(from: "point_is_inside_triangle")
        assert(self._method_point_is_inside_triangle_1025948137 != nil)
        self._method_is_polygon_clockwise_1361156557 = StringName(from: "is_polygon_clockwise")
        assert(self._method_is_polygon_clockwise_1361156557 != nil)
        self._method_is_point_in_polygon_738277916 = StringName(from: "is_point_in_polygon")
        assert(self._method_is_point_in_polygon_738277916 != nil)
        self._method_triangulate_polygon_1389921771 = StringName(from: "triangulate_polygon")
        assert(self._method_triangulate_polygon_1389921771 != nil)
        self._method_triangulate_delaunay_1389921771 = StringName(from: "triangulate_delaunay")
        assert(self._method_triangulate_delaunay_1389921771 != nil)
        self._method_convex_hull_2004331998 = StringName(from: "convex_hull")
        assert(self._method_convex_hull_2004331998 != nil)
        self._method_decompose_polygon_in_convex_3982393695 = StringName(from: "decompose_polygon_in_convex")
        assert(self._method_decompose_polygon_in_convex_3982393695 != nil)
        self._method_merge_polygons_3637387053 = StringName(from: "merge_polygons")
        assert(self._method_merge_polygons_3637387053 != nil)
        self._method_clip_polygons_3637387053 = StringName(from: "clip_polygons")
        assert(self._method_clip_polygons_3637387053 != nil)
        self._method_intersect_polygons_3637387053 = StringName(from: "intersect_polygons")
        assert(self._method_intersect_polygons_3637387053 != nil)
        self._method_exclude_polygons_3637387053 = StringName(from: "exclude_polygons")
        assert(self._method_exclude_polygons_3637387053 != nil)
        self._method_clip_polyline_with_polygon_3637387053 = StringName(from: "clip_polyline_with_polygon")
        assert(self._method_clip_polyline_with_polygon_3637387053 != nil)
        self._method_intersect_polyline_with_polygon_3637387053 = StringName(from: "intersect_polyline_with_polygon")
        assert(self._method_intersect_polyline_with_polygon_3637387053 != nil)
        self._method_offset_polygon_3837618924 = StringName(from: "offset_polygon")
        assert(self._method_offset_polygon_3837618924 != nil)
        self._method_offset_polyline_328033063 = StringName(from: "offset_polyline")
        assert(self._method_offset_polyline_328033063 != nil)
        self._method_make_atlas_1337682371 = StringName(from: "make_atlas")
        assert(self._method_make_atlas_1337682371 != nil)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_point_in_circle_2929491703._native_ptr(),
                    2929491703)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_segment_intersects_circle_1356928167._native_ptr(),
                    1356928167)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_segment_intersects_segment_2058025344._native_ptr(),
                    2058025344)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_line_intersects_line_2058025344._native_ptr(),
                    2058025344)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_closest_points_between_segments_3344690961._native_ptr(),
                    3344690961)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_closest_point_to_segment_4172901909._native_ptr(),
                    4172901909)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_closest_point_to_segment_uncapped_4172901909._native_ptr(),
                    4172901909)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_point_is_inside_triangle_1025948137._native_ptr(),
                    1025948137)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_polygon_clockwise_1361156557._native_ptr(),
                    1361156557)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_point_in_polygon_738277916._native_ptr(),
                    738277916)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_triangulate_polygon_1389921771._native_ptr(),
                    1389921771)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_triangulate_delaunay_1389921771._native_ptr(),
                    1389921771)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_convex_hull_2004331998._native_ptr(),
                    2004331998)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_decompose_polygon_in_convex_3982393695._native_ptr(),
                    3982393695)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [PackedVector2Array](godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_merge_polygons_3637387053._native_ptr(),
                    3637387053)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [PackedVector2Array](godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clip_polygons_3637387053._native_ptr(),
                    3637387053)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [PackedVector2Array](godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_intersect_polygons_3637387053._native_ptr(),
                    3637387053)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [PackedVector2Array](godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_exclude_polygons_3637387053._native_ptr(),
                    3637387053)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [PackedVector2Array](godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clip_polyline_with_polygon_3637387053._native_ptr(),
                    3637387053)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [PackedVector2Array](godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_intersect_polyline_with_polygon_3637387053._native_ptr(),
                    3637387053)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [PackedVector2Array](godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_offset_polygon_3837618924._native_ptr(),
                    3837618924)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [PackedVector2Array](godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_offset_polyline_328033063._native_ptr(),
                    328033063)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [PackedVector2Array](godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_make_atlas_1337682371._native_ptr(),
                    1337682371)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
    }
}