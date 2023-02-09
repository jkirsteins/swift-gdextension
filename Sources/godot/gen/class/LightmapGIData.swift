import godot_native

fileprivate var __godot_name_LightmapGIData: StringName! = nil

/// Contains baked lightmap and dynamic object probe data for [LightmapGI].
/// 
/// [LightmapGIData] contains baked lightmap and dynamic object probe data for [LightmapGI]. It is replaced every time lightmaps are baked in [LightmapGI].
open class LightmapGIData : Resource {

    

    public override class var __godot_name: StringName { __godot_name_LightmapGIData }

    static var _method_set_light_texture_1278366092: StringName! = nil
    static var _method_get_light_texture_3984243839: StringName! = nil
    static var _method_set_uses_spherical_harmonics_2586408642: StringName! = nil
    static var _method_is_using_spherical_harmonics_36873697: StringName! = nil
    static var _method_add_user_4272570515: StringName! = nil
    static var _method_get_user_count_3905245786: StringName! = nil
    static var _method_get_user_path_408788394: StringName! = nil
    static var _method_clear_users_3218959716: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_LightmapGIData == nil)
        __godot_name_LightmapGIData = StringName(from: "LightmapGIData")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_light_texture_1278366092 = StringName(from: "set_light_texture")
        assert(self._method_set_light_texture_1278366092 != nil)
        self._method_get_light_texture_3984243839 = StringName(from: "get_light_texture")
        assert(self._method_get_light_texture_3984243839 != nil)
        self._method_set_uses_spherical_harmonics_2586408642 = StringName(from: "set_uses_spherical_harmonics")
        assert(self._method_set_uses_spherical_harmonics_2586408642 != nil)
        self._method_is_using_spherical_harmonics_36873697 = StringName(from: "is_using_spherical_harmonics")
        assert(self._method_is_using_spherical_harmonics_36873697 != nil)
        self._method_add_user_4272570515 = StringName(from: "add_user")
        assert(self._method_add_user_4272570515 != nil)
        self._method_get_user_count_3905245786 = StringName(from: "get_user_count")
        assert(self._method_get_user_count_3905245786 != nil)
        self._method_get_user_path_408788394 = StringName(from: "get_user_path")
        assert(self._method_get_user_path_408788394 != nil)
        self._method_clear_users_3218959716 = StringName(from: "clear_users")
        assert(self._method_clear_users_3218959716 != nil)
    }

    public func set_light_texture(light_texture: TextureLayered)  {
        let light_texture_native = light_texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_texture_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_light_texture_1278366092._native_ptr(),
                    1278366092)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_light_texture() -> TextureLayered {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_light_texture_3984243839._native_ptr(),
                    3984243839)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextureLayered(godot: __resPtr.pointee)
    }
    public func set_uses_spherical_harmonics(uses_spherical_harmonics: UInt8)  {
        withUnsafePointer(to: uses_spherical_harmonics) { uses_spherical_harmonics_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(uses_spherical_harmonics_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_uses_spherical_harmonics_2586408642._native_ptr(),
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
    public func is_using_spherical_harmonics() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_using_spherical_harmonics_36873697._native_ptr(),
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
    public func add_user(path: NodePath, uv_scale: Rect2, slice_index: Int64, sub_instance: Int64)  {
        withUnsafePointer(to: sub_instance) { sub_instance_native in
        withUnsafePointer(to: slice_index) { slice_index_native in
        let uv_scale_native = uv_scale._native_ptr()
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(uv_scale_native), .init(slice_index_native), .init(sub_instance_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_user_4272570515._native_ptr(),
                    4272570515)
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
    public func get_user_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_user_count_3905245786._native_ptr(),
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
    public func get_user_path(user_idx: Int64) -> NodePath {
        withUnsafePointer(to: user_idx) { user_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(user_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_user_path_408788394._native_ptr(),
                    408788394)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(godot: __resPtr.pointee)
        }
    }
    public func clear_users()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_users_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}