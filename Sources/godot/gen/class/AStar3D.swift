import godot_native

fileprivate var __godot_name_AStar3D: StringName! = nil

/// An implementation of A* to find the shortest paths among connected points in space.
/// 
/// A* (A star) is a computer algorithm that is widely used in pathfinding and graph traversal, the process of plotting short paths among vertices (points), passing through a given set of edges (segments). It enjoys widespread use due to its performance and accuracy. Godot's A* implementation uses points in three-dimensional space and Euclidean distances by default.
///  
/// You must add points manually with [method add_point] and create segments manually with [method connect_points]. Then you can test if there is a path between two points with the [method are_points_connected] function, get a path containing indices by [method get_id_path], or one containing actual coordinates with [method get_point_path].
///  
/// It is also possible to use non-Euclidean distances. To do so, create a class that extends [code]AStar3D[/code] and override methods [method _compute_cost] and [method _estimate_cost]. Both take two indices and return a length, as is shown in the following example.
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// class MyAStar:
///  
///     extends AStar3D
///  
///  
///     func _compute_cost(u, v):
///  
///         return abs(u - v)
///  
///  
///     func _estimate_cost(u, v):
///  
///         return min(0, abs(u - v) - 1)
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// public partial class MyAStar : AStar3D
///  
/// {
///  
///     public override float _ComputeCost(long fromId, long toId)
///  
///     {
///  
///         return Mathf.Abs((int)(fromId - toId));
///  
///     }
///  
///  
///     public override float _EstimateCost(long fromId, long toId)
///  
///     {
///  
///         return Mathf.Min(0, Mathf.Abs((int)(fromId - toId)) - 1);
///  
///     }
///  
/// }
///  
/// [/csharp]
///  
/// [/codeblocks]
///  
/// [method _estimate_cost] should return a lower bound of the distance, i.e. [code]_estimate_cost(u, v) <= _compute_cost(u, v)[/code]. This serves as a hint to the algorithm because the custom [code]_compute_cost[/code] might be computation-heavy. If this is not the case, make [method _estimate_cost] return the same value as [method _compute_cost] to provide the algorithm with the most accurate information.
///  
/// If the default [method _estimate_cost] and [method _compute_cost] methods are used, or if the supplied [method _estimate_cost] method returns a lower bound of the cost, then the paths returned by A* will be the lowest-cost paths. Here, the cost of a path equals the sum of the [method _compute_cost] results of all segments in the path multiplied by the [code]weight_scale[/code]s of the endpoints of the respective segments. If the default methods are used and the [code]weight_scale[/code]s of all points are set to [code]1.0[/code], then this equals the sum of Euclidean distances of all segments in the path.
open class AStar3D : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_AStar3D }

    static var _method__estimate_cost_0: StringName! = nil
    static var _method__compute_cost_0: StringName! = nil
    static var _method_get_available_point_id_3905245786: StringName! = nil
    static var _method_add_point_2920922839: StringName! = nil
    static var _method_get_point_position_711720468: StringName! = nil
    static var _method_set_point_position_1530502735: StringName! = nil
    static var _method_get_point_weight_scale_2339986948: StringName! = nil
    static var _method_set_point_weight_scale_1602489585: StringName! = nil
    static var _method_remove_point_1286410249: StringName! = nil
    static var _method_has_point_1116898809: StringName! = nil
    static var _method_get_point_connections_2865087369: StringName! = nil
    static var _method_get_point_ids_3851388692: StringName! = nil
    static var _method_set_point_disabled_4023243586: StringName! = nil
    static var _method_is_point_disabled_1116898809: StringName! = nil
    static var _method_connect_points_3785370599: StringName! = nil
    static var _method_disconnect_points_3785370599: StringName! = nil
    static var _method_are_points_connected_4063588998: StringName! = nil
    static var _method_get_point_count_3905245786: StringName! = nil
    static var _method_get_point_capacity_3905245786: StringName! = nil
    static var _method_reserve_space_1286410249: StringName! = nil
    static var _method_clear_3218959716: StringName! = nil
    static var _method_get_closest_point_3241074317: StringName! = nil
    static var _method_get_closest_position_in_segment_192990374: StringName! = nil
    static var _method_get_point_path_880819742: StringName! = nil
    static var _method_get_id_path_3404614526: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AStar3D == nil)
        __godot_name_AStar3D = StringName(from: "AStar3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_available_point_id_3905245786 = StringName(from: "get_available_point_id")
        assert(self._method_get_available_point_id_3905245786 != nil)
        self._method_add_point_2920922839 = StringName(from: "add_point")
        assert(self._method_add_point_2920922839 != nil)
        self._method_get_point_position_711720468 = StringName(from: "get_point_position")
        assert(self._method_get_point_position_711720468 != nil)
        self._method_set_point_position_1530502735 = StringName(from: "set_point_position")
        assert(self._method_set_point_position_1530502735 != nil)
        self._method_get_point_weight_scale_2339986948 = StringName(from: "get_point_weight_scale")
        assert(self._method_get_point_weight_scale_2339986948 != nil)
        self._method_set_point_weight_scale_1602489585 = StringName(from: "set_point_weight_scale")
        assert(self._method_set_point_weight_scale_1602489585 != nil)
        self._method_remove_point_1286410249 = StringName(from: "remove_point")
        assert(self._method_remove_point_1286410249 != nil)
        self._method_has_point_1116898809 = StringName(from: "has_point")
        assert(self._method_has_point_1116898809 != nil)
        self._method_get_point_connections_2865087369 = StringName(from: "get_point_connections")
        assert(self._method_get_point_connections_2865087369 != nil)
        self._method_get_point_ids_3851388692 = StringName(from: "get_point_ids")
        assert(self._method_get_point_ids_3851388692 != nil)
        self._method_set_point_disabled_4023243586 = StringName(from: "set_point_disabled")
        assert(self._method_set_point_disabled_4023243586 != nil)
        self._method_is_point_disabled_1116898809 = StringName(from: "is_point_disabled")
        assert(self._method_is_point_disabled_1116898809 != nil)
        self._method_connect_points_3785370599 = StringName(from: "connect_points")
        assert(self._method_connect_points_3785370599 != nil)
        self._method_disconnect_points_3785370599 = StringName(from: "disconnect_points")
        assert(self._method_disconnect_points_3785370599 != nil)
        self._method_are_points_connected_4063588998 = StringName(from: "are_points_connected")
        assert(self._method_are_points_connected_4063588998 != nil)
        self._method_get_point_count_3905245786 = StringName(from: "get_point_count")
        assert(self._method_get_point_count_3905245786 != nil)
        self._method_get_point_capacity_3905245786 = StringName(from: "get_point_capacity")
        assert(self._method_get_point_capacity_3905245786 != nil)
        self._method_reserve_space_1286410249 = StringName(from: "reserve_space")
        assert(self._method_reserve_space_1286410249 != nil)
        self._method_clear_3218959716 = StringName(from: "clear")
        assert(self._method_clear_3218959716 != nil)
        self._method_get_closest_point_3241074317 = StringName(from: "get_closest_point")
        assert(self._method_get_closest_point_3241074317 != nil)
        self._method_get_closest_position_in_segment_192990374 = StringName(from: "get_closest_position_in_segment")
        assert(self._method_get_closest_position_in_segment_192990374 != nil)
        self._method_get_point_path_880819742 = StringName(from: "get_point_path")
        assert(self._method_get_point_path_880819742 != nil)
        self._method_get_id_path_3404614526 = StringName(from: "get_id_path")
        assert(self._method_get_id_path_3404614526 != nil)
    }

    public func _estimate_cost(from_id: Int64, to_id: Int64) -> Float64 {
        withUnsafePointer(to: to_id) { to_id_native in
        withUnsafePointer(to: from_id) { from_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_id_native), .init(to_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return Float64(godot: __resPtr.pointee)
        }
        }
    }
    public func _compute_cost(from_id: Int64, to_id: Int64) -> Float64 {
        withUnsafePointer(to: to_id) { to_id_native in
        withUnsafePointer(to: from_id) { from_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_id_native), .init(to_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return Float64(godot: __resPtr.pointee)
        }
        }
    }
    public func get_available_point_id() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_available_point_id_3905245786._native_ptr(),
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
    public func add_point(id: Int64, position: Vector3, weight_scale: Float64)  {
        withUnsafePointer(to: weight_scale) { weight_scale_native in
        withUnsafePointer(to: id) { id_native in
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(position_native), .init(weight_scale_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_point_2920922839._native_ptr(),
                    2920922839)
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
    public func get_point_position(id: Int64) -> Vector3 {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
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
    public func set_point_position(id: Int64, position: Vector3)  {
        withUnsafePointer(to: id) { id_native in
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(position_native)
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
    public func get_point_weight_scale(id: Int64) -> Float64 {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_point_weight_scale_2339986948._native_ptr(),
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
    public func set_point_weight_scale(id: Int64, weight_scale: Float64)  {
        withUnsafePointer(to: weight_scale) { weight_scale_native in
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(weight_scale_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_point_weight_scale_1602489585._native_ptr(),
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
    public func remove_point(id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
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
    public func has_point(id: Int64) -> UInt8 {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_point_1116898809._native_ptr(),
                    1116898809)
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
    public func get_point_connections(id: Int64) -> PackedInt64Array {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_point_connections_2865087369._native_ptr(),
                    2865087369)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt64Array(godot: __resPtr.pointee)
        }
    }
    public func get_point_ids() -> PackedInt64Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_point_ids_3851388692._native_ptr(),
                    3851388692)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt64Array(godot: __resPtr.pointee)
    }
    public func set_point_disabled(id: Int64, disabled: UInt8)  {
        withUnsafePointer(to: disabled) { disabled_native in
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(disabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_point_disabled_4023243586._native_ptr(),
                    4023243586)
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
    public func is_point_disabled(id: Int64) -> UInt8 {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_point_disabled_1116898809._native_ptr(),
                    1116898809)
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
    public func connect_points(id: Int64, to_id: Int64, bidirectional: UInt8)  {
        withUnsafePointer(to: bidirectional) { bidirectional_native in
        withUnsafePointer(to: to_id) { to_id_native in
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(to_id_native), .init(bidirectional_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_connect_points_3785370599._native_ptr(),
                    3785370599)
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
    }
    public func disconnect_points(id: Int64, to_id: Int64, bidirectional: UInt8)  {
        withUnsafePointer(to: bidirectional) { bidirectional_native in
        withUnsafePointer(to: to_id) { to_id_native in
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(to_id_native), .init(bidirectional_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_disconnect_points_3785370599._native_ptr(),
                    3785370599)
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
    }
    public func are_points_connected(id: Int64, to_id: Int64, bidirectional: UInt8) -> UInt8 {
        withUnsafePointer(to: bidirectional) { bidirectional_native in
        withUnsafePointer(to: to_id) { to_id_native in
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(to_id_native), .init(bidirectional_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_are_points_connected_4063588998._native_ptr(),
                    4063588998)
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
        }
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
    public func get_point_capacity() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_point_capacity_3905245786._native_ptr(),
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
    public func reserve_space(num_nodes: Int64)  {
        withUnsafePointer(to: num_nodes) { num_nodes_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(num_nodes_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_reserve_space_1286410249._native_ptr(),
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
    public func clear()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_closest_point(to_position: Vector3, include_disabled: UInt8) -> Int64 {
        withUnsafePointer(to: include_disabled) { include_disabled_native in
        let to_position_native = to_position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(to_position_native), .init(include_disabled_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_closest_point_3241074317._native_ptr(),
                    3241074317)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func get_closest_position_in_segment(to_position: Vector3) -> Vector3 {
        let to_position_native = to_position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(to_position_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_closest_position_in_segment_192990374._native_ptr(),
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
    public func get_point_path(from_id: Int64, to_id: Int64) -> PackedVector3Array {
        withUnsafePointer(to: to_id) { to_id_native in
        withUnsafePointer(to: from_id) { from_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_id_native), .init(to_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_point_path_880819742._native_ptr(),
                    880819742)
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
    public func get_id_path(from_id: Int64, to_id: Int64) -> PackedInt64Array {
        withUnsafePointer(to: to_id) { to_id_native in
        withUnsafePointer(to: from_id) { from_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_id_native), .init(to_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_id_path_3404614526._native_ptr(),
                    3404614526)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt64Array(godot: __resPtr.pointee)
        }
        }
    }
}