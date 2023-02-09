import godot_native

fileprivate var __godot_name_GLTFDocument: StringName! = nil

/// MISSING
/// 
/// MISSING
open class GLTFDocument : Resource {

    

    public override class var __godot_name: StringName { __godot_name_GLTFDocument }

    static var _method_append_from_file_1862991421: StringName! = nil
    static var _method_append_from_buffer_2818062664: StringName! = nil
    static var _method_append_from_scene_374125375: StringName! = nil
    static var _method_generate_scene_2770277081: StringName! = nil
    static var _method_generate_buffer_741783455: StringName! = nil
    static var _method_write_to_filesystem_1784551478: StringName! = nil
    static var _method_register_gltf_document_extension_3752678331: StringName! = nil
    static var _method_unregister_gltf_document_extension_2684415758: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_GLTFDocument == nil)
        __godot_name_GLTFDocument = StringName(from: "GLTFDocument")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_append_from_file_1862991421 = StringName(from: "append_from_file")
        assert(self._method_append_from_file_1862991421 != nil)
        self._method_append_from_buffer_2818062664 = StringName(from: "append_from_buffer")
        assert(self._method_append_from_buffer_2818062664 != nil)
        self._method_append_from_scene_374125375 = StringName(from: "append_from_scene")
        assert(self._method_append_from_scene_374125375 != nil)
        self._method_generate_scene_2770277081 = StringName(from: "generate_scene")
        assert(self._method_generate_scene_2770277081 != nil)
        self._method_generate_buffer_741783455 = StringName(from: "generate_buffer")
        assert(self._method_generate_buffer_741783455 != nil)
        self._method_write_to_filesystem_1784551478 = StringName(from: "write_to_filesystem")
        assert(self._method_write_to_filesystem_1784551478 != nil)
        self._method_register_gltf_document_extension_3752678331 = StringName(from: "register_gltf_document_extension")
        assert(self._method_register_gltf_document_extension_3752678331 != nil)
        self._method_unregister_gltf_document_extension_2684415758 = StringName(from: "unregister_gltf_document_extension")
        assert(self._method_unregister_gltf_document_extension_2684415758 != nil)
    }

    public func append_from_file(path: godot.String, state: GLTFState, flags: Int64, base_path: godot.String) -> Error {
        withUnsafePointer(to: flags) { flags_native in
        let base_path_native = base_path._native_ptr()
        let state_native = state._native_ptr()
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(state_native), .init(flags_native), .init(base_path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_append_from_file_1862991421._native_ptr(),
                    1862991421)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
    }
    public func append_from_buffer(bytes: PackedByteArray, base_path: godot.String, state: GLTFState, flags: Int64) -> Error {
        withUnsafePointer(to: flags) { flags_native in
        let state_native = state._native_ptr()
        let base_path_native = base_path._native_ptr()
        let bytes_native = bytes._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bytes_native), .init(base_path_native), .init(state_native), .init(flags_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_append_from_buffer_2818062664._native_ptr(),
                    2818062664)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
    }
    public func append_from_scene(node: Node, state: GLTFState, flags: Int64) -> Error {
        withUnsafePointer(to: flags) { flags_native in
        let state_native = state._native_ptr()
        let node_native = node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(node_native), .init(state_native), .init(flags_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_append_from_scene_374125375._native_ptr(),
                    374125375)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
    }
    public func generate_scene(state: GLTFState, bake_fps: Float64, trimming: UInt8, remove_immutable_tracks: UInt8) -> Node {
        withUnsafePointer(to: remove_immutable_tracks) { remove_immutable_tracks_native in
        withUnsafePointer(to: trimming) { trimming_native in
        withUnsafePointer(to: bake_fps) { bake_fps_native in
        let state_native = state._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(state_native), .init(bake_fps_native), .init(trimming_native), .init(remove_immutable_tracks_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_generate_scene_2770277081._native_ptr(),
                    2770277081)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node(godot: __resPtr.pointee)
        }
        }
        }
    }
    public func generate_buffer(state: GLTFState) -> PackedByteArray {
        let state_native = state._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(state_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_generate_buffer_741783455._native_ptr(),
                    741783455)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(godot: __resPtr.pointee)
    }
    public func write_to_filesystem(state: GLTFState, path: godot.String) -> Error {
        let path_native = path._native_ptr()
        let state_native = state._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(state_native), .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_write_to_filesystem_1784551478._native_ptr(),
                    1784551478)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func register_gltf_document_extension(`extension`: GLTFDocumentExtension, first_priority: UInt8)  {
        withUnsafePointer(to: first_priority) { first_priority_native in
        let extension_native = `extension`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(extension_native), .init(first_priority_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_register_gltf_document_extension_3752678331._native_ptr(),
                    3752678331)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func unregister_gltf_document_extension(`extension`: GLTFDocumentExtension)  {
        let extension_native = `extension`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(extension_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_unregister_gltf_document_extension_2684415758._native_ptr(),
                    2684415758)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}