import godot_native

fileprivate var __godot_name_TileData: StringName! = nil

/// Settings for a single tile in a [TileSet].
/// 
/// [TileData] object represents a single tile in a [TileSet]. It is usually edited using the tileset editor, but it can be modified at runtime using [method TileMap._tile_data_runtime_update].
open class TileData : Object {

    

    public override class var __godot_name: StringName { __godot_name_TileData }

    static var _method_set_flip_h_2586408642: StringName! = nil
    static var _method_get_flip_h_36873697: StringName! = nil
    static var _method_set_flip_v_2586408642: StringName! = nil
    static var _method_get_flip_v_36873697: StringName! = nil
    static var _method_set_transpose_2586408642: StringName! = nil
    static var _method_get_transpose_36873697: StringName! = nil
    static var _method_set_material_2757459619: StringName! = nil
    static var _method_get_material_5934680: StringName! = nil
    static var _method_set_texture_origin_1130785943: StringName! = nil
    static var _method_get_texture_origin_3690982128: StringName! = nil
    static var _method_set_modulate_2920490490: StringName! = nil
    static var _method_get_modulate_3444240500: StringName! = nil
    static var _method_set_z_index_1286410249: StringName! = nil
    static var _method_get_z_index_3905245786: StringName! = nil
    static var _method_set_y_sort_origin_1286410249: StringName! = nil
    static var _method_get_y_sort_origin_3905245786: StringName! = nil
    static var _method_set_occluder_914399637: StringName! = nil
    static var _method_get_occluder_2458574231: StringName! = nil
    static var _method_set_constant_linear_velocity_163021252: StringName! = nil
    static var _method_get_constant_linear_velocity_2299179447: StringName! = nil
    static var _method_set_constant_angular_velocity_1602489585: StringName! = nil
    static var _method_get_constant_angular_velocity_2339986948: StringName! = nil
    static var _method_set_collision_polygons_count_3937882851: StringName! = nil
    static var _method_get_collision_polygons_count_923996154: StringName! = nil
    static var _method_add_collision_polygon_1286410249: StringName! = nil
    static var _method_remove_collision_polygon_3937882851: StringName! = nil
    static var _method_set_collision_polygon_points_3230546541: StringName! = nil
    static var _method_get_collision_polygon_points_103942801: StringName! = nil
    static var _method_set_collision_polygon_one_way_1383440665: StringName! = nil
    static var _method_is_collision_polygon_one_way_2522259332: StringName! = nil
    static var _method_set_collision_polygon_one_way_margin_3506521499: StringName! = nil
    static var _method_get_collision_polygon_one_way_margin_3085491603: StringName! = nil
    static var _method_set_terrain_set_1286410249: StringName! = nil
    static var _method_get_terrain_set_3905245786: StringName! = nil
    static var _method_set_terrain_1286410249: StringName! = nil
    static var _method_get_terrain_3905245786: StringName! = nil
    static var _method_set_terrain_peering_bit_1084452308: StringName! = nil
    static var _method_get_terrain_peering_bit_3831796792: StringName! = nil
    static var _method_set_navigation_polygon_2224691167: StringName! = nil
    static var _method_get_navigation_polygon_3991786031: StringName! = nil
    static var _method_set_probability_373806689: StringName! = nil
    static var _method_get_probability_1740695150: StringName! = nil
    static var _method_set_custom_data_402577236: StringName! = nil
    static var _method_get_custom_data_1868160156: StringName! = nil
    static var _method_set_custom_data_by_layer_id_2152698145: StringName! = nil
    static var _method_get_custom_data_by_layer_id_4227898402: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_TileData == nil)
        __godot_name_TileData = StringName(from: "TileData")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_flip_h_2586408642 = StringName(from: "set_flip_h")
        assert(self._method_set_flip_h_2586408642 != nil)
        self._method_get_flip_h_36873697 = StringName(from: "get_flip_h")
        assert(self._method_get_flip_h_36873697 != nil)
        self._method_set_flip_v_2586408642 = StringName(from: "set_flip_v")
        assert(self._method_set_flip_v_2586408642 != nil)
        self._method_get_flip_v_36873697 = StringName(from: "get_flip_v")
        assert(self._method_get_flip_v_36873697 != nil)
        self._method_set_transpose_2586408642 = StringName(from: "set_transpose")
        assert(self._method_set_transpose_2586408642 != nil)
        self._method_get_transpose_36873697 = StringName(from: "get_transpose")
        assert(self._method_get_transpose_36873697 != nil)
        self._method_set_material_2757459619 = StringName(from: "set_material")
        assert(self._method_set_material_2757459619 != nil)
        self._method_get_material_5934680 = StringName(from: "get_material")
        assert(self._method_get_material_5934680 != nil)
        self._method_set_texture_origin_1130785943 = StringName(from: "set_texture_origin")
        assert(self._method_set_texture_origin_1130785943 != nil)
        self._method_get_texture_origin_3690982128 = StringName(from: "get_texture_origin")
        assert(self._method_get_texture_origin_3690982128 != nil)
        self._method_set_modulate_2920490490 = StringName(from: "set_modulate")
        assert(self._method_set_modulate_2920490490 != nil)
        self._method_get_modulate_3444240500 = StringName(from: "get_modulate")
        assert(self._method_get_modulate_3444240500 != nil)
        self._method_set_z_index_1286410249 = StringName(from: "set_z_index")
        assert(self._method_set_z_index_1286410249 != nil)
        self._method_get_z_index_3905245786 = StringName(from: "get_z_index")
        assert(self._method_get_z_index_3905245786 != nil)
        self._method_set_y_sort_origin_1286410249 = StringName(from: "set_y_sort_origin")
        assert(self._method_set_y_sort_origin_1286410249 != nil)
        self._method_get_y_sort_origin_3905245786 = StringName(from: "get_y_sort_origin")
        assert(self._method_get_y_sort_origin_3905245786 != nil)
        self._method_set_occluder_914399637 = StringName(from: "set_occluder")
        assert(self._method_set_occluder_914399637 != nil)
        self._method_get_occluder_2458574231 = StringName(from: "get_occluder")
        assert(self._method_get_occluder_2458574231 != nil)
        self._method_set_constant_linear_velocity_163021252 = StringName(from: "set_constant_linear_velocity")
        assert(self._method_set_constant_linear_velocity_163021252 != nil)
        self._method_get_constant_linear_velocity_2299179447 = StringName(from: "get_constant_linear_velocity")
        assert(self._method_get_constant_linear_velocity_2299179447 != nil)
        self._method_set_constant_angular_velocity_1602489585 = StringName(from: "set_constant_angular_velocity")
        assert(self._method_set_constant_angular_velocity_1602489585 != nil)
        self._method_get_constant_angular_velocity_2339986948 = StringName(from: "get_constant_angular_velocity")
        assert(self._method_get_constant_angular_velocity_2339986948 != nil)
        self._method_set_collision_polygons_count_3937882851 = StringName(from: "set_collision_polygons_count")
        assert(self._method_set_collision_polygons_count_3937882851 != nil)
        self._method_get_collision_polygons_count_923996154 = StringName(from: "get_collision_polygons_count")
        assert(self._method_get_collision_polygons_count_923996154 != nil)
        self._method_add_collision_polygon_1286410249 = StringName(from: "add_collision_polygon")
        assert(self._method_add_collision_polygon_1286410249 != nil)
        self._method_remove_collision_polygon_3937882851 = StringName(from: "remove_collision_polygon")
        assert(self._method_remove_collision_polygon_3937882851 != nil)
        self._method_set_collision_polygon_points_3230546541 = StringName(from: "set_collision_polygon_points")
        assert(self._method_set_collision_polygon_points_3230546541 != nil)
        self._method_get_collision_polygon_points_103942801 = StringName(from: "get_collision_polygon_points")
        assert(self._method_get_collision_polygon_points_103942801 != nil)
        self._method_set_collision_polygon_one_way_1383440665 = StringName(from: "set_collision_polygon_one_way")
        assert(self._method_set_collision_polygon_one_way_1383440665 != nil)
        self._method_is_collision_polygon_one_way_2522259332 = StringName(from: "is_collision_polygon_one_way")
        assert(self._method_is_collision_polygon_one_way_2522259332 != nil)
        self._method_set_collision_polygon_one_way_margin_3506521499 = StringName(from: "set_collision_polygon_one_way_margin")
        assert(self._method_set_collision_polygon_one_way_margin_3506521499 != nil)
        self._method_get_collision_polygon_one_way_margin_3085491603 = StringName(from: "get_collision_polygon_one_way_margin")
        assert(self._method_get_collision_polygon_one_way_margin_3085491603 != nil)
        self._method_set_terrain_set_1286410249 = StringName(from: "set_terrain_set")
        assert(self._method_set_terrain_set_1286410249 != nil)
        self._method_get_terrain_set_3905245786 = StringName(from: "get_terrain_set")
        assert(self._method_get_terrain_set_3905245786 != nil)
        self._method_set_terrain_1286410249 = StringName(from: "set_terrain")
        assert(self._method_set_terrain_1286410249 != nil)
        self._method_get_terrain_3905245786 = StringName(from: "get_terrain")
        assert(self._method_get_terrain_3905245786 != nil)
        self._method_set_terrain_peering_bit_1084452308 = StringName(from: "set_terrain_peering_bit")
        assert(self._method_set_terrain_peering_bit_1084452308 != nil)
        self._method_get_terrain_peering_bit_3831796792 = StringName(from: "get_terrain_peering_bit")
        assert(self._method_get_terrain_peering_bit_3831796792 != nil)
        self._method_set_navigation_polygon_2224691167 = StringName(from: "set_navigation_polygon")
        assert(self._method_set_navigation_polygon_2224691167 != nil)
        self._method_get_navigation_polygon_3991786031 = StringName(from: "get_navigation_polygon")
        assert(self._method_get_navigation_polygon_3991786031 != nil)
        self._method_set_probability_373806689 = StringName(from: "set_probability")
        assert(self._method_set_probability_373806689 != nil)
        self._method_get_probability_1740695150 = StringName(from: "get_probability")
        assert(self._method_get_probability_1740695150 != nil)
        self._method_set_custom_data_402577236 = StringName(from: "set_custom_data")
        assert(self._method_set_custom_data_402577236 != nil)
        self._method_get_custom_data_1868160156 = StringName(from: "get_custom_data")
        assert(self._method_get_custom_data_1868160156 != nil)
        self._method_set_custom_data_by_layer_id_2152698145 = StringName(from: "set_custom_data_by_layer_id")
        assert(self._method_set_custom_data_by_layer_id_2152698145 != nil)
        self._method_get_custom_data_by_layer_id_4227898402 = StringName(from: "get_custom_data_by_layer_id")
        assert(self._method_get_custom_data_by_layer_id_4227898402 != nil)
    }

    public func set_flip_h(flip_h: UInt8)  {
        withUnsafePointer(to: flip_h) { flip_h_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flip_h_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_flip_h_2586408642._native_ptr(),
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
    public func get_flip_h() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_flip_h_36873697._native_ptr(),
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
    public func set_flip_v(flip_v: UInt8)  {
        withUnsafePointer(to: flip_v) { flip_v_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flip_v_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_flip_v_2586408642._native_ptr(),
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
    public func get_flip_v() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_flip_v_36873697._native_ptr(),
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
    public func set_transpose(transpose: UInt8)  {
        withUnsafePointer(to: transpose) { transpose_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(transpose_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_transpose_2586408642._native_ptr(),
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
    public func get_transpose() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_transpose_36873697._native_ptr(),
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
    public func set_material(material: Material)  {
        let material_native = material._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(material_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_material_2757459619._native_ptr(),
                    2757459619)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_material() -> Material {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_material_5934680._native_ptr(),
                    5934680)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Material(godot: __resPtr.pointee)
    }
    public func set_texture_origin(texture_origin: Vector2i)  {
        let texture_origin_native = texture_origin._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_origin_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_texture_origin_1130785943._native_ptr(),
                    1130785943)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_texture_origin() -> Vector2i {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_texture_origin_3690982128._native_ptr(),
                    3690982128)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(godot: __resPtr.pointee)
    }
    public func set_modulate(modulate: Color)  {
        let modulate_native = modulate._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(modulate_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_modulate_2920490490._native_ptr(),
                    2920490490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_modulate() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_modulate_3444240500._native_ptr(),
                    3444240500)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
    public func set_z_index(z_index: Int64)  {
        withUnsafePointer(to: z_index) { z_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(z_index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_z_index_1286410249._native_ptr(),
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
    public func get_z_index() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_z_index_3905245786._native_ptr(),
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
    public func set_y_sort_origin(y_sort_origin: Int64)  {
        withUnsafePointer(to: y_sort_origin) { y_sort_origin_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(y_sort_origin_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_y_sort_origin_1286410249._native_ptr(),
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
    public func get_y_sort_origin() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_y_sort_origin_3905245786._native_ptr(),
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
    public func set_occluder(layer_id: Int64, occluder_polygon: OccluderPolygon2D)  {
        withUnsafePointer(to: layer_id) { layer_id_native in
        let occluder_polygon_native = occluder_polygon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_id_native), .init(occluder_polygon_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_occluder_914399637._native_ptr(),
                    914399637)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_occluder(layer_id: Int64) -> OccluderPolygon2D {
        withUnsafePointer(to: layer_id) { layer_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_occluder_2458574231._native_ptr(),
                    2458574231)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return OccluderPolygon2D(godot: __resPtr.pointee)
        }
    }
    public func set_constant_linear_velocity(layer_id: Int64, velocity: Vector2)  {
        withUnsafePointer(to: layer_id) { layer_id_native in
        let velocity_native = velocity._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_id_native), .init(velocity_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_constant_linear_velocity_163021252._native_ptr(),
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
    public func get_constant_linear_velocity(layer_id: Int64) -> Vector2 {
        withUnsafePointer(to: layer_id) { layer_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_constant_linear_velocity_2299179447._native_ptr(),
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
    public func set_constant_angular_velocity(layer_id: Int64, velocity: Float64)  {
        withUnsafePointer(to: velocity) { velocity_native in
        withUnsafePointer(to: layer_id) { layer_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_id_native), .init(velocity_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_constant_angular_velocity_1602489585._native_ptr(),
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
    public func get_constant_angular_velocity(layer_id: Int64) -> Float64 {
        withUnsafePointer(to: layer_id) { layer_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_constant_angular_velocity_2339986948._native_ptr(),
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
    public func set_collision_polygons_count(layer_id: Int64, polygons_count: Int64)  {
        withUnsafePointer(to: polygons_count) { polygons_count_native in
        withUnsafePointer(to: layer_id) { layer_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_id_native), .init(polygons_count_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_collision_polygons_count_3937882851._native_ptr(),
                    3937882851)
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
    public func get_collision_polygons_count(layer_id: Int64) -> Int64 {
        withUnsafePointer(to: layer_id) { layer_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_collision_polygons_count_923996154._native_ptr(),
                    923996154)
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
    public func add_collision_polygon(layer_id: Int64)  {
        withUnsafePointer(to: layer_id) { layer_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_id_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_collision_polygon_1286410249._native_ptr(),
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
    public func remove_collision_polygon(layer_id: Int64, polygon_index: Int64)  {
        withUnsafePointer(to: polygon_index) { polygon_index_native in
        withUnsafePointer(to: layer_id) { layer_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_id_native), .init(polygon_index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_collision_polygon_3937882851._native_ptr(),
                    3937882851)
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
    public func set_collision_polygon_points(layer_id: Int64, polygon_index: Int64, polygon: PackedVector2Array)  {
        withUnsafePointer(to: polygon_index) { polygon_index_native in
        withUnsafePointer(to: layer_id) { layer_id_native in
        let polygon_native = polygon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_id_native), .init(polygon_index_native), .init(polygon_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_collision_polygon_points_3230546541._native_ptr(),
                    3230546541)
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
    public func get_collision_polygon_points(layer_id: Int64, polygon_index: Int64) -> PackedVector2Array {
        withUnsafePointer(to: polygon_index) { polygon_index_native in
        withUnsafePointer(to: layer_id) { layer_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_id_native), .init(polygon_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_collision_polygon_points_103942801._native_ptr(),
                    103942801)
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
    public func set_collision_polygon_one_way(layer_id: Int64, polygon_index: Int64, one_way: UInt8)  {
        withUnsafePointer(to: one_way) { one_way_native in
        withUnsafePointer(to: polygon_index) { polygon_index_native in
        withUnsafePointer(to: layer_id) { layer_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_id_native), .init(polygon_index_native), .init(one_way_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_collision_polygon_one_way_1383440665._native_ptr(),
                    1383440665)
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
    public func is_collision_polygon_one_way(layer_id: Int64, polygon_index: Int64) -> UInt8 {
        withUnsafePointer(to: polygon_index) { polygon_index_native in
        withUnsafePointer(to: layer_id) { layer_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_id_native), .init(polygon_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_collision_polygon_one_way_2522259332._native_ptr(),
                    2522259332)
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
    public func set_collision_polygon_one_way_margin(layer_id: Int64, polygon_index: Int64, one_way_margin: Float64)  {
        withUnsafePointer(to: one_way_margin) { one_way_margin_native in
        withUnsafePointer(to: polygon_index) { polygon_index_native in
        withUnsafePointer(to: layer_id) { layer_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_id_native), .init(polygon_index_native), .init(one_way_margin_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_collision_polygon_one_way_margin_3506521499._native_ptr(),
                    3506521499)
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
    public func get_collision_polygon_one_way_margin(layer_id: Int64, polygon_index: Int64) -> Float64 {
        withUnsafePointer(to: polygon_index) { polygon_index_native in
        withUnsafePointer(to: layer_id) { layer_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_id_native), .init(polygon_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_collision_polygon_one_way_margin_3085491603._native_ptr(),
                    3085491603)
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
    }
    public func set_terrain_set(terrain_set: Int64)  {
        withUnsafePointer(to: terrain_set) { terrain_set_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(terrain_set_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_terrain_set_1286410249._native_ptr(),
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
    public func get_terrain_set() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_terrain_set_3905245786._native_ptr(),
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
    public func set_terrain(terrain: Int64)  {
        withUnsafePointer(to: terrain) { terrain_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(terrain_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_terrain_1286410249._native_ptr(),
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
    public func get_terrain() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_terrain_3905245786._native_ptr(),
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
    public func set_terrain_peering_bit(peering_bit: TileSet.CellNeighbor, terrain: Int64)  {
        withUnsafePointer(to: terrain) { terrain_native in
        withUnsafePointer(to: peering_bit.rawValue) { peering_bit_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(peering_bit_native), .init(terrain_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_terrain_peering_bit_1084452308._native_ptr(),
                    1084452308)
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
    public func get_terrain_peering_bit(peering_bit: TileSet.CellNeighbor) -> Int64 {
        withUnsafePointer(to: peering_bit.rawValue) { peering_bit_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(peering_bit_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_terrain_peering_bit_3831796792._native_ptr(),
                    3831796792)
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
    public func set_navigation_polygon(layer_id: Int64, navigation_polygon: NavigationPolygon)  {
        withUnsafePointer(to: layer_id) { layer_id_native in
        let navigation_polygon_native = navigation_polygon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_id_native), .init(navigation_polygon_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_navigation_polygon_2224691167._native_ptr(),
                    2224691167)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_navigation_polygon(layer_id: Int64) -> NavigationPolygon {
        withUnsafePointer(to: layer_id) { layer_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_navigation_polygon_3991786031._native_ptr(),
                    3991786031)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NavigationPolygon(godot: __resPtr.pointee)
        }
    }
    public func set_probability(probability: Float64)  {
        withUnsafePointer(to: probability) { probability_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(probability_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_probability_373806689._native_ptr(),
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
    public func get_probability() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_probability_1740695150._native_ptr(),
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
    public func set_custom_data(layer_name: godot.String, value: Variant)  {
        let value_native = value._native_ptr()
        let layer_name_native = layer_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_name_native), .init(value_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_custom_data_402577236._native_ptr(),
                    402577236)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_custom_data(layer_name: godot.String) -> Variant {
        let layer_name_native = layer_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_custom_data_1868160156._native_ptr(),
                    1868160156)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
    }
    public func set_custom_data_by_layer_id(layer_id: Int64, value: Variant)  {
        withUnsafePointer(to: layer_id) { layer_id_native in
        let value_native = value._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_id_native), .init(value_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_custom_data_by_layer_id_2152698145._native_ptr(),
                    2152698145)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_custom_data_by_layer_id(layer_id: Int64) -> Variant {
        withUnsafePointer(to: layer_id) { layer_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_custom_data_by_layer_id_4227898402._native_ptr(),
                    4227898402)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
        }
    }
}