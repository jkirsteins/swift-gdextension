import godot_native

fileprivate var __godot_name_MeshTexture: StringName! = nil

/// Simple texture that uses a mesh to draw itself.
/// 
/// Simple texture that uses a mesh to draw itself. It's limited because flags can't be changed and region drawing is not supported.
open class MeshTexture : Texture2D {

    

    public override class var __godot_name: StringName { __godot_name_MeshTexture }

    static var _method_set_mesh_194775623: GDExtensionMethodBindPtr! = nil
    static var _method_get_mesh_1808005922: GDExtensionMethodBindPtr! = nil
    static var _method_set_image_size_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_image_size_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_base_texture_4051416890: GDExtensionMethodBindPtr! = nil
    static var _method_get_base_texture_3635182373: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_MeshTexture = StringName(from: "MeshTexture")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_mesh_194775623_name = StringName(from: "set_mesh")
        self._method_set_mesh_194775623 = self.interface.pointee.classdb_get_method_bind(__godot_name_MeshTexture._native_ptr(), _method_set_mesh_194775623_name._native_ptr(), 194775623)
        assert(MeshTexture._method_set_mesh_194775623 != nil)
        let _method_get_mesh_1808005922_name = StringName(from: "get_mesh")
        self._method_get_mesh_1808005922 = self.interface.pointee.classdb_get_method_bind(__godot_name_MeshTexture._native_ptr(), _method_get_mesh_1808005922_name._native_ptr(), 1808005922)
        assert(MeshTexture._method_get_mesh_1808005922 != nil)
        let _method_set_image_size_743155724_name = StringName(from: "set_image_size")
        self._method_set_image_size_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name_MeshTexture._native_ptr(), _method_set_image_size_743155724_name._native_ptr(), 743155724)
        assert(MeshTexture._method_set_image_size_743155724 != nil)
        let _method_get_image_size_3341600327_name = StringName(from: "get_image_size")
        self._method_get_image_size_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_MeshTexture._native_ptr(), _method_get_image_size_3341600327_name._native_ptr(), 3341600327)
        assert(MeshTexture._method_get_image_size_3341600327 != nil)
        let _method_set_base_texture_4051416890_name = StringName(from: "set_base_texture")
        self._method_set_base_texture_4051416890 = self.interface.pointee.classdb_get_method_bind(__godot_name_MeshTexture._native_ptr(), _method_set_base_texture_4051416890_name._native_ptr(), 4051416890)
        assert(MeshTexture._method_set_base_texture_4051416890 != nil)
        let _method_get_base_texture_3635182373_name = StringName(from: "get_base_texture")
        self._method_get_base_texture_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name_MeshTexture._native_ptr(), _method_get_base_texture_3635182373_name._native_ptr(), 3635182373)
        assert(MeshTexture._method_get_base_texture_3635182373 != nil)
    }

    public func set_mesh(mesh: Mesh)  {
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_mesh_194775623,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_mesh() -> Mesh {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mesh_1808005922,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Mesh(godot: __resPtr.pointee)
    }
    public func set_image_size(size: Vector2)  {
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_image_size_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_image_size() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_image_size_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func set_base_texture(texture: Texture2D)  {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_base_texture_4051416890,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_base_texture() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_base_texture_3635182373,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
    }
}