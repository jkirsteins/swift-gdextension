import godot_native

fileprivate var __godot_name_EditorSettings: StringName! = nil

/// Object that holds the project-independent editor settings.
/// 
/// Object that holds the project-independent editor settings. These settings are generally visible in the [b]Editor > Editor Settings[/b] menu.
///  
/// Property names use slash delimiters to distinguish sections. Setting values can be of any [Variant] type. It's recommended to use [code]snake_case[/code] for editor settings to be consistent with the Godot editor itself.
///  
/// Accessing the settings can be done using the following methods, such as:
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// var settings = EditorInterface.get_editor_settings()
///  
/// # `settings.set("some/property", 10)` also works as this class overrides `_set()` internally.
///  
/// settings.set_setting("some/property", 10)
///  
/// # `settings.get("some/property")` also works as this class overrides `_get()` internally.
///  
/// settings.get_setting("some/property")
///  
/// var list_of_settings = settings.get_property_list()
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// EditorSettings settings = GetEditorInterface().GetEditorSettings();
///  
/// // `settings.set("some/property", value)` also works as this class overrides `_set()` internally.
///  
/// settings.SetSetting("some/property", Value);
///  
/// // `settings.get("some/property", value)` also works as this class overrides `_get()` internally.
///  
/// settings.GetSetting("some/property");
///  
/// Godot.Collections.Array<Godot.Collections.Dictionary> listOfSettings = settings.GetPropertyList();
///  
/// [/csharp]
///  
/// [/codeblocks]
///  
/// [b]Note:[/b] This class shouldn't be instantiated directly. Instead, access the singleton using [method EditorInterface.get_editor_settings].
public class EditorSettings : Resource {

    

    public override class var __godot_name: StringName { __godot_name_EditorSettings }

    static var _method_has_setting_3927539163: GDExtensionMethodBindPtr! = nil
    static var _method_set_setting_402577236: GDExtensionMethodBindPtr! = nil
    static var _method_get_setting_1868160156: GDExtensionMethodBindPtr! = nil
    static var _method_erase_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_set_initial_value_1529169264: GDExtensionMethodBindPtr! = nil
    static var _method_add_property_info_4155329257: GDExtensionMethodBindPtr! = nil
    static var _method_set_project_metadata_2504492430: GDExtensionMethodBindPtr! = nil
    static var _method_get_project_metadata_89809366: GDExtensionMethodBindPtr! = nil
    static var _method_set_favorites_4015028928: GDExtensionMethodBindPtr! = nil
    static var _method_get_favorites_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_set_recent_dirs_4015028928: GDExtensionMethodBindPtr! = nil
    static var _method_get_recent_dirs_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_set_builtin_action_override_1209351045: GDExtensionMethodBindPtr! = nil
    static var _method_check_changed_settings_in_group_3927539163: GDExtensionMethodBindPtr! = nil
    static var _method_get_changed_settings_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_mark_setting_changed_83702148: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_EditorSettings = StringName(from: "EditorSettings")

        let _method_has_setting_3927539163_name = StringName(from: "has_setting")
        self._method_has_setting_3927539163 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_setting_3927539163_name._native_ptr(), 3927539163)
        assert(EditorSettings._method_has_setting_3927539163 != nil)
        let _method_set_setting_402577236_name = StringName(from: "set_setting")
        self._method_set_setting_402577236 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_setting_402577236_name._native_ptr(), 402577236)
        assert(EditorSettings._method_set_setting_402577236 != nil)
        let _method_get_setting_1868160156_name = StringName(from: "get_setting")
        self._method_get_setting_1868160156 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_setting_1868160156_name._native_ptr(), 1868160156)
        assert(EditorSettings._method_get_setting_1868160156 != nil)
        let _method_erase_83702148_name = StringName(from: "erase")
        self._method_erase_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_erase_83702148_name._native_ptr(), 83702148)
        assert(EditorSettings._method_erase_83702148 != nil)
        let _method_set_initial_value_1529169264_name = StringName(from: "set_initial_value")
        self._method_set_initial_value_1529169264 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_initial_value_1529169264_name._native_ptr(), 1529169264)
        assert(EditorSettings._method_set_initial_value_1529169264 != nil)
        let _method_add_property_info_4155329257_name = StringName(from: "add_property_info")
        self._method_add_property_info_4155329257 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_property_info_4155329257_name._native_ptr(), 4155329257)
        assert(EditorSettings._method_add_property_info_4155329257 != nil)
        let _method_set_project_metadata_2504492430_name = StringName(from: "set_project_metadata")
        self._method_set_project_metadata_2504492430 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_project_metadata_2504492430_name._native_ptr(), 2504492430)
        assert(EditorSettings._method_set_project_metadata_2504492430 != nil)
        let _method_get_project_metadata_89809366_name = StringName(from: "get_project_metadata")
        self._method_get_project_metadata_89809366 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_project_metadata_89809366_name._native_ptr(), 89809366)
        assert(EditorSettings._method_get_project_metadata_89809366 != nil)
        let _method_set_favorites_4015028928_name = StringName(from: "set_favorites")
        self._method_set_favorites_4015028928 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_favorites_4015028928_name._native_ptr(), 4015028928)
        assert(EditorSettings._method_set_favorites_4015028928 != nil)
        let _method_get_favorites_1139954409_name = StringName(from: "get_favorites")
        self._method_get_favorites_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_favorites_1139954409_name._native_ptr(), 1139954409)
        assert(EditorSettings._method_get_favorites_1139954409 != nil)
        let _method_set_recent_dirs_4015028928_name = StringName(from: "set_recent_dirs")
        self._method_set_recent_dirs_4015028928 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_recent_dirs_4015028928_name._native_ptr(), 4015028928)
        assert(EditorSettings._method_set_recent_dirs_4015028928 != nil)
        let _method_get_recent_dirs_1139954409_name = StringName(from: "get_recent_dirs")
        self._method_get_recent_dirs_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_recent_dirs_1139954409_name._native_ptr(), 1139954409)
        assert(EditorSettings._method_get_recent_dirs_1139954409 != nil)
        let _method_set_builtin_action_override_1209351045_name = StringName(from: "set_builtin_action_override")
        self._method_set_builtin_action_override_1209351045 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_builtin_action_override_1209351045_name._native_ptr(), 1209351045)
        assert(EditorSettings._method_set_builtin_action_override_1209351045 != nil)
        let _method_check_changed_settings_in_group_3927539163_name = StringName(from: "check_changed_settings_in_group")
        self._method_check_changed_settings_in_group_3927539163 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_check_changed_settings_in_group_3927539163_name._native_ptr(), 3927539163)
        assert(EditorSettings._method_check_changed_settings_in_group_3927539163 != nil)
        let _method_get_changed_settings_1139954409_name = StringName(from: "get_changed_settings")
        self._method_get_changed_settings_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_changed_settings_1139954409_name._native_ptr(), 1139954409)
        assert(EditorSettings._method_get_changed_settings_1139954409 != nil)
        let _method_mark_setting_changed_83702148_name = StringName(from: "mark_setting_changed")
        self._method_mark_setting_changed_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_mark_setting_changed_83702148_name._native_ptr(), 83702148)
        assert(EditorSettings._method_mark_setting_changed_83702148 != nil)
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
    public func get_setting(name: String) -> Variant {
        withUnsafePointer(to: name) { name_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_setting_1868160156,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
        }
    }
    public func erase(property: String)  {
        withUnsafePointer(to: property) { property_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(property_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_erase_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_initial_value(name: StringName, value: Variant, update_current: UInt8)  {
        withUnsafePointer(to: update_current) { update_current_native in
        let value_native = value._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(value_native), .init(update_current_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_initial_value_1529169264,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_property_info(info: Dictionary)  {
        let info_native = info._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(info_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_property_info_4155329257,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_project_metadata(section: String, key: String, data: Variant)  {
        withUnsafePointer(to: key) { key_native in
        withUnsafePointer(to: section) { section_native in
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(section_native), .init(key_native), .init(data_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_project_metadata_2504492430,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_project_metadata(section: String, key: String, `default`: Variant) -> Variant {
        withUnsafePointer(to: key) { key_native in
        withUnsafePointer(to: section) { section_native in
        let default_native = `default`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(section_native), .init(key_native), .init(default_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_project_metadata_89809366,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
        }
        }
    }
    public func set_favorites(dirs: PackedStringArray)  {
        let dirs_native = dirs._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(dirs_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_favorites_4015028928,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_favorites() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_favorites_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func set_recent_dirs(dirs: PackedStringArray)  {
        let dirs_native = dirs._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(dirs_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_recent_dirs_4015028928,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_recent_dirs() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_recent_dirs_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func set_builtin_action_override(name: String, actions_list: [InputEvent])  {
        withUnsafePointer(to: name) { name_native in
        let actions_list_native = actions_list._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(actions_list_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_builtin_action_override_1209351045,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func check_changed_settings_in_group(setting_prefix: String) -> UInt8 {
        withUnsafePointer(to: setting_prefix) { setting_prefix_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(setting_prefix_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_check_changed_settings_in_group_3927539163,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func get_changed_settings() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_changed_settings_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func mark_setting_changed(setting: String)  {
        withUnsafePointer(to: setting) { setting_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(setting_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_mark_setting_changed_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}