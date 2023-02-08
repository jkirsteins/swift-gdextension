import godot_native

fileprivate var __godot_name_TileSet: StringName! = nil

/// Tile library for tilemaps.
/// 
/// A TileSet is a library of tiles for a [TileMap]. A TileSet handles a list of [TileSetSource], each of them storing a set of tiles.
///  
/// Tiles can either be from a [TileSetAtlasSource], that render tiles out of a texture with support for physics, navigation, etc... or from a [TileSetScenesCollectionSource] which exposes scene-based tiles.
///  
/// Tiles are referenced by using three IDs: their source ID, their atlas coordinates ID and their alternative tile ID.
///  
/// A TileSet can be configured so that its tiles expose more or less properties. To do so, the TileSet resources uses property layers, that you can add or remove depending on your needs.
///  
/// For example, adding a physics layer allows giving collision shapes to your tiles. Each layer having dedicated properties (physics layer an mask), you may add several TileSet physics layers for each type of collision you need.
///  
/// See the functions to add new layers for more information.
open class TileSet : Resource {

    public enum TileShape : Int32 {
        case TILE_SHAPE_SQUARE = 0
        case TILE_SHAPE_ISOMETRIC = 1
        case TILE_SHAPE_HALF_OFFSET_SQUARE = 2
        case TILE_SHAPE_HEXAGON = 3
    }
    public enum TileLayout : Int32 {
        case TILE_LAYOUT_STACKED = 0
        case TILE_LAYOUT_STACKED_OFFSET = 1
        case TILE_LAYOUT_STAIRS_RIGHT = 2
        case TILE_LAYOUT_STAIRS_DOWN = 3
        case TILE_LAYOUT_DIAMOND_RIGHT = 4
        case TILE_LAYOUT_DIAMOND_DOWN = 5
    }
    public enum TileOffsetAxis : Int32 {
        case TILE_OFFSET_AXIS_HORIZONTAL = 0
        case TILE_OFFSET_AXIS_VERTICAL = 1
    }
    public enum CellNeighbor : Int32 {
        case CELL_NEIGHBOR_RIGHT_SIDE = 0
        case CELL_NEIGHBOR_RIGHT_CORNER = 1
        case CELL_NEIGHBOR_BOTTOM_RIGHT_SIDE = 2
        case CELL_NEIGHBOR_BOTTOM_RIGHT_CORNER = 3
        case CELL_NEIGHBOR_BOTTOM_SIDE = 4
        case CELL_NEIGHBOR_BOTTOM_CORNER = 5
        case CELL_NEIGHBOR_BOTTOM_LEFT_SIDE = 6
        case CELL_NEIGHBOR_BOTTOM_LEFT_CORNER = 7
        case CELL_NEIGHBOR_LEFT_SIDE = 8
        case CELL_NEIGHBOR_LEFT_CORNER = 9
        case CELL_NEIGHBOR_TOP_LEFT_SIDE = 10
        case CELL_NEIGHBOR_TOP_LEFT_CORNER = 11
        case CELL_NEIGHBOR_TOP_SIDE = 12
        case CELL_NEIGHBOR_TOP_CORNER = 13
        case CELL_NEIGHBOR_TOP_RIGHT_SIDE = 14
        case CELL_NEIGHBOR_TOP_RIGHT_CORNER = 15
    }
    public enum TerrainMode : Int32 {
        case TERRAIN_MODE_MATCH_CORNERS_AND_SIDES = 0
        case TERRAIN_MODE_MATCH_CORNERS = 1
        case TERRAIN_MODE_MATCH_SIDES = 2
    }

    public override class var __godot_name: StringName { __godot_name_TileSet }

    static var _method_get_next_source_id_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_add_source_276991387: GDExtensionMethodBindPtr! = nil
    static var _method_remove_source_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_source_id_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_get_source_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_source_id_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_has_source_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_get_source_1763540252: GDExtensionMethodBindPtr! = nil
    static var _method_set_tile_shape_2131427112: GDExtensionMethodBindPtr! = nil
    static var _method_get_tile_shape_716918169: GDExtensionMethodBindPtr! = nil
    static var _method_set_tile_layout_1071216679: GDExtensionMethodBindPtr! = nil
    static var _method_get_tile_layout_194628839: GDExtensionMethodBindPtr! = nil
    static var _method_set_tile_offset_axis_3300198521: GDExtensionMethodBindPtr! = nil
    static var _method_get_tile_offset_axis_762494114: GDExtensionMethodBindPtr! = nil
    static var _method_set_tile_size_1130785943: GDExtensionMethodBindPtr! = nil
    static var _method_get_tile_size_3690982128: GDExtensionMethodBindPtr! = nil
    static var _method_set_uv_clipping_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_uv_clipping_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_occlusion_layers_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_add_occlusion_layer_1025054187: GDExtensionMethodBindPtr! = nil
    static var _method_move_occlusion_layer_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_remove_occlusion_layer_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_occlusion_layer_light_mask_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_get_occlusion_layer_light_mask_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_set_occlusion_layer_sdf_collision_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_get_occlusion_layer_sdf_collision_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_get_physics_layers_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_add_physics_layer_1025054187: GDExtensionMethodBindPtr! = nil
    static var _method_move_physics_layer_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_remove_physics_layer_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_physics_layer_collision_layer_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_get_physics_layer_collision_layer_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_set_physics_layer_collision_mask_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_get_physics_layer_collision_mask_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_set_physics_layer_physics_material_1018687357: GDExtensionMethodBindPtr! = nil
    static var _method_get_physics_layer_physics_material_788318639: GDExtensionMethodBindPtr! = nil
    static var _method_get_terrain_sets_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_add_terrain_set_1025054187: GDExtensionMethodBindPtr! = nil
    static var _method_move_terrain_set_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_remove_terrain_set_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_terrain_set_mode_3943003916: GDExtensionMethodBindPtr! = nil
    static var _method_get_terrain_set_mode_2084469411: GDExtensionMethodBindPtr! = nil
    static var _method_get_terrains_count_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_add_terrain_3023605688: GDExtensionMethodBindPtr! = nil
    static var _method_move_terrain_1649997291: GDExtensionMethodBindPtr! = nil
    static var _method_remove_terrain_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_set_terrain_name_2285447957: GDExtensionMethodBindPtr! = nil
    static var _method_get_terrain_name_1391810591: GDExtensionMethodBindPtr! = nil
    static var _method_set_terrain_color_3733378741: GDExtensionMethodBindPtr! = nil
    static var _method_get_terrain_color_2165839948: GDExtensionMethodBindPtr! = nil
    static var _method_get_navigation_layers_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_add_navigation_layer_1025054187: GDExtensionMethodBindPtr! = nil
    static var _method_move_navigation_layer_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_remove_navigation_layer_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_navigation_layer_layers_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_get_navigation_layer_layers_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_set_navigation_layer_layer_value_1383440665: GDExtensionMethodBindPtr! = nil
    static var _method_get_navigation_layer_layer_value_2522259332: GDExtensionMethodBindPtr! = nil
    static var _method_get_custom_data_layers_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_add_custom_data_layer_1025054187: GDExtensionMethodBindPtr! = nil
    static var _method_move_custom_data_layer_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_remove_custom_data_layer_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_custom_data_layer_by_name_1321353865: GDExtensionMethodBindPtr! = nil
    static var _method_set_custom_data_layer_name_501894301: GDExtensionMethodBindPtr! = nil
    static var _method_get_custom_data_layer_name_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_set_custom_data_layer_type_3492912874: GDExtensionMethodBindPtr! = nil
    static var _method_get_custom_data_layer_type_2990820875: GDExtensionMethodBindPtr! = nil
    static var _method_set_source_level_tile_proxy_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_get_source_level_tile_proxy_3744713108: GDExtensionMethodBindPtr! = nil
    static var _method_has_source_level_tile_proxy_3067735520: GDExtensionMethodBindPtr! = nil
    static var _method_remove_source_level_tile_proxy_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_coords_level_tile_proxy_1769939278: GDExtensionMethodBindPtr! = nil
    static var _method_get_coords_level_tile_proxy_2856536371: GDExtensionMethodBindPtr! = nil
    static var _method_has_coords_level_tile_proxy_3957903770: GDExtensionMethodBindPtr! = nil
    static var _method_remove_coords_level_tile_proxy_2311374912: GDExtensionMethodBindPtr! = nil
    static var _method_set_alternative_level_tile_proxy_3862385460: GDExtensionMethodBindPtr! = nil
    static var _method_get_alternative_level_tile_proxy_2303761075: GDExtensionMethodBindPtr! = nil
    static var _method_has_alternative_level_tile_proxy_180086755: GDExtensionMethodBindPtr! = nil
    static var _method_remove_alternative_level_tile_proxy_2328951467: GDExtensionMethodBindPtr! = nil
    static var _method_map_tile_proxy_4267935328: GDExtensionMethodBindPtr! = nil
    static var _method_cleanup_invalid_tile_proxies_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_clear_tile_proxies_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_add_pattern_3009264082: GDExtensionMethodBindPtr! = nil
    static var _method_get_pattern_4207737510: GDExtensionMethodBindPtr! = nil
    static var _method_remove_pattern_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_patterns_count_2455072627: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_TileSet = StringName(from: "TileSet")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_get_next_source_id_3905245786_name = StringName(from: "get_next_source_id")
        self._method_get_next_source_id_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_get_next_source_id_3905245786_name._native_ptr(), 3905245786)
        assert(TileSet._method_get_next_source_id_3905245786 != nil)
        let _method_add_source_276991387_name = StringName(from: "add_source")
        self._method_add_source_276991387 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_add_source_276991387_name._native_ptr(), 276991387)
        assert(TileSet._method_add_source_276991387 != nil)
        let _method_remove_source_1286410249_name = StringName(from: "remove_source")
        self._method_remove_source_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_remove_source_1286410249_name._native_ptr(), 1286410249)
        assert(TileSet._method_remove_source_1286410249 != nil)
        let _method_set_source_id_3937882851_name = StringName(from: "set_source_id")
        self._method_set_source_id_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_set_source_id_3937882851_name._native_ptr(), 3937882851)
        assert(TileSet._method_set_source_id_3937882851 != nil)
        let _method_get_source_count_3905245786_name = StringName(from: "get_source_count")
        self._method_get_source_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_get_source_count_3905245786_name._native_ptr(), 3905245786)
        assert(TileSet._method_get_source_count_3905245786 != nil)
        let _method_get_source_id_923996154_name = StringName(from: "get_source_id")
        self._method_get_source_id_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_get_source_id_923996154_name._native_ptr(), 923996154)
        assert(TileSet._method_get_source_id_923996154 != nil)
        let _method_has_source_1116898809_name = StringName(from: "has_source")
        self._method_has_source_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_has_source_1116898809_name._native_ptr(), 1116898809)
        assert(TileSet._method_has_source_1116898809 != nil)
        let _method_get_source_1763540252_name = StringName(from: "get_source")
        self._method_get_source_1763540252 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_get_source_1763540252_name._native_ptr(), 1763540252)
        assert(TileSet._method_get_source_1763540252 != nil)
        let _method_set_tile_shape_2131427112_name = StringName(from: "set_tile_shape")
        self._method_set_tile_shape_2131427112 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_set_tile_shape_2131427112_name._native_ptr(), 2131427112)
        assert(TileSet._method_set_tile_shape_2131427112 != nil)
        let _method_get_tile_shape_716918169_name = StringName(from: "get_tile_shape")
        self._method_get_tile_shape_716918169 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_get_tile_shape_716918169_name._native_ptr(), 716918169)
        assert(TileSet._method_get_tile_shape_716918169 != nil)
        let _method_set_tile_layout_1071216679_name = StringName(from: "set_tile_layout")
        self._method_set_tile_layout_1071216679 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_set_tile_layout_1071216679_name._native_ptr(), 1071216679)
        assert(TileSet._method_set_tile_layout_1071216679 != nil)
        let _method_get_tile_layout_194628839_name = StringName(from: "get_tile_layout")
        self._method_get_tile_layout_194628839 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_get_tile_layout_194628839_name._native_ptr(), 194628839)
        assert(TileSet._method_get_tile_layout_194628839 != nil)
        let _method_set_tile_offset_axis_3300198521_name = StringName(from: "set_tile_offset_axis")
        self._method_set_tile_offset_axis_3300198521 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_set_tile_offset_axis_3300198521_name._native_ptr(), 3300198521)
        assert(TileSet._method_set_tile_offset_axis_3300198521 != nil)
        let _method_get_tile_offset_axis_762494114_name = StringName(from: "get_tile_offset_axis")
        self._method_get_tile_offset_axis_762494114 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_get_tile_offset_axis_762494114_name._native_ptr(), 762494114)
        assert(TileSet._method_get_tile_offset_axis_762494114 != nil)
        let _method_set_tile_size_1130785943_name = StringName(from: "set_tile_size")
        self._method_set_tile_size_1130785943 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_set_tile_size_1130785943_name._native_ptr(), 1130785943)
        assert(TileSet._method_set_tile_size_1130785943 != nil)
        let _method_get_tile_size_3690982128_name = StringName(from: "get_tile_size")
        self._method_get_tile_size_3690982128 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_get_tile_size_3690982128_name._native_ptr(), 3690982128)
        assert(TileSet._method_get_tile_size_3690982128 != nil)
        let _method_set_uv_clipping_2586408642_name = StringName(from: "set_uv_clipping")
        self._method_set_uv_clipping_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_set_uv_clipping_2586408642_name._native_ptr(), 2586408642)
        assert(TileSet._method_set_uv_clipping_2586408642 != nil)
        let _method_is_uv_clipping_36873697_name = StringName(from: "is_uv_clipping")
        self._method_is_uv_clipping_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_is_uv_clipping_36873697_name._native_ptr(), 36873697)
        assert(TileSet._method_is_uv_clipping_36873697 != nil)
        let _method_get_occlusion_layers_count_3905245786_name = StringName(from: "get_occlusion_layers_count")
        self._method_get_occlusion_layers_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_get_occlusion_layers_count_3905245786_name._native_ptr(), 3905245786)
        assert(TileSet._method_get_occlusion_layers_count_3905245786 != nil)
        let _method_add_occlusion_layer_1025054187_name = StringName(from: "add_occlusion_layer")
        self._method_add_occlusion_layer_1025054187 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_add_occlusion_layer_1025054187_name._native_ptr(), 1025054187)
        assert(TileSet._method_add_occlusion_layer_1025054187 != nil)
        let _method_move_occlusion_layer_3937882851_name = StringName(from: "move_occlusion_layer")
        self._method_move_occlusion_layer_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_move_occlusion_layer_3937882851_name._native_ptr(), 3937882851)
        assert(TileSet._method_move_occlusion_layer_3937882851 != nil)
        let _method_remove_occlusion_layer_1286410249_name = StringName(from: "remove_occlusion_layer")
        self._method_remove_occlusion_layer_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_remove_occlusion_layer_1286410249_name._native_ptr(), 1286410249)
        assert(TileSet._method_remove_occlusion_layer_1286410249 != nil)
        let _method_set_occlusion_layer_light_mask_3937882851_name = StringName(from: "set_occlusion_layer_light_mask")
        self._method_set_occlusion_layer_light_mask_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_set_occlusion_layer_light_mask_3937882851_name._native_ptr(), 3937882851)
        assert(TileSet._method_set_occlusion_layer_light_mask_3937882851 != nil)
        let _method_get_occlusion_layer_light_mask_923996154_name = StringName(from: "get_occlusion_layer_light_mask")
        self._method_get_occlusion_layer_light_mask_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_get_occlusion_layer_light_mask_923996154_name._native_ptr(), 923996154)
        assert(TileSet._method_get_occlusion_layer_light_mask_923996154 != nil)
        let _method_set_occlusion_layer_sdf_collision_300928843_name = StringName(from: "set_occlusion_layer_sdf_collision")
        self._method_set_occlusion_layer_sdf_collision_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_set_occlusion_layer_sdf_collision_300928843_name._native_ptr(), 300928843)
        assert(TileSet._method_set_occlusion_layer_sdf_collision_300928843 != nil)
        let _method_get_occlusion_layer_sdf_collision_1116898809_name = StringName(from: "get_occlusion_layer_sdf_collision")
        self._method_get_occlusion_layer_sdf_collision_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_get_occlusion_layer_sdf_collision_1116898809_name._native_ptr(), 1116898809)
        assert(TileSet._method_get_occlusion_layer_sdf_collision_1116898809 != nil)
        let _method_get_physics_layers_count_3905245786_name = StringName(from: "get_physics_layers_count")
        self._method_get_physics_layers_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_get_physics_layers_count_3905245786_name._native_ptr(), 3905245786)
        assert(TileSet._method_get_physics_layers_count_3905245786 != nil)
        let _method_add_physics_layer_1025054187_name = StringName(from: "add_physics_layer")
        self._method_add_physics_layer_1025054187 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_add_physics_layer_1025054187_name._native_ptr(), 1025054187)
        assert(TileSet._method_add_physics_layer_1025054187 != nil)
        let _method_move_physics_layer_3937882851_name = StringName(from: "move_physics_layer")
        self._method_move_physics_layer_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_move_physics_layer_3937882851_name._native_ptr(), 3937882851)
        assert(TileSet._method_move_physics_layer_3937882851 != nil)
        let _method_remove_physics_layer_1286410249_name = StringName(from: "remove_physics_layer")
        self._method_remove_physics_layer_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_remove_physics_layer_1286410249_name._native_ptr(), 1286410249)
        assert(TileSet._method_remove_physics_layer_1286410249 != nil)
        let _method_set_physics_layer_collision_layer_3937882851_name = StringName(from: "set_physics_layer_collision_layer")
        self._method_set_physics_layer_collision_layer_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_set_physics_layer_collision_layer_3937882851_name._native_ptr(), 3937882851)
        assert(TileSet._method_set_physics_layer_collision_layer_3937882851 != nil)
        let _method_get_physics_layer_collision_layer_923996154_name = StringName(from: "get_physics_layer_collision_layer")
        self._method_get_physics_layer_collision_layer_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_get_physics_layer_collision_layer_923996154_name._native_ptr(), 923996154)
        assert(TileSet._method_get_physics_layer_collision_layer_923996154 != nil)
        let _method_set_physics_layer_collision_mask_3937882851_name = StringName(from: "set_physics_layer_collision_mask")
        self._method_set_physics_layer_collision_mask_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_set_physics_layer_collision_mask_3937882851_name._native_ptr(), 3937882851)
        assert(TileSet._method_set_physics_layer_collision_mask_3937882851 != nil)
        let _method_get_physics_layer_collision_mask_923996154_name = StringName(from: "get_physics_layer_collision_mask")
        self._method_get_physics_layer_collision_mask_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_get_physics_layer_collision_mask_923996154_name._native_ptr(), 923996154)
        assert(TileSet._method_get_physics_layer_collision_mask_923996154 != nil)
        let _method_set_physics_layer_physics_material_1018687357_name = StringName(from: "set_physics_layer_physics_material")
        self._method_set_physics_layer_physics_material_1018687357 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_set_physics_layer_physics_material_1018687357_name._native_ptr(), 1018687357)
        assert(TileSet._method_set_physics_layer_physics_material_1018687357 != nil)
        let _method_get_physics_layer_physics_material_788318639_name = StringName(from: "get_physics_layer_physics_material")
        self._method_get_physics_layer_physics_material_788318639 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_get_physics_layer_physics_material_788318639_name._native_ptr(), 788318639)
        assert(TileSet._method_get_physics_layer_physics_material_788318639 != nil)
        let _method_get_terrain_sets_count_3905245786_name = StringName(from: "get_terrain_sets_count")
        self._method_get_terrain_sets_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_get_terrain_sets_count_3905245786_name._native_ptr(), 3905245786)
        assert(TileSet._method_get_terrain_sets_count_3905245786 != nil)
        let _method_add_terrain_set_1025054187_name = StringName(from: "add_terrain_set")
        self._method_add_terrain_set_1025054187 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_add_terrain_set_1025054187_name._native_ptr(), 1025054187)
        assert(TileSet._method_add_terrain_set_1025054187 != nil)
        let _method_move_terrain_set_3937882851_name = StringName(from: "move_terrain_set")
        self._method_move_terrain_set_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_move_terrain_set_3937882851_name._native_ptr(), 3937882851)
        assert(TileSet._method_move_terrain_set_3937882851 != nil)
        let _method_remove_terrain_set_1286410249_name = StringName(from: "remove_terrain_set")
        self._method_remove_terrain_set_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_remove_terrain_set_1286410249_name._native_ptr(), 1286410249)
        assert(TileSet._method_remove_terrain_set_1286410249 != nil)
        let _method_set_terrain_set_mode_3943003916_name = StringName(from: "set_terrain_set_mode")
        self._method_set_terrain_set_mode_3943003916 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_set_terrain_set_mode_3943003916_name._native_ptr(), 3943003916)
        assert(TileSet._method_set_terrain_set_mode_3943003916 != nil)
        let _method_get_terrain_set_mode_2084469411_name = StringName(from: "get_terrain_set_mode")
        self._method_get_terrain_set_mode_2084469411 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_get_terrain_set_mode_2084469411_name._native_ptr(), 2084469411)
        assert(TileSet._method_get_terrain_set_mode_2084469411 != nil)
        let _method_get_terrains_count_923996154_name = StringName(from: "get_terrains_count")
        self._method_get_terrains_count_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_get_terrains_count_923996154_name._native_ptr(), 923996154)
        assert(TileSet._method_get_terrains_count_923996154 != nil)
        let _method_add_terrain_3023605688_name = StringName(from: "add_terrain")
        self._method_add_terrain_3023605688 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_add_terrain_3023605688_name._native_ptr(), 3023605688)
        assert(TileSet._method_add_terrain_3023605688 != nil)
        let _method_move_terrain_1649997291_name = StringName(from: "move_terrain")
        self._method_move_terrain_1649997291 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_move_terrain_1649997291_name._native_ptr(), 1649997291)
        assert(TileSet._method_move_terrain_1649997291 != nil)
        let _method_remove_terrain_3937882851_name = StringName(from: "remove_terrain")
        self._method_remove_terrain_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_remove_terrain_3937882851_name._native_ptr(), 3937882851)
        assert(TileSet._method_remove_terrain_3937882851 != nil)
        let _method_set_terrain_name_2285447957_name = StringName(from: "set_terrain_name")
        self._method_set_terrain_name_2285447957 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_set_terrain_name_2285447957_name._native_ptr(), 2285447957)
        assert(TileSet._method_set_terrain_name_2285447957 != nil)
        let _method_get_terrain_name_1391810591_name = StringName(from: "get_terrain_name")
        self._method_get_terrain_name_1391810591 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_get_terrain_name_1391810591_name._native_ptr(), 1391810591)
        assert(TileSet._method_get_terrain_name_1391810591 != nil)
        let _method_set_terrain_color_3733378741_name = StringName(from: "set_terrain_color")
        self._method_set_terrain_color_3733378741 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_set_terrain_color_3733378741_name._native_ptr(), 3733378741)
        assert(TileSet._method_set_terrain_color_3733378741 != nil)
        let _method_get_terrain_color_2165839948_name = StringName(from: "get_terrain_color")
        self._method_get_terrain_color_2165839948 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_get_terrain_color_2165839948_name._native_ptr(), 2165839948)
        assert(TileSet._method_get_terrain_color_2165839948 != nil)
        let _method_get_navigation_layers_count_3905245786_name = StringName(from: "get_navigation_layers_count")
        self._method_get_navigation_layers_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_get_navigation_layers_count_3905245786_name._native_ptr(), 3905245786)
        assert(TileSet._method_get_navigation_layers_count_3905245786 != nil)
        let _method_add_navigation_layer_1025054187_name = StringName(from: "add_navigation_layer")
        self._method_add_navigation_layer_1025054187 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_add_navigation_layer_1025054187_name._native_ptr(), 1025054187)
        assert(TileSet._method_add_navigation_layer_1025054187 != nil)
        let _method_move_navigation_layer_3937882851_name = StringName(from: "move_navigation_layer")
        self._method_move_navigation_layer_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_move_navigation_layer_3937882851_name._native_ptr(), 3937882851)
        assert(TileSet._method_move_navigation_layer_3937882851 != nil)
        let _method_remove_navigation_layer_1286410249_name = StringName(from: "remove_navigation_layer")
        self._method_remove_navigation_layer_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_remove_navigation_layer_1286410249_name._native_ptr(), 1286410249)
        assert(TileSet._method_remove_navigation_layer_1286410249 != nil)
        let _method_set_navigation_layer_layers_3937882851_name = StringName(from: "set_navigation_layer_layers")
        self._method_set_navigation_layer_layers_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_set_navigation_layer_layers_3937882851_name._native_ptr(), 3937882851)
        assert(TileSet._method_set_navigation_layer_layers_3937882851 != nil)
        let _method_get_navigation_layer_layers_923996154_name = StringName(from: "get_navigation_layer_layers")
        self._method_get_navigation_layer_layers_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_get_navigation_layer_layers_923996154_name._native_ptr(), 923996154)
        assert(TileSet._method_get_navigation_layer_layers_923996154 != nil)
        let _method_set_navigation_layer_layer_value_1383440665_name = StringName(from: "set_navigation_layer_layer_value")
        self._method_set_navigation_layer_layer_value_1383440665 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_set_navigation_layer_layer_value_1383440665_name._native_ptr(), 1383440665)
        assert(TileSet._method_set_navigation_layer_layer_value_1383440665 != nil)
        let _method_get_navigation_layer_layer_value_2522259332_name = StringName(from: "get_navigation_layer_layer_value")
        self._method_get_navigation_layer_layer_value_2522259332 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_get_navigation_layer_layer_value_2522259332_name._native_ptr(), 2522259332)
        assert(TileSet._method_get_navigation_layer_layer_value_2522259332 != nil)
        let _method_get_custom_data_layers_count_3905245786_name = StringName(from: "get_custom_data_layers_count")
        self._method_get_custom_data_layers_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_get_custom_data_layers_count_3905245786_name._native_ptr(), 3905245786)
        assert(TileSet._method_get_custom_data_layers_count_3905245786 != nil)
        let _method_add_custom_data_layer_1025054187_name = StringName(from: "add_custom_data_layer")
        self._method_add_custom_data_layer_1025054187 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_add_custom_data_layer_1025054187_name._native_ptr(), 1025054187)
        assert(TileSet._method_add_custom_data_layer_1025054187 != nil)
        let _method_move_custom_data_layer_3937882851_name = StringName(from: "move_custom_data_layer")
        self._method_move_custom_data_layer_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_move_custom_data_layer_3937882851_name._native_ptr(), 3937882851)
        assert(TileSet._method_move_custom_data_layer_3937882851 != nil)
        let _method_remove_custom_data_layer_1286410249_name = StringName(from: "remove_custom_data_layer")
        self._method_remove_custom_data_layer_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_remove_custom_data_layer_1286410249_name._native_ptr(), 1286410249)
        assert(TileSet._method_remove_custom_data_layer_1286410249 != nil)
        let _method_get_custom_data_layer_by_name_1321353865_name = StringName(from: "get_custom_data_layer_by_name")
        self._method_get_custom_data_layer_by_name_1321353865 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_get_custom_data_layer_by_name_1321353865_name._native_ptr(), 1321353865)
        assert(TileSet._method_get_custom_data_layer_by_name_1321353865 != nil)
        let _method_set_custom_data_layer_name_501894301_name = StringName(from: "set_custom_data_layer_name")
        self._method_set_custom_data_layer_name_501894301 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_set_custom_data_layer_name_501894301_name._native_ptr(), 501894301)
        assert(TileSet._method_set_custom_data_layer_name_501894301 != nil)
        let _method_get_custom_data_layer_name_844755477_name = StringName(from: "get_custom_data_layer_name")
        self._method_get_custom_data_layer_name_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_get_custom_data_layer_name_844755477_name._native_ptr(), 844755477)
        assert(TileSet._method_get_custom_data_layer_name_844755477 != nil)
        let _method_set_custom_data_layer_type_3492912874_name = StringName(from: "set_custom_data_layer_type")
        self._method_set_custom_data_layer_type_3492912874 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_set_custom_data_layer_type_3492912874_name._native_ptr(), 3492912874)
        assert(TileSet._method_set_custom_data_layer_type_3492912874 != nil)
        let _method_get_custom_data_layer_type_2990820875_name = StringName(from: "get_custom_data_layer_type")
        self._method_get_custom_data_layer_type_2990820875 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_get_custom_data_layer_type_2990820875_name._native_ptr(), 2990820875)
        assert(TileSet._method_get_custom_data_layer_type_2990820875 != nil)
        let _method_set_source_level_tile_proxy_3937882851_name = StringName(from: "set_source_level_tile_proxy")
        self._method_set_source_level_tile_proxy_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_set_source_level_tile_proxy_3937882851_name._native_ptr(), 3937882851)
        assert(TileSet._method_set_source_level_tile_proxy_3937882851 != nil)
        let _method_get_source_level_tile_proxy_3744713108_name = StringName(from: "get_source_level_tile_proxy")
        self._method_get_source_level_tile_proxy_3744713108 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_get_source_level_tile_proxy_3744713108_name._native_ptr(), 3744713108)
        assert(TileSet._method_get_source_level_tile_proxy_3744713108 != nil)
        let _method_has_source_level_tile_proxy_3067735520_name = StringName(from: "has_source_level_tile_proxy")
        self._method_has_source_level_tile_proxy_3067735520 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_has_source_level_tile_proxy_3067735520_name._native_ptr(), 3067735520)
        assert(TileSet._method_has_source_level_tile_proxy_3067735520 != nil)
        let _method_remove_source_level_tile_proxy_1286410249_name = StringName(from: "remove_source_level_tile_proxy")
        self._method_remove_source_level_tile_proxy_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_remove_source_level_tile_proxy_1286410249_name._native_ptr(), 1286410249)
        assert(TileSet._method_remove_source_level_tile_proxy_1286410249 != nil)
        let _method_set_coords_level_tile_proxy_1769939278_name = StringName(from: "set_coords_level_tile_proxy")
        self._method_set_coords_level_tile_proxy_1769939278 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_set_coords_level_tile_proxy_1769939278_name._native_ptr(), 1769939278)
        assert(TileSet._method_set_coords_level_tile_proxy_1769939278 != nil)
        let _method_get_coords_level_tile_proxy_2856536371_name = StringName(from: "get_coords_level_tile_proxy")
        self._method_get_coords_level_tile_proxy_2856536371 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_get_coords_level_tile_proxy_2856536371_name._native_ptr(), 2856536371)
        assert(TileSet._method_get_coords_level_tile_proxy_2856536371 != nil)
        let _method_has_coords_level_tile_proxy_3957903770_name = StringName(from: "has_coords_level_tile_proxy")
        self._method_has_coords_level_tile_proxy_3957903770 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_has_coords_level_tile_proxy_3957903770_name._native_ptr(), 3957903770)
        assert(TileSet._method_has_coords_level_tile_proxy_3957903770 != nil)
        let _method_remove_coords_level_tile_proxy_2311374912_name = StringName(from: "remove_coords_level_tile_proxy")
        self._method_remove_coords_level_tile_proxy_2311374912 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_remove_coords_level_tile_proxy_2311374912_name._native_ptr(), 2311374912)
        assert(TileSet._method_remove_coords_level_tile_proxy_2311374912 != nil)
        let _method_set_alternative_level_tile_proxy_3862385460_name = StringName(from: "set_alternative_level_tile_proxy")
        self._method_set_alternative_level_tile_proxy_3862385460 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_set_alternative_level_tile_proxy_3862385460_name._native_ptr(), 3862385460)
        assert(TileSet._method_set_alternative_level_tile_proxy_3862385460 != nil)
        let _method_get_alternative_level_tile_proxy_2303761075_name = StringName(from: "get_alternative_level_tile_proxy")
        self._method_get_alternative_level_tile_proxy_2303761075 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_get_alternative_level_tile_proxy_2303761075_name._native_ptr(), 2303761075)
        assert(TileSet._method_get_alternative_level_tile_proxy_2303761075 != nil)
        let _method_has_alternative_level_tile_proxy_180086755_name = StringName(from: "has_alternative_level_tile_proxy")
        self._method_has_alternative_level_tile_proxy_180086755 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_has_alternative_level_tile_proxy_180086755_name._native_ptr(), 180086755)
        assert(TileSet._method_has_alternative_level_tile_proxy_180086755 != nil)
        let _method_remove_alternative_level_tile_proxy_2328951467_name = StringName(from: "remove_alternative_level_tile_proxy")
        self._method_remove_alternative_level_tile_proxy_2328951467 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_remove_alternative_level_tile_proxy_2328951467_name._native_ptr(), 2328951467)
        assert(TileSet._method_remove_alternative_level_tile_proxy_2328951467 != nil)
        let _method_map_tile_proxy_4267935328_name = StringName(from: "map_tile_proxy")
        self._method_map_tile_proxy_4267935328 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_map_tile_proxy_4267935328_name._native_ptr(), 4267935328)
        assert(TileSet._method_map_tile_proxy_4267935328 != nil)
        let _method_cleanup_invalid_tile_proxies_3218959716_name = StringName(from: "cleanup_invalid_tile_proxies")
        self._method_cleanup_invalid_tile_proxies_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_cleanup_invalid_tile_proxies_3218959716_name._native_ptr(), 3218959716)
        assert(TileSet._method_cleanup_invalid_tile_proxies_3218959716 != nil)
        let _method_clear_tile_proxies_3218959716_name = StringName(from: "clear_tile_proxies")
        self._method_clear_tile_proxies_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_clear_tile_proxies_3218959716_name._native_ptr(), 3218959716)
        assert(TileSet._method_clear_tile_proxies_3218959716 != nil)
        let _method_add_pattern_3009264082_name = StringName(from: "add_pattern")
        self._method_add_pattern_3009264082 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_add_pattern_3009264082_name._native_ptr(), 3009264082)
        assert(TileSet._method_add_pattern_3009264082 != nil)
        let _method_get_pattern_4207737510_name = StringName(from: "get_pattern")
        self._method_get_pattern_4207737510 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_get_pattern_4207737510_name._native_ptr(), 4207737510)
        assert(TileSet._method_get_pattern_4207737510 != nil)
        let _method_remove_pattern_1286410249_name = StringName(from: "remove_pattern")
        self._method_remove_pattern_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_remove_pattern_1286410249_name._native_ptr(), 1286410249)
        assert(TileSet._method_remove_pattern_1286410249 != nil)
        let _method_get_patterns_count_2455072627_name = StringName(from: "get_patterns_count")
        self._method_get_patterns_count_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSet._native_ptr(), _method_get_patterns_count_2455072627_name._native_ptr(), 2455072627)
        assert(TileSet._method_get_patterns_count_2455072627 != nil)
    }

    public func get_next_source_id() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_next_source_id_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func add_source(source: TileSetSource, atlas_source_id_override: Int64) -> Int64 {
        withUnsafePointer(to: atlas_source_id_override) { atlas_source_id_override_native in
        let source_native = source._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(source_native), .init(atlas_source_id_override_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_source_276991387,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func remove_source(source_id: Int64)  {
        withUnsafePointer(to: source_id) { source_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(source_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_source_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_source_id(source_id: Int64, new_source_id: Int64)  {
        withUnsafePointer(to: new_source_id) { new_source_id_native in
        withUnsafePointer(to: source_id) { source_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(source_id_native), .init(new_source_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_source_id_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_source_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_source_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_source_id(index: Int64) -> Int64 {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_source_id_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func has_source(source_id: Int64) -> UInt8 {
        withUnsafePointer(to: source_id) { source_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(source_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_source_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func get_source(source_id: Int64) -> TileSetSource {
        withUnsafePointer(to: source_id) { source_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(source_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_source_1763540252,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TileSetSource(godot: __resPtr.pointee)
        }
    }
    public func set_tile_shape(shape: TileSet.TileShape)  {
        withUnsafePointer(to: shape.rawValue) { shape_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tile_shape_2131427112,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_tile_shape() -> TileSet.TileShape {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tile_shape_716918169,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TileSet.TileShape(godot: __resPtr.pointee)
    }
    public func set_tile_layout(layout: TileSet.TileLayout)  {
        withUnsafePointer(to: layout.rawValue) { layout_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layout_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tile_layout_1071216679,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_tile_layout() -> TileSet.TileLayout {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tile_layout_194628839,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TileSet.TileLayout(godot: __resPtr.pointee)
    }
    public func set_tile_offset_axis(alignment: TileSet.TileOffsetAxis)  {
        withUnsafePointer(to: alignment.rawValue) { alignment_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(alignment_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tile_offset_axis_3300198521,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_tile_offset_axis() -> TileSet.TileOffsetAxis {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tile_offset_axis_762494114,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TileSet.TileOffsetAxis(godot: __resPtr.pointee)
    }
    public func set_tile_size(size: Vector2i)  {
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tile_size_1130785943,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_tile_size() -> Vector2i {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tile_size_3690982128,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(godot: __resPtr.pointee)
    }
    public func set_uv_clipping(uv_clipping: UInt8)  {
        withUnsafePointer(to: uv_clipping) { uv_clipping_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(uv_clipping_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_uv_clipping_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_uv_clipping() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_uv_clipping_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_occlusion_layers_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_occlusion_layers_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func add_occlusion_layer(to_position: Int64)  {
        withUnsafePointer(to: to_position) { to_position_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(to_position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_occlusion_layer_1025054187,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func move_occlusion_layer(layer_index: Int64, to_position: Int64)  {
        withUnsafePointer(to: to_position) { to_position_native in
        withUnsafePointer(to: layer_index) { layer_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_index_native), .init(to_position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_move_occlusion_layer_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func remove_occlusion_layer(layer_index: Int64)  {
        withUnsafePointer(to: layer_index) { layer_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_occlusion_layer_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_occlusion_layer_light_mask(layer_index: Int64, light_mask: Int64)  {
        withUnsafePointer(to: light_mask) { light_mask_native in
        withUnsafePointer(to: layer_index) { layer_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_index_native), .init(light_mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_occlusion_layer_light_mask_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_occlusion_layer_light_mask(layer_index: Int64) -> Int64 {
        withUnsafePointer(to: layer_index) { layer_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_occlusion_layer_light_mask_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func set_occlusion_layer_sdf_collision(layer_index: Int64, sdf_collision: UInt8)  {
        withUnsafePointer(to: sdf_collision) { sdf_collision_native in
        withUnsafePointer(to: layer_index) { layer_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_index_native), .init(sdf_collision_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_occlusion_layer_sdf_collision_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_occlusion_layer_sdf_collision(layer_index: Int64) -> UInt8 {
        withUnsafePointer(to: layer_index) { layer_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_occlusion_layer_sdf_collision_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func get_physics_layers_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_physics_layers_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func add_physics_layer(to_position: Int64)  {
        withUnsafePointer(to: to_position) { to_position_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(to_position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_physics_layer_1025054187,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func move_physics_layer(layer_index: Int64, to_position: Int64)  {
        withUnsafePointer(to: to_position) { to_position_native in
        withUnsafePointer(to: layer_index) { layer_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_index_native), .init(to_position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_move_physics_layer_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func remove_physics_layer(layer_index: Int64)  {
        withUnsafePointer(to: layer_index) { layer_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_physics_layer_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_physics_layer_collision_layer(layer_index: Int64, layer: Int64)  {
        withUnsafePointer(to: layer) { layer_native in
        withUnsafePointer(to: layer_index) { layer_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_index_native), .init(layer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_physics_layer_collision_layer_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_physics_layer_collision_layer(layer_index: Int64) -> Int64 {
        withUnsafePointer(to: layer_index) { layer_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_physics_layer_collision_layer_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func set_physics_layer_collision_mask(layer_index: Int64, mask: Int64)  {
        withUnsafePointer(to: mask) { mask_native in
        withUnsafePointer(to: layer_index) { layer_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_index_native), .init(mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_physics_layer_collision_mask_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_physics_layer_collision_mask(layer_index: Int64) -> Int64 {
        withUnsafePointer(to: layer_index) { layer_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_physics_layer_collision_mask_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func set_physics_layer_physics_material(layer_index: Int64, physics_material: PhysicsMaterial)  {
        withUnsafePointer(to: layer_index) { layer_index_native in
        let physics_material_native = physics_material._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_index_native), .init(physics_material_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_physics_layer_physics_material_1018687357,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_physics_layer_physics_material(layer_index: Int64) -> PhysicsMaterial {
        withUnsafePointer(to: layer_index) { layer_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_physics_layer_physics_material_788318639,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PhysicsMaterial(godot: __resPtr.pointee)
        }
    }
    public func get_terrain_sets_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_terrain_sets_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func add_terrain_set(to_position: Int64)  {
        withUnsafePointer(to: to_position) { to_position_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(to_position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_terrain_set_1025054187,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func move_terrain_set(terrain_set: Int64, to_position: Int64)  {
        withUnsafePointer(to: to_position) { to_position_native in
        withUnsafePointer(to: terrain_set) { terrain_set_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(terrain_set_native), .init(to_position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_move_terrain_set_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func remove_terrain_set(terrain_set: Int64)  {
        withUnsafePointer(to: terrain_set) { terrain_set_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(terrain_set_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_terrain_set_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_terrain_set_mode(terrain_set: Int64, mode: TileSet.TerrainMode)  {
        withUnsafePointer(to: terrain_set) { terrain_set_native in
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(terrain_set_native), .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_terrain_set_mode_3943003916,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_terrain_set_mode(terrain_set: Int64) -> TileSet.TerrainMode {
        withUnsafePointer(to: terrain_set) { terrain_set_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(terrain_set_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_terrain_set_mode_2084469411,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TileSet.TerrainMode(godot: __resPtr.pointee)
        }
    }
    public func get_terrains_count(terrain_set: Int64) -> Int64 {
        withUnsafePointer(to: terrain_set) { terrain_set_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(terrain_set_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_terrains_count_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func add_terrain(terrain_set: Int64, to_position: Int64)  {
        withUnsafePointer(to: to_position) { to_position_native in
        withUnsafePointer(to: terrain_set) { terrain_set_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(terrain_set_native), .init(to_position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_terrain_3023605688,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func move_terrain(terrain_set: Int64, terrain_index: Int64, to_position: Int64)  {
        withUnsafePointer(to: to_position) { to_position_native in
        withUnsafePointer(to: terrain_index) { terrain_index_native in
        withUnsafePointer(to: terrain_set) { terrain_set_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(terrain_set_native), .init(terrain_index_native), .init(to_position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_move_terrain_1649997291,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func remove_terrain(terrain_set: Int64, terrain_index: Int64)  {
        withUnsafePointer(to: terrain_index) { terrain_index_native in
        withUnsafePointer(to: terrain_set) { terrain_set_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(terrain_set_native), .init(terrain_index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_terrain_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_terrain_name(terrain_set: Int64, terrain_index: Int64, name: godot.String)  {
        withUnsafePointer(to: terrain_index) { terrain_index_native in
        withUnsafePointer(to: terrain_set) { terrain_set_native in
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(terrain_set_native), .init(terrain_index_native), .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_terrain_name_2285447957,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_terrain_name(terrain_set: Int64, terrain_index: Int64) -> godot.String {
        withUnsafePointer(to: terrain_index) { terrain_index_native in
        withUnsafePointer(to: terrain_set) { terrain_set_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(terrain_set_native), .init(terrain_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_terrain_name_1391810591,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
        }
    }
    public func set_terrain_color(terrain_set: Int64, terrain_index: Int64, color: Color)  {
        withUnsafePointer(to: terrain_index) { terrain_index_native in
        withUnsafePointer(to: terrain_set) { terrain_set_native in
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(terrain_set_native), .init(terrain_index_native), .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_terrain_color_3733378741,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_terrain_color(terrain_set: Int64, terrain_index: Int64) -> Color {
        withUnsafePointer(to: terrain_index) { terrain_index_native in
        withUnsafePointer(to: terrain_set) { terrain_set_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(terrain_set_native), .init(terrain_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_terrain_color_2165839948,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
        }
        }
    }
    public func get_navigation_layers_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_navigation_layers_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func add_navigation_layer(to_position: Int64)  {
        withUnsafePointer(to: to_position) { to_position_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(to_position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_navigation_layer_1025054187,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func move_navigation_layer(layer_index: Int64, to_position: Int64)  {
        withUnsafePointer(to: to_position) { to_position_native in
        withUnsafePointer(to: layer_index) { layer_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_index_native), .init(to_position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_move_navigation_layer_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func remove_navigation_layer(layer_index: Int64)  {
        withUnsafePointer(to: layer_index) { layer_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_navigation_layer_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_navigation_layer_layers(layer_index: Int64, layers: Int64)  {
        withUnsafePointer(to: layers) { layers_native in
        withUnsafePointer(to: layer_index) { layer_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_index_native), .init(layers_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_navigation_layer_layers_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_navigation_layer_layers(layer_index: Int64) -> Int64 {
        withUnsafePointer(to: layer_index) { layer_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_navigation_layer_layers_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func set_navigation_layer_layer_value(layer_index: Int64, layer_number: Int64, value: UInt8)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: layer_number) { layer_number_native in
        withUnsafePointer(to: layer_index) { layer_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_index_native), .init(layer_number_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_navigation_layer_layer_value_1383440665,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func get_navigation_layer_layer_value(layer_index: Int64, layer_number: Int64) -> UInt8 {
        withUnsafePointer(to: layer_number) { layer_number_native in
        withUnsafePointer(to: layer_index) { layer_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_index_native), .init(layer_number_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_navigation_layer_layer_value_2522259332,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
        }
    }
    public func get_custom_data_layers_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_custom_data_layers_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func add_custom_data_layer(to_position: Int64)  {
        withUnsafePointer(to: to_position) { to_position_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(to_position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_custom_data_layer_1025054187,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func move_custom_data_layer(layer_index: Int64, to_position: Int64)  {
        withUnsafePointer(to: to_position) { to_position_native in
        withUnsafePointer(to: layer_index) { layer_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_index_native), .init(to_position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_move_custom_data_layer_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func remove_custom_data_layer(layer_index: Int64)  {
        withUnsafePointer(to: layer_index) { layer_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_custom_data_layer_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_custom_data_layer_by_name(layer_name: godot.String) -> Int64 {
        let layer_name_native = layer_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_custom_data_layer_by_name_1321353865,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_custom_data_layer_name(layer_index: Int64, layer_name: godot.String)  {
        withUnsafePointer(to: layer_index) { layer_index_native in
        let layer_name_native = layer_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_index_native), .init(layer_name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_custom_data_layer_name_501894301,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_custom_data_layer_name(layer_index: Int64) -> godot.String {
        withUnsafePointer(to: layer_index) { layer_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_custom_data_layer_name_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func set_custom_data_layer_type(layer_index: Int64, layer_type: Variant.`Typ`)  {
        withUnsafePointer(to: layer_index) { layer_index_native in
        withUnsafePointer(to: layer_type.rawValue) { layer_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_index_native), .init(layer_type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_custom_data_layer_type_3492912874,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_custom_data_layer_type(layer_index: Int64) -> Variant.`Typ` {
        withUnsafePointer(to: layer_index) { layer_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_custom_data_layer_type_2990820875,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant.`Typ`(godot: __resPtr.pointee)
        }
    }
    public func set_source_level_tile_proxy(source_from: Int64, source_to: Int64)  {
        withUnsafePointer(to: source_to) { source_to_native in
        withUnsafePointer(to: source_from) { source_from_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(source_from_native), .init(source_to_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_source_level_tile_proxy_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_source_level_tile_proxy(source_from: Int64) -> Int64 {
        withUnsafePointer(to: source_from) { source_from_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(source_from_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_source_level_tile_proxy_3744713108,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func has_source_level_tile_proxy(source_from: Int64) -> UInt8 {
        withUnsafePointer(to: source_from) { source_from_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(source_from_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_source_level_tile_proxy_3067735520,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func remove_source_level_tile_proxy(source_from: Int64)  {
        withUnsafePointer(to: source_from) { source_from_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(source_from_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_source_level_tile_proxy_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_coords_level_tile_proxy(p_source_from: Int64, coords_from: Vector2i, source_to: Int64, coords_to: Vector2i)  {
        withUnsafePointer(to: source_to) { source_to_native in
        withUnsafePointer(to: p_source_from) { p_source_from_native in
        let coords_to_native = coords_to._native_ptr()
        let coords_from_native = coords_from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_source_from_native), .init(coords_from_native), .init(source_to_native), .init(coords_to_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_coords_level_tile_proxy_1769939278,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_coords_level_tile_proxy(source_from: Int64, coords_from: Vector2i) -> Array {
        withUnsafePointer(to: source_from) { source_from_native in
        let coords_from_native = coords_from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(source_from_native), .init(coords_from_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_coords_level_tile_proxy_2856536371,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(godot: __resPtr.pointee)
        }
    }
    public func has_coords_level_tile_proxy(source_from: Int64, coords_from: Vector2i) -> UInt8 {
        withUnsafePointer(to: source_from) { source_from_native in
        let coords_from_native = coords_from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(source_from_native), .init(coords_from_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_coords_level_tile_proxy_3957903770,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func remove_coords_level_tile_proxy(source_from: Int64, coords_from: Vector2i)  {
        withUnsafePointer(to: source_from) { source_from_native in
        let coords_from_native = coords_from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(source_from_native), .init(coords_from_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_coords_level_tile_proxy_2311374912,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_alternative_level_tile_proxy(source_from: Int64, coords_from: Vector2i, alternative_from: Int64, source_to: Int64, coords_to: Vector2i, alternative_to: Int64)  {
        withUnsafePointer(to: alternative_to) { alternative_to_native in
        withUnsafePointer(to: source_to) { source_to_native in
        withUnsafePointer(to: alternative_from) { alternative_from_native in
        withUnsafePointer(to: source_from) { source_from_native in
        let coords_to_native = coords_to._native_ptr()
        let coords_from_native = coords_from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(source_from_native), .init(coords_from_native), .init(alternative_from_native), .init(source_to_native), .init(coords_to_native), .init(alternative_to_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_alternative_level_tile_proxy_3862385460,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
        }
    }
    public func get_alternative_level_tile_proxy(source_from: Int64, coords_from: Vector2i, alternative_from: Int64) -> Array {
        withUnsafePointer(to: alternative_from) { alternative_from_native in
        withUnsafePointer(to: source_from) { source_from_native in
        let coords_from_native = coords_from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(source_from_native), .init(coords_from_native), .init(alternative_from_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_alternative_level_tile_proxy_2303761075,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(godot: __resPtr.pointee)
        }
        }
    }
    public func has_alternative_level_tile_proxy(source_from: Int64, coords_from: Vector2i, alternative_from: Int64) -> UInt8 {
        withUnsafePointer(to: alternative_from) { alternative_from_native in
        withUnsafePointer(to: source_from) { source_from_native in
        let coords_from_native = coords_from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(source_from_native), .init(coords_from_native), .init(alternative_from_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_alternative_level_tile_proxy_180086755,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
        }
    }
    public func remove_alternative_level_tile_proxy(source_from: Int64, coords_from: Vector2i, alternative_from: Int64)  {
        withUnsafePointer(to: alternative_from) { alternative_from_native in
        withUnsafePointer(to: source_from) { source_from_native in
        let coords_from_native = coords_from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(source_from_native), .init(coords_from_native), .init(alternative_from_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_alternative_level_tile_proxy_2328951467,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func map_tile_proxy(source_from: Int64, coords_from: Vector2i, alternative_from: Int64) -> Array {
        withUnsafePointer(to: alternative_from) { alternative_from_native in
        withUnsafePointer(to: source_from) { source_from_native in
        let coords_from_native = coords_from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(source_from_native), .init(coords_from_native), .init(alternative_from_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_map_tile_proxy_4267935328,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(godot: __resPtr.pointee)
        }
        }
    }
    public func cleanup_invalid_tile_proxies()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_cleanup_invalid_tile_proxies_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func clear_tile_proxies()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_tile_proxies_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_pattern(pattern: TileMapPattern, index: Int64) -> Int64 {
        withUnsafePointer(to: index) { index_native in
        let pattern_native = pattern._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pattern_native), .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_pattern_3009264082,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func get_pattern(index: Int64) -> TileMapPattern {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_pattern_4207737510,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TileMapPattern(godot: __resPtr.pointee)
        }
    }
    public func remove_pattern(index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_pattern_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_patterns_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_patterns_count_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
}