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
open class EditorSettings : Resource {

    

    public override class var __godot_name: StringName { __godot_name_EditorSettings }

    static var _method_has_setting_3927539163: StringName! = nil
    static var _method_set_setting_402577236: StringName! = nil
    static var _method_get_setting_1868160156: StringName! = nil
    static var _method_erase_83702148: StringName! = nil
    static var _method_set_initial_value_1529169264: StringName! = nil
    static var _method_add_property_info_4155329257: StringName! = nil
    static var _method_set_project_metadata_2504492430: StringName! = nil
    static var _method_get_project_metadata_89809366: StringName! = nil
    static var _method_set_favorites_4015028928: StringName! = nil
    static var _method_get_favorites_1139954409: StringName! = nil
    static var _method_set_recent_dirs_4015028928: StringName! = nil
    static var _method_get_recent_dirs_1139954409: StringName! = nil
    static var _method_set_builtin_action_override_1209351045: StringName! = nil
    static var _method_check_changed_settings_in_group_3927539163: StringName! = nil
    static var _method_get_changed_settings_1139954409: StringName! = nil
    static var _method_mark_setting_changed_83702148: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        assert(__godot_name_EditorSettings == nil)
        __godot_name_EditorSettings = StringName(from: "EditorSettings")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_has_setting_3927539163 = StringName(from: "has_setting")
        assert(self._method_has_setting_3927539163 != nil)
        self._method_set_setting_402577236 = StringName(from: "set_setting")
        assert(self._method_set_setting_402577236 != nil)
        self._method_get_setting_1868160156 = StringName(from: "get_setting")
        assert(self._method_get_setting_1868160156 != nil)
        self._method_erase_83702148 = StringName(from: "erase")
        assert(self._method_erase_83702148 != nil)
        self._method_set_initial_value_1529169264 = StringName(from: "set_initial_value")
        assert(self._method_set_initial_value_1529169264 != nil)
        self._method_add_property_info_4155329257 = StringName(from: "add_property_info")
        assert(self._method_add_property_info_4155329257 != nil)
        self._method_set_project_metadata_2504492430 = StringName(from: "set_project_metadata")
        assert(self._method_set_project_metadata_2504492430 != nil)
        self._method_get_project_metadata_89809366 = StringName(from: "get_project_metadata")
        assert(self._method_get_project_metadata_89809366 != nil)
        self._method_set_favorites_4015028928 = StringName(from: "set_favorites")
        assert(self._method_set_favorites_4015028928 != nil)
        self._method_get_favorites_1139954409 = StringName(from: "get_favorites")
        assert(self._method_get_favorites_1139954409 != nil)
        self._method_set_recent_dirs_4015028928 = StringName(from: "set_recent_dirs")
        assert(self._method_set_recent_dirs_4015028928 != nil)
        self._method_get_recent_dirs_1139954409 = StringName(from: "get_recent_dirs")
        assert(self._method_get_recent_dirs_1139954409 != nil)
        self._method_set_builtin_action_override_1209351045 = StringName(from: "set_builtin_action_override")
        assert(self._method_set_builtin_action_override_1209351045 != nil)
        self._method_check_changed_settings_in_group_3927539163 = StringName(from: "check_changed_settings_in_group")
        assert(self._method_check_changed_settings_in_group_3927539163 != nil)
        self._method_get_changed_settings_1139954409 = StringName(from: "get_changed_settings")
        assert(self._method_get_changed_settings_1139954409 != nil)
        self._method_mark_setting_changed_83702148 = StringName(from: "mark_setting_changed")
        assert(self._method_mark_setting_changed_83702148 != nil)
    }

    public func has_setting(name: godot.String) -> UInt8 {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_setting_3927539163._native_ptr(),
                    3927539163)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_setting(name: godot.String, value: Variant)  {
        let value_native = value._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(value_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_setting_402577236._native_ptr(),
                    402577236)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_setting(name: godot.String) -> Variant {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_setting_1868160156._native_ptr(),
                    1868160156)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
    }
    public func erase(property: godot.String)  {
        let property_native = property._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(property_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_erase_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_initial_value_1529169264._native_ptr(),
                    1529169264)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_property_info_4155329257._native_ptr(),
                    4155329257)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_project_metadata(section: godot.String, key: godot.String, data: Variant)  {
        let data_native = data._native_ptr()
        let key_native = key._native_ptr()
        let section_native = section._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(section_native), .init(key_native), .init(data_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_project_metadata_2504492430._native_ptr(),
                    2504492430)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_project_metadata(section: godot.String, key: godot.String, `default`: Variant) -> Variant {
        let default_native = `default`._native_ptr()
        let key_native = key._native_ptr()
        let section_native = section._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(section_native), .init(key_native), .init(default_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_project_metadata_89809366._native_ptr(),
                    89809366)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
    }
    public func set_favorites(dirs: PackedStringArray)  {
        let dirs_native = dirs._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(dirs_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_favorites_4015028928._native_ptr(),
                    4015028928)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_favorites_1139954409._native_ptr(),
                    1139954409)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func set_recent_dirs(dirs: PackedStringArray)  {
        let dirs_native = dirs._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(dirs_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_recent_dirs_4015028928._native_ptr(),
                    4015028928)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_recent_dirs_1139954409._native_ptr(),
                    1139954409)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func set_builtin_action_override(name: godot.String, actions_list: [InputEvent])  {
        let actions_list_native = actions_list._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(actions_list_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_builtin_action_override_1209351045._native_ptr(),
                    1209351045)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func check_changed_settings_in_group(setting_prefix: godot.String) -> UInt8 {
        let setting_prefix_native = setting_prefix._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(setting_prefix_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_check_changed_settings_in_group_3927539163._native_ptr(),
                    3927539163)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_changed_settings() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_changed_settings_1139954409._native_ptr(),
                    1139954409)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func mark_setting_changed(setting: godot.String)  {
        let setting_native = setting._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(setting_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_mark_setting_changed_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}