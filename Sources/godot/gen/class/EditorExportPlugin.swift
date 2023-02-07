import godot_native

fileprivate var __godot_name_EditorExportPlugin: StringName! = nil

/// A script that is executed when exporting the project.
/// 
/// [EditorExportPlugin]s are automatically invoked whenever the user exports the project. Their most common use is to determine what files are being included in the exported project. For each plugin, [method _export_begin] is called at the beginning of the export process and then [method _export_file] is called for each exported file.
///  
/// To use [EditorExportPlugin], register it using the [method EditorPlugin.add_export_plugin] method first.
public class EditorExportPlugin : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_EditorExportPlugin }

    static var _method__export_file_0: GDExtensionMethodBindPtr! = nil
    static var _method__export_begin_0: GDExtensionMethodBindPtr! = nil
    static var _method__export_end_0: GDExtensionMethodBindPtr! = nil
    static var _method__begin_customize_resources_0: GDExtensionMethodBindPtr! = nil
    static var _method__customize_resource_0: GDExtensionMethodBindPtr! = nil
    static var _method__begin_customize_scenes_0: GDExtensionMethodBindPtr! = nil
    static var _method__customize_scene_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_customization_configuration_hash_0: GDExtensionMethodBindPtr! = nil
    static var _method__end_customize_scenes_0: GDExtensionMethodBindPtr! = nil
    static var _method__end_customize_resources_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_name_0: GDExtensionMethodBindPtr! = nil
    static var _method_add_shared_object_3098291045: GDExtensionMethodBindPtr! = nil
    static var _method_add_ios_project_static_lib_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_add_file_527928637: GDExtensionMethodBindPtr! = nil
    static var _method_add_ios_framework_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_add_ios_embedded_framework_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_add_ios_plist_content_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_add_ios_linker_flags_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_add_ios_bundle_file_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_add_ios_cpp_code_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_add_macos_plugin_file_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_skip_3218959716: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_EditorExportPlugin = StringName(from: "EditorExportPlugin")

        let _method_add_shared_object_3098291045_name = StringName(from: "add_shared_object")
        self._method_add_shared_object_3098291045 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_shared_object_3098291045_name._native_ptr(), 3098291045)
        assert(EditorExportPlugin._method_add_shared_object_3098291045 != nil)
        let _method_add_ios_project_static_lib_83702148_name = StringName(from: "add_ios_project_static_lib")
        self._method_add_ios_project_static_lib_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_ios_project_static_lib_83702148_name._native_ptr(), 83702148)
        assert(EditorExportPlugin._method_add_ios_project_static_lib_83702148 != nil)
        let _method_add_file_527928637_name = StringName(from: "add_file")
        self._method_add_file_527928637 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_file_527928637_name._native_ptr(), 527928637)
        assert(EditorExportPlugin._method_add_file_527928637 != nil)
        let _method_add_ios_framework_83702148_name = StringName(from: "add_ios_framework")
        self._method_add_ios_framework_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_ios_framework_83702148_name._native_ptr(), 83702148)
        assert(EditorExportPlugin._method_add_ios_framework_83702148 != nil)
        let _method_add_ios_embedded_framework_83702148_name = StringName(from: "add_ios_embedded_framework")
        self._method_add_ios_embedded_framework_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_ios_embedded_framework_83702148_name._native_ptr(), 83702148)
        assert(EditorExportPlugin._method_add_ios_embedded_framework_83702148 != nil)
        let _method_add_ios_plist_content_83702148_name = StringName(from: "add_ios_plist_content")
        self._method_add_ios_plist_content_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_ios_plist_content_83702148_name._native_ptr(), 83702148)
        assert(EditorExportPlugin._method_add_ios_plist_content_83702148 != nil)
        let _method_add_ios_linker_flags_83702148_name = StringName(from: "add_ios_linker_flags")
        self._method_add_ios_linker_flags_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_ios_linker_flags_83702148_name._native_ptr(), 83702148)
        assert(EditorExportPlugin._method_add_ios_linker_flags_83702148 != nil)
        let _method_add_ios_bundle_file_83702148_name = StringName(from: "add_ios_bundle_file")
        self._method_add_ios_bundle_file_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_ios_bundle_file_83702148_name._native_ptr(), 83702148)
        assert(EditorExportPlugin._method_add_ios_bundle_file_83702148 != nil)
        let _method_add_ios_cpp_code_83702148_name = StringName(from: "add_ios_cpp_code")
        self._method_add_ios_cpp_code_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_ios_cpp_code_83702148_name._native_ptr(), 83702148)
        assert(EditorExportPlugin._method_add_ios_cpp_code_83702148 != nil)
        let _method_add_macos_plugin_file_83702148_name = StringName(from: "add_macos_plugin_file")
        self._method_add_macos_plugin_file_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_macos_plugin_file_83702148_name._native_ptr(), 83702148)
        assert(EditorExportPlugin._method_add_macos_plugin_file_83702148 != nil)
        let _method_skip_3218959716_name = StringName(from: "skip")
        self._method_skip_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_skip_3218959716_name._native_ptr(), 3218959716)
        assert(EditorExportPlugin._method_skip_3218959716 != nil)
    }

    public func _export_file(path: String, `type`: String, features: PackedStringArray)  {
        withUnsafePointer(to: `type`) { type_native in
        withUnsafePointer(to: path) { path_native in
        let features_native = features._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(type_native), .init(features_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__export_file_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _export_begin(features: PackedStringArray, is_debug: UInt8, path: String, flags: Int64)  {
        withUnsafePointer(to: flags) { flags_native in
        withUnsafePointer(to: path) { path_native in
        withUnsafePointer(to: is_debug) { is_debug_native in
        let features_native = features._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(features_native), .init(is_debug_native), .init(path_native), .init(flags_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__export_begin_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func _export_end()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__export_end_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _begin_customize_resources(platform: EditorExportPlatform, features: PackedStringArray) -> UInt8 {
        let features_native = features._native_ptr()
        let platform_native = platform._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(platform_native), .init(features_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__begin_customize_resources_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func _customize_resource(resource: Resource, path: String) -> Resource {
        withUnsafePointer(to: path) { path_native in
        let resource_native = resource._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(resource_native), .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__customize_resource_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Resource(from: __resPtr.pointee)
        }
    }
    public func _begin_customize_scenes(platform: EditorExportPlatform, features: PackedStringArray) -> UInt8 {
        let features_native = features._native_ptr()
        let platform_native = platform._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(platform_native), .init(features_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__begin_customize_scenes_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func _customize_scene(scene: Node, path: String) -> Node {
        withUnsafePointer(to: path) { path_native in
        let scene_native = scene._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scene_native), .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__customize_scene_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node(from: __resPtr.pointee)
        }
    }
    public func _get_customization_configuration_hash() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_customization_configuration_hash_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _end_customize_scenes()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__end_customize_scenes_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _end_customize_resources()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__end_customize_resources_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _get_name() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_name_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func add_shared_object(path: String, tags: PackedStringArray, target: String)  {
        withUnsafePointer(to: target) { target_native in
        withUnsafePointer(to: path) { path_native in
        let tags_native = tags._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(tags_native), .init(target_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_shared_object_3098291045,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func add_ios_project_static_lib(path: String)  {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_ios_project_static_lib_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_file(path: String, file: PackedByteArray, remap: UInt8)  {
        withUnsafePointer(to: remap) { remap_native in
        withUnsafePointer(to: path) { path_native in
        let file_native = file._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(file_native), .init(remap_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_file_527928637,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func add_ios_framework(path: String)  {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_ios_framework_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_ios_embedded_framework(path: String)  {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_ios_embedded_framework_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_ios_plist_content(plist_content: String)  {
        withUnsafePointer(to: plist_content) { plist_content_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(plist_content_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_ios_plist_content_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_ios_linker_flags(flags: String)  {
        withUnsafePointer(to: flags) { flags_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flags_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_ios_linker_flags_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_ios_bundle_file(path: String)  {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_ios_bundle_file_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_ios_cpp_code(code: String)  {
        withUnsafePointer(to: code) { code_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(code_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_ios_cpp_code_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_macos_plugin_file(path: String)  {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_macos_plugin_file_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func skip()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_skip_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}