import godot_native

fileprivate var __godot_name_GLTFDocument: StringName! = nil

/// MISSING
/// 
/// MISSING
public class GLTFDocument : Resource {

    

    public override class var __godot_name: StringName { __godot_name_GLTFDocument }

    static var _method_append_from_file_1862991421: GDExtensionMethodBindPtr! = nil
    static var _method_append_from_buffer_2818062664: GDExtensionMethodBindPtr! = nil
    static var _method_append_from_scene_374125375: GDExtensionMethodBindPtr! = nil
    static var _method_generate_scene_2770277081: GDExtensionMethodBindPtr! = nil
    static var _method_generate_buffer_741783455: GDExtensionMethodBindPtr! = nil
    static var _method_write_to_filesystem_1784551478: GDExtensionMethodBindPtr! = nil
    static var _method_register_gltf_document_extension_3752678331: GDExtensionMethodBindPtr! = nil
    static var _method_unregister_gltf_document_extension_2684415758: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_GLTFDocument = StringName(from: "GLTFDocument")

        let _method_append_from_file_1862991421_name = StringName(from: "append_from_file")
        self._method_append_from_file_1862991421 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_append_from_file_1862991421_name._native_ptr(), 1862991421)
        assert(GLTFDocument._method_append_from_file_1862991421 != nil)
        let _method_append_from_buffer_2818062664_name = StringName(from: "append_from_buffer")
        self._method_append_from_buffer_2818062664 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_append_from_buffer_2818062664_name._native_ptr(), 2818062664)
        assert(GLTFDocument._method_append_from_buffer_2818062664 != nil)
        let _method_append_from_scene_374125375_name = StringName(from: "append_from_scene")
        self._method_append_from_scene_374125375 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_append_from_scene_374125375_name._native_ptr(), 374125375)
        assert(GLTFDocument._method_append_from_scene_374125375 != nil)
        let _method_generate_scene_2770277081_name = StringName(from: "generate_scene")
        self._method_generate_scene_2770277081 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_generate_scene_2770277081_name._native_ptr(), 2770277081)
        assert(GLTFDocument._method_generate_scene_2770277081 != nil)
        let _method_generate_buffer_741783455_name = StringName(from: "generate_buffer")
        self._method_generate_buffer_741783455 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_generate_buffer_741783455_name._native_ptr(), 741783455)
        assert(GLTFDocument._method_generate_buffer_741783455 != nil)
        let _method_write_to_filesystem_1784551478_name = StringName(from: "write_to_filesystem")
        self._method_write_to_filesystem_1784551478 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_write_to_filesystem_1784551478_name._native_ptr(), 1784551478)
        assert(GLTFDocument._method_write_to_filesystem_1784551478 != nil)
        let _method_register_gltf_document_extension_3752678331_name = StringName(from: "register_gltf_document_extension")
        self._method_register_gltf_document_extension_3752678331 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_register_gltf_document_extension_3752678331_name._native_ptr(), 3752678331)
        assert(GLTFDocument._method_register_gltf_document_extension_3752678331 != nil)
        let _method_unregister_gltf_document_extension_2684415758_name = StringName(from: "unregister_gltf_document_extension")
        self._method_unregister_gltf_document_extension_2684415758 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_unregister_gltf_document_extension_2684415758_name._native_ptr(), 2684415758)
        assert(GLTFDocument._method_unregister_gltf_document_extension_2684415758 != nil)
    }

    public func append_from_file(path: String, state: GLTFState, flags: Int64, base_path: String) -> Error {
        withUnsafePointer(to: base_path) { base_path_native in
        withUnsafePointer(to: flags) { flags_native in
        withUnsafePointer(to: path) { path_native in
        let state_native = state._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(state_native), .init(flags_native), .init(base_path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_append_from_file_1862991421,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
        }
        }
    }
    public func append_from_buffer(bytes: PackedByteArray, base_path: String, state: GLTFState, flags: Int64) -> Error {
        withUnsafePointer(to: flags) { flags_native in
        withUnsafePointer(to: base_path) { base_path_native in
        let state_native = state._native_ptr()
        let bytes_native = bytes._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bytes_native), .init(base_path_native), .init(state_native), .init(flags_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_append_from_buffer_2818062664,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_append_from_scene_374125375,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_generate_scene_2770277081,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_generate_buffer_741783455,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(from: __resPtr.pointee)
    }
    public func write_to_filesystem(state: GLTFState, path: String) -> Error {
        withUnsafePointer(to: path) { path_native in
        let state_native = state._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(state_native), .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_write_to_filesystem_1784551478,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_register_gltf_document_extension_3752678331,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_unregister_gltf_document_extension_2684415758,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}