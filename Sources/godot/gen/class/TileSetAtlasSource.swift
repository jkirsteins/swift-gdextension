import godot_native

fileprivate var __godot_name_TileSetAtlasSource: StringName! = nil

/// Exposes a 2D atlas texture as a set of tiles for a [TileSet] resource.
/// 
/// An atlas is a grid of tiles laid out on a texture. Each tile in the grid must be exposed using [method create_tile]. Those tiles are then indexed using their coordinates in the grid.
///  
/// Each tile can also have a size in the grid coordinates, making it more or less cells in the atlas.
///  
/// Alternatives version of a tile can be created using [method create_alternative_tile], which are then indexed using an alternative ID. The main tile (the one in the grid), is accessed with an alternative ID equal to 0.
///  
/// Each tile alternate has a set of properties that is defined by the source's [TileSet] layers. Those properties are stored in a TileData object that can be accessed and modified using [method get_tile_data].
///  
/// As TileData properties are stored directly in the TileSetAtlasSource resource, their properties might also be set using [code]TileSetAtlasSource.set("<coords_x>:<coords_y>/<alternative_id>/<tile_data_property>")[/code].
open class TileSetAtlasSource : TileSetSource {

    

    public override class var __godot_name: StringName { __godot_name_TileSetAtlasSource }

    static var _method_set_texture_4051416890: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_3635182373: GDExtensionMethodBindPtr! = nil
    static var _method_set_margins_1130785943: GDExtensionMethodBindPtr! = nil
    static var _method_get_margins_3690982128: GDExtensionMethodBindPtr! = nil
    static var _method_set_separation_1130785943: GDExtensionMethodBindPtr! = nil
    static var _method_get_separation_3690982128: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_region_size_1130785943: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_region_size_3690982128: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_texture_padding_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_use_texture_padding_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_create_tile_1583819816: GDExtensionMethodBindPtr! = nil
    static var _method_remove_tile_1130785943: GDExtensionMethodBindPtr! = nil
    static var _method_move_tile_in_atlas_1375626516: GDExtensionMethodBindPtr! = nil
    static var _method_get_tile_size_in_atlas_3050897911: GDExtensionMethodBindPtr! = nil
    static var _method_has_room_for_tile_4182444377: GDExtensionMethodBindPtr! = nil
    static var _method_get_tiles_to_be_removed_on_change_1240378054: GDExtensionMethodBindPtr! = nil
    static var _method_get_tile_at_coords_3050897911: GDExtensionMethodBindPtr! = nil
    static var _method_set_tile_animation_columns_3200960707: GDExtensionMethodBindPtr! = nil
    static var _method_get_tile_animation_columns_2485466453: GDExtensionMethodBindPtr! = nil
    static var _method_set_tile_animation_separation_1941061099: GDExtensionMethodBindPtr! = nil
    static var _method_get_tile_animation_separation_3050897911: GDExtensionMethodBindPtr! = nil
    static var _method_set_tile_animation_speed_2262553149: GDExtensionMethodBindPtr! = nil
    static var _method_get_tile_animation_speed_719993801: GDExtensionMethodBindPtr! = nil
    static var _method_set_tile_animation_frames_count_3200960707: GDExtensionMethodBindPtr! = nil
    static var _method_get_tile_animation_frames_count_2485466453: GDExtensionMethodBindPtr! = nil
    static var _method_set_tile_animation_frame_duration_2843487787: GDExtensionMethodBindPtr! = nil
    static var _method_get_tile_animation_frame_duration_1802448425: GDExtensionMethodBindPtr! = nil
    static var _method_get_tile_animation_total_duration_719993801: GDExtensionMethodBindPtr! = nil
    static var _method_create_alternative_tile_3531100812: GDExtensionMethodBindPtr! = nil
    static var _method_remove_alternative_tile_3200960707: GDExtensionMethodBindPtr! = nil
    static var _method_set_alternative_tile_id_1499785778: GDExtensionMethodBindPtr! = nil
    static var _method_get_next_alternative_tile_id_2485466453: GDExtensionMethodBindPtr! = nil
    static var _method_get_tile_data_3534028207: GDExtensionMethodBindPtr! = nil
    static var _method_get_atlas_grid_size_3690982128: GDExtensionMethodBindPtr! = nil
    static var _method_get_tile_texture_region_1321423751: GDExtensionMethodBindPtr! = nil
    static var _method_get_runtime_texture_3635182373: GDExtensionMethodBindPtr! = nil
    static var _method_get_runtime_tile_texture_region_104874263: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_TileSetAtlasSource = StringName(from: "TileSetAtlasSource")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_texture_4051416890_name = StringName(from: "set_texture")
        self._method_set_texture_4051416890 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_set_texture_4051416890_name._native_ptr(), 4051416890)
        assert(TileSetAtlasSource._method_set_texture_4051416890 != nil)
        let _method_get_texture_3635182373_name = StringName(from: "get_texture")
        self._method_get_texture_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_get_texture_3635182373_name._native_ptr(), 3635182373)
        assert(TileSetAtlasSource._method_get_texture_3635182373 != nil)
        let _method_set_margins_1130785943_name = StringName(from: "set_margins")
        self._method_set_margins_1130785943 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_set_margins_1130785943_name._native_ptr(), 1130785943)
        assert(TileSetAtlasSource._method_set_margins_1130785943 != nil)
        let _method_get_margins_3690982128_name = StringName(from: "get_margins")
        self._method_get_margins_3690982128 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_get_margins_3690982128_name._native_ptr(), 3690982128)
        assert(TileSetAtlasSource._method_get_margins_3690982128 != nil)
        let _method_set_separation_1130785943_name = StringName(from: "set_separation")
        self._method_set_separation_1130785943 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_set_separation_1130785943_name._native_ptr(), 1130785943)
        assert(TileSetAtlasSource._method_set_separation_1130785943 != nil)
        let _method_get_separation_3690982128_name = StringName(from: "get_separation")
        self._method_get_separation_3690982128 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_get_separation_3690982128_name._native_ptr(), 3690982128)
        assert(TileSetAtlasSource._method_get_separation_3690982128 != nil)
        let _method_set_texture_region_size_1130785943_name = StringName(from: "set_texture_region_size")
        self._method_set_texture_region_size_1130785943 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_set_texture_region_size_1130785943_name._native_ptr(), 1130785943)
        assert(TileSetAtlasSource._method_set_texture_region_size_1130785943 != nil)
        let _method_get_texture_region_size_3690982128_name = StringName(from: "get_texture_region_size")
        self._method_get_texture_region_size_3690982128 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_get_texture_region_size_3690982128_name._native_ptr(), 3690982128)
        assert(TileSetAtlasSource._method_get_texture_region_size_3690982128 != nil)
        let _method_set_use_texture_padding_2586408642_name = StringName(from: "set_use_texture_padding")
        self._method_set_use_texture_padding_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_set_use_texture_padding_2586408642_name._native_ptr(), 2586408642)
        assert(TileSetAtlasSource._method_set_use_texture_padding_2586408642 != nil)
        let _method_get_use_texture_padding_36873697_name = StringName(from: "get_use_texture_padding")
        self._method_get_use_texture_padding_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_get_use_texture_padding_36873697_name._native_ptr(), 36873697)
        assert(TileSetAtlasSource._method_get_use_texture_padding_36873697 != nil)
        let _method_create_tile_1583819816_name = StringName(from: "create_tile")
        self._method_create_tile_1583819816 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_create_tile_1583819816_name._native_ptr(), 1583819816)
        assert(TileSetAtlasSource._method_create_tile_1583819816 != nil)
        let _method_remove_tile_1130785943_name = StringName(from: "remove_tile")
        self._method_remove_tile_1130785943 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_remove_tile_1130785943_name._native_ptr(), 1130785943)
        assert(TileSetAtlasSource._method_remove_tile_1130785943 != nil)
        let _method_move_tile_in_atlas_1375626516_name = StringName(from: "move_tile_in_atlas")
        self._method_move_tile_in_atlas_1375626516 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_move_tile_in_atlas_1375626516_name._native_ptr(), 1375626516)
        assert(TileSetAtlasSource._method_move_tile_in_atlas_1375626516 != nil)
        let _method_get_tile_size_in_atlas_3050897911_name = StringName(from: "get_tile_size_in_atlas")
        self._method_get_tile_size_in_atlas_3050897911 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_get_tile_size_in_atlas_3050897911_name._native_ptr(), 3050897911)
        assert(TileSetAtlasSource._method_get_tile_size_in_atlas_3050897911 != nil)
        let _method_has_room_for_tile_4182444377_name = StringName(from: "has_room_for_tile")
        self._method_has_room_for_tile_4182444377 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_has_room_for_tile_4182444377_name._native_ptr(), 4182444377)
        assert(TileSetAtlasSource._method_has_room_for_tile_4182444377 != nil)
        let _method_get_tiles_to_be_removed_on_change_1240378054_name = StringName(from: "get_tiles_to_be_removed_on_change")
        self._method_get_tiles_to_be_removed_on_change_1240378054 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_get_tiles_to_be_removed_on_change_1240378054_name._native_ptr(), 1240378054)
        assert(TileSetAtlasSource._method_get_tiles_to_be_removed_on_change_1240378054 != nil)
        let _method_get_tile_at_coords_3050897911_name = StringName(from: "get_tile_at_coords")
        self._method_get_tile_at_coords_3050897911 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_get_tile_at_coords_3050897911_name._native_ptr(), 3050897911)
        assert(TileSetAtlasSource._method_get_tile_at_coords_3050897911 != nil)
        let _method_set_tile_animation_columns_3200960707_name = StringName(from: "set_tile_animation_columns")
        self._method_set_tile_animation_columns_3200960707 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_set_tile_animation_columns_3200960707_name._native_ptr(), 3200960707)
        assert(TileSetAtlasSource._method_set_tile_animation_columns_3200960707 != nil)
        let _method_get_tile_animation_columns_2485466453_name = StringName(from: "get_tile_animation_columns")
        self._method_get_tile_animation_columns_2485466453 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_get_tile_animation_columns_2485466453_name._native_ptr(), 2485466453)
        assert(TileSetAtlasSource._method_get_tile_animation_columns_2485466453 != nil)
        let _method_set_tile_animation_separation_1941061099_name = StringName(from: "set_tile_animation_separation")
        self._method_set_tile_animation_separation_1941061099 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_set_tile_animation_separation_1941061099_name._native_ptr(), 1941061099)
        assert(TileSetAtlasSource._method_set_tile_animation_separation_1941061099 != nil)
        let _method_get_tile_animation_separation_3050897911_name = StringName(from: "get_tile_animation_separation")
        self._method_get_tile_animation_separation_3050897911 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_get_tile_animation_separation_3050897911_name._native_ptr(), 3050897911)
        assert(TileSetAtlasSource._method_get_tile_animation_separation_3050897911 != nil)
        let _method_set_tile_animation_speed_2262553149_name = StringName(from: "set_tile_animation_speed")
        self._method_set_tile_animation_speed_2262553149 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_set_tile_animation_speed_2262553149_name._native_ptr(), 2262553149)
        assert(TileSetAtlasSource._method_set_tile_animation_speed_2262553149 != nil)
        let _method_get_tile_animation_speed_719993801_name = StringName(from: "get_tile_animation_speed")
        self._method_get_tile_animation_speed_719993801 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_get_tile_animation_speed_719993801_name._native_ptr(), 719993801)
        assert(TileSetAtlasSource._method_get_tile_animation_speed_719993801 != nil)
        let _method_set_tile_animation_frames_count_3200960707_name = StringName(from: "set_tile_animation_frames_count")
        self._method_set_tile_animation_frames_count_3200960707 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_set_tile_animation_frames_count_3200960707_name._native_ptr(), 3200960707)
        assert(TileSetAtlasSource._method_set_tile_animation_frames_count_3200960707 != nil)
        let _method_get_tile_animation_frames_count_2485466453_name = StringName(from: "get_tile_animation_frames_count")
        self._method_get_tile_animation_frames_count_2485466453 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_get_tile_animation_frames_count_2485466453_name._native_ptr(), 2485466453)
        assert(TileSetAtlasSource._method_get_tile_animation_frames_count_2485466453 != nil)
        let _method_set_tile_animation_frame_duration_2843487787_name = StringName(from: "set_tile_animation_frame_duration")
        self._method_set_tile_animation_frame_duration_2843487787 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_set_tile_animation_frame_duration_2843487787_name._native_ptr(), 2843487787)
        assert(TileSetAtlasSource._method_set_tile_animation_frame_duration_2843487787 != nil)
        let _method_get_tile_animation_frame_duration_1802448425_name = StringName(from: "get_tile_animation_frame_duration")
        self._method_get_tile_animation_frame_duration_1802448425 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_get_tile_animation_frame_duration_1802448425_name._native_ptr(), 1802448425)
        assert(TileSetAtlasSource._method_get_tile_animation_frame_duration_1802448425 != nil)
        let _method_get_tile_animation_total_duration_719993801_name = StringName(from: "get_tile_animation_total_duration")
        self._method_get_tile_animation_total_duration_719993801 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_get_tile_animation_total_duration_719993801_name._native_ptr(), 719993801)
        assert(TileSetAtlasSource._method_get_tile_animation_total_duration_719993801 != nil)
        let _method_create_alternative_tile_3531100812_name = StringName(from: "create_alternative_tile")
        self._method_create_alternative_tile_3531100812 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_create_alternative_tile_3531100812_name._native_ptr(), 3531100812)
        assert(TileSetAtlasSource._method_create_alternative_tile_3531100812 != nil)
        let _method_remove_alternative_tile_3200960707_name = StringName(from: "remove_alternative_tile")
        self._method_remove_alternative_tile_3200960707 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_remove_alternative_tile_3200960707_name._native_ptr(), 3200960707)
        assert(TileSetAtlasSource._method_remove_alternative_tile_3200960707 != nil)
        let _method_set_alternative_tile_id_1499785778_name = StringName(from: "set_alternative_tile_id")
        self._method_set_alternative_tile_id_1499785778 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_set_alternative_tile_id_1499785778_name._native_ptr(), 1499785778)
        assert(TileSetAtlasSource._method_set_alternative_tile_id_1499785778 != nil)
        let _method_get_next_alternative_tile_id_2485466453_name = StringName(from: "get_next_alternative_tile_id")
        self._method_get_next_alternative_tile_id_2485466453 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_get_next_alternative_tile_id_2485466453_name._native_ptr(), 2485466453)
        assert(TileSetAtlasSource._method_get_next_alternative_tile_id_2485466453 != nil)
        let _method_get_tile_data_3534028207_name = StringName(from: "get_tile_data")
        self._method_get_tile_data_3534028207 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_get_tile_data_3534028207_name._native_ptr(), 3534028207)
        assert(TileSetAtlasSource._method_get_tile_data_3534028207 != nil)
        let _method_get_atlas_grid_size_3690982128_name = StringName(from: "get_atlas_grid_size")
        self._method_get_atlas_grid_size_3690982128 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_get_atlas_grid_size_3690982128_name._native_ptr(), 3690982128)
        assert(TileSetAtlasSource._method_get_atlas_grid_size_3690982128 != nil)
        let _method_get_tile_texture_region_1321423751_name = StringName(from: "get_tile_texture_region")
        self._method_get_tile_texture_region_1321423751 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_get_tile_texture_region_1321423751_name._native_ptr(), 1321423751)
        assert(TileSetAtlasSource._method_get_tile_texture_region_1321423751 != nil)
        let _method_get_runtime_texture_3635182373_name = StringName(from: "get_runtime_texture")
        self._method_get_runtime_texture_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_get_runtime_texture_3635182373_name._native_ptr(), 3635182373)
        assert(TileSetAtlasSource._method_get_runtime_texture_3635182373 != nil)
        let _method_get_runtime_tile_texture_region_104874263_name = StringName(from: "get_runtime_tile_texture_region")
        self._method_get_runtime_tile_texture_region_104874263 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileSetAtlasSource._native_ptr(), _method_get_runtime_tile_texture_region_104874263_name._native_ptr(), 104874263)
        assert(TileSetAtlasSource._method_get_runtime_tile_texture_region_104874263 != nil)
    }

    public func set_texture(texture: Texture2D)  {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_4051416890,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_texture() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_3635182373,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
    }
    public func set_margins(margins: Vector2i)  {
        let margins_native = margins._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(margins_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_margins_1130785943,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_margins() -> Vector2i {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_margins_3690982128,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(godot: __resPtr.pointee)
    }
    public func set_separation(separation: Vector2i)  {
        let separation_native = separation._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(separation_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_separation_1130785943,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_separation() -> Vector2i {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_separation_3690982128,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(godot: __resPtr.pointee)
    }
    public func set_texture_region_size(texture_region_size: Vector2i)  {
        let texture_region_size_native = texture_region_size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_region_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_region_size_1130785943,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_texture_region_size() -> Vector2i {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_region_size_3690982128,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(godot: __resPtr.pointee)
    }
    public func set_use_texture_padding(use_texture_padding: UInt8)  {
        withUnsafePointer(to: use_texture_padding) { use_texture_padding_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(use_texture_padding_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_use_texture_padding_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_use_texture_padding() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_use_texture_padding_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func create_tile(atlas_coords: Vector2i, size: Vector2i)  {
        let size_native = size._native_ptr()
        let atlas_coords_native = atlas_coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(atlas_coords_native), .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_tile_1583819816,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_tile(atlas_coords: Vector2i)  {
        let atlas_coords_native = atlas_coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(atlas_coords_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_tile_1130785943,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func move_tile_in_atlas(atlas_coords: Vector2i, new_atlas_coords: Vector2i, new_size: Vector2i)  {
        let new_size_native = new_size._native_ptr()
        let new_atlas_coords_native = new_atlas_coords._native_ptr()
        let atlas_coords_native = atlas_coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(atlas_coords_native), .init(new_atlas_coords_native), .init(new_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_move_tile_in_atlas_1375626516,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_tile_size_in_atlas(atlas_coords: Vector2i) -> Vector2i {
        let atlas_coords_native = atlas_coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(atlas_coords_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tile_size_in_atlas_3050897911,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(godot: __resPtr.pointee)
    }
    public func has_room_for_tile(atlas_coords: Vector2i, size: Vector2i, animation_columns: Int64, animation_separation: Vector2i, frames_count: Int64, ignored_tile: Vector2i) -> UInt8 {
        withUnsafePointer(to: frames_count) { frames_count_native in
        withUnsafePointer(to: animation_columns) { animation_columns_native in
        let ignored_tile_native = ignored_tile._native_ptr()
        let animation_separation_native = animation_separation._native_ptr()
        let size_native = size._native_ptr()
        let atlas_coords_native = atlas_coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(atlas_coords_native), .init(size_native), .init(animation_columns_native), .init(animation_separation_native), .init(frames_count_native), .init(ignored_tile_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_room_for_tile_4182444377,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
        }
    }
    public func get_tiles_to_be_removed_on_change(texture: Texture2D, margins: Vector2i, separation: Vector2i, texture_region_size: Vector2i) -> PackedVector2Array {
        let texture_region_size_native = texture_region_size._native_ptr()
        let separation_native = separation._native_ptr()
        let margins_native = margins._native_ptr()
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native), .init(margins_native), .init(separation_native), .init(texture_region_size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tiles_to_be_removed_on_change_1240378054,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(godot: __resPtr.pointee)
    }
    public func get_tile_at_coords(atlas_coords: Vector2i) -> Vector2i {
        let atlas_coords_native = atlas_coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(atlas_coords_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tile_at_coords_3050897911,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(godot: __resPtr.pointee)
    }
    public func set_tile_animation_columns(atlas_coords: Vector2i, frame_columns: Int64)  {
        withUnsafePointer(to: frame_columns) { frame_columns_native in
        let atlas_coords_native = atlas_coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(atlas_coords_native), .init(frame_columns_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tile_animation_columns_3200960707,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_tile_animation_columns(atlas_coords: Vector2i) -> Int64 {
        let atlas_coords_native = atlas_coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(atlas_coords_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tile_animation_columns_2485466453,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_tile_animation_separation(atlas_coords: Vector2i, separation: Vector2i)  {
        let separation_native = separation._native_ptr()
        let atlas_coords_native = atlas_coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(atlas_coords_native), .init(separation_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tile_animation_separation_1941061099,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_tile_animation_separation(atlas_coords: Vector2i) -> Vector2i {
        let atlas_coords_native = atlas_coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(atlas_coords_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tile_animation_separation_3050897911,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(godot: __resPtr.pointee)
    }
    public func set_tile_animation_speed(atlas_coords: Vector2i, speed: Float64)  {
        withUnsafePointer(to: speed) { speed_native in
        let atlas_coords_native = atlas_coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(atlas_coords_native), .init(speed_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tile_animation_speed_2262553149,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_tile_animation_speed(atlas_coords: Vector2i) -> Float64 {
        let atlas_coords_native = atlas_coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(atlas_coords_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tile_animation_speed_719993801,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_tile_animation_frames_count(atlas_coords: Vector2i, frames_count: Int64)  {
        withUnsafePointer(to: frames_count) { frames_count_native in
        let atlas_coords_native = atlas_coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(atlas_coords_native), .init(frames_count_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tile_animation_frames_count_3200960707,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_tile_animation_frames_count(atlas_coords: Vector2i) -> Int64 {
        let atlas_coords_native = atlas_coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(atlas_coords_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tile_animation_frames_count_2485466453,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_tile_animation_frame_duration(atlas_coords: Vector2i, frame_index: Int64, duration: Float64)  {
        withUnsafePointer(to: duration) { duration_native in
        withUnsafePointer(to: frame_index) { frame_index_native in
        let atlas_coords_native = atlas_coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(atlas_coords_native), .init(frame_index_native), .init(duration_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tile_animation_frame_duration_2843487787,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_tile_animation_frame_duration(atlas_coords: Vector2i, frame_index: Int64) -> Float64 {
        withUnsafePointer(to: frame_index) { frame_index_native in
        let atlas_coords_native = atlas_coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(atlas_coords_native), .init(frame_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tile_animation_frame_duration_1802448425,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func get_tile_animation_total_duration(atlas_coords: Vector2i) -> Float64 {
        let atlas_coords_native = atlas_coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(atlas_coords_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tile_animation_total_duration_719993801,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func create_alternative_tile(atlas_coords: Vector2i, alternative_id_override: Int64) -> Int64 {
        withUnsafePointer(to: alternative_id_override) { alternative_id_override_native in
        let atlas_coords_native = atlas_coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(atlas_coords_native), .init(alternative_id_override_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_alternative_tile_3531100812,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func remove_alternative_tile(atlas_coords: Vector2i, alternative_tile: Int64)  {
        withUnsafePointer(to: alternative_tile) { alternative_tile_native in
        let atlas_coords_native = atlas_coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(atlas_coords_native), .init(alternative_tile_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_alternative_tile_3200960707,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_alternative_tile_id(atlas_coords: Vector2i, alternative_tile: Int64, new_id: Int64)  {
        withUnsafePointer(to: new_id) { new_id_native in
        withUnsafePointer(to: alternative_tile) { alternative_tile_native in
        let atlas_coords_native = atlas_coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(atlas_coords_native), .init(alternative_tile_native), .init(new_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_alternative_tile_id_1499785778,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_next_alternative_tile_id(atlas_coords: Vector2i) -> Int64 {
        let atlas_coords_native = atlas_coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(atlas_coords_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_next_alternative_tile_id_2485466453,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_tile_data(atlas_coords: Vector2i, alternative_tile: Int64) -> TileData {
        withUnsafePointer(to: alternative_tile) { alternative_tile_native in
        let atlas_coords_native = atlas_coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(atlas_coords_native), .init(alternative_tile_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tile_data_3534028207,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TileData(godot: __resPtr.pointee)
        }
    }
    public func get_atlas_grid_size() -> Vector2i {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_atlas_grid_size_3690982128,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(godot: __resPtr.pointee)
    }
    public func get_tile_texture_region(atlas_coords: Vector2i, frame: Int64) -> Rect2i {
        withUnsafePointer(to: frame) { frame_native in
        let atlas_coords_native = atlas_coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(atlas_coords_native), .init(frame_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tile_texture_region_1321423751,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2i(godot: __resPtr.pointee)
        }
    }
    public func get_runtime_texture() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_runtime_texture_3635182373,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
    }
    public func get_runtime_tile_texture_region(atlas_coords: Vector2i, frame: Int64) -> Rect2i {
        withUnsafePointer(to: frame) { frame_native in
        let atlas_coords_native = atlas_coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(atlas_coords_native), .init(frame_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_runtime_tile_texture_region_104874263,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2i(godot: __resPtr.pointee)
        }
    }
}