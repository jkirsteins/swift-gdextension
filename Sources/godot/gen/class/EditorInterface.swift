import godot_native

fileprivate var __godot_name_EditorInterface: StringName! = nil

/// Godot editor's interface.
/// 
/// EditorInterface gives you control over Godot editor's window. It allows customizing the window, saving and (re-)loading scenes, rendering mesh previews, inspecting and editing resources and objects, and provides access to [EditorSettings], [EditorFileSystem], [EditorResourcePreview], [ScriptEditor], the editor viewport, and information about scenes.
///  
/// [b]Note:[/b] This class shouldn't be instantiated directly. Instead, access the singleton using [method EditorPlugin.get_editor_interface].
open class EditorInterface : Node {

    

    public override class var __godot_name: StringName { __godot_name_EditorInterface }

    static var _method_inspect_object_2564140749: GDExtensionMethodBindPtr! = nil
    static var _method_get_selection_50507531: GDExtensionMethodBindPtr! = nil
    static var _method_get_editor_settings_2469088558: GDExtensionMethodBindPtr! = nil
    static var _method_get_script_editor_3947407316: GDExtensionMethodBindPtr! = nil
    static var _method_get_base_control_829782337: GDExtensionMethodBindPtr! = nil
    static var _method_get_editor_scale_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_edit_resource_968641751: GDExtensionMethodBindPtr! = nil
    static var _method_edit_node_1078189570: GDExtensionMethodBindPtr! = nil
    static var _method_edit_script_3664508569: GDExtensionMethodBindPtr! = nil
    static var _method_open_scene_from_path_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_reload_scene_from_path_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_play_main_scene_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_play_current_scene_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_play_custom_scene_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_stop_playing_scene_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_is_playing_scene_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_playing_scene_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_open_scenes_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_get_edited_scene_root_1818953479: GDExtensionMethodBindPtr! = nil
    static var _method_get_resource_previewer_1578506115: GDExtensionMethodBindPtr! = nil
    static var _method_get_resource_filesystem_492575303: GDExtensionMethodBindPtr! = nil
    static var _method_get_editor_main_screen_915758477: GDExtensionMethodBindPtr! = nil
    static var _method_make_mesh_previews_878078554: GDExtensionMethodBindPtr! = nil
    static var _method_select_file_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_selected_paths_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_get_current_path_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_current_directory_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_file_system_dock_561123517: GDExtensionMethodBindPtr! = nil
    static var _method_get_editor_paths_4197665367: GDExtensionMethodBindPtr! = nil
    static var _method_get_command_palette_2471163807: GDExtensionMethodBindPtr! = nil
    static var _method_set_plugin_enabled_2678287736: GDExtensionMethodBindPtr! = nil
    static var _method_is_plugin_enabled_3927539163: GDExtensionMethodBindPtr! = nil
    static var _method_set_movie_maker_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_movie_maker_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_inspector_3517113938: GDExtensionMethodBindPtr! = nil
    static var _method_save_scene_166280745: GDExtensionMethodBindPtr! = nil
    static var _method_save_scene_as_1168363258: GDExtensionMethodBindPtr! = nil
    static var _method_restart_editor_3216645846: GDExtensionMethodBindPtr! = nil
    static var _method_set_main_screen_editor_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_set_distraction_free_mode_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_distraction_free_mode_enabled_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        __godot_name_EditorInterface = StringName(from: "EditorInterface")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_inspect_object_2564140749_name = StringName(from: "inspect_object")
        self._method_inspect_object_2564140749 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_inspect_object_2564140749_name._native_ptr(), 2564140749)
        assert(EditorInterface._method_inspect_object_2564140749 != nil)
        let _method_get_selection_50507531_name = StringName(from: "get_selection")
        self._method_get_selection_50507531 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_get_selection_50507531_name._native_ptr(), 50507531)
        assert(EditorInterface._method_get_selection_50507531 != nil)
        let _method_get_editor_settings_2469088558_name = StringName(from: "get_editor_settings")
        self._method_get_editor_settings_2469088558 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_get_editor_settings_2469088558_name._native_ptr(), 2469088558)
        assert(EditorInterface._method_get_editor_settings_2469088558 != nil)
        let _method_get_script_editor_3947407316_name = StringName(from: "get_script_editor")
        self._method_get_script_editor_3947407316 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_get_script_editor_3947407316_name._native_ptr(), 3947407316)
        assert(EditorInterface._method_get_script_editor_3947407316 != nil)
        let _method_get_base_control_829782337_name = StringName(from: "get_base_control")
        self._method_get_base_control_829782337 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_get_base_control_829782337_name._native_ptr(), 829782337)
        assert(EditorInterface._method_get_base_control_829782337 != nil)
        let _method_get_editor_scale_1740695150_name = StringName(from: "get_editor_scale")
        self._method_get_editor_scale_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_get_editor_scale_1740695150_name._native_ptr(), 1740695150)
        assert(EditorInterface._method_get_editor_scale_1740695150 != nil)
        let _method_edit_resource_968641751_name = StringName(from: "edit_resource")
        self._method_edit_resource_968641751 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_edit_resource_968641751_name._native_ptr(), 968641751)
        assert(EditorInterface._method_edit_resource_968641751 != nil)
        let _method_edit_node_1078189570_name = StringName(from: "edit_node")
        self._method_edit_node_1078189570 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_edit_node_1078189570_name._native_ptr(), 1078189570)
        assert(EditorInterface._method_edit_node_1078189570 != nil)
        let _method_edit_script_3664508569_name = StringName(from: "edit_script")
        self._method_edit_script_3664508569 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_edit_script_3664508569_name._native_ptr(), 3664508569)
        assert(EditorInterface._method_edit_script_3664508569 != nil)
        let _method_open_scene_from_path_83702148_name = StringName(from: "open_scene_from_path")
        self._method_open_scene_from_path_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_open_scene_from_path_83702148_name._native_ptr(), 83702148)
        assert(EditorInterface._method_open_scene_from_path_83702148 != nil)
        let _method_reload_scene_from_path_83702148_name = StringName(from: "reload_scene_from_path")
        self._method_reload_scene_from_path_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_reload_scene_from_path_83702148_name._native_ptr(), 83702148)
        assert(EditorInterface._method_reload_scene_from_path_83702148 != nil)
        let _method_play_main_scene_3218959716_name = StringName(from: "play_main_scene")
        self._method_play_main_scene_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_play_main_scene_3218959716_name._native_ptr(), 3218959716)
        assert(EditorInterface._method_play_main_scene_3218959716 != nil)
        let _method_play_current_scene_3218959716_name = StringName(from: "play_current_scene")
        self._method_play_current_scene_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_play_current_scene_3218959716_name._native_ptr(), 3218959716)
        assert(EditorInterface._method_play_current_scene_3218959716 != nil)
        let _method_play_custom_scene_83702148_name = StringName(from: "play_custom_scene")
        self._method_play_custom_scene_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_play_custom_scene_83702148_name._native_ptr(), 83702148)
        assert(EditorInterface._method_play_custom_scene_83702148 != nil)
        let _method_stop_playing_scene_3218959716_name = StringName(from: "stop_playing_scene")
        self._method_stop_playing_scene_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_stop_playing_scene_3218959716_name._native_ptr(), 3218959716)
        assert(EditorInterface._method_stop_playing_scene_3218959716 != nil)
        let _method_is_playing_scene_36873697_name = StringName(from: "is_playing_scene")
        self._method_is_playing_scene_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_is_playing_scene_36873697_name._native_ptr(), 36873697)
        assert(EditorInterface._method_is_playing_scene_36873697 != nil)
        let _method_get_playing_scene_201670096_name = StringName(from: "get_playing_scene")
        self._method_get_playing_scene_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_get_playing_scene_201670096_name._native_ptr(), 201670096)
        assert(EditorInterface._method_get_playing_scene_201670096 != nil)
        let _method_get_open_scenes_1139954409_name = StringName(from: "get_open_scenes")
        self._method_get_open_scenes_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_get_open_scenes_1139954409_name._native_ptr(), 1139954409)
        assert(EditorInterface._method_get_open_scenes_1139954409 != nil)
        let _method_get_edited_scene_root_1818953479_name = StringName(from: "get_edited_scene_root")
        self._method_get_edited_scene_root_1818953479 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_get_edited_scene_root_1818953479_name._native_ptr(), 1818953479)
        assert(EditorInterface._method_get_edited_scene_root_1818953479 != nil)
        let _method_get_resource_previewer_1578506115_name = StringName(from: "get_resource_previewer")
        self._method_get_resource_previewer_1578506115 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_get_resource_previewer_1578506115_name._native_ptr(), 1578506115)
        assert(EditorInterface._method_get_resource_previewer_1578506115 != nil)
        let _method_get_resource_filesystem_492575303_name = StringName(from: "get_resource_filesystem")
        self._method_get_resource_filesystem_492575303 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_get_resource_filesystem_492575303_name._native_ptr(), 492575303)
        assert(EditorInterface._method_get_resource_filesystem_492575303 != nil)
        let _method_get_editor_main_screen_915758477_name = StringName(from: "get_editor_main_screen")
        self._method_get_editor_main_screen_915758477 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_get_editor_main_screen_915758477_name._native_ptr(), 915758477)
        assert(EditorInterface._method_get_editor_main_screen_915758477 != nil)
        let _method_make_mesh_previews_878078554_name = StringName(from: "make_mesh_previews")
        self._method_make_mesh_previews_878078554 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_make_mesh_previews_878078554_name._native_ptr(), 878078554)
        assert(EditorInterface._method_make_mesh_previews_878078554 != nil)
        let _method_select_file_83702148_name = StringName(from: "select_file")
        self._method_select_file_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_select_file_83702148_name._native_ptr(), 83702148)
        assert(EditorInterface._method_select_file_83702148 != nil)
        let _method_get_selected_paths_1139954409_name = StringName(from: "get_selected_paths")
        self._method_get_selected_paths_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_get_selected_paths_1139954409_name._native_ptr(), 1139954409)
        assert(EditorInterface._method_get_selected_paths_1139954409 != nil)
        let _method_get_current_path_201670096_name = StringName(from: "get_current_path")
        self._method_get_current_path_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_get_current_path_201670096_name._native_ptr(), 201670096)
        assert(EditorInterface._method_get_current_path_201670096 != nil)
        let _method_get_current_directory_201670096_name = StringName(from: "get_current_directory")
        self._method_get_current_directory_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_get_current_directory_201670096_name._native_ptr(), 201670096)
        assert(EditorInterface._method_get_current_directory_201670096 != nil)
        let _method_get_file_system_dock_561123517_name = StringName(from: "get_file_system_dock")
        self._method_get_file_system_dock_561123517 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_get_file_system_dock_561123517_name._native_ptr(), 561123517)
        assert(EditorInterface._method_get_file_system_dock_561123517 != nil)
        let _method_get_editor_paths_4197665367_name = StringName(from: "get_editor_paths")
        self._method_get_editor_paths_4197665367 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_get_editor_paths_4197665367_name._native_ptr(), 4197665367)
        assert(EditorInterface._method_get_editor_paths_4197665367 != nil)
        let _method_get_command_palette_2471163807_name = StringName(from: "get_command_palette")
        self._method_get_command_palette_2471163807 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_get_command_palette_2471163807_name._native_ptr(), 2471163807)
        assert(EditorInterface._method_get_command_palette_2471163807 != nil)
        let _method_set_plugin_enabled_2678287736_name = StringName(from: "set_plugin_enabled")
        self._method_set_plugin_enabled_2678287736 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_set_plugin_enabled_2678287736_name._native_ptr(), 2678287736)
        assert(EditorInterface._method_set_plugin_enabled_2678287736 != nil)
        let _method_is_plugin_enabled_3927539163_name = StringName(from: "is_plugin_enabled")
        self._method_is_plugin_enabled_3927539163 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_is_plugin_enabled_3927539163_name._native_ptr(), 3927539163)
        assert(EditorInterface._method_is_plugin_enabled_3927539163 != nil)
        let _method_set_movie_maker_enabled_2586408642_name = StringName(from: "set_movie_maker_enabled")
        self._method_set_movie_maker_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_set_movie_maker_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(EditorInterface._method_set_movie_maker_enabled_2586408642 != nil)
        let _method_is_movie_maker_enabled_36873697_name = StringName(from: "is_movie_maker_enabled")
        self._method_is_movie_maker_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_is_movie_maker_enabled_36873697_name._native_ptr(), 36873697)
        assert(EditorInterface._method_is_movie_maker_enabled_36873697 != nil)
        let _method_get_inspector_3517113938_name = StringName(from: "get_inspector")
        self._method_get_inspector_3517113938 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_get_inspector_3517113938_name._native_ptr(), 3517113938)
        assert(EditorInterface._method_get_inspector_3517113938 != nil)
        let _method_save_scene_166280745_name = StringName(from: "save_scene")
        self._method_save_scene_166280745 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_save_scene_166280745_name._native_ptr(), 166280745)
        assert(EditorInterface._method_save_scene_166280745 != nil)
        let _method_save_scene_as_1168363258_name = StringName(from: "save_scene_as")
        self._method_save_scene_as_1168363258 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_save_scene_as_1168363258_name._native_ptr(), 1168363258)
        assert(EditorInterface._method_save_scene_as_1168363258 != nil)
        let _method_restart_editor_3216645846_name = StringName(from: "restart_editor")
        self._method_restart_editor_3216645846 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_restart_editor_3216645846_name._native_ptr(), 3216645846)
        assert(EditorInterface._method_restart_editor_3216645846 != nil)
        let _method_set_main_screen_editor_83702148_name = StringName(from: "set_main_screen_editor")
        self._method_set_main_screen_editor_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_set_main_screen_editor_83702148_name._native_ptr(), 83702148)
        assert(EditorInterface._method_set_main_screen_editor_83702148 != nil)
        let _method_set_distraction_free_mode_2586408642_name = StringName(from: "set_distraction_free_mode")
        self._method_set_distraction_free_mode_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_set_distraction_free_mode_2586408642_name._native_ptr(), 2586408642)
        assert(EditorInterface._method_set_distraction_free_mode_2586408642 != nil)
        let _method_is_distraction_free_mode_enabled_36873697_name = StringName(from: "is_distraction_free_mode_enabled")
        self._method_is_distraction_free_mode_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorInterface._native_ptr(), _method_is_distraction_free_mode_enabled_36873697_name._native_ptr(), 36873697)
        assert(EditorInterface._method_is_distraction_free_mode_enabled_36873697 != nil)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_inspect_object_2564140749,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_selection_50507531,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_editor_settings_2469088558,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_script_editor_3947407316,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_base_control_829782337,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_editor_scale_1740695150,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_edit_resource_968641751,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_edit_node_1078189570,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_edit_script_3664508569,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_open_scene_from_path_83702148,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_reload_scene_from_path_83702148,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_play_main_scene_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_play_current_scene_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_play_custom_scene_83702148,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_stop_playing_scene_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_playing_scene_36873697,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_playing_scene_201670096,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_open_scenes_1139954409,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_edited_scene_root_1818953479,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_resource_previewer_1578506115,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_resource_filesystem_492575303,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_editor_main_screen_915758477,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_make_mesh_previews_878078554,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_select_file_83702148,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_selected_paths_1139954409,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_current_path_201670096,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_current_directory_201670096,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_file_system_dock_561123517,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_editor_paths_4197665367,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_command_palette_2471163807,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_plugin_enabled_2678287736,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_plugin_enabled_3927539163,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_movie_maker_enabled_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_movie_maker_enabled_36873697,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_inspector_3517113938,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_save_scene_166280745,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_save_scene_as_1168363258,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_restart_editor_3216645846,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_main_screen_editor_83702148,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_distraction_free_mode_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_distraction_free_mode_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}