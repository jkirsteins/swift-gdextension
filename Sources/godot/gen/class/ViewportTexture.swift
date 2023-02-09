import godot_native

fileprivate var __godot_name_ViewportTexture: StringName! = nil

/// Texture which displays the content of a [Viewport].
/// 
/// Displays the content of a [Viewport] node as a dynamic [Texture2D]. This can be used to mix controls, 2D, and 3D elements in the same scene.
///  
/// To create a ViewportTexture in code, use the [method Viewport.get_texture] method on the target viewport.
///  
/// [b]Note:[/b] When local to scene, this texture uses [method Resource.setup_local_to_scene] to set the proxy texture and flags in the local viewport.
open class ViewportTexture : Texture2D {

    

    public override class var __godot_name: StringName { __godot_name_ViewportTexture }

    static var _method_set_viewport_path_in_scene_1348162250: StringName! = nil
    static var _method_get_viewport_path_in_scene_4075236667: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_ViewportTexture == nil)
        __godot_name_ViewportTexture = StringName(from: "ViewportTexture")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_viewport_path_in_scene_1348162250 = StringName(from: "set_viewport_path_in_scene")
        assert(self._method_set_viewport_path_in_scene_1348162250 != nil)
        self._method_get_viewport_path_in_scene_4075236667 = StringName(from: "get_viewport_path_in_scene")
        assert(self._method_get_viewport_path_in_scene_4075236667 != nil)
    }

    public func set_viewport_path_in_scene(path: NodePath)  {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_viewport_path_in_scene_1348162250._native_ptr(),
                    1348162250)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_viewport_path_in_scene() -> NodePath {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_viewport_path_in_scene_4075236667._native_ptr(),
                    4075236667)
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