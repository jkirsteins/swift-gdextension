import godot_native

fileprivate var __godot_name_AStar2D: StringName! = nil

/// AStar class representation that uses 2D vectors as edges.
/// 
/// This is a wrapper for the [AStar3D] class which uses 2D vectors instead of 3D vectors.
public class AStar2D : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_AStar2D }

    static var _method__estimate_cost_0: GDExtensionMethodBindPtr! = nil
    static var _method__compute_cost_0: GDExtensionMethodBindPtr! = nil
    static var _method_get_available_point_id_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_add_point_3370185124: GDExtensionMethodBindPtr! = nil
    static var _method_get_point_position_2299179447: GDExtensionMethodBindPtr! = nil
    static var _method_set_point_position_163021252: GDExtensionMethodBindPtr! = nil
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
    static var _method_get_closest_point_2300324924: GDExtensionMethodBindPtr! = nil
    static var _method_get_closest_position_in_segment_2656412154: GDExtensionMethodBindPtr! = nil
    static var _method_get_point_path_281625055: GDExtensionMethodBindPtr! = nil
    static var _method_get_id_path_3404614526: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_AStar2D = StringName(from: "AStar2D")

        let _method_get_available_point_id_3905245786_name = StringName(from: "get_available_point_id")
        self._method_get_available_point_id_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_available_point_id_3905245786_name._native_ptr(), 3905245786)
        assert(AStar2D._method_get_available_point_id_3905245786 != nil)
        let _method_add_point_3370185124_name = StringName(from: "add_point")
        self._method_add_point_3370185124 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_point_3370185124_name._native_ptr(), 3370185124)
        assert(AStar2D._method_add_point_3370185124 != nil)
        let _method_get_point_position_2299179447_name = StringName(from: "get_point_position")
        self._method_get_point_position_2299179447 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_point_position_2299179447_name._native_ptr(), 2299179447)
        assert(AStar2D._method_get_point_position_2299179447 != nil)
        let _method_set_point_position_163021252_name = StringName(from: "set_point_position")
        self._method_set_point_position_163021252 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_point_position_163021252_name._native_ptr(), 163021252)
        assert(AStar2D._method_set_point_position_163021252 != nil)
        let _method_get_point_weight_scale_2339986948_name = StringName(from: "get_point_weight_scale")
        self._method_get_point_weight_scale_2339986948 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_point_weight_scale_2339986948_name._native_ptr(), 2339986948)
        assert(AStar2D._method_get_point_weight_scale_2339986948 != nil)
        let _method_set_point_weight_scale_1602489585_name = StringName(from: "set_point_weight_scale")
        self._method_set_point_weight_scale_1602489585 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_point_weight_scale_1602489585_name._native_ptr(), 1602489585)
        assert(AStar2D._method_set_point_weight_scale_1602489585 != nil)
        let _method_remove_point_1286410249_name = StringName(from: "remove_point")
        self._method_remove_point_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_point_1286410249_name._native_ptr(), 1286410249)
        assert(AStar2D._method_remove_point_1286410249 != nil)
        let _method_has_point_1116898809_name = StringName(from: "has_point")
        self._method_has_point_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_point_1116898809_name._native_ptr(), 1116898809)
        assert(AStar2D._method_has_point_1116898809 != nil)
        let _method_get_point_connections_2865087369_name = StringName(from: "get_point_connections")
        self._method_get_point_connections_2865087369 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_point_connections_2865087369_name._native_ptr(), 2865087369)
        assert(AStar2D._method_get_point_connections_2865087369 != nil)
        let _method_get_point_ids_3851388692_name = StringName(from: "get_point_ids")
        self._method_get_point_ids_3851388692 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_point_ids_3851388692_name._native_ptr(), 3851388692)
        assert(AStar2D._method_get_point_ids_3851388692 != nil)
        let _method_set_point_disabled_4023243586_name = StringName(from: "set_point_disabled")
        self._method_set_point_disabled_4023243586 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_point_disabled_4023243586_name._native_ptr(), 4023243586)
        assert(AStar2D._method_set_point_disabled_4023243586 != nil)
        let _method_is_point_disabled_1116898809_name = StringName(from: "is_point_disabled")
        self._method_is_point_disabled_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_point_disabled_1116898809_name._native_ptr(), 1116898809)
        assert(AStar2D._method_is_point_disabled_1116898809 != nil)
        let _method_connect_points_3785370599_name = StringName(from: "connect_points")
        self._method_connect_points_3785370599 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_connect_points_3785370599_name._native_ptr(), 3785370599)
        assert(AStar2D._method_connect_points_3785370599 != nil)
        let _method_disconnect_points_3785370599_name = StringName(from: "disconnect_points")
        self._method_disconnect_points_3785370599 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_disconnect_points_3785370599_name._native_ptr(), 3785370599)
        assert(AStar2D._method_disconnect_points_3785370599 != nil)
        let _method_are_points_connected_4063588998_name = StringName(from: "are_points_connected")
        self._method_are_points_connected_4063588998 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_are_points_connected_4063588998_name._native_ptr(), 4063588998)
        assert(AStar2D._method_are_points_connected_4063588998 != nil)
        let _method_get_point_count_3905245786_name = StringName(from: "get_point_count")
        self._method_get_point_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_point_count_3905245786_name._native_ptr(), 3905245786)
        assert(AStar2D._method_get_point_count_3905245786 != nil)
        let _method_get_point_capacity_3905245786_name = StringName(from: "get_point_capacity")
        self._method_get_point_capacity_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_point_capacity_3905245786_name._native_ptr(), 3905245786)
        assert(AStar2D._method_get_point_capacity_3905245786 != nil)
        let _method_reserve_space_1286410249_name = StringName(from: "reserve_space")
        self._method_reserve_space_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_reserve_space_1286410249_name._native_ptr(), 1286410249)
        assert(AStar2D._method_reserve_space_1286410249 != nil)
        let _method_clear_3218959716_name = StringName(from: "clear")
        self._method_clear_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_3218959716_name._native_ptr(), 3218959716)
        assert(AStar2D._method_clear_3218959716 != nil)
        let _method_get_closest_point_2300324924_name = StringName(from: "get_closest_point")
        self._method_get_closest_point_2300324924 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_closest_point_2300324924_name._native_ptr(), 2300324924)
        assert(AStar2D._method_get_closest_point_2300324924 != nil)
        let _method_get_closest_position_in_segment_2656412154_name = StringName(from: "get_closest_position_in_segment")
        self._method_get_closest_position_in_segment_2656412154 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_closest_position_in_segment_2656412154_name._native_ptr(), 2656412154)
        assert(AStar2D._method_get_closest_position_in_segment_2656412154 != nil)
        let _method_get_point_path_281625055_name = StringName(from: "get_point_path")
        self._method_get_point_path_281625055 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_point_path_281625055_name._native_ptr(), 281625055)
        assert(AStar2D._method_get_point_path_281625055 != nil)
        let _method_get_id_path_3404614526_name = StringName(from: "get_id_path")
        self._method_get_id_path_3404614526 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_id_path_3404614526_name._native_ptr(), 3404614526)
        assert(AStar2D._method_get_id_path_3404614526 != nil)
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
    public func add_point(id: Int64, position: Vector2, weight_scale: Float64)  {
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
                    Self._method_add_point_3370185124,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_point_position(id: Int64) -> Vector2 {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_point_position_2299179447,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
        }
    }
    public func set_point_position(id: Int64, position: Vector2)  {
        withUnsafePointer(to: id) { id_native in
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_point_position_163021252,
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
    public func get_closest_point(to_position: Vector2, include_disabled: UInt8) -> Int64 {
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
                    Self._method_get_closest_point_2300324924,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func get_closest_position_in_segment(to_position: Vector2) -> Vector2 {
        let to_position_native = to_position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(to_position_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_closest_position_in_segment_2656412154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func get_point_path(from_id: Int64, to_id: Int64) -> PackedVector2Array {
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
                    Self._method_get_point_path_281625055,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(from: __resPtr.pointee)
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