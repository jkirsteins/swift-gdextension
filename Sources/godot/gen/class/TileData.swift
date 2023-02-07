import godot_native

fileprivate var __godot_name_TileData: StringName! = nil

/// Settings for a single tile in a [TileSet].
/// 
/// [TileData] object represents a single tile in a [TileSet]. It is usually edited using the tileset editor, but it can be modified at runtime using [method TileMap._tile_data_runtime_update].
public class TileData : Object {

    

    public override class var __godot_name: StringName { __godot_name_TileData }

    static var _method_set_flip_h_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_flip_h_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_flip_v_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_flip_v_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_transpose_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_transpose_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_material_2757459619: GDExtensionMethodBindPtr! = nil
    static var _method_get_material_5934680: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_origin_1130785943: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_origin_3690982128: GDExtensionMethodBindPtr! = nil
    static var _method_set_modulate_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_modulate_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_z_index_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_z_index_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_y_sort_origin_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_y_sort_origin_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_occluder_914399637: GDExtensionMethodBindPtr! = nil
    static var _method_get_occluder_2458574231: GDExtensionMethodBindPtr! = nil
    static var _method_set_constant_linear_velocity_163021252: GDExtensionMethodBindPtr! = nil
    static var _method_get_constant_linear_velocity_2299179447: GDExtensionMethodBindPtr! = nil
    static var _method_set_constant_angular_velocity_1602489585: GDExtensionMethodBindPtr! = nil
    static var _method_get_constant_angular_velocity_2339986948: GDExtensionMethodBindPtr! = nil
    static var _method_set_collision_polygons_count_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_polygons_count_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_add_collision_polygon_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_remove_collision_polygon_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_set_collision_polygon_points_3230546541: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_polygon_points_103942801: GDExtensionMethodBindPtr! = nil
    static var _method_set_collision_polygon_one_way_1383440665: GDExtensionMethodBindPtr! = nil
    static var _method_is_collision_polygon_one_way_2522259332: GDExtensionMethodBindPtr! = nil
    static var _method_set_collision_polygon_one_way_margin_3506521499: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_polygon_one_way_margin_3085491603: GDExtensionMethodBindPtr! = nil
    static var _method_set_terrain_set_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_terrain_set_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_terrain_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_terrain_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_terrain_peering_bit_1084452308: GDExtensionMethodBindPtr! = nil
    static var _method_get_terrain_peering_bit_3831796792: GDExtensionMethodBindPtr! = nil
    static var _method_set_navigation_polygon_2224691167: GDExtensionMethodBindPtr! = nil
    static var _method_get_navigation_polygon_3991786031: GDExtensionMethodBindPtr! = nil
    static var _method_set_probability_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_probability_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_custom_data_402577236: GDExtensionMethodBindPtr! = nil
    static var _method_get_custom_data_1868160156: GDExtensionMethodBindPtr! = nil
    static var _method_set_custom_data_by_layer_id_2152698145: GDExtensionMethodBindPtr! = nil
    static var _method_get_custom_data_by_layer_id_4227898402: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_TileData = StringName(from: "TileData")

        let _method_set_flip_h_2586408642_name = StringName(from: "set_flip_h")
        self._method_set_flip_h_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_flip_h_2586408642_name._native_ptr(), 2586408642)
        assert(TileData._method_set_flip_h_2586408642 != nil)
        let _method_get_flip_h_36873697_name = StringName(from: "get_flip_h")
        self._method_get_flip_h_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_flip_h_36873697_name._native_ptr(), 36873697)
        assert(TileData._method_get_flip_h_36873697 != nil)
        let _method_set_flip_v_2586408642_name = StringName(from: "set_flip_v")
        self._method_set_flip_v_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_flip_v_2586408642_name._native_ptr(), 2586408642)
        assert(TileData._method_set_flip_v_2586408642 != nil)
        let _method_get_flip_v_36873697_name = StringName(from: "get_flip_v")
        self._method_get_flip_v_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_flip_v_36873697_name._native_ptr(), 36873697)
        assert(TileData._method_get_flip_v_36873697 != nil)
        let _method_set_transpose_2586408642_name = StringName(from: "set_transpose")
        self._method_set_transpose_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_transpose_2586408642_name._native_ptr(), 2586408642)
        assert(TileData._method_set_transpose_2586408642 != nil)
        let _method_get_transpose_36873697_name = StringName(from: "get_transpose")
        self._method_get_transpose_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_transpose_36873697_name._native_ptr(), 36873697)
        assert(TileData._method_get_transpose_36873697 != nil)
        let _method_set_material_2757459619_name = StringName(from: "set_material")
        self._method_set_material_2757459619 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_material_2757459619_name._native_ptr(), 2757459619)
        assert(TileData._method_set_material_2757459619 != nil)
        let _method_get_material_5934680_name = StringName(from: "get_material")
        self._method_get_material_5934680 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_material_5934680_name._native_ptr(), 5934680)
        assert(TileData._method_get_material_5934680 != nil)
        let _method_set_texture_origin_1130785943_name = StringName(from: "set_texture_origin")
        self._method_set_texture_origin_1130785943 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_texture_origin_1130785943_name._native_ptr(), 1130785943)
        assert(TileData._method_set_texture_origin_1130785943 != nil)
        let _method_get_texture_origin_3690982128_name = StringName(from: "get_texture_origin")
        self._method_get_texture_origin_3690982128 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_texture_origin_3690982128_name._native_ptr(), 3690982128)
        assert(TileData._method_get_texture_origin_3690982128 != nil)
        let _method_set_modulate_2920490490_name = StringName(from: "set_modulate")
        self._method_set_modulate_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_modulate_2920490490_name._native_ptr(), 2920490490)
        assert(TileData._method_set_modulate_2920490490 != nil)
        let _method_get_modulate_3444240500_name = StringName(from: "get_modulate")
        self._method_get_modulate_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_modulate_3444240500_name._native_ptr(), 3444240500)
        assert(TileData._method_get_modulate_3444240500 != nil)
        let _method_set_z_index_1286410249_name = StringName(from: "set_z_index")
        self._method_set_z_index_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_z_index_1286410249_name._native_ptr(), 1286410249)
        assert(TileData._method_set_z_index_1286410249 != nil)
        let _method_get_z_index_3905245786_name = StringName(from: "get_z_index")
        self._method_get_z_index_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_z_index_3905245786_name._native_ptr(), 3905245786)
        assert(TileData._method_get_z_index_3905245786 != nil)
        let _method_set_y_sort_origin_1286410249_name = StringName(from: "set_y_sort_origin")
        self._method_set_y_sort_origin_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_y_sort_origin_1286410249_name._native_ptr(), 1286410249)
        assert(TileData._method_set_y_sort_origin_1286410249 != nil)
        let _method_get_y_sort_origin_3905245786_name = StringName(from: "get_y_sort_origin")
        self._method_get_y_sort_origin_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_y_sort_origin_3905245786_name._native_ptr(), 3905245786)
        assert(TileData._method_get_y_sort_origin_3905245786 != nil)
        let _method_set_occluder_914399637_name = StringName(from: "set_occluder")
        self._method_set_occluder_914399637 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_occluder_914399637_name._native_ptr(), 914399637)
        assert(TileData._method_set_occluder_914399637 != nil)
        let _method_get_occluder_2458574231_name = StringName(from: "get_occluder")
        self._method_get_occluder_2458574231 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_occluder_2458574231_name._native_ptr(), 2458574231)
        assert(TileData._method_get_occluder_2458574231 != nil)
        let _method_set_constant_linear_velocity_163021252_name = StringName(from: "set_constant_linear_velocity")
        self._method_set_constant_linear_velocity_163021252 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_constant_linear_velocity_163021252_name._native_ptr(), 163021252)
        assert(TileData._method_set_constant_linear_velocity_163021252 != nil)
        let _method_get_constant_linear_velocity_2299179447_name = StringName(from: "get_constant_linear_velocity")
        self._method_get_constant_linear_velocity_2299179447 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_constant_linear_velocity_2299179447_name._native_ptr(), 2299179447)
        assert(TileData._method_get_constant_linear_velocity_2299179447 != nil)
        let _method_set_constant_angular_velocity_1602489585_name = StringName(from: "set_constant_angular_velocity")
        self._method_set_constant_angular_velocity_1602489585 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_constant_angular_velocity_1602489585_name._native_ptr(), 1602489585)
        assert(TileData._method_set_constant_angular_velocity_1602489585 != nil)
        let _method_get_constant_angular_velocity_2339986948_name = StringName(from: "get_constant_angular_velocity")
        self._method_get_constant_angular_velocity_2339986948 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_constant_angular_velocity_2339986948_name._native_ptr(), 2339986948)
        assert(TileData._method_get_constant_angular_velocity_2339986948 != nil)
        let _method_set_collision_polygons_count_3937882851_name = StringName(from: "set_collision_polygons_count")
        self._method_set_collision_polygons_count_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collision_polygons_count_3937882851_name._native_ptr(), 3937882851)
        assert(TileData._method_set_collision_polygons_count_3937882851 != nil)
        let _method_get_collision_polygons_count_923996154_name = StringName(from: "get_collision_polygons_count")
        self._method_get_collision_polygons_count_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collision_polygons_count_923996154_name._native_ptr(), 923996154)
        assert(TileData._method_get_collision_polygons_count_923996154 != nil)
        let _method_add_collision_polygon_1286410249_name = StringName(from: "add_collision_polygon")
        self._method_add_collision_polygon_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_collision_polygon_1286410249_name._native_ptr(), 1286410249)
        assert(TileData._method_add_collision_polygon_1286410249 != nil)
        let _method_remove_collision_polygon_3937882851_name = StringName(from: "remove_collision_polygon")
        self._method_remove_collision_polygon_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_collision_polygon_3937882851_name._native_ptr(), 3937882851)
        assert(TileData._method_remove_collision_polygon_3937882851 != nil)
        let _method_set_collision_polygon_points_3230546541_name = StringName(from: "set_collision_polygon_points")
        self._method_set_collision_polygon_points_3230546541 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collision_polygon_points_3230546541_name._native_ptr(), 3230546541)
        assert(TileData._method_set_collision_polygon_points_3230546541 != nil)
        let _method_get_collision_polygon_points_103942801_name = StringName(from: "get_collision_polygon_points")
        self._method_get_collision_polygon_points_103942801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collision_polygon_points_103942801_name._native_ptr(), 103942801)
        assert(TileData._method_get_collision_polygon_points_103942801 != nil)
        let _method_set_collision_polygon_one_way_1383440665_name = StringName(from: "set_collision_polygon_one_way")
        self._method_set_collision_polygon_one_way_1383440665 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collision_polygon_one_way_1383440665_name._native_ptr(), 1383440665)
        assert(TileData._method_set_collision_polygon_one_way_1383440665 != nil)
        let _method_is_collision_polygon_one_way_2522259332_name = StringName(from: "is_collision_polygon_one_way")
        self._method_is_collision_polygon_one_way_2522259332 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_collision_polygon_one_way_2522259332_name._native_ptr(), 2522259332)
        assert(TileData._method_is_collision_polygon_one_way_2522259332 != nil)
        let _method_set_collision_polygon_one_way_margin_3506521499_name = StringName(from: "set_collision_polygon_one_way_margin")
        self._method_set_collision_polygon_one_way_margin_3506521499 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collision_polygon_one_way_margin_3506521499_name._native_ptr(), 3506521499)
        assert(TileData._method_set_collision_polygon_one_way_margin_3506521499 != nil)
        let _method_get_collision_polygon_one_way_margin_3085491603_name = StringName(from: "get_collision_polygon_one_way_margin")
        self._method_get_collision_polygon_one_way_margin_3085491603 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collision_polygon_one_way_margin_3085491603_name._native_ptr(), 3085491603)
        assert(TileData._method_get_collision_polygon_one_way_margin_3085491603 != nil)
        let _method_set_terrain_set_1286410249_name = StringName(from: "set_terrain_set")
        self._method_set_terrain_set_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_terrain_set_1286410249_name._native_ptr(), 1286410249)
        assert(TileData._method_set_terrain_set_1286410249 != nil)
        let _method_get_terrain_set_3905245786_name = StringName(from: "get_terrain_set")
        self._method_get_terrain_set_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_terrain_set_3905245786_name._native_ptr(), 3905245786)
        assert(TileData._method_get_terrain_set_3905245786 != nil)
        let _method_set_terrain_1286410249_name = StringName(from: "set_terrain")
        self._method_set_terrain_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_terrain_1286410249_name._native_ptr(), 1286410249)
        assert(TileData._method_set_terrain_1286410249 != nil)
        let _method_get_terrain_3905245786_name = StringName(from: "get_terrain")
        self._method_get_terrain_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_terrain_3905245786_name._native_ptr(), 3905245786)
        assert(TileData._method_get_terrain_3905245786 != nil)
        let _method_set_terrain_peering_bit_1084452308_name = StringName(from: "set_terrain_peering_bit")
        self._method_set_terrain_peering_bit_1084452308 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_terrain_peering_bit_1084452308_name._native_ptr(), 1084452308)
        assert(TileData._method_set_terrain_peering_bit_1084452308 != nil)
        let _method_get_terrain_peering_bit_3831796792_name = StringName(from: "get_terrain_peering_bit")
        self._method_get_terrain_peering_bit_3831796792 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_terrain_peering_bit_3831796792_name._native_ptr(), 3831796792)
        assert(TileData._method_get_terrain_peering_bit_3831796792 != nil)
        let _method_set_navigation_polygon_2224691167_name = StringName(from: "set_navigation_polygon")
        self._method_set_navigation_polygon_2224691167 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_navigation_polygon_2224691167_name._native_ptr(), 2224691167)
        assert(TileData._method_set_navigation_polygon_2224691167 != nil)
        let _method_get_navigation_polygon_3991786031_name = StringName(from: "get_navigation_polygon")
        self._method_get_navigation_polygon_3991786031 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_navigation_polygon_3991786031_name._native_ptr(), 3991786031)
        assert(TileData._method_get_navigation_polygon_3991786031 != nil)
        let _method_set_probability_373806689_name = StringName(from: "set_probability")
        self._method_set_probability_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_probability_373806689_name._native_ptr(), 373806689)
        assert(TileData._method_set_probability_373806689 != nil)
        let _method_get_probability_1740695150_name = StringName(from: "get_probability")
        self._method_get_probability_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_probability_1740695150_name._native_ptr(), 1740695150)
        assert(TileData._method_get_probability_1740695150 != nil)
        let _method_set_custom_data_402577236_name = StringName(from: "set_custom_data")
        self._method_set_custom_data_402577236 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_custom_data_402577236_name._native_ptr(), 402577236)
        assert(TileData._method_set_custom_data_402577236 != nil)
        let _method_get_custom_data_1868160156_name = StringName(from: "get_custom_data")
        self._method_get_custom_data_1868160156 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_custom_data_1868160156_name._native_ptr(), 1868160156)
        assert(TileData._method_get_custom_data_1868160156 != nil)
        let _method_set_custom_data_by_layer_id_2152698145_name = StringName(from: "set_custom_data_by_layer_id")
        self._method_set_custom_data_by_layer_id_2152698145 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_custom_data_by_layer_id_2152698145_name._native_ptr(), 2152698145)
        assert(TileData._method_set_custom_data_by_layer_id_2152698145 != nil)
        let _method_get_custom_data_by_layer_id_4227898402_name = StringName(from: "get_custom_data_by_layer_id")
        self._method_get_custom_data_by_layer_id_4227898402 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_custom_data_by_layer_id_4227898402_name._native_ptr(), 4227898402)
        assert(TileData._method_get_custom_data_by_layer_id_4227898402 != nil)
    }

    public func set_flip_h(flip_h: UInt8)  {
        withUnsafePointer(to: flip_h) { flip_h_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flip_h_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_flip_h_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_flip_h_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_flip_v(flip_v: UInt8)  {
        withUnsafePointer(to: flip_v) { flip_v_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flip_v_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_flip_v_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_flip_v_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_transpose(transpose: UInt8)  {
        withUnsafePointer(to: transpose) { transpose_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(transpose_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_transpose_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_transpose_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_material(material: Material)  {
        let material_native = material._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(material_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_material_2757459619,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_material_5934680,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Material(from: __resPtr.pointee)
    }
    public func set_texture_origin(texture_origin: Vector2i)  {
        let texture_origin_native = texture_origin._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_origin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_origin_1130785943,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_origin_3690982128,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(from: __resPtr.pointee)
    }
    public func set_modulate(modulate: Color)  {
        let modulate_native = modulate._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(modulate_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_modulate_2920490490,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_modulate_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_z_index(z_index: Int64)  {
        withUnsafePointer(to: z_index) { z_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(z_index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_z_index_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_z_index_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_y_sort_origin(y_sort_origin: Int64)  {
        withUnsafePointer(to: y_sort_origin) { y_sort_origin_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(y_sort_origin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_y_sort_origin_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_y_sort_origin_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_occluder_914399637,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_occluder_2458574231,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return OccluderPolygon2D(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_constant_linear_velocity_163021252,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_constant_linear_velocity_2299179447,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_constant_angular_velocity_1602489585,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_constant_angular_velocity_2339986948,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_collision_polygons_count_3937882851,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collision_polygons_count_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_collision_polygon_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_collision_polygon_3937882851,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_collision_polygon_points_3230546541,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collision_polygon_points_103942801,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_collision_polygon_one_way_1383440665,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_collision_polygon_one_way_2522259332,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_collision_polygon_one_way_margin_3506521499,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collision_polygon_one_way_margin_3085491603,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_terrain_set_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_terrain_set_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_terrain(terrain: Int64)  {
        withUnsafePointer(to: terrain) { terrain_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(terrain_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_terrain_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_terrain_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_terrain_peering_bit_1084452308,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_terrain_peering_bit_3831796792,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_navigation_polygon_2224691167,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_navigation_polygon_3991786031,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NavigationPolygon(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_probability_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_probability_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_custom_data(layer_name: String, value: Variant)  {
        withUnsafePointer(to: layer_name) { layer_name_native in
        let value_native = value._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_name_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_custom_data_402577236,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_custom_data(layer_name: String) -> Variant {
        withUnsafePointer(to: layer_name) { layer_name_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_custom_data_1868160156,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
        }
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_custom_data_by_layer_id_2152698145,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_custom_data_by_layer_id_4227898402,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
        }
    }
}