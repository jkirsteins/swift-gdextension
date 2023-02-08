import godot_native

fileprivate var __godot_name_LightmapGIData: StringName! = nil

/// Contains baked lightmap and dynamic object probe data for [LightmapGI].
/// 
/// [LightmapGIData] contains baked lightmap and dynamic object probe data for [LightmapGI]. It is replaced every time lightmaps are baked in [LightmapGI].
open class LightmapGIData : Resource {

    

    public override class var __godot_name: StringName { __godot_name_LightmapGIData }

    static var _method_set_light_texture_1278366092: GDExtensionMethodBindPtr! = nil
    static var _method_get_light_texture_3984243839: GDExtensionMethodBindPtr! = nil
    static var _method_set_uses_spherical_harmonics_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_using_spherical_harmonics_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_add_user_4272570515: GDExtensionMethodBindPtr! = nil
    static var _method_get_user_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_user_path_408788394: GDExtensionMethodBindPtr! = nil
    static var _method_clear_users_3218959716: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_LightmapGIData = StringName(from: "LightmapGIData")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_light_texture_1278366092_name = StringName(from: "set_light_texture")
        self._method_set_light_texture_1278366092 = self.interface.pointee.classdb_get_method_bind(__godot_name_LightmapGIData._native_ptr(), _method_set_light_texture_1278366092_name._native_ptr(), 1278366092)
        assert(LightmapGIData._method_set_light_texture_1278366092 != nil)
        let _method_get_light_texture_3984243839_name = StringName(from: "get_light_texture")
        self._method_get_light_texture_3984243839 = self.interface.pointee.classdb_get_method_bind(__godot_name_LightmapGIData._native_ptr(), _method_get_light_texture_3984243839_name._native_ptr(), 3984243839)
        assert(LightmapGIData._method_get_light_texture_3984243839 != nil)
        let _method_set_uses_spherical_harmonics_2586408642_name = StringName(from: "set_uses_spherical_harmonics")
        self._method_set_uses_spherical_harmonics_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_LightmapGIData._native_ptr(), _method_set_uses_spherical_harmonics_2586408642_name._native_ptr(), 2586408642)
        assert(LightmapGIData._method_set_uses_spherical_harmonics_2586408642 != nil)
        let _method_is_using_spherical_harmonics_36873697_name = StringName(from: "is_using_spherical_harmonics")
        self._method_is_using_spherical_harmonics_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_LightmapGIData._native_ptr(), _method_is_using_spherical_harmonics_36873697_name._native_ptr(), 36873697)
        assert(LightmapGIData._method_is_using_spherical_harmonics_36873697 != nil)
        let _method_add_user_4272570515_name = StringName(from: "add_user")
        self._method_add_user_4272570515 = self.interface.pointee.classdb_get_method_bind(__godot_name_LightmapGIData._native_ptr(), _method_add_user_4272570515_name._native_ptr(), 4272570515)
        assert(LightmapGIData._method_add_user_4272570515 != nil)
        let _method_get_user_count_3905245786_name = StringName(from: "get_user_count")
        self._method_get_user_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_LightmapGIData._native_ptr(), _method_get_user_count_3905245786_name._native_ptr(), 3905245786)
        assert(LightmapGIData._method_get_user_count_3905245786 != nil)
        let _method_get_user_path_408788394_name = StringName(from: "get_user_path")
        self._method_get_user_path_408788394 = self.interface.pointee.classdb_get_method_bind(__godot_name_LightmapGIData._native_ptr(), _method_get_user_path_408788394_name._native_ptr(), 408788394)
        assert(LightmapGIData._method_get_user_path_408788394 != nil)
        let _method_clear_users_3218959716_name = StringName(from: "clear_users")
        self._method_clear_users_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_LightmapGIData._native_ptr(), _method_clear_users_3218959716_name._native_ptr(), 3218959716)
        assert(LightmapGIData._method_clear_users_3218959716 != nil)
    }

    public func set_light_texture(light_texture: TextureLayered)  {
        let light_texture_native = light_texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_light_texture_1278366092,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_light_texture_3984243839,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_uses_spherical_harmonics_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_using_spherical_harmonics_36873697,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_user_4272570515,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_user_count_3905245786,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_user_path_408788394,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_users_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}