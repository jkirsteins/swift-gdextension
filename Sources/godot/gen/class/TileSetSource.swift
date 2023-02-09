import godot_native

fileprivate var __godot_name_TileSetSource: StringName! = nil

/// Exposes a set of tiles for a [TileSet] resource.
/// 
/// Exposes a set of tiles for a [TileSet] resource.
///  
/// Tiles in a source are indexed with two IDs, coordinates ID (of type Vector2i) and an alternative ID (of type int), named according to their use in the [TileSetAtlasSource] class.
///  
/// Depending on the TileSet source type, those IDs might have restrictions on their values, this is why the base [TileSetSource] class only exposes getters for them.
///  
/// You can iterate over all tiles exposed by a TileSetSource by first iterating over coordinates IDs using [method get_tiles_count] and [method get_tile_id], then over alternative IDs using [method get_alternative_tiles_count] and [method get_alternative_tile_id].
open class TileSetSource : Resource {

    

    public override class var __godot_name: StringName { __godot_name_TileSetSource }

    static var _method_get_tiles_count_3905245786: StringName! = nil
    static var _method_get_tile_id_880721226: StringName! = nil
    static var _method_has_tile_3900751641: StringName! = nil
    static var _method_get_alternative_tiles_count_2485466453: StringName! = nil
    static var _method_get_alternative_tile_id_89881719: StringName! = nil
    static var _method_has_alternative_tile_1073731340: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_TileSetSource == nil)
        __godot_name_TileSetSource = StringName(from: "TileSetSource")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_tiles_count_3905245786 = StringName(from: "get_tiles_count")
        assert(self._method_get_tiles_count_3905245786 != nil)
        self._method_get_tile_id_880721226 = StringName(from: "get_tile_id")
        assert(self._method_get_tile_id_880721226 != nil)
        self._method_has_tile_3900751641 = StringName(from: "has_tile")
        assert(self._method_has_tile_3900751641 != nil)
        self._method_get_alternative_tiles_count_2485466453 = StringName(from: "get_alternative_tiles_count")
        assert(self._method_get_alternative_tiles_count_2485466453 != nil)
        self._method_get_alternative_tile_id_89881719 = StringName(from: "get_alternative_tile_id")
        assert(self._method_get_alternative_tile_id_89881719 != nil)
        self._method_has_alternative_tile_1073731340 = StringName(from: "has_alternative_tile")
        assert(self._method_has_alternative_tile_1073731340 != nil)
    }

    public func get_tiles_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tiles_count_3905245786._native_ptr(),
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
    public func get_tile_id(index: Int64) -> Vector2i {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tile_id_880721226._native_ptr(),
                    880721226)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(godot: __resPtr.pointee)
        }
    }
    public func has_tile(atlas_coords: Vector2i) -> UInt8 {
        let atlas_coords_native = atlas_coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(atlas_coords_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_tile_3900751641._native_ptr(),
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
    public func get_alternative_tiles_count(atlas_coords: Vector2i) -> Int64 {
        let atlas_coords_native = atlas_coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(atlas_coords_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_alternative_tiles_count_2485466453._native_ptr(),
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
    public func get_alternative_tile_id(atlas_coords: Vector2i, index: Int64) -> Int64 {
        withUnsafePointer(to: index) { index_native in
        let atlas_coords_native = atlas_coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(atlas_coords_native), .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_alternative_tile_id_89881719._native_ptr(),
                    89881719)
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
    public func has_alternative_tile(atlas_coords: Vector2i, alternative_tile: Int64) -> UInt8 {
        withUnsafePointer(to: alternative_tile) { alternative_tile_native in
        let atlas_coords_native = atlas_coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(atlas_coords_native), .init(alternative_tile_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_alternative_tile_1073731340._native_ptr(),
                    1073731340)
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