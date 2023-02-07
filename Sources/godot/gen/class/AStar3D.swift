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
public class AStar3D : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_AStar3D }

    static var _method__estimate_cost_0: GDExtensionMethodBindPtr! = nil
    static var _method__compute_cost_0: GDExtensionMethodBindPtr! = nil
    static var _method_get_available_point_id_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_add_point_2920922839: GDExtensionMethodBindPtr! = nil
    static var _method_get_point_position_711720468: GDExtensionMethodBindPtr! = nil
    static var _method_set_point_position_1530502735: GDExtensionMethodBindPtr! = nil
    static var _method_get_point_weight_scale_2339986948: GDExtensionMethodBindPtr! = nil
    static var _method_set_point_weight_scale_1602489585: GDExtensionMethodBindPtr! = nil
    static var _method_remove_point_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_has_point_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_get_point_connections_2865087369: GDExtensionMethodBindPtr! = nil
    static var _method_get_point_ids_3851388692: GDExtensionMethodBindPtr! = nil
    static var _method_set_point_disabled_4023243586: GDExtensionMethodBindPtr! = nil
    static var _method_is_point_disabled_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_connect_points_3785370599: GDExtensionMethodBindPtr! = nil
    static var _method_disconnect_points_3785370599: GDExtensionMethodBindPtr! = nil
    static var _method_are_points_connected_4063588998: GDExtensionMethodBindPtr! = nil
    static var _method_get_point_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_point_capacity_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_reserve_space_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_clear_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_closest_point_3241074317: GDExtensionMethodBindPtr! = nil
    static var _method_get_closest_position_in_segment_192990374: GDExtensionMethodBindPtr! = nil
    static var _method_get_point_path_880819742: GDExtensionMethodBindPtr! = nil
    static var _method_get_id_path_3404614526: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_AStar3D = StringName(from: "AStar3D")

        let _method_get_available_point_id_3905245786_name = StringName(from: "get_available_point_id")
        self._method_get_available_point_id_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_available_point_id_3905245786_name._native_ptr(), 3905245786)
        assert(AStar3D._method_get_available_point_id_3905245786 != nil)
        let _method_add_point_2920922839_name = StringName(from: "add_point")
        self._method_add_point_2920922839 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_point_2920922839_name._native_ptr(), 2920922839)
        assert(AStar3D._method_add_point_2920922839 != nil)
        let _method_get_point_position_711720468_name = StringName(from: "get_point_position")
        self._method_get_point_position_711720468 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_point_position_711720468_name._native_ptr(), 711720468)
        assert(AStar3D._method_get_point_position_711720468 != nil)
        let _method_set_point_position_1530502735_name = StringName(from: "set_point_position")
        self._method_set_point_position_1530502735 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_point_position_1530502735_name._native_ptr(), 1530502735)
        assert(AStar3D._method_set_point_position_1530502735 != nil)
        let _method_get_point_weight_scale_2339986948_name = StringName(from: "get_point_weight_scale")
        self._method_get_point_weight_scale_2339986948 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_point_weight_scale_2339986948_name._native_ptr(), 2339986948)
        assert(AStar3D._method_get_point_weight_scale_2339986948 != nil)
        let _method_set_point_weight_scale_1602489585_name = StringName(from: "set_point_weight_scale")
        self._method_set_point_weight_scale_1602489585 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_point_weight_scale_1602489585_name._native_ptr(), 1602489585)
        assert(AStar3D._method_set_point_weight_scale_1602489585 != nil)
        let _method_remove_point_1286410249_name = StringName(from: "remove_point")
        self._method_remove_point_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_point_1286410249_name._native_ptr(), 1286410249)
        assert(AStar3D._method_remove_point_1286410249 != nil)
        let _method_has_point_1116898809_name = StringName(from: "has_point")
        self._method_has_point_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_point_1116898809_name._native_ptr(), 1116898809)
        assert(AStar3D._method_has_point_1116898809 != nil)
        let _method_get_point_connections_2865087369_name = StringName(from: "get_point_connections")
        self._method_get_point_connections_2865087369 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_point_connections_2865087369_name._native_ptr(), 2865087369)
        assert(AStar3D._method_get_point_connections_2865087369 != nil)
        let _method_get_point_ids_3851388692_name = StringName(from: "get_point_ids")
        self._method_get_point_ids_3851388692 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_point_ids_3851388692_name._native_ptr(), 3851388692)
        assert(AStar3D._method_get_point_ids_3851388692 != nil)
        let _method_set_point_disabled_4023243586_name = StringName(from: "set_point_disabled")
        self._method_set_point_disabled_4023243586 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_point_disabled_4023243586_name._native_ptr(), 4023243586)
        assert(AStar3D._method_set_point_disabled_4023243586 != nil)
        let _method_is_point_disabled_1116898809_name = StringName(from: "is_point_disabled")
        self._method_is_point_disabled_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_point_disabled_1116898809_name._native_ptr(), 1116898809)
        assert(AStar3D._method_is_point_disabled_1116898809 != nil)
        let _method_connect_points_3785370599_name = StringName(from: "connect_points")
        self._method_connect_points_3785370599 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_connect_points_3785370599_name._native_ptr(), 3785370599)
        assert(AStar3D._method_connect_points_3785370599 != nil)
        let _method_disconnect_points_3785370599_name = StringName(from: "disconnect_points")
        self._method_disconnect_points_3785370599 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_disconnect_points_3785370599_name._native_ptr(), 3785370599)
        assert(AStar3D._method_disconnect_points_3785370599 != nil)
        let _method_are_points_connected_4063588998_name = StringName(from: "are_points_connected")
        self._method_are_points_connected_4063588998 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_are_points_connected_4063588998_name._native_ptr(), 4063588998)
        assert(AStar3D._method_are_points_connected_4063588998 != nil)
        let _method_get_point_count_3905245786_name = StringName(from: "get_point_count")
        self._method_get_point_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_point_count_3905245786_name._native_ptr(), 3905245786)
        assert(AStar3D._method_get_point_count_3905245786 != nil)
        let _method_get_point_capacity_3905245786_name = StringName(from: "get_point_capacity")
        self._method_get_point_capacity_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_point_capacity_3905245786_name._native_ptr(), 3905245786)
        assert(AStar3D._method_get_point_capacity_3905245786 != nil)
        let _method_reserve_space_1286410249_name = StringName(from: "reserve_space")
        self._method_reserve_space_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_reserve_space_1286410249_name._native_ptr(), 1286410249)
        assert(AStar3D._method_reserve_space_1286410249 != nil)
        let _method_clear_3218959716_name = StringName(from: "clear")
        self._method_clear_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_3218959716_name._native_ptr(), 3218959716)
        assert(AStar3D._method_clear_3218959716 != nil)
        let _method_get_closest_point_3241074317_name = StringName(from: "get_closest_point")
        self._method_get_closest_point_3241074317 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_closest_point_3241074317_name._native_ptr(), 3241074317)
        assert(AStar3D._method_get_closest_point_3241074317 != nil)
        let _method_get_closest_position_in_segment_192990374_name = StringName(from: "get_closest_position_in_segment")
        self._method_get_closest_position_in_segment_192990374 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_closest_position_in_segment_192990374_name._native_ptr(), 192990374)
        assert(AStar3D._method_get_closest_position_in_segment_192990374 != nil)
        let _method_get_point_path_880819742_name = StringName(from: "get_point_path")
        self._method_get_point_path_880819742 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_point_path_880819742_name._native_ptr(), 880819742)
        assert(AStar3D._method_get_point_path_880819742 != nil)
        let _method_get_id_path_3404614526_name = StringName(from: "get_id_path")
        self._method_get_id_path_3404614526 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_id_path_3404614526_name._native_ptr(), 3404614526)
        assert(AStar3D._method_get_id_path_3404614526 != nil)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__estimate_cost_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__compute_cost_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_available_point_id_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_point_2920922839,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_point_position_711720468,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_point_position_1530502735,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_point_weight_scale_2339986948,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_point_weight_scale_1602489585,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_point_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_point_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_point_connections_2865087369,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt64Array(from: __resPtr.pointee)
        }
    }
    public func get_point_ids() -> PackedInt64Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_point_ids_3851388692,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt64Array(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_point_disabled_4023243586,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_point_disabled_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_connect_points_3785370599,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_disconnect_points_3785370599,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_are_points_connected_4063588998,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_point_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_point_capacity() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_point_capacity_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func reserve_space(num_nodes: Int64)  {
        withUnsafePointer(to: num_nodes) { num_nodes_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(num_nodes_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_reserve_space_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_closest_point_3241074317,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_closest_position_in_segment_192990374,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_point_path_880819742,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector3Array(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_id_path_3404614526,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt64Array(from: __resPtr.pointee)
        }
        }
    }
}