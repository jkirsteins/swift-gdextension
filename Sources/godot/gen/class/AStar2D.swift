import godot_native

fileprivate var __godot_name_AStar2D: StringName! = nil

/// AStar class representation that uses 2D vectors as edges.
/// 
/// This is a wrapper for the [AStar3D] class which uses 2D vectors instead of 3D vectors.
open class AStar2D : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_AStar2D }

    static var _method__estimate_cost_0: StringName! = nil
    static var _method__compute_cost_0: StringName! = nil
    static var _method_get_available_point_id_3905245786: StringName! = nil
    static var _method_add_point_3370185124: StringName! = nil
    static var _method_get_point_position_2299179447: StringName! = nil
    static var _method_set_point_position_163021252: StringName! = nil
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
    static var _method_get_closest_point_2300324924: StringName! = nil
    static var _method_get_closest_position_in_segment_2656412154: StringName! = nil
    static var _method_get_point_path_281625055: StringName! = nil
    static var _method_get_id_path_3404614526: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AStar2D == nil)
        __godot_name_AStar2D = StringName(from: "AStar2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_available_point_id_3905245786 = StringName(from: "get_available_point_id")
        assert(self._method_get_available_point_id_3905245786 != nil)
        self._method_add_point_3370185124 = StringName(from: "add_point")
        assert(self._method_add_point_3370185124 != nil)
        self._method_get_point_position_2299179447 = StringName(from: "get_point_position")
        assert(self._method_get_point_position_2299179447 != nil)
        self._method_set_point_position_163021252 = StringName(from: "set_point_position")
        assert(self._method_set_point_position_163021252 != nil)
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
        self._method_get_closest_point_2300324924 = StringName(from: "get_closest_point")
        assert(self._method_get_closest_point_2300324924 != nil)
        self._method_get_closest_position_in_segment_2656412154 = StringName(from: "get_closest_position_in_segment")
        assert(self._method_get_closest_position_in_segment_2656412154 != nil)
        self._method_get_point_path_281625055 = StringName(from: "get_point_path")
        assert(self._method_get_point_path_281625055 != nil)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_point_3370185124._native_ptr(),
                    3370185124)
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
    public func get_point_position(id: Int64) -> Vector2 {
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
                    Self._method_get_point_position_2299179447._native_ptr(),
                    2299179447)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_point_position_163021252._native_ptr(),
                    163021252)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_closest_point_2300324924._native_ptr(),
                    2300324924)
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
    public func get_closest_position_in_segment(to_position: Vector2) -> Vector2 {
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
                    Self._method_get_closest_position_in_segment_2656412154._native_ptr(),
                    2656412154)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_point_path_281625055._native_ptr(),
                    281625055)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(godot: __resPtr.pointee)
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