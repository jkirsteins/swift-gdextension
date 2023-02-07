import godot_native

fileprivate var __godot_name_PolygonPathFinder: StringName! = nil

/// 
/// 
/// 
public class PolygonPathFinder : Resource {

    

    public override class var __godot_name: StringName { __godot_name_PolygonPathFinder }

    static var _method_setup_3251786936: GDExtensionMethodBindPtr! = nil
    static var _method_find_path_1562168077: GDExtensionMethodBindPtr! = nil
    static var _method_get_intersections_3932192302: GDExtensionMethodBindPtr! = nil
    static var _method_get_closest_point_2656412154: GDExtensionMethodBindPtr! = nil
    static var _method_is_point_inside_556197845: GDExtensionMethodBindPtr! = nil
    static var _method_set_point_penalty_1602489585: GDExtensionMethodBindPtr! = nil
    static var _method_get_point_penalty_2339986948: GDExtensionMethodBindPtr! = nil
    static var _method_get_bounds_1639390495: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_PolygonPathFinder = StringName(from: "PolygonPathFinder")

        let _method_setup_3251786936_name = StringName(from: "setup")
        self._method_setup_3251786936 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_setup_3251786936_name._native_ptr(), 3251786936)
        assert(PolygonPathFinder._method_setup_3251786936 != nil)
        let _method_find_path_1562168077_name = StringName(from: "find_path")
        self._method_find_path_1562168077 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_find_path_1562168077_name._native_ptr(), 1562168077)
        assert(PolygonPathFinder._method_find_path_1562168077 != nil)
        let _method_get_intersections_3932192302_name = StringName(from: "get_intersections")
        self._method_get_intersections_3932192302 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_intersections_3932192302_name._native_ptr(), 3932192302)
        assert(PolygonPathFinder._method_get_intersections_3932192302 != nil)
        let _method_get_closest_point_2656412154_name = StringName(from: "get_closest_point")
        self._method_get_closest_point_2656412154 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_closest_point_2656412154_name._native_ptr(), 2656412154)
        assert(PolygonPathFinder._method_get_closest_point_2656412154 != nil)
        let _method_is_point_inside_556197845_name = StringName(from: "is_point_inside")
        self._method_is_point_inside_556197845 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_point_inside_556197845_name._native_ptr(), 556197845)
        assert(PolygonPathFinder._method_is_point_inside_556197845 != nil)
        let _method_set_point_penalty_1602489585_name = StringName(from: "set_point_penalty")
        self._method_set_point_penalty_1602489585 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_point_penalty_1602489585_name._native_ptr(), 1602489585)
        assert(PolygonPathFinder._method_set_point_penalty_1602489585 != nil)
        let _method_get_point_penalty_2339986948_name = StringName(from: "get_point_penalty")
        self._method_get_point_penalty_2339986948 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_point_penalty_2339986948_name._native_ptr(), 2339986948)
        assert(PolygonPathFinder._method_get_point_penalty_2339986948 != nil)
        let _method_get_bounds_1639390495_name = StringName(from: "get_bounds")
        self._method_get_bounds_1639390495 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_bounds_1639390495_name._native_ptr(), 1639390495)
        assert(PolygonPathFinder._method_get_bounds_1639390495 != nil)
    }

    public func setup(points: PackedVector2Array, connections: PackedInt32Array)  {
        let connections_native = connections._native_ptr()
        let points_native = points._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(points_native), .init(connections_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_setup_3251786936,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func find_path(from: Vector2, to: Vector2) -> PackedVector2Array {
        let to_native = to._native_ptr()
        let from_native = from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native), .init(to_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_find_path_1562168077,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(from: __resPtr.pointee)
    }
    public func get_intersections(from: Vector2, to: Vector2) -> PackedVector2Array {
        let to_native = to._native_ptr()
        let from_native = from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native), .init(to_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_intersections_3932192302,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(from: __resPtr.pointee)
    }
    public func get_closest_point(point: Vector2) -> Vector2 {
        let point_native = point._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(point_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_closest_point_2656412154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func is_point_inside(point: Vector2) -> UInt8 {
        let point_native = point._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(point_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_point_inside_556197845,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_point_penalty(idx: Int64, penalty: Float64)  {
        withUnsafePointer(to: penalty) { penalty_native in
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(penalty_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_point_penalty_1602489585,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_point_penalty(idx: Int64) -> Float64 {
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
                    Self._method_get_point_penalty_2339986948,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func get_bounds() -> Rect2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bounds_1639390495,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2(from: __resPtr.pointee)
    }
}