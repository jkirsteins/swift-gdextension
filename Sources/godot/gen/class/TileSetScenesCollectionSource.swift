import godot_native

fileprivate var __godot_name_TileSetScenesCollectionSource: StringName! = nil

/// Exposes a set of scenes as tiles for a [TileSet] resource.
/// 
/// When placed on a [TileMap], tiles from [TileSetScenesCollectionSource] will automatically instantiate an associated scene at the cell's position in the TileMap.
///  
/// Scenes are instantiated as children of the [TileMap] when it enters the tree. If you add/remove a scene tile in the [TileMap] that is already inside the tree, the [TileMap] will automatically instantiate/free the scene accordingly.
open class TileSetScenesCollectionSource : TileSetSource {

    

    public override class var __godot_name: StringName { __godot_name_TileSetScenesCollectionSource }

    static var _method_get_scene_tiles_count_2455072627: StringName! = nil
    static var _method_get_scene_tile_id_3744713108: StringName! = nil
    static var _method_has_scene_tile_id_3067735520: StringName! = nil
    static var _method_create_scene_tile_2633389122: StringName! = nil
    static var _method_set_scene_tile_id_3937882851: StringName! = nil
    static var _method_set_scene_tile_scene_3435852839: StringName! = nil
    static var _method_get_scene_tile_scene_511017218: StringName! = nil
    static var _method_set_scene_tile_display_placeholder_300928843: StringName! = nil
    static var _method_get_scene_tile_display_placeholder_1116898809: StringName! = nil
    static var _method_remove_scene_tile_1286410249: StringName! = nil
    static var _method_get_next_scene_tile_id_3905245786: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_TileSetScenesCollectionSource == nil)
        __godot_name_TileSetScenesCollectionSource = StringName(from: "TileSetScenesCollectionSource")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_scene_tiles_count_2455072627 = StringName(from: "get_scene_tiles_count")
        assert(self._method_get_scene_tiles_count_2455072627 != nil)
        self._method_get_scene_tile_id_3744713108 = StringName(from: "get_scene_tile_id")
        assert(self._method_get_scene_tile_id_3744713108 != nil)
        self._method_has_scene_tile_id_3067735520 = StringName(from: "has_scene_tile_id")
        assert(self._method_has_scene_tile_id_3067735520 != nil)
        self._method_create_scene_tile_2633389122 = StringName(from: "create_scene_tile")
        assert(self._method_create_scene_tile_2633389122 != nil)
        self._method_set_scene_tile_id_3937882851 = StringName(from: "set_scene_tile_id")
        assert(self._method_set_scene_tile_id_3937882851 != nil)
        self._method_set_scene_tile_scene_3435852839 = StringName(from: "set_scene_tile_scene")
        assert(self._method_set_scene_tile_scene_3435852839 != nil)
        self._method_get_scene_tile_scene_511017218 = StringName(from: "get_scene_tile_scene")
        assert(self._method_get_scene_tile_scene_511017218 != nil)
        self._method_set_scene_tile_display_placeholder_300928843 = StringName(from: "set_scene_tile_display_placeholder")
        assert(self._method_set_scene_tile_display_placeholder_300928843 != nil)
        self._method_get_scene_tile_display_placeholder_1116898809 = StringName(from: "get_scene_tile_display_placeholder")
        assert(self._method_get_scene_tile_display_placeholder_1116898809 != nil)
        self._method_remove_scene_tile_1286410249 = StringName(from: "remove_scene_tile")
        assert(self._method_remove_scene_tile_1286410249 != nil)
        self._method_get_next_scene_tile_id_3905245786 = StringName(from: "get_next_scene_tile_id")
        assert(self._method_get_next_scene_tile_id_3905245786 != nil)
    }

    public func get_scene_tiles_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_scene_tiles_count_2455072627._native_ptr(),
                    2455072627)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_scene_tile_id(index: Int64) -> Int64 {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_scene_tile_id_3744713108._native_ptr(),
                    3744713108)
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
    public func has_scene_tile_id(id: Int64) -> UInt8 {
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
                    Self._method_has_scene_tile_id_3067735520._native_ptr(),
                    3067735520)
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
    public func create_scene_tile(packed_scene: PackedScene, id_override: Int64) -> Int64 {
        withUnsafePointer(to: id_override) { id_override_native in
        let packed_scene_native = packed_scene._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(packed_scene_native), .init(id_override_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_scene_tile_2633389122._native_ptr(),
                    2633389122)
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
    public func set_scene_tile_id(id: Int64, new_id: Int64)  {
        withUnsafePointer(to: new_id) { new_id_native in
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(new_id_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_scene_tile_id_3937882851._native_ptr(),
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
    public func set_scene_tile_scene(id: Int64, packed_scene: PackedScene)  {
        withUnsafePointer(to: id) { id_native in
        let packed_scene_native = packed_scene._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(packed_scene_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_scene_tile_scene_3435852839._native_ptr(),
                    3435852839)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_scene_tile_scene(id: Int64) -> PackedScene {
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
                    Self._method_get_scene_tile_scene_511017218._native_ptr(),
                    511017218)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedScene(godot: __resPtr.pointee)
        }
    }
    public func set_scene_tile_display_placeholder(id: Int64, display_placeholder: UInt8)  {
        withUnsafePointer(to: display_placeholder) { display_placeholder_native in
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(display_placeholder_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_scene_tile_display_placeholder_300928843._native_ptr(),
                    300928843)
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
    public func get_scene_tile_display_placeholder(id: Int64) -> UInt8 {
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
                    Self._method_get_scene_tile_display_placeholder_1116898809._native_ptr(),
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
    public func remove_scene_tile(id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_scene_tile_1286410249._native_ptr(),
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
    public func get_next_scene_tile_id() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_next_scene_tile_id_3905245786._native_ptr(),
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
}