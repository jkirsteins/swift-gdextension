import godot_native

fileprivate var __godot_name_TileMap: StringName! = nil

/// Node for 2D tile-based maps.
/// 
/// Node for 2D tile-based maps. Tilemaps use a [TileSet] which contain a list of tiles which are used to create grid-based maps. A TileMap may have several layers, layouting tiles on top of each other.
public class TileMap : Node2D {

    public enum VisibilityMode : Int32 {
        case VISIBILITY_MODE_DEFAULT = 0
        case VISIBILITY_MODE_FORCE_HIDE = 2
        case VISIBILITY_MODE_FORCE_SHOW = 1
    }

    public override class var __godot_name: StringName { __godot_name_TileMap }

    static var _method__use_tile_data_runtime_update_0: GDExtensionMethodBindPtr! = nil
    static var _method__tile_data_runtime_update_0: GDExtensionMethodBindPtr! = nil
    static var _method_set_tileset_774531446: GDExtensionMethodBindPtr! = nil
    static var _method_get_tileset_2678226422: GDExtensionMethodBindPtr! = nil
    static var _method_set_quadrant_size_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_quadrant_size_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_layers_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_add_layer_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_move_layer_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_remove_layer_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_layer_name_501894301: GDExtensionMethodBindPtr! = nil
    static var _method_get_layer_name_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_set_layer_enabled_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_is_layer_enabled_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_layer_modulate_2878471219: GDExtensionMethodBindPtr! = nil
    static var _method_get_layer_modulate_3457211756: GDExtensionMethodBindPtr! = nil
    static var _method_set_layer_y_sort_enabled_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_is_layer_y_sort_enabled_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_layer_y_sort_origin_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_get_layer_y_sort_origin_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_set_layer_z_index_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_get_layer_z_index_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_set_collision_animatable_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_collision_animatable_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_collision_visibility_mode_3193440636: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_visibility_mode_2026313073: GDExtensionMethodBindPtr! = nil
    static var _method_set_navigation_visibility_mode_3193440636: GDExtensionMethodBindPtr! = nil
    static var _method_get_navigation_visibility_mode_2026313073: GDExtensionMethodBindPtr! = nil
    static var _method_set_cell_1732664643: GDExtensionMethodBindPtr! = nil
    static var _method_erase_cell_2311374912: GDExtensionMethodBindPtr! = nil
    static var _method_get_cell_source_id_551761942: GDExtensionMethodBindPtr! = nil
    static var _method_get_cell_atlas_coords_1869815066: GDExtensionMethodBindPtr! = nil
    static var _method_get_cell_alternative_tile_551761942: GDExtensionMethodBindPtr! = nil
    static var _method_get_cell_tile_data_2849631287: GDExtensionMethodBindPtr! = nil
    static var _method_get_coords_for_body_rid_291584212: GDExtensionMethodBindPtr! = nil
    static var _method_get_pattern_2833570986: GDExtensionMethodBindPtr! = nil
    static var _method_map_pattern_1864516957: GDExtensionMethodBindPtr! = nil
    static var _method_set_pattern_1195853946: GDExtensionMethodBindPtr! = nil
    static var _method_set_cells_terrain_connect_3072115677: GDExtensionMethodBindPtr! = nil
    static var _method_set_cells_terrain_path_3072115677: GDExtensionMethodBindPtr! = nil
    static var _method_fix_invalid_tiles_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_clear_layer_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_clear_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_force_update_1025054187: GDExtensionMethodBindPtr! = nil
    static var _method_get_surrounding_cells_2673526557: GDExtensionMethodBindPtr! = nil
    static var _method_get_used_cells_663333327: GDExtensionMethodBindPtr! = nil
    static var _method_get_used_cells_by_id_4152068407: GDExtensionMethodBindPtr! = nil
    static var _method_get_used_rect_2024035737: GDExtensionMethodBindPtr! = nil
    static var _method_map_to_local_108438297: GDExtensionMethodBindPtr! = nil
    static var _method_local_to_map_837806996: GDExtensionMethodBindPtr! = nil
    static var _method_get_neighbor_cell_986575103: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_TileMap = StringName(from: "TileMap")

        let _method_set_tileset_774531446_name = StringName(from: "set_tileset")
        self._method_set_tileset_774531446 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tileset_774531446_name._native_ptr(), 774531446)
        assert(TileMap._method_set_tileset_774531446 != nil)
        let _method_get_tileset_2678226422_name = StringName(from: "get_tileset")
        self._method_get_tileset_2678226422 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tileset_2678226422_name._native_ptr(), 2678226422)
        assert(TileMap._method_get_tileset_2678226422 != nil)
        let _method_set_quadrant_size_1286410249_name = StringName(from: "set_quadrant_size")
        self._method_set_quadrant_size_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_quadrant_size_1286410249_name._native_ptr(), 1286410249)
        assert(TileMap._method_set_quadrant_size_1286410249 != nil)
        let _method_get_quadrant_size_3905245786_name = StringName(from: "get_quadrant_size")
        self._method_get_quadrant_size_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_quadrant_size_3905245786_name._native_ptr(), 3905245786)
        assert(TileMap._method_get_quadrant_size_3905245786 != nil)
        let _method_get_layers_count_3905245786_name = StringName(from: "get_layers_count")
        self._method_get_layers_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_layers_count_3905245786_name._native_ptr(), 3905245786)
        assert(TileMap._method_get_layers_count_3905245786 != nil)
        let _method_add_layer_1286410249_name = StringName(from: "add_layer")
        self._method_add_layer_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_layer_1286410249_name._native_ptr(), 1286410249)
        assert(TileMap._method_add_layer_1286410249 != nil)
        let _method_move_layer_3937882851_name = StringName(from: "move_layer")
        self._method_move_layer_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_move_layer_3937882851_name._native_ptr(), 3937882851)
        assert(TileMap._method_move_layer_3937882851 != nil)
        let _method_remove_layer_1286410249_name = StringName(from: "remove_layer")
        self._method_remove_layer_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_layer_1286410249_name._native_ptr(), 1286410249)
        assert(TileMap._method_remove_layer_1286410249 != nil)
        let _method_set_layer_name_501894301_name = StringName(from: "set_layer_name")
        self._method_set_layer_name_501894301 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_layer_name_501894301_name._native_ptr(), 501894301)
        assert(TileMap._method_set_layer_name_501894301 != nil)
        let _method_get_layer_name_844755477_name = StringName(from: "get_layer_name")
        self._method_get_layer_name_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_layer_name_844755477_name._native_ptr(), 844755477)
        assert(TileMap._method_get_layer_name_844755477 != nil)
        let _method_set_layer_enabled_300928843_name = StringName(from: "set_layer_enabled")
        self._method_set_layer_enabled_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_layer_enabled_300928843_name._native_ptr(), 300928843)
        assert(TileMap._method_set_layer_enabled_300928843 != nil)
        let _method_is_layer_enabled_1116898809_name = StringName(from: "is_layer_enabled")
        self._method_is_layer_enabled_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_layer_enabled_1116898809_name._native_ptr(), 1116898809)
        assert(TileMap._method_is_layer_enabled_1116898809 != nil)
        let _method_set_layer_modulate_2878471219_name = StringName(from: "set_layer_modulate")
        self._method_set_layer_modulate_2878471219 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_layer_modulate_2878471219_name._native_ptr(), 2878471219)
        assert(TileMap._method_set_layer_modulate_2878471219 != nil)
        let _method_get_layer_modulate_3457211756_name = StringName(from: "get_layer_modulate")
        self._method_get_layer_modulate_3457211756 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_layer_modulate_3457211756_name._native_ptr(), 3457211756)
        assert(TileMap._method_get_layer_modulate_3457211756 != nil)
        let _method_set_layer_y_sort_enabled_300928843_name = StringName(from: "set_layer_y_sort_enabled")
        self._method_set_layer_y_sort_enabled_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_layer_y_sort_enabled_300928843_name._native_ptr(), 300928843)
        assert(TileMap._method_set_layer_y_sort_enabled_300928843 != nil)
        let _method_is_layer_y_sort_enabled_1116898809_name = StringName(from: "is_layer_y_sort_enabled")
        self._method_is_layer_y_sort_enabled_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_layer_y_sort_enabled_1116898809_name._native_ptr(), 1116898809)
        assert(TileMap._method_is_layer_y_sort_enabled_1116898809 != nil)
        let _method_set_layer_y_sort_origin_3937882851_name = StringName(from: "set_layer_y_sort_origin")
        self._method_set_layer_y_sort_origin_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_layer_y_sort_origin_3937882851_name._native_ptr(), 3937882851)
        assert(TileMap._method_set_layer_y_sort_origin_3937882851 != nil)
        let _method_get_layer_y_sort_origin_923996154_name = StringName(from: "get_layer_y_sort_origin")
        self._method_get_layer_y_sort_origin_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_layer_y_sort_origin_923996154_name._native_ptr(), 923996154)
        assert(TileMap._method_get_layer_y_sort_origin_923996154 != nil)
        let _method_set_layer_z_index_3937882851_name = StringName(from: "set_layer_z_index")
        self._method_set_layer_z_index_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_layer_z_index_3937882851_name._native_ptr(), 3937882851)
        assert(TileMap._method_set_layer_z_index_3937882851 != nil)
        let _method_get_layer_z_index_923996154_name = StringName(from: "get_layer_z_index")
        self._method_get_layer_z_index_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_layer_z_index_923996154_name._native_ptr(), 923996154)
        assert(TileMap._method_get_layer_z_index_923996154 != nil)
        let _method_set_collision_animatable_2586408642_name = StringName(from: "set_collision_animatable")
        self._method_set_collision_animatable_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collision_animatable_2586408642_name._native_ptr(), 2586408642)
        assert(TileMap._method_set_collision_animatable_2586408642 != nil)
        let _method_is_collision_animatable_36873697_name = StringName(from: "is_collision_animatable")
        self._method_is_collision_animatable_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_collision_animatable_36873697_name._native_ptr(), 36873697)
        assert(TileMap._method_is_collision_animatable_36873697 != nil)
        let _method_set_collision_visibility_mode_3193440636_name = StringName(from: "set_collision_visibility_mode")
        self._method_set_collision_visibility_mode_3193440636 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collision_visibility_mode_3193440636_name._native_ptr(), 3193440636)
        assert(TileMap._method_set_collision_visibility_mode_3193440636 != nil)
        let _method_get_collision_visibility_mode_2026313073_name = StringName(from: "get_collision_visibility_mode")
        self._method_get_collision_visibility_mode_2026313073 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collision_visibility_mode_2026313073_name._native_ptr(), 2026313073)
        assert(TileMap._method_get_collision_visibility_mode_2026313073 != nil)
        let _method_set_navigation_visibility_mode_3193440636_name = StringName(from: "set_navigation_visibility_mode")
        self._method_set_navigation_visibility_mode_3193440636 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_navigation_visibility_mode_3193440636_name._native_ptr(), 3193440636)
        assert(TileMap._method_set_navigation_visibility_mode_3193440636 != nil)
        let _method_get_navigation_visibility_mode_2026313073_name = StringName(from: "get_navigation_visibility_mode")
        self._method_get_navigation_visibility_mode_2026313073 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_navigation_visibility_mode_2026313073_name._native_ptr(), 2026313073)
        assert(TileMap._method_get_navigation_visibility_mode_2026313073 != nil)
        let _method_set_cell_1732664643_name = StringName(from: "set_cell")
        self._method_set_cell_1732664643 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_cell_1732664643_name._native_ptr(), 1732664643)
        assert(TileMap._method_set_cell_1732664643 != nil)
        let _method_erase_cell_2311374912_name = StringName(from: "erase_cell")
        self._method_erase_cell_2311374912 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_erase_cell_2311374912_name._native_ptr(), 2311374912)
        assert(TileMap._method_erase_cell_2311374912 != nil)
        let _method_get_cell_source_id_551761942_name = StringName(from: "get_cell_source_id")
        self._method_get_cell_source_id_551761942 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_cell_source_id_551761942_name._native_ptr(), 551761942)
        assert(TileMap._method_get_cell_source_id_551761942 != nil)
        let _method_get_cell_atlas_coords_1869815066_name = StringName(from: "get_cell_atlas_coords")
        self._method_get_cell_atlas_coords_1869815066 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_cell_atlas_coords_1869815066_name._native_ptr(), 1869815066)
        assert(TileMap._method_get_cell_atlas_coords_1869815066 != nil)
        let _method_get_cell_alternative_tile_551761942_name = StringName(from: "get_cell_alternative_tile")
        self._method_get_cell_alternative_tile_551761942 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_cell_alternative_tile_551761942_name._native_ptr(), 551761942)
        assert(TileMap._method_get_cell_alternative_tile_551761942 != nil)
        let _method_get_cell_tile_data_2849631287_name = StringName(from: "get_cell_tile_data")
        self._method_get_cell_tile_data_2849631287 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_cell_tile_data_2849631287_name._native_ptr(), 2849631287)
        assert(TileMap._method_get_cell_tile_data_2849631287 != nil)
        let _method_get_coords_for_body_rid_291584212_name = StringName(from: "get_coords_for_body_rid")
        self._method_get_coords_for_body_rid_291584212 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_coords_for_body_rid_291584212_name._native_ptr(), 291584212)
        assert(TileMap._method_get_coords_for_body_rid_291584212 != nil)
        let _method_get_pattern_2833570986_name = StringName(from: "get_pattern")
        self._method_get_pattern_2833570986 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_pattern_2833570986_name._native_ptr(), 2833570986)
        assert(TileMap._method_get_pattern_2833570986 != nil)
        let _method_map_pattern_1864516957_name = StringName(from: "map_pattern")
        self._method_map_pattern_1864516957 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_pattern_1864516957_name._native_ptr(), 1864516957)
        assert(TileMap._method_map_pattern_1864516957 != nil)
        let _method_set_pattern_1195853946_name = StringName(from: "set_pattern")
        self._method_set_pattern_1195853946 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_pattern_1195853946_name._native_ptr(), 1195853946)
        assert(TileMap._method_set_pattern_1195853946 != nil)
        let _method_set_cells_terrain_connect_3072115677_name = StringName(from: "set_cells_terrain_connect")
        self._method_set_cells_terrain_connect_3072115677 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_cells_terrain_connect_3072115677_name._native_ptr(), 3072115677)
        assert(TileMap._method_set_cells_terrain_connect_3072115677 != nil)
        let _method_set_cells_terrain_path_3072115677_name = StringName(from: "set_cells_terrain_path")
        self._method_set_cells_terrain_path_3072115677 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_cells_terrain_path_3072115677_name._native_ptr(), 3072115677)
        assert(TileMap._method_set_cells_terrain_path_3072115677 != nil)
        let _method_fix_invalid_tiles_3218959716_name = StringName(from: "fix_invalid_tiles")
        self._method_fix_invalid_tiles_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_fix_invalid_tiles_3218959716_name._native_ptr(), 3218959716)
        assert(TileMap._method_fix_invalid_tiles_3218959716 != nil)
        let _method_clear_layer_1286410249_name = StringName(from: "clear_layer")
        self._method_clear_layer_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_layer_1286410249_name._native_ptr(), 1286410249)
        assert(TileMap._method_clear_layer_1286410249 != nil)
        let _method_clear_3218959716_name = StringName(from: "clear")
        self._method_clear_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_3218959716_name._native_ptr(), 3218959716)
        assert(TileMap._method_clear_3218959716 != nil)
        let _method_force_update_1025054187_name = StringName(from: "force_update")
        self._method_force_update_1025054187 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_force_update_1025054187_name._native_ptr(), 1025054187)
        assert(TileMap._method_force_update_1025054187 != nil)
        let _method_get_surrounding_cells_2673526557_name = StringName(from: "get_surrounding_cells")
        self._method_get_surrounding_cells_2673526557 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_surrounding_cells_2673526557_name._native_ptr(), 2673526557)
        assert(TileMap._method_get_surrounding_cells_2673526557 != nil)
        let _method_get_used_cells_663333327_name = StringName(from: "get_used_cells")
        self._method_get_used_cells_663333327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_used_cells_663333327_name._native_ptr(), 663333327)
        assert(TileMap._method_get_used_cells_663333327 != nil)
        let _method_get_used_cells_by_id_4152068407_name = StringName(from: "get_used_cells_by_id")
        self._method_get_used_cells_by_id_4152068407 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_used_cells_by_id_4152068407_name._native_ptr(), 4152068407)
        assert(TileMap._method_get_used_cells_by_id_4152068407 != nil)
        let _method_get_used_rect_2024035737_name = StringName(from: "get_used_rect")
        self._method_get_used_rect_2024035737 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_used_rect_2024035737_name._native_ptr(), 2024035737)
        assert(TileMap._method_get_used_rect_2024035737 != nil)
        let _method_map_to_local_108438297_name = StringName(from: "map_to_local")
        self._method_map_to_local_108438297 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_to_local_108438297_name._native_ptr(), 108438297)
        assert(TileMap._method_map_to_local_108438297 != nil)
        let _method_local_to_map_837806996_name = StringName(from: "local_to_map")
        self._method_local_to_map_837806996 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_local_to_map_837806996_name._native_ptr(), 837806996)
        assert(TileMap._method_local_to_map_837806996 != nil)
        let _method_get_neighbor_cell_986575103_name = StringName(from: "get_neighbor_cell")
        self._method_get_neighbor_cell_986575103 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_neighbor_cell_986575103_name._native_ptr(), 986575103)
        assert(TileMap._method_get_neighbor_cell_986575103 != nil)
    }

    public func _use_tile_data_runtime_update(layer: Int64, coords: Vector2i) -> UInt8 {
        withUnsafePointer(to: layer) { layer_native in
        let coords_native = coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native), .init(coords_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__use_tile_data_runtime_update_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func _tile_data_runtime_update(layer: Int64, coords: Vector2i, tile_data: TileData)  {
        withUnsafePointer(to: layer) { layer_native in
        let tile_data_native = tile_data._native_ptr()
        let coords_native = coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native), .init(coords_native), .init(tile_data_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__tile_data_runtime_update_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_tileset(tileset: TileSet)  {
        let tileset_native = tileset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tileset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tileset_774531446,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_tileset() -> TileSet {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tileset_2678226422,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TileSet(from: __resPtr.pointee)
    }
    public func set_quadrant_size(size: Int64)  {
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_quadrant_size_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_quadrant_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_quadrant_size_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_layers_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_layers_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func add_layer(to_position: Int64)  {
        withUnsafePointer(to: to_position) { to_position_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(to_position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_layer_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func move_layer(layer: Int64, to_position: Int64)  {
        withUnsafePointer(to: to_position) { to_position_native in
        withUnsafePointer(to: layer) { layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native), .init(to_position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_move_layer_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func remove_layer(layer: Int64)  {
        withUnsafePointer(to: layer) { layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_layer_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_layer_name(layer: Int64, name: String)  {
        withUnsafePointer(to: name) { name_native in
        withUnsafePointer(to: layer) { layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native), .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_layer_name_501894301,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_layer_name(layer: Int64) -> String {
        withUnsafePointer(to: layer) { layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_layer_name_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
    public func set_layer_enabled(layer: Int64, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        withUnsafePointer(to: layer) { layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native), .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_layer_enabled_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func is_layer_enabled(layer: Int64) -> UInt8 {
        withUnsafePointer(to: layer) { layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_layer_enabled_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func set_layer_modulate(layer: Int64, modulate: Color)  {
        withUnsafePointer(to: layer) { layer_native in
        let modulate_native = modulate._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native), .init(modulate_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_layer_modulate_2878471219,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_layer_modulate(layer: Int64) -> Color {
        withUnsafePointer(to: layer) { layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_layer_modulate_3457211756,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
        }
    }
    public func set_layer_y_sort_enabled(layer: Int64, y_sort_enabled: UInt8)  {
        withUnsafePointer(to: y_sort_enabled) { y_sort_enabled_native in
        withUnsafePointer(to: layer) { layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native), .init(y_sort_enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_layer_y_sort_enabled_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func is_layer_y_sort_enabled(layer: Int64) -> UInt8 {
        withUnsafePointer(to: layer) { layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_layer_y_sort_enabled_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func set_layer_y_sort_origin(layer: Int64, y_sort_origin: Int64)  {
        withUnsafePointer(to: y_sort_origin) { y_sort_origin_native in
        withUnsafePointer(to: layer) { layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native), .init(y_sort_origin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_layer_y_sort_origin_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_layer_y_sort_origin(layer: Int64) -> Int64 {
        withUnsafePointer(to: layer) { layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_layer_y_sort_origin_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func set_layer_z_index(layer: Int64, z_index: Int64)  {
        withUnsafePointer(to: z_index) { z_index_native in
        withUnsafePointer(to: layer) { layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native), .init(z_index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_layer_z_index_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_layer_z_index(layer: Int64) -> Int64 {
        withUnsafePointer(to: layer) { layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_layer_z_index_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func set_collision_animatable(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_collision_animatable_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_collision_animatable() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_collision_animatable_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_collision_visibility_mode(collision_visibility_mode: TileMap.VisibilityMode)  {
        withUnsafePointer(to: collision_visibility_mode.rawValue) { collision_visibility_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(collision_visibility_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_collision_visibility_mode_3193440636,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_collision_visibility_mode() -> TileMap.VisibilityMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collision_visibility_mode_2026313073,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TileMap.VisibilityMode(from: __resPtr.pointee)
    }
    public func set_navigation_visibility_mode(navigation_visibility_mode: TileMap.VisibilityMode)  {
        withUnsafePointer(to: navigation_visibility_mode.rawValue) { navigation_visibility_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(navigation_visibility_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_navigation_visibility_mode_3193440636,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_navigation_visibility_mode() -> TileMap.VisibilityMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_navigation_visibility_mode_2026313073,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TileMap.VisibilityMode(from: __resPtr.pointee)
    }
    public func set_cell(layer: Int64, coords: Vector2i, source_id: Int64, atlas_coords: Vector2i, alternative_tile: Int64)  {
        withUnsafePointer(to: alternative_tile) { alternative_tile_native in
        withUnsafePointer(to: source_id) { source_id_native in
        withUnsafePointer(to: layer) { layer_native in
        let atlas_coords_native = atlas_coords._native_ptr()
        let coords_native = coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native), .init(coords_native), .init(source_id_native), .init(atlas_coords_native), .init(alternative_tile_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cell_1732664643,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func erase_cell(layer: Int64, coords: Vector2i)  {
        withUnsafePointer(to: layer) { layer_native in
        let coords_native = coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native), .init(coords_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_erase_cell_2311374912,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_cell_source_id(layer: Int64, coords: Vector2i, use_proxies: UInt8) -> Int64 {
        withUnsafePointer(to: use_proxies) { use_proxies_native in
        withUnsafePointer(to: layer) { layer_native in
        let coords_native = coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native), .init(coords_native), .init(use_proxies_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cell_source_id_551761942,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
    }
    public func get_cell_atlas_coords(layer: Int64, coords: Vector2i, use_proxies: UInt8) -> Vector2i {
        withUnsafePointer(to: use_proxies) { use_proxies_native in
        withUnsafePointer(to: layer) { layer_native in
        let coords_native = coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native), .init(coords_native), .init(use_proxies_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cell_atlas_coords_1869815066,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(from: __resPtr.pointee)
        }
        }
    }
    public func get_cell_alternative_tile(layer: Int64, coords: Vector2i, use_proxies: UInt8) -> Int64 {
        withUnsafePointer(to: use_proxies) { use_proxies_native in
        withUnsafePointer(to: layer) { layer_native in
        let coords_native = coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native), .init(coords_native), .init(use_proxies_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cell_alternative_tile_551761942,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
    }
    public func get_cell_tile_data(layer: Int64, coords: Vector2i, use_proxies: UInt8) -> TileData {
        withUnsafePointer(to: use_proxies) { use_proxies_native in
        withUnsafePointer(to: layer) { layer_native in
        let coords_native = coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native), .init(coords_native), .init(use_proxies_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cell_tile_data_2849631287,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TileData(from: __resPtr.pointee)
        }
        }
    }
    public func get_coords_for_body_rid(body: RID) -> Vector2i {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_coords_for_body_rid_291584212,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(from: __resPtr.pointee)
    }
    public func get_pattern(layer: Int64, coords_array: [Vector2i]) -> TileMapPattern {
        withUnsafePointer(to: layer) { layer_native in
        let coords_array_native = coords_array._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native), .init(coords_array_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_pattern_2833570986,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TileMapPattern(from: __resPtr.pointee)
        }
    }
    public func map_pattern(position_in_tilemap: Vector2i, coords_in_pattern: Vector2i, pattern: TileMapPattern) -> Vector2i {
        let pattern_native = pattern._native_ptr()
        let coords_in_pattern_native = coords_in_pattern._native_ptr()
        let position_in_tilemap_native = position_in_tilemap._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_in_tilemap_native), .init(coords_in_pattern_native), .init(pattern_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_map_pattern_1864516957,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(from: __resPtr.pointee)
    }
    public func set_pattern(layer: Int64, position: Vector2i, pattern: TileMapPattern)  {
        withUnsafePointer(to: layer) { layer_native in
        let pattern_native = pattern._native_ptr()
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native), .init(position_native), .init(pattern_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_pattern_1195853946,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_cells_terrain_connect(layer: Int64, cells: [Vector2i], terrain_set: Int64, terrain: Int64, ignore_empty_terrains: UInt8)  {
        withUnsafePointer(to: ignore_empty_terrains) { ignore_empty_terrains_native in
        withUnsafePointer(to: terrain) { terrain_native in
        withUnsafePointer(to: terrain_set) { terrain_set_native in
        withUnsafePointer(to: layer) { layer_native in
        let cells_native = cells._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native), .init(cells_native), .init(terrain_set_native), .init(terrain_native), .init(ignore_empty_terrains_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cells_terrain_connect_3072115677,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
        }
    }
    public func set_cells_terrain_path(layer: Int64, path: [Vector2i], terrain_set: Int64, terrain: Int64, ignore_empty_terrains: UInt8)  {
        withUnsafePointer(to: ignore_empty_terrains) { ignore_empty_terrains_native in
        withUnsafePointer(to: terrain) { terrain_native in
        withUnsafePointer(to: terrain_set) { terrain_set_native in
        withUnsafePointer(to: layer) { layer_native in
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native), .init(path_native), .init(terrain_set_native), .init(terrain_native), .init(ignore_empty_terrains_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cells_terrain_path_3072115677,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
        }
    }
    public func fix_invalid_tiles()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_fix_invalid_tiles_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func clear_layer(layer: Int64)  {
        withUnsafePointer(to: layer) { layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_layer_1286410249,
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
    public func force_update(layer: Int64)  {
        withUnsafePointer(to: layer) { layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_force_update_1025054187,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_surrounding_cells(coords: Vector2i) -> [Vector2i] {
        let coords_native = coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(coords_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_surrounding_cells_2673526557,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Vector2i](from: __resPtr.pointee)
    }
    public func get_used_cells(layer: Int64) -> [Vector2i] {
        withUnsafePointer(to: layer) { layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_used_cells_663333327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Vector2i](from: __resPtr.pointee)
        }
    }
    public func get_used_cells_by_id(layer: Int64, source_id: Int64, atlas_coords: Vector2i, alternative_tile: Int64) -> [Vector2i] {
        withUnsafePointer(to: alternative_tile) { alternative_tile_native in
        withUnsafePointer(to: source_id) { source_id_native in
        withUnsafePointer(to: layer) { layer_native in
        let atlas_coords_native = atlas_coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native), .init(source_id_native), .init(atlas_coords_native), .init(alternative_tile_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_used_cells_by_id_4152068407,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Vector2i](from: __resPtr.pointee)
        }
        }
        }
    }
    public func get_used_rect() -> Rect2i {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_used_rect_2024035737,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2i(from: __resPtr.pointee)
    }
    public func map_to_local(map_position: Vector2i) -> Vector2 {
        let map_position_native = map_position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(map_position_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_map_to_local_108438297,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func local_to_map(local_position: Vector2) -> Vector2i {
        let local_position_native = local_position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(local_position_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_local_to_map_837806996,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(from: __resPtr.pointee)
    }
    public func get_neighbor_cell(coords: Vector2i, neighbor: TileSet.CellNeighbor) -> Vector2i {
        withUnsafePointer(to: neighbor.rawValue) { neighbor_native in
        let coords_native = coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(coords_native), .init(neighbor_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_neighbor_cell_986575103,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(from: __resPtr.pointee)
        }
    }
}