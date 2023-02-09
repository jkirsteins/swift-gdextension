import godot_native

fileprivate var __godot_name_EditorExportPlugin: StringName! = nil

/// A script that is executed when exporting the project.
/// 
/// [EditorExportPlugin]s are automatically invoked whenever the user exports the project. Their most common use is to determine what files are being included in the exported project. For each plugin, [method _export_begin] is called at the beginning of the export process and then [method _export_file] is called for each exported file.
///  
/// To use [EditorExportPlugin], register it using the [method EditorPlugin.add_export_plugin] method first.
open class EditorExportPlugin : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_EditorExportPlugin }

    static var _method__export_file_0: StringName! = nil
    static var _method__export_begin_0: StringName! = nil
    static var _method__export_end_0: StringName! = nil
    static var _method__begin_customize_resources_0: StringName! = nil
    static var _method__customize_resource_0: StringName! = nil
    static var _method__begin_customize_scenes_0: StringName! = nil
    static var _method__customize_scene_0: StringName! = nil
    static var _method__get_customization_configuration_hash_0: StringName! = nil
    static var _method__end_customize_scenes_0: StringName! = nil
    static var _method__end_customize_resources_0: StringName! = nil
    static var _method__get_name_0: StringName! = nil
    static var _method_add_shared_object_3098291045: StringName! = nil
    static var _method_add_ios_project_static_lib_83702148: StringName! = nil
    static var _method_add_file_527928637: StringName! = nil
    static var _method_add_ios_framework_83702148: StringName! = nil
    static var _method_add_ios_embedded_framework_83702148: StringName! = nil
    static var _method_add_ios_plist_content_83702148: StringName! = nil
    static var _method_add_ios_linker_flags_83702148: StringName! = nil
    static var _method_add_ios_bundle_file_83702148: StringName! = nil
    static var _method_add_ios_cpp_code_83702148: StringName! = nil
    static var _method_add_macos_plugin_file_83702148: StringName! = nil
    static var _method_skip_3218959716: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        assert(__godot_name_EditorExportPlugin == nil)
        __godot_name_EditorExportPlugin = StringName(from: "EditorExportPlugin")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_add_shared_object_3098291045 = StringName(from: "add_shared_object")
        assert(self._method_add_shared_object_3098291045 != nil)
        self._method_add_ios_project_static_lib_83702148 = StringName(from: "add_ios_project_static_lib")
        assert(self._method_add_ios_project_static_lib_83702148 != nil)
        self._method_add_file_527928637 = StringName(from: "add_file")
        assert(self._method_add_file_527928637 != nil)
        self._method_add_ios_framework_83702148 = StringName(from: "add_ios_framework")
        assert(self._method_add_ios_framework_83702148 != nil)
        self._method_add_ios_embedded_framework_83702148 = StringName(from: "add_ios_embedded_framework")
        assert(self._method_add_ios_embedded_framework_83702148 != nil)
        self._method_add_ios_plist_content_83702148 = StringName(from: "add_ios_plist_content")
        assert(self._method_add_ios_plist_content_83702148 != nil)
        self._method_add_ios_linker_flags_83702148 = StringName(from: "add_ios_linker_flags")
        assert(self._method_add_ios_linker_flags_83702148 != nil)
        self._method_add_ios_bundle_file_83702148 = StringName(from: "add_ios_bundle_file")
        assert(self._method_add_ios_bundle_file_83702148 != nil)
        self._method_add_ios_cpp_code_83702148 = StringName(from: "add_ios_cpp_code")
        assert(self._method_add_ios_cpp_code_83702148 != nil)
        self._method_add_macos_plugin_file_83702148 = StringName(from: "add_macos_plugin_file")
        assert(self._method_add_macos_plugin_file_83702148 != nil)
        self._method_skip_3218959716 = StringName(from: "skip")
        assert(self._method_skip_3218959716 != nil)
    }

    public func _export_file(path: godot.String, `type`: godot.String, features: PackedStringArray)  {
        let features_native = features._native_ptr()
        let type_native = `type`._native_ptr()
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(type_native), .init(features_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _export_begin(features: PackedStringArray, is_debug: UInt8, path: godot.String, flags: Int64)  {
        withUnsafePointer(to: flags) { flags_native in
        withUnsafePointer(to: is_debug) { is_debug_native in
        let path_native = path._native_ptr()
        let features_native = features._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(features_native), .init(is_debug_native), .init(path_native), .init(flags_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
        }
        }
    }
    public func _export_end()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            fatalError("Not implemented: virtual default results")
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
            fatalError("Not implemented: virtual default results")
            return UInt8(godot: __resPtr.pointee)
    }
    public func _customize_resource(resource: Resource, path: godot.String) -> Resource {
        let path_native = path._native_ptr()
        let resource_native = resource._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(resource_native), .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return Resource(godot: __resPtr.pointee)
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
            fatalError("Not implemented: virtual default results")
            return UInt8(godot: __resPtr.pointee)
    }
    public func _customize_scene(scene: Node, path: godot.String) -> Node {
        let path_native = path._native_ptr()
        let scene_native = scene._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scene_native), .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return Node(godot: __resPtr.pointee)
    }
    public func _get_customization_configuration_hash() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return Int64(godot: __resPtr.pointee)
    }
    public func _end_customize_scenes()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _end_customize_resources()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _get_name() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return godot.String(godot: __resPtr.pointee)
    }
    public func add_shared_object(path: godot.String, tags: PackedStringArray, target: godot.String)  {
        let target_native = target._native_ptr()
        let tags_native = tags._native_ptr()
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(tags_native), .init(target_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_shared_object_3098291045._native_ptr(),
                    3098291045)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_ios_project_static_lib(path: godot.String)  {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_ios_project_static_lib_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_file(path: godot.String, file: PackedByteArray, remap: UInt8)  {
        withUnsafePointer(to: remap) { remap_native in
        let file_native = file._native_ptr()
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(file_native), .init(remap_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_file_527928637._native_ptr(),
                    527928637)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_ios_framework(path: godot.String)  {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_ios_framework_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_ios_embedded_framework(path: godot.String)  {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_ios_embedded_framework_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_ios_plist_content(plist_content: godot.String)  {
        let plist_content_native = plist_content._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(plist_content_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_ios_plist_content_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_ios_linker_flags(flags: godot.String)  {
        let flags_native = flags._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flags_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_ios_linker_flags_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_ios_bundle_file(path: godot.String)  {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_ios_bundle_file_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_ios_cpp_code(code: godot.String)  {
        let code_native = code._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(code_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_ios_cpp_code_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_macos_plugin_file(path: godot.String)  {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_macos_plugin_file_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func skip()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_skip_3218959716._native_ptr(),
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