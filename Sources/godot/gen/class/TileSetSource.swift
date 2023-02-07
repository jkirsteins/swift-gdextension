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
public class TileSetSource : Resource {

    

    public override class var __godot_name: StringName { __godot_name_TileSetSource }

    static var _method_get_tiles_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_tile_id_880721226: GDExtensionMethodBindPtr! = nil
    static var _method_has_tile_3900751641: GDExtensionMethodBindPtr! = nil
    static var _method_get_alternative_tiles_count_2485466453: GDExtensionMethodBindPtr! = nil
    static var _method_get_alternative_tile_id_89881719: GDExtensionMethodBindPtr! = nil
    static var _method_has_alternative_tile_1073731340: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_TileSetSource = StringName(from: "TileSetSource")

        let _method_get_tiles_count_3905245786_name = StringName(from: "get_tiles_count")
        self._method_get_tiles_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tiles_count_3905245786_name._native_ptr(), 3905245786)
        assert(TileSetSource._method_get_tiles_count_3905245786 != nil)
        let _method_get_tile_id_880721226_name = StringName(from: "get_tile_id")
        self._method_get_tile_id_880721226 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tile_id_880721226_name._native_ptr(), 880721226)
        assert(TileSetSource._method_get_tile_id_880721226 != nil)
        let _method_has_tile_3900751641_name = StringName(from: "has_tile")
        self._method_has_tile_3900751641 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_tile_3900751641_name._native_ptr(), 3900751641)
        assert(TileSetSource._method_has_tile_3900751641 != nil)
        let _method_get_alternative_tiles_count_2485466453_name = StringName(from: "get_alternative_tiles_count")
        self._method_get_alternative_tiles_count_2485466453 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_alternative_tiles_count_2485466453_name._native_ptr(), 2485466453)
        assert(TileSetSource._method_get_alternative_tiles_count_2485466453 != nil)
        let _method_get_alternative_tile_id_89881719_name = StringName(from: "get_alternative_tile_id")
        self._method_get_alternative_tile_id_89881719 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_alternative_tile_id_89881719_name._native_ptr(), 89881719)
        assert(TileSetSource._method_get_alternative_tile_id_89881719 != nil)
        let _method_has_alternative_tile_1073731340_name = StringName(from: "has_alternative_tile")
        self._method_has_alternative_tile_1073731340 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_alternative_tile_1073731340_name._native_ptr(), 1073731340)
        assert(TileSetSource._method_has_alternative_tile_1073731340 != nil)
    }

    public func get_tiles_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tiles_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tile_id_880721226,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_tile_3900751641,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_alternative_tiles_count_2485466453,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_alternative_tile_id_89881719,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_alternative_tile_1073731340,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
}