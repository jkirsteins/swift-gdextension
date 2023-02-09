import godot_native

fileprivate var __godot_name_TileMapPattern: StringName! = nil

/// Holds a pattern to be copied from or pasted into [TileMap]s.
/// 
/// This resource holds a set of cells to help bulk manipulations of [TileMap].
///  
/// A pattern always start at the [code](0,0)[/code] coordinates and cannot have cells with negative coordinates.
open class TileMapPattern : Resource {

    

    public override class var __godot_name: StringName { __godot_name_TileMapPattern }

    static var _method_set_cell_634000503: StringName! = nil
    static var _method_has_cell_3900751641: StringName! = nil
    static var _method_remove_cell_4153096796: StringName! = nil
    static var _method_get_cell_source_id_2485466453: StringName! = nil
    static var _method_get_cell_atlas_coords_3050897911: StringName! = nil
    static var _method_get_cell_alternative_tile_2485466453: StringName! = nil
    static var _method_get_used_cells_3995934104: StringName! = nil
    static var _method_get_size_3690982128: StringName! = nil
    static var _method_set_size_1130785943: StringName! = nil
    static var _method_is_empty_36873697: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_TileMapPattern == nil)
        __godot_name_TileMapPattern = StringName(from: "TileMapPattern")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_cell_634000503 = StringName(from: "set_cell")
        assert(self._method_set_cell_634000503 != nil)
        self._method_has_cell_3900751641 = StringName(from: "has_cell")
        assert(self._method_has_cell_3900751641 != nil)
        self._method_remove_cell_4153096796 = StringName(from: "remove_cell")
        assert(self._method_remove_cell_4153096796 != nil)
        self._method_get_cell_source_id_2485466453 = StringName(from: "get_cell_source_id")
        assert(self._method_get_cell_source_id_2485466453 != nil)
        self._method_get_cell_atlas_coords_3050897911 = StringName(from: "get_cell_atlas_coords")
        assert(self._method_get_cell_atlas_coords_3050897911 != nil)
        self._method_get_cell_alternative_tile_2485466453 = StringName(from: "get_cell_alternative_tile")
        assert(self._method_get_cell_alternative_tile_2485466453 != nil)
        self._method_get_used_cells_3995934104 = StringName(from: "get_used_cells")
        assert(self._method_get_used_cells_3995934104 != nil)
        self._method_get_size_3690982128 = StringName(from: "get_size")
        assert(self._method_get_size_3690982128 != nil)
        self._method_set_size_1130785943 = StringName(from: "set_size")
        assert(self._method_set_size_1130785943 != nil)
        self._method_is_empty_36873697 = StringName(from: "is_empty")
        assert(self._method_is_empty_36873697 != nil)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_cell_634000503._native_ptr(),
                    634000503)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_cell_3900751641._native_ptr(),
                    3900751641)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_cell_4153096796._native_ptr(),
                    4153096796)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_cell_source_id_2485466453._native_ptr(),
                    2485466453)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_cell_atlas_coords_3050897911._native_ptr(),
                    3050897911)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_cell_alternative_tile_2485466453._native_ptr(),
                    2485466453)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_used_cells_3995934104._native_ptr(),
                    3995934104)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_size_3690982128._native_ptr(),
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
    public func set_size(size: Vector2i)  {
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_size_1130785943._native_ptr(),
                    1130785943)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_empty_36873697._native_ptr(),
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
}