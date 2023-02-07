import godot_native

fileprivate var __godot_name_ProjectSettings: StringName! = nil

/// Contains global variables accessible from everywhere.
/// 
/// Contains global variables accessible from everywhere. Use [method get_setting], [method set_setting] or [method has_setting] to access them. Variables stored in [code]project.godot[/code] are also loaded into ProjectSettings, making this object very useful for reading custom game configuration options.
///  
/// When naming a Project Settings property, use the full path to the setting including the category. For example, [code]"application/config/name"[/code] for the project name. Category and property names can be viewed in the Project Settings dialog.
///  
/// [b]Feature tags:[/b] Project settings can be overridden for specific platforms and configurations (debug, release, ...) using [url=$DOCS_URL/tutorials/export/feature_tags.html]feature tags[/url].
///  
/// [b]Overriding:[/b] Any project setting can be overridden by creating a file named [code]override.cfg[/code] in the project's root directory. This can also be used in exported projects by placing this file in the same directory as the project binary. Overriding will still take the base project settings' [url=$DOCS_URL/tutorials/export/feature_tags.html]feature tags[/url] in account. Therefore, make sure to [i]also[/i] override the setting with the desired feature tags if you want them to override base project settings on all platforms and configurations.
public class ProjectSettings : Object {

    

    public override class var __godot_name: StringName { __godot_name_ProjectSettings }

    static var _method_has_setting_3927539163: GDExtensionMethodBindPtr! = nil
    static var _method_set_setting_402577236: GDExtensionMethodBindPtr! = nil
    static var _method_get_setting_223050753: GDExtensionMethodBindPtr! = nil
    static var _method_get_setting_with_override_2760726917: GDExtensionMethodBindPtr! = nil
    static var _method_set_order_2956805083: GDExtensionMethodBindPtr! = nil
    static var _method_get_order_1321353865: GDExtensionMethodBindPtr! = nil
    static var _method_set_initial_value_402577236: GDExtensionMethodBindPtr! = nil
    static var _method_add_property_info_4155329257: GDExtensionMethodBindPtr! = nil
    static var _method_set_restart_if_changed_2678287736: GDExtensionMethodBindPtr! = nil
    static var _method_clear_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_localize_path_3135753539: GDExtensionMethodBindPtr! = nil
    static var _method_globalize_path_3135753539: GDExtensionMethodBindPtr! = nil
    static var _method_save_166280745: GDExtensionMethodBindPtr! = nil
    static var _method_load_resource_pack_3001721055: GDExtensionMethodBindPtr! = nil
    static var _method_save_custom_166001499: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_ProjectSettings = StringName(from: "ProjectSettings")

        let _method_has_setting_3927539163_name = StringName(from: "has_setting")
        self._method_has_setting_3927539163 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_setting_3927539163_name._native_ptr(), 3927539163)
        assert(ProjectSettings._method_has_setting_3927539163 != nil)
        let _method_set_setting_402577236_name = StringName(from: "set_setting")
        self._method_set_setting_402577236 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_setting_402577236_name._native_ptr(), 402577236)
        assert(ProjectSettings._method_set_setting_402577236 != nil)
        let _method_get_setting_223050753_name = StringName(from: "get_setting")
        self._method_get_setting_223050753 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_setting_223050753_name._native_ptr(), 223050753)
        assert(ProjectSettings._method_get_setting_223050753 != nil)
        let _method_get_setting_with_override_2760726917_name = StringName(from: "get_setting_with_override")
        self._method_get_setting_with_override_2760726917 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_setting_with_override_2760726917_name._native_ptr(), 2760726917)
        assert(ProjectSettings._method_get_setting_with_override_2760726917 != nil)
        let _method_set_order_2956805083_name = StringName(from: "set_order")
        self._method_set_order_2956805083 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_order_2956805083_name._native_ptr(), 2956805083)
        assert(ProjectSettings._method_set_order_2956805083 != nil)
        let _method_get_order_1321353865_name = StringName(from: "get_order")
        self._method_get_order_1321353865 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_order_1321353865_name._native_ptr(), 1321353865)
        assert(ProjectSettings._method_get_order_1321353865 != nil)
        let _method_set_initial_value_402577236_name = StringName(from: "set_initial_value")
        self._method_set_initial_value_402577236 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_initial_value_402577236_name._native_ptr(), 402577236)
        assert(ProjectSettings._method_set_initial_value_402577236 != nil)
        let _method_add_property_info_4155329257_name = StringName(from: "add_property_info")
        self._method_add_property_info_4155329257 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_property_info_4155329257_name._native_ptr(), 4155329257)
        assert(ProjectSettings._method_add_property_info_4155329257 != nil)
        let _method_set_restart_if_changed_2678287736_name = StringName(from: "set_restart_if_changed")
        self._method_set_restart_if_changed_2678287736 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_restart_if_changed_2678287736_name._native_ptr(), 2678287736)
        assert(ProjectSettings._method_set_restart_if_changed_2678287736 != nil)
        let _method_clear_83702148_name = StringName(from: "clear")
        self._method_clear_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_83702148_name._native_ptr(), 83702148)
        assert(ProjectSettings._method_clear_83702148 != nil)
        let _method_localize_path_3135753539_name = StringName(from: "localize_path")
        self._method_localize_path_3135753539 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_localize_path_3135753539_name._native_ptr(), 3135753539)
        assert(ProjectSettings._method_localize_path_3135753539 != nil)
        let _method_globalize_path_3135753539_name = StringName(from: "globalize_path")
        self._method_globalize_path_3135753539 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_globalize_path_3135753539_name._native_ptr(), 3135753539)
        assert(ProjectSettings._method_globalize_path_3135753539 != nil)
        let _method_save_166280745_name = StringName(from: "save")
        self._method_save_166280745 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_save_166280745_name._native_ptr(), 166280745)
        assert(ProjectSettings._method_save_166280745 != nil)
        let _method_load_resource_pack_3001721055_name = StringName(from: "load_resource_pack")
        self._method_load_resource_pack_3001721055 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_load_resource_pack_3001721055_name._native_ptr(), 3001721055)
        assert(ProjectSettings._method_load_resource_pack_3001721055 != nil)
        let _method_save_custom_166001499_name = StringName(from: "save_custom")
        self._method_save_custom_166001499 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_save_custom_166001499_name._native_ptr(), 166001499)
        assert(ProjectSettings._method_save_custom_166001499 != nil)
    }

    public func has_setting(name: String) -> UInt8 {
        withUnsafePointer(to: name) { name_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_setting_3927539163,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func set_setting(name: String, value: Variant)  {
        withUnsafePointer(to: name) { name_native in
        let value_native = value._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_setting_402577236,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_setting(name: String, default_value: Variant) -> Variant {
        withUnsafePointer(to: name) { name_native in
        let default_value_native = default_value._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(default_value_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_setting_223050753,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
        }
    }
    public func get_setting_with_override(name: StringName) -> Variant {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_setting_with_override_2760726917,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
    }
    public func set_order(name: String, position: Int64)  {
        withUnsafePointer(to: position) { position_native in
        withUnsafePointer(to: name) { name_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_order_2956805083,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_order(name: String) -> Int64 {
        withUnsafePointer(to: name) { name_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_order_1321353865,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func set_initial_value(name: String, value: Variant)  {
        withUnsafePointer(to: name) { name_native in
        let value_native = value._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_initial_value_402577236,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_property_info(hint: Dictionary)  {
        let hint_native = hint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(hint_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_property_info_4155329257,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_restart_if_changed(name: String, restart: UInt8)  {
        withUnsafePointer(to: restart) { restart_native in
        withUnsafePointer(to: name) { name_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(restart_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_restart_if_changed_2678287736,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func clear(name: String)  {
        withUnsafePointer(to: name) { name_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func localize_path(path: String) -> String {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_localize_path_3135753539,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
    public func globalize_path(path: String) -> String {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_globalize_path_3135753539,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
    public func save() -> Error {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_save_166280745,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
    }
    public func load_resource_pack(pack: String, replace_files: UInt8, offset: Int64) -> UInt8 {
        withUnsafePointer(to: offset) { offset_native in
        withUnsafePointer(to: replace_files) { replace_files_native in
        withUnsafePointer(to: pack) { pack_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pack_native), .init(replace_files_native), .init(offset_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_load_resource_pack_3001721055,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
        }
        }
    }
    public func save_custom(file: String) -> Error {
        withUnsafePointer(to: file) { file_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(file_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_save_custom_166001499,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
    }
}