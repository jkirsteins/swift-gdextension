import godot_native

fileprivate var __godot_name_TileMapPattern: StringName! = nil

/// Holds a pattern to be copied from or pasted into [TileMap]s.
/// 
/// This resource holds a set of cells to help bulk manipulations of [TileMap].
///  
/// A pattern always start at the [code](0,0)[/code] coordinates and cannot have cells with negative coordinates.
open class TileMapPattern : Resource {

    

    public override class var __godot_name: StringName { __godot_name_TileMapPattern }

    static var _method_set_cell_634000503: GDExtensionMethodBindPtr! = nil
    static var _method_has_cell_3900751641: GDExtensionMethodBindPtr! = nil
    static var _method_remove_cell_4153096796: GDExtensionMethodBindPtr! = nil
    static var _method_get_cell_source_id_2485466453: GDExtensionMethodBindPtr! = nil
    static var _method_get_cell_atlas_coords_3050897911: GDExtensionMethodBindPtr! = nil
    static var _method_get_cell_alternative_tile_2485466453: GDExtensionMethodBindPtr! = nil
    static var _method_get_used_cells_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_get_size_3690982128: GDExtensionMethodBindPtr! = nil
    static var _method_set_size_1130785943: GDExtensionMethodBindPtr! = nil
    static var _method_is_empty_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_TileMapPattern = StringName(from: "TileMapPattern")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_cell_634000503_name = StringName(from: "set_cell")
        self._method_set_cell_634000503 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileMapPattern._native_ptr(), _method_set_cell_634000503_name._native_ptr(), 634000503)
        assert(TileMapPattern._method_set_cell_634000503 != nil)
        let _method_has_cell_3900751641_name = StringName(from: "has_cell")
        self._method_has_cell_3900751641 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileMapPattern._native_ptr(), _method_has_cell_3900751641_name._native_ptr(), 3900751641)
        assert(TileMapPattern._method_has_cell_3900751641 != nil)
        let _method_remove_cell_4153096796_name = StringName(from: "remove_cell")
        self._method_remove_cell_4153096796 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileMapPattern._native_ptr(), _method_remove_cell_4153096796_name._native_ptr(), 4153096796)
        assert(TileMapPattern._method_remove_cell_4153096796 != nil)
        let _method_get_cell_source_id_2485466453_name = StringName(from: "get_cell_source_id")
        self._method_get_cell_source_id_2485466453 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileMapPattern._native_ptr(), _method_get_cell_source_id_2485466453_name._native_ptr(), 2485466453)
        assert(TileMapPattern._method_get_cell_source_id_2485466453 != nil)
        let _method_get_cell_atlas_coords_3050897911_name = StringName(from: "get_cell_atlas_coords")
        self._method_get_cell_atlas_coords_3050897911 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileMapPattern._native_ptr(), _method_get_cell_atlas_coords_3050897911_name._native_ptr(), 3050897911)
        assert(TileMapPattern._method_get_cell_atlas_coords_3050897911 != nil)
        let _method_get_cell_alternative_tile_2485466453_name = StringName(from: "get_cell_alternative_tile")
        self._method_get_cell_alternative_tile_2485466453 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileMapPattern._native_ptr(), _method_get_cell_alternative_tile_2485466453_name._native_ptr(), 2485466453)
        assert(TileMapPattern._method_get_cell_alternative_tile_2485466453 != nil)
        let _method_get_used_cells_3995934104_name = StringName(from: "get_used_cells")
        self._method_get_used_cells_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileMapPattern._native_ptr(), _method_get_used_cells_3995934104_name._native_ptr(), 3995934104)
        assert(TileMapPattern._method_get_used_cells_3995934104 != nil)
        let _method_get_size_3690982128_name = StringName(from: "get_size")
        self._method_get_size_3690982128 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileMapPattern._native_ptr(), _method_get_size_3690982128_name._native_ptr(), 3690982128)
        assert(TileMapPattern._method_get_size_3690982128 != nil)
        let _method_set_size_1130785943_name = StringName(from: "set_size")
        self._method_set_size_1130785943 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileMapPattern._native_ptr(), _method_set_size_1130785943_name._native_ptr(), 1130785943)
        assert(TileMapPattern._method_set_size_1130785943 != nil)
        let _method_is_empty_36873697_name = StringName(from: "is_empty")
        self._method_is_empty_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_TileMapPattern._native_ptr(), _method_is_empty_36873697_name._native_ptr(), 36873697)
        assert(TileMapPattern._method_is_empty_36873697 != nil)
    }

    public func set_cell(coords: Vector2i, source_id: Int64, atlas_coords: Vector2i, alternative_tile: Int64)  {
        withUnsafePointer(to: alternative_tile) { alternative_tile_native in
        withUnsafePointer(to: source_id) { source_id_native in
        let atlas_coords_native = atlas_coords._native_ptr()
        let coords_native = coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(coords_native), .init(source_id_native), .init(atlas_coords_native), .init(alternative_tile_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cell_634000503,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func has_cell(coords: Vector2i) -> UInt8 {
        let coords_native = coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(coords_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_cell_3900751641,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func remove_cell(coords: Vector2i, update_size: UInt8)  {
        withUnsafePointer(to: update_size) { update_size_native in
        let coords_native = coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(coords_native), .init(update_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_cell_4153096796,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_cell_source_id(coords: Vector2i) -> Int64 {
        let coords_native = coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(coords_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cell_source_id_2485466453,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_cell_atlas_coords(coords: Vector2i) -> Vector2i {
        let coords_native = coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(coords_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cell_atlas_coords_3050897911,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(godot: __resPtr.pointee)
    }
    public func get_cell_alternative_tile(coords: Vector2i) -> Int64 {
        let coords_native = coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(coords_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cell_alternative_tile_2485466453,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_used_cells() -> [Vector2i] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_used_cells_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Vector2i](godot: __resPtr.pointee)
    }
    public func get_size() -> Vector2i {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_size_3690982128,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(godot: __resPtr.pointee)
    }
    public func set_size(size: Vector2i)  {
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_size_1130785943,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func is_empty() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_empty_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}