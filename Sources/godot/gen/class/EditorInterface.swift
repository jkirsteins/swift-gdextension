import godot_native

fileprivate var __godot_name_EditorInterface: StringName! = nil

/// Godot editor's interface.
/// 
/// EditorInterface gives you control over Godot editor's window. It allows customizing the window, saving and (re-)loading scenes, rendering mesh previews, inspecting and editing resources and objects, and provides access to [EditorSettings], [EditorFileSystem], [EditorResourcePreview], [ScriptEditor], the editor viewport, and information about scenes.
///  
/// [b]Note:[/b] This class shouldn't be instantiated directly. Instead, access the singleton using [method EditorPlugin.get_editor_interface].
open class EditorInterface : Node {

    

    public override class var __godot_name: StringName { __godot_name_EditorInterface }

    static var _method_inspect_object_2564140749: StringName! = nil
    static var _method_get_selection_50507531: StringName! = nil
    static var _method_get_editor_settings_2469088558: StringName! = nil
    static var _method_get_script_editor_3947407316: StringName! = nil
    static var _method_get_base_control_829782337: StringName! = nil
    static var _method_get_editor_scale_1740695150: StringName! = nil
    static var _method_edit_resource_968641751: StringName! = nil
    static var _method_edit_node_1078189570: StringName! = nil
    static var _method_edit_script_3664508569: StringName! = nil
    static var _method_open_scene_from_path_83702148: StringName! = nil
    static var _method_reload_scene_from_path_83702148: StringName! = nil
    static var _method_play_main_scene_3218959716: StringName! = nil
    static var _method_play_current_scene_3218959716: StringName! = nil
    static var _method_play_custom_scene_83702148: StringName! = nil
    static var _method_stop_playing_scene_3218959716: StringName! = nil
    static var _method_is_playing_scene_36873697: StringName! = nil
    static var _method_get_playing_scene_201670096: StringName! = nil
    static var _method_get_open_scenes_1139954409: StringName! = nil
    static var _method_get_edited_scene_root_1818953479: StringName! = nil
    static var _method_get_resource_previewer_1578506115: StringName! = nil
    static var _method_get_resource_filesystem_492575303: StringName! = nil
    static var _method_get_editor_main_screen_915758477: StringName! = nil
    static var _method_make_mesh_previews_878078554: StringName! = nil
    static var _method_select_file_83702148: StringName! = nil
    static var _method_get_selected_paths_1139954409: StringName! = nil
    static var _method_get_current_path_201670096: StringName! = nil
    static var _method_get_current_directory_201670096: StringName! = nil
    static var _method_get_file_system_dock_561123517: StringName! = nil
    static var _method_get_editor_paths_4197665367: StringName! = nil
    static var _method_get_command_palette_2471163807: StringName! = nil
    static var _method_set_plugin_enabled_2678287736: StringName! = nil
    static var _method_is_plugin_enabled_3927539163: StringName! = nil
    static var _method_set_movie_maker_enabled_2586408642: StringName! = nil
    static var _method_is_movie_maker_enabled_36873697: StringName! = nil
    static var _method_get_inspector_3517113938: StringName! = nil
    static var _method_save_scene_166280745: StringName! = nil
    static var _method_save_scene_as_1168363258: StringName! = nil
    static var _method_restart_editor_3216645846: StringName! = nil
    static var _method_set_main_screen_editor_83702148: StringName! = nil
    static var _method_set_distraction_free_mode_2586408642: StringName! = nil
    static var _method_is_distraction_free_mode_enabled_36873697: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        assert(__godot_name_EditorInterface == nil)
        __godot_name_EditorInterface = StringName(from: "EditorInterface")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_inspect_object_2564140749 = StringName(from: "inspect_object")
        assert(self._method_inspect_object_2564140749 != nil)
        self._method_get_selection_50507531 = StringName(from: "get_selection")
        assert(self._method_get_selection_50507531 != nil)
        self._method_get_editor_settings_2469088558 = StringName(from: "get_editor_settings")
        assert(self._method_get_editor_settings_2469088558 != nil)
        self._method_get_script_editor_3947407316 = StringName(from: "get_script_editor")
        assert(self._method_get_script_editor_3947407316 != nil)
        self._method_get_base_control_829782337 = StringName(from: "get_base_control")
        assert(self._method_get_base_control_829782337 != nil)
        self._method_get_editor_scale_1740695150 = StringName(from: "get_editor_scale")
        assert(self._method_get_editor_scale_1740695150 != nil)
        self._method_edit_resource_968641751 = StringName(from: "edit_resource")
        assert(self._method_edit_resource_968641751 != nil)
        self._method_edit_node_1078189570 = StringName(from: "edit_node")
        assert(self._method_edit_node_1078189570 != nil)
        self._method_edit_script_3664508569 = StringName(from: "edit_script")
        assert(self._method_edit_script_3664508569 != nil)
        self._method_open_scene_from_path_83702148 = StringName(from: "open_scene_from_path")
        assert(self._method_open_scene_from_path_83702148 != nil)
        self._method_reload_scene_from_path_83702148 = StringName(from: "reload_scene_from_path")
        assert(self._method_reload_scene_from_path_83702148 != nil)
        self._method_play_main_scene_3218959716 = StringName(from: "play_main_scene")
        assert(self._method_play_main_scene_3218959716 != nil)
        self._method_play_current_scene_3218959716 = StringName(from: "play_current_scene")
        assert(self._method_play_current_scene_3218959716 != nil)
        self._method_play_custom_scene_83702148 = StringName(from: "play_custom_scene")
        assert(self._method_play_custom_scene_83702148 != nil)
        self._method_stop_playing_scene_3218959716 = StringName(from: "stop_playing_scene")
        assert(self._method_stop_playing_scene_3218959716 != nil)
        self._method_is_playing_scene_36873697 = StringName(from: "is_playing_scene")
        assert(self._method_is_playing_scene_36873697 != nil)
        self._method_get_playing_scene_201670096 = StringName(from: "get_playing_scene")
        assert(self._method_get_playing_scene_201670096 != nil)
        self._method_get_open_scenes_1139954409 = StringName(from: "get_open_scenes")
        assert(self._method_get_open_scenes_1139954409 != nil)
        self._method_get_edited_scene_root_1818953479 = StringName(from: "get_edited_scene_root")
        assert(self._method_get_edited_scene_root_1818953479 != nil)
        self._method_get_resource_previewer_1578506115 = StringName(from: "get_resource_previewer")
        assert(self._method_get_resource_previewer_1578506115 != nil)
        self._method_get_resource_filesystem_492575303 = StringName(from: "get_resource_filesystem")
        assert(self._method_get_resource_filesystem_492575303 != nil)
        self._method_get_editor_main_screen_915758477 = StringName(from: "get_editor_main_screen")
        assert(self._method_get_editor_main_screen_915758477 != nil)
        self._method_make_mesh_previews_878078554 = StringName(from: "make_mesh_previews")
        assert(self._method_make_mesh_previews_878078554 != nil)
        self._method_select_file_83702148 = StringName(from: "select_file")
        assert(self._method_select_file_83702148 != nil)
        self._method_get_selected_paths_1139954409 = StringName(from: "get_selected_paths")
        assert(self._method_get_selected_paths_1139954409 != nil)
        self._method_get_current_path_201670096 = StringName(from: "get_current_path")
        assert(self._method_get_current_path_201670096 != nil)
        self._method_get_current_directory_201670096 = StringName(from: "get_current_directory")
        assert(self._method_get_current_directory_201670096 != nil)
        self._method_get_file_system_dock_561123517 = StringName(from: "get_file_system_dock")
        assert(self._method_get_file_system_dock_561123517 != nil)
        self._method_get_editor_paths_4197665367 = StringName(from: "get_editor_paths")
        assert(self._method_get_editor_paths_4197665367 != nil)
        self._method_get_command_palette_2471163807 = StringName(from: "get_command_palette")
        assert(self._method_get_command_palette_2471163807 != nil)
        self._method_set_plugin_enabled_2678287736 = StringName(from: "set_plugin_enabled")
        assert(self._method_set_plugin_enabled_2678287736 != nil)
        self._method_is_plugin_enabled_3927539163 = StringName(from: "is_plugin_enabled")
        assert(self._method_is_plugin_enabled_3927539163 != nil)
        self._method_set_movie_maker_enabled_2586408642 = StringName(from: "set_movie_maker_enabled")
        assert(self._method_set_movie_maker_enabled_2586408642 != nil)
        self._method_is_movie_maker_enabled_36873697 = StringName(from: "is_movie_maker_enabled")
        assert(self._method_is_movie_maker_enabled_36873697 != nil)
        self._method_get_inspector_3517113938 = StringName(from: "get_inspector")
        assert(self._method_get_inspector_3517113938 != nil)
        self._method_save_scene_166280745 = StringName(from: "save_scene")
        assert(self._method_save_scene_166280745 != nil)
        self._method_save_scene_as_1168363258 = StringName(from: "save_scene_as")
        assert(self._method_save_scene_as_1168363258 != nil)
        self._method_restart_editor_3216645846 = StringName(from: "restart_editor")
        assert(self._method_restart_editor_3216645846 != nil)
        self._method_set_main_screen_editor_83702148 = StringName(from: "set_main_screen_editor")
        assert(self._method_set_main_screen_editor_83702148 != nil)
        self._method_set_distraction_free_mode_2586408642 = StringName(from: "set_distraction_free_mode")
        assert(self._method_set_distraction_free_mode_2586408642 != nil)
        self._method_is_distraction_free_mode_enabled_36873697 = StringName(from: "is_distraction_free_mode_enabled")
        assert(self._method_is_distraction_free_mode_enabled_36873697 != nil)
    }

    public func inspect_object(object: Object, for_property: godot.String, inspector_only: UInt8)  {
        withUnsafePointer(to: inspector_only) { inspector_only_native in
        let for_property_native = for_property._native_ptr()
        let object_native = object._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(object_native), .init(for_property_native), .init(inspector_only_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_inspect_object_2564140749._native_ptr(),
                    2564140749)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_selection() -> EditorSelection {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_selection_50507531._native_ptr(),
                    50507531)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return EditorSelection(godot: __resPtr.pointee)
    }
    public func get_editor_settings() -> EditorSettings {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_editor_settings_2469088558._native_ptr(),
                    2469088558)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return EditorSettings(godot: __resPtr.pointee)
    }
    public func get_script_editor() -> ScriptEditor {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_script_editor_3947407316._native_ptr(),
                    3947407316)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ScriptEditor(godot: __resPtr.pointee)
    }
    public func get_base_control() -> Control {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_base_control_829782337._native_ptr(),
                    829782337)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Control(godot: __resPtr.pointee)
    }
    public func get_editor_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_editor_scale_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func edit_resource(resource: Resource)  {
        let resource_native = resource._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(resource_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_edit_resource_968641751._native_ptr(),
                    968641751)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func edit_node(node: Node)  {
        let node_native = node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(node_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_edit_node_1078189570._native_ptr(),
                    1078189570)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func edit_script(script: Script, line: Int64, column: Int64, grab_focus: UInt8)  {
        withUnsafePointer(to: grab_focus) { grab_focus_native in
        withUnsafePointer(to: column) { column_native in
        withUnsafePointer(to: line) { line_native in
        let script_native = script._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(script_native), .init(line_native), .init(column_native), .init(grab_focus_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_edit_script_3664508569._native_ptr(),
                    3664508569)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func open_scene_from_path(scene_filepath: godot.String)  {
        let scene_filepath_native = scene_filepath._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scene_filepath_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_open_scene_from_path_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func reload_scene_from_path(scene_filepath: godot.String)  {
        let scene_filepath_native = scene_filepath._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scene_filepath_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_reload_scene_from_path_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func play_main_scene()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_play_main_scene_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func play_current_scene()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_play_current_scene_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func play_custom_scene(scene_filepath: godot.String)  {
        let scene_filepath_native = scene_filepath._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scene_filepath_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_play_custom_scene_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func stop_playing_scene()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_stop_playing_scene_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func is_playing_scene() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_playing_scene_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_playing_scene() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_playing_scene_201670096._native_ptr(),
                    201670096)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_open_scenes() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_open_scenes_1139954409._native_ptr(),
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
    public func get_edited_scene_root() -> Node {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_edited_scene_root_1818953479._native_ptr(),
                    1818953479)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node(godot: __resPtr.pointee)
    }
    public func get_resource_previewer() -> EditorResourcePreview {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_resource_previewer_1578506115._native_ptr(),
                    1578506115)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return EditorResourcePreview(godot: __resPtr.pointee)
    }
    public func get_resource_filesystem() -> EditorFileSystem {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_resource_filesystem_492575303._native_ptr(),
                    492575303)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return EditorFileSystem(godot: __resPtr.pointee)
    }
    public func get_editor_main_screen() -> VBoxContainer {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_editor_main_screen_915758477._native_ptr(),
                    915758477)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VBoxContainer(godot: __resPtr.pointee)
    }
    public func make_mesh_previews(meshes: [Mesh], preview_size: Int64) -> [Texture2D] {
        withUnsafePointer(to: preview_size) { preview_size_native in
        let meshes_native = meshes._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(meshes_native), .init(preview_size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_make_mesh_previews_878078554._native_ptr(),
                    878078554)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Texture2D](godot: __resPtr.pointee)
        }
    }
    public func select_file(file: godot.String)  {
        let file_native = file._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(file_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_select_file_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_selected_paths() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_selected_paths_1139954409._native_ptr(),
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
    public func get_current_path() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_current_path_201670096._native_ptr(),
                    201670096)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_current_directory() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_current_directory_201670096._native_ptr(),
                    201670096)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_file_system_dock() -> FileSystemDock {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_file_system_dock_561123517._native_ptr(),
                    561123517)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return FileSystemDock(godot: __resPtr.pointee)
    }
    public func get_editor_paths() -> EditorPaths {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_editor_paths_4197665367._native_ptr(),
                    4197665367)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return EditorPaths(godot: __resPtr.pointee)
    }
    public func get_command_palette() -> EditorCommandPalette {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_command_palette_2471163807._native_ptr(),
                    2471163807)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return EditorCommandPalette(godot: __resPtr.pointee)
    }
    public func set_plugin_enabled(plugin: godot.String, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let plugin_native = plugin._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(plugin_native), .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_plugin_enabled_2678287736._native_ptr(),
                    2678287736)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_plugin_enabled(plugin: godot.String) -> UInt8 {
        let plugin_native = plugin._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(plugin_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_plugin_enabled_3927539163._native_ptr(),
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
    public func set_movie_maker_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_movie_maker_enabled_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_movie_maker_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_movie_maker_enabled_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_inspector() -> EditorInspector {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_inspector_3517113938._native_ptr(),
                    3517113938)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return EditorInspector(godot: __resPtr.pointee)
    }
    public func save_scene() -> Error {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_save_scene_166280745._native_ptr(),
                    166280745)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func save_scene_as(path: godot.String, with_preview: UInt8)  {
        withUnsafePointer(to: with_preview) { with_preview_native in
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(with_preview_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_save_scene_as_1168363258._native_ptr(),
                    1168363258)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func restart_editor(save: UInt8)  {
        withUnsafePointer(to: save) { save_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(save_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_restart_editor_3216645846._native_ptr(),
                    3216645846)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_main_screen_editor(name: godot.String)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_main_screen_editor_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_distraction_free_mode(enter: UInt8)  {
        withUnsafePointer(to: enter) { enter_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enter_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_distraction_free_mode_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_distraction_free_mode_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_distraction_free_mode_enabled_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}