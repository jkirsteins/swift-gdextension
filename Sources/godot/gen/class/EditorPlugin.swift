import godot_native

fileprivate var __godot_name_EditorPlugin: StringName! = nil

/// Used by the editor to extend its functionality.
/// 
/// Plugins are used by the editor to extend functionality. The most common types of plugins are those which edit a given node or resource type, import plugins and export plugins. See also [EditorScript] to add functions to the editor.
open class EditorPlugin : Node {

    public enum CustomControlContainer : Int32 {
        case CONTAINER_TOOLBAR = 0
        case CONTAINER_SPATIAL_EDITOR_MENU = 1
        case CONTAINER_SPATIAL_EDITOR_SIDE_LEFT = 2
        case CONTAINER_SPATIAL_EDITOR_SIDE_RIGHT = 3
        case CONTAINER_SPATIAL_EDITOR_BOTTOM = 4
        case CONTAINER_CANVAS_EDITOR_MENU = 5
        case CONTAINER_CANVAS_EDITOR_SIDE_LEFT = 6
        case CONTAINER_CANVAS_EDITOR_SIDE_RIGHT = 7
        case CONTAINER_CANVAS_EDITOR_BOTTOM = 8
        case CONTAINER_INSPECTOR_BOTTOM = 9
        case CONTAINER_PROJECT_SETTING_TAB_LEFT = 10
        case CONTAINER_PROJECT_SETTING_TAB_RIGHT = 11
    }
    public enum DockSlot : Int32 {
        case DOCK_SLOT_LEFT_UL = 0
        case DOCK_SLOT_LEFT_BL = 1
        case DOCK_SLOT_LEFT_UR = 2
        case DOCK_SLOT_LEFT_BR = 3
        case DOCK_SLOT_RIGHT_UL = 4
        case DOCK_SLOT_RIGHT_BL = 5
        case DOCK_SLOT_RIGHT_UR = 6
        case DOCK_SLOT_RIGHT_BR = 7
        case DOCK_SLOT_MAX = 8
    }
    public enum AfterGUIInput : Int32 {
        case AFTER_GUI_INPUT_PASS = 0
        case AFTER_GUI_INPUT_STOP = 1
        case AFTER_GUI_INPUT_CUSTOM = 2
    }

    public override class var __godot_name: StringName { __godot_name_EditorPlugin }

    static var _method__forward_canvas_gui_input_0: GDExtensionMethodBindPtr! = nil
    static var _method__forward_canvas_draw_over_viewport_0: GDExtensionMethodBindPtr! = nil
    static var _method__forward_canvas_force_draw_over_viewport_0: GDExtensionMethodBindPtr! = nil
    static var _method__forward_3d_gui_input_0: GDExtensionMethodBindPtr! = nil
    static var _method__forward_3d_draw_over_viewport_0: GDExtensionMethodBindPtr! = nil
    static var _method__forward_3d_force_draw_over_viewport_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_plugin_name_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_plugin_icon_0: GDExtensionMethodBindPtr! = nil
    static var _method__has_main_screen_0: GDExtensionMethodBindPtr! = nil
    static var _method__make_visible_0: GDExtensionMethodBindPtr! = nil
    static var _method__edit_0: GDExtensionMethodBindPtr! = nil
    static var _method__handles_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_state_0: GDExtensionMethodBindPtr! = nil
    static var _method__set_state_0: GDExtensionMethodBindPtr! = nil
    static var _method__clear_0: GDExtensionMethodBindPtr! = nil
    static var _method__save_external_data_0: GDExtensionMethodBindPtr! = nil
    static var _method__apply_changes_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_breakpoints_0: GDExtensionMethodBindPtr! = nil
    static var _method__set_window_layout_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_window_layout_0: GDExtensionMethodBindPtr! = nil
    static var _method__build_0: GDExtensionMethodBindPtr! = nil
    static var _method__enable_plugin_0: GDExtensionMethodBindPtr! = nil
    static var _method__disable_plugin_0: GDExtensionMethodBindPtr! = nil
    static var _method_add_control_to_container_3092750152: GDExtensionMethodBindPtr! = nil
    static var _method_add_control_to_bottom_panel_3526039376: GDExtensionMethodBindPtr! = nil
    static var _method_add_control_to_dock_3354871258: GDExtensionMethodBindPtr! = nil
    static var _method_remove_control_from_docks_1496901182: GDExtensionMethodBindPtr! = nil
    static var _method_remove_control_from_bottom_panel_1496901182: GDExtensionMethodBindPtr! = nil
    static var _method_remove_control_from_container_3092750152: GDExtensionMethodBindPtr! = nil
    static var _method_add_tool_menu_item_2137474292: GDExtensionMethodBindPtr! = nil
    static var _method_add_tool_submenu_item_1019428915: GDExtensionMethodBindPtr! = nil
    static var _method_remove_tool_menu_item_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_export_as_menu_1775878644: GDExtensionMethodBindPtr! = nil
    static var _method_add_custom_type_1986814599: GDExtensionMethodBindPtr! = nil
    static var _method_remove_custom_type_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_add_autoload_singleton_3186203200: GDExtensionMethodBindPtr! = nil
    static var _method_remove_autoload_singleton_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_update_overlays_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_make_bottom_panel_item_visible_1496901182: GDExtensionMethodBindPtr! = nil
    static var _method_hide_bottom_panel_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_undo_redo_773492341: GDExtensionMethodBindPtr! = nil
    static var _method_add_undo_redo_inspector_hook_callback_1611583062: GDExtensionMethodBindPtr! = nil
    static var _method_remove_undo_redo_inspector_hook_callback_1611583062: GDExtensionMethodBindPtr! = nil
    static var _method_queue_save_layout_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_add_translation_parser_plugin_3116463128: GDExtensionMethodBindPtr! = nil
    static var _method_remove_translation_parser_plugin_3116463128: GDExtensionMethodBindPtr! = nil
    static var _method_add_import_plugin_3113975762: GDExtensionMethodBindPtr! = nil
    static var _method_remove_import_plugin_2312482773: GDExtensionMethodBindPtr! = nil
    static var _method_add_scene_format_importer_plugin_2764104752: GDExtensionMethodBindPtr! = nil
    static var _method_remove_scene_format_importer_plugin_2637776123: GDExtensionMethodBindPtr! = nil
    static var _method_add_scene_post_import_plugin_3492436322: GDExtensionMethodBindPtr! = nil
    static var _method_remove_scene_post_import_plugin_3045178206: GDExtensionMethodBindPtr! = nil
    static var _method_add_export_plugin_4095952207: GDExtensionMethodBindPtr! = nil
    static var _method_remove_export_plugin_4095952207: GDExtensionMethodBindPtr! = nil
    static var _method_add_node_3d_gizmo_plugin_1541015022: GDExtensionMethodBindPtr! = nil
    static var _method_remove_node_3d_gizmo_plugin_1541015022: GDExtensionMethodBindPtr! = nil
    static var _method_add_inspector_plugin_546395733: GDExtensionMethodBindPtr! = nil
    static var _method_remove_inspector_plugin_546395733: GDExtensionMethodBindPtr! = nil
    static var _method_add_resource_conversion_plugin_2124849111: GDExtensionMethodBindPtr! = nil
    static var _method_remove_resource_conversion_plugin_2124849111: GDExtensionMethodBindPtr! = nil
    static var _method_set_input_event_forwarding_always_enabled_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_force_draw_over_forwarding_enabled_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_editor_interface_4223731786: GDExtensionMethodBindPtr! = nil
    static var _method_get_script_create_dialog_3121871482: GDExtensionMethodBindPtr! = nil
    static var _method_add_debugger_plugin_3749880309: GDExtensionMethodBindPtr! = nil
    static var _method_remove_debugger_plugin_3749880309: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        __godot_name_EditorPlugin = StringName(from: "EditorPlugin")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_add_control_to_container_3092750152_name = StringName(from: "add_control_to_container")
        self._method_add_control_to_container_3092750152 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_add_control_to_container_3092750152_name._native_ptr(), 3092750152)
        assert(EditorPlugin._method_add_control_to_container_3092750152 != nil)
        let _method_add_control_to_bottom_panel_3526039376_name = StringName(from: "add_control_to_bottom_panel")
        self._method_add_control_to_bottom_panel_3526039376 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_add_control_to_bottom_panel_3526039376_name._native_ptr(), 3526039376)
        assert(EditorPlugin._method_add_control_to_bottom_panel_3526039376 != nil)
        let _method_add_control_to_dock_3354871258_name = StringName(from: "add_control_to_dock")
        self._method_add_control_to_dock_3354871258 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_add_control_to_dock_3354871258_name._native_ptr(), 3354871258)
        assert(EditorPlugin._method_add_control_to_dock_3354871258 != nil)
        let _method_remove_control_from_docks_1496901182_name = StringName(from: "remove_control_from_docks")
        self._method_remove_control_from_docks_1496901182 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_remove_control_from_docks_1496901182_name._native_ptr(), 1496901182)
        assert(EditorPlugin._method_remove_control_from_docks_1496901182 != nil)
        let _method_remove_control_from_bottom_panel_1496901182_name = StringName(from: "remove_control_from_bottom_panel")
        self._method_remove_control_from_bottom_panel_1496901182 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_remove_control_from_bottom_panel_1496901182_name._native_ptr(), 1496901182)
        assert(EditorPlugin._method_remove_control_from_bottom_panel_1496901182 != nil)
        let _method_remove_control_from_container_3092750152_name = StringName(from: "remove_control_from_container")
        self._method_remove_control_from_container_3092750152 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_remove_control_from_container_3092750152_name._native_ptr(), 3092750152)
        assert(EditorPlugin._method_remove_control_from_container_3092750152 != nil)
        let _method_add_tool_menu_item_2137474292_name = StringName(from: "add_tool_menu_item")
        self._method_add_tool_menu_item_2137474292 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_add_tool_menu_item_2137474292_name._native_ptr(), 2137474292)
        assert(EditorPlugin._method_add_tool_menu_item_2137474292 != nil)
        let _method_add_tool_submenu_item_1019428915_name = StringName(from: "add_tool_submenu_item")
        self._method_add_tool_submenu_item_1019428915 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_add_tool_submenu_item_1019428915_name._native_ptr(), 1019428915)
        assert(EditorPlugin._method_add_tool_submenu_item_1019428915 != nil)
        let _method_remove_tool_menu_item_83702148_name = StringName(from: "remove_tool_menu_item")
        self._method_remove_tool_menu_item_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_remove_tool_menu_item_83702148_name._native_ptr(), 83702148)
        assert(EditorPlugin._method_remove_tool_menu_item_83702148 != nil)
        let _method_get_export_as_menu_1775878644_name = StringName(from: "get_export_as_menu")
        self._method_get_export_as_menu_1775878644 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_get_export_as_menu_1775878644_name._native_ptr(), 1775878644)
        assert(EditorPlugin._method_get_export_as_menu_1775878644 != nil)
        let _method_add_custom_type_1986814599_name = StringName(from: "add_custom_type")
        self._method_add_custom_type_1986814599 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_add_custom_type_1986814599_name._native_ptr(), 1986814599)
        assert(EditorPlugin._method_add_custom_type_1986814599 != nil)
        let _method_remove_custom_type_83702148_name = StringName(from: "remove_custom_type")
        self._method_remove_custom_type_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_remove_custom_type_83702148_name._native_ptr(), 83702148)
        assert(EditorPlugin._method_remove_custom_type_83702148 != nil)
        let _method_add_autoload_singleton_3186203200_name = StringName(from: "add_autoload_singleton")
        self._method_add_autoload_singleton_3186203200 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_add_autoload_singleton_3186203200_name._native_ptr(), 3186203200)
        assert(EditorPlugin._method_add_autoload_singleton_3186203200 != nil)
        let _method_remove_autoload_singleton_83702148_name = StringName(from: "remove_autoload_singleton")
        self._method_remove_autoload_singleton_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_remove_autoload_singleton_83702148_name._native_ptr(), 83702148)
        assert(EditorPlugin._method_remove_autoload_singleton_83702148 != nil)
        let _method_update_overlays_3905245786_name = StringName(from: "update_overlays")
        self._method_update_overlays_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_update_overlays_3905245786_name._native_ptr(), 3905245786)
        assert(EditorPlugin._method_update_overlays_3905245786 != nil)
        let _method_make_bottom_panel_item_visible_1496901182_name = StringName(from: "make_bottom_panel_item_visible")
        self._method_make_bottom_panel_item_visible_1496901182 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_make_bottom_panel_item_visible_1496901182_name._native_ptr(), 1496901182)
        assert(EditorPlugin._method_make_bottom_panel_item_visible_1496901182 != nil)
        let _method_hide_bottom_panel_3218959716_name = StringName(from: "hide_bottom_panel")
        self._method_hide_bottom_panel_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_hide_bottom_panel_3218959716_name._native_ptr(), 3218959716)
        assert(EditorPlugin._method_hide_bottom_panel_3218959716 != nil)
        let _method_get_undo_redo_773492341_name = StringName(from: "get_undo_redo")
        self._method_get_undo_redo_773492341 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_get_undo_redo_773492341_name._native_ptr(), 773492341)
        assert(EditorPlugin._method_get_undo_redo_773492341 != nil)
        let _method_add_undo_redo_inspector_hook_callback_1611583062_name = StringName(from: "add_undo_redo_inspector_hook_callback")
        self._method_add_undo_redo_inspector_hook_callback_1611583062 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_add_undo_redo_inspector_hook_callback_1611583062_name._native_ptr(), 1611583062)
        assert(EditorPlugin._method_add_undo_redo_inspector_hook_callback_1611583062 != nil)
        let _method_remove_undo_redo_inspector_hook_callback_1611583062_name = StringName(from: "remove_undo_redo_inspector_hook_callback")
        self._method_remove_undo_redo_inspector_hook_callback_1611583062 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_remove_undo_redo_inspector_hook_callback_1611583062_name._native_ptr(), 1611583062)
        assert(EditorPlugin._method_remove_undo_redo_inspector_hook_callback_1611583062 != nil)
        let _method_queue_save_layout_3218959716_name = StringName(from: "queue_save_layout")
        self._method_queue_save_layout_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_queue_save_layout_3218959716_name._native_ptr(), 3218959716)
        assert(EditorPlugin._method_queue_save_layout_3218959716 != nil)
        let _method_add_translation_parser_plugin_3116463128_name = StringName(from: "add_translation_parser_plugin")
        self._method_add_translation_parser_plugin_3116463128 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_add_translation_parser_plugin_3116463128_name._native_ptr(), 3116463128)
        assert(EditorPlugin._method_add_translation_parser_plugin_3116463128 != nil)
        let _method_remove_translation_parser_plugin_3116463128_name = StringName(from: "remove_translation_parser_plugin")
        self._method_remove_translation_parser_plugin_3116463128 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_remove_translation_parser_plugin_3116463128_name._native_ptr(), 3116463128)
        assert(EditorPlugin._method_remove_translation_parser_plugin_3116463128 != nil)
        let _method_add_import_plugin_3113975762_name = StringName(from: "add_import_plugin")
        self._method_add_import_plugin_3113975762 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_add_import_plugin_3113975762_name._native_ptr(), 3113975762)
        assert(EditorPlugin._method_add_import_plugin_3113975762 != nil)
        let _method_remove_import_plugin_2312482773_name = StringName(from: "remove_import_plugin")
        self._method_remove_import_plugin_2312482773 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_remove_import_plugin_2312482773_name._native_ptr(), 2312482773)
        assert(EditorPlugin._method_remove_import_plugin_2312482773 != nil)
        let _method_add_scene_format_importer_plugin_2764104752_name = StringName(from: "add_scene_format_importer_plugin")
        self._method_add_scene_format_importer_plugin_2764104752 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_add_scene_format_importer_plugin_2764104752_name._native_ptr(), 2764104752)
        assert(EditorPlugin._method_add_scene_format_importer_plugin_2764104752 != nil)
        let _method_remove_scene_format_importer_plugin_2637776123_name = StringName(from: "remove_scene_format_importer_plugin")
        self._method_remove_scene_format_importer_plugin_2637776123 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_remove_scene_format_importer_plugin_2637776123_name._native_ptr(), 2637776123)
        assert(EditorPlugin._method_remove_scene_format_importer_plugin_2637776123 != nil)
        let _method_add_scene_post_import_plugin_3492436322_name = StringName(from: "add_scene_post_import_plugin")
        self._method_add_scene_post_import_plugin_3492436322 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_add_scene_post_import_plugin_3492436322_name._native_ptr(), 3492436322)
        assert(EditorPlugin._method_add_scene_post_import_plugin_3492436322 != nil)
        let _method_remove_scene_post_import_plugin_3045178206_name = StringName(from: "remove_scene_post_import_plugin")
        self._method_remove_scene_post_import_plugin_3045178206 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_remove_scene_post_import_plugin_3045178206_name._native_ptr(), 3045178206)
        assert(EditorPlugin._method_remove_scene_post_import_plugin_3045178206 != nil)
        let _method_add_export_plugin_4095952207_name = StringName(from: "add_export_plugin")
        self._method_add_export_plugin_4095952207 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_add_export_plugin_4095952207_name._native_ptr(), 4095952207)
        assert(EditorPlugin._method_add_export_plugin_4095952207 != nil)
        let _method_remove_export_plugin_4095952207_name = StringName(from: "remove_export_plugin")
        self._method_remove_export_plugin_4095952207 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_remove_export_plugin_4095952207_name._native_ptr(), 4095952207)
        assert(EditorPlugin._method_remove_export_plugin_4095952207 != nil)
        let _method_add_node_3d_gizmo_plugin_1541015022_name = StringName(from: "add_node_3d_gizmo_plugin")
        self._method_add_node_3d_gizmo_plugin_1541015022 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_add_node_3d_gizmo_plugin_1541015022_name._native_ptr(), 1541015022)
        assert(EditorPlugin._method_add_node_3d_gizmo_plugin_1541015022 != nil)
        let _method_remove_node_3d_gizmo_plugin_1541015022_name = StringName(from: "remove_node_3d_gizmo_plugin")
        self._method_remove_node_3d_gizmo_plugin_1541015022 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_remove_node_3d_gizmo_plugin_1541015022_name._native_ptr(), 1541015022)
        assert(EditorPlugin._method_remove_node_3d_gizmo_plugin_1541015022 != nil)
        let _method_add_inspector_plugin_546395733_name = StringName(from: "add_inspector_plugin")
        self._method_add_inspector_plugin_546395733 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_add_inspector_plugin_546395733_name._native_ptr(), 546395733)
        assert(EditorPlugin._method_add_inspector_plugin_546395733 != nil)
        let _method_remove_inspector_plugin_546395733_name = StringName(from: "remove_inspector_plugin")
        self._method_remove_inspector_plugin_546395733 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_remove_inspector_plugin_546395733_name._native_ptr(), 546395733)
        assert(EditorPlugin._method_remove_inspector_plugin_546395733 != nil)
        let _method_add_resource_conversion_plugin_2124849111_name = StringName(from: "add_resource_conversion_plugin")
        self._method_add_resource_conversion_plugin_2124849111 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_add_resource_conversion_plugin_2124849111_name._native_ptr(), 2124849111)
        assert(EditorPlugin._method_add_resource_conversion_plugin_2124849111 != nil)
        let _method_remove_resource_conversion_plugin_2124849111_name = StringName(from: "remove_resource_conversion_plugin")
        self._method_remove_resource_conversion_plugin_2124849111 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_remove_resource_conversion_plugin_2124849111_name._native_ptr(), 2124849111)
        assert(EditorPlugin._method_remove_resource_conversion_plugin_2124849111 != nil)
        let _method_set_input_event_forwarding_always_enabled_3218959716_name = StringName(from: "set_input_event_forwarding_always_enabled")
        self._method_set_input_event_forwarding_always_enabled_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_set_input_event_forwarding_always_enabled_3218959716_name._native_ptr(), 3218959716)
        assert(EditorPlugin._method_set_input_event_forwarding_always_enabled_3218959716 != nil)
        let _method_set_force_draw_over_forwarding_enabled_3218959716_name = StringName(from: "set_force_draw_over_forwarding_enabled")
        self._method_set_force_draw_over_forwarding_enabled_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_set_force_draw_over_forwarding_enabled_3218959716_name._native_ptr(), 3218959716)
        assert(EditorPlugin._method_set_force_draw_over_forwarding_enabled_3218959716 != nil)
        let _method_get_editor_interface_4223731786_name = StringName(from: "get_editor_interface")
        self._method_get_editor_interface_4223731786 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_get_editor_interface_4223731786_name._native_ptr(), 4223731786)
        assert(EditorPlugin._method_get_editor_interface_4223731786 != nil)
        let _method_get_script_create_dialog_3121871482_name = StringName(from: "get_script_create_dialog")
        self._method_get_script_create_dialog_3121871482 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_get_script_create_dialog_3121871482_name._native_ptr(), 3121871482)
        assert(EditorPlugin._method_get_script_create_dialog_3121871482 != nil)
        let _method_add_debugger_plugin_3749880309_name = StringName(from: "add_debugger_plugin")
        self._method_add_debugger_plugin_3749880309 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_add_debugger_plugin_3749880309_name._native_ptr(), 3749880309)
        assert(EditorPlugin._method_add_debugger_plugin_3749880309 != nil)
        let _method_remove_debugger_plugin_3749880309_name = StringName(from: "remove_debugger_plugin")
        self._method_remove_debugger_plugin_3749880309 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorPlugin._native_ptr(), _method_remove_debugger_plugin_3749880309_name._native_ptr(), 3749880309)
        assert(EditorPlugin._method_remove_debugger_plugin_3749880309 != nil)
    }

    public func _forward_canvas_gui_input(event: InputEvent) -> UInt8 {
        let event_native = event._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(event_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__forward_canvas_gui_input_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func _forward_canvas_draw_over_viewport(viewport_control: Control)  {
        let viewport_control_native = viewport_control._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_control_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__forward_canvas_draw_over_viewport_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _forward_canvas_force_draw_over_viewport(viewport_control: Control)  {
        let viewport_control_native = viewport_control._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_control_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__forward_canvas_force_draw_over_viewport_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _forward_3d_gui_input(viewport_camera: Camera3D, event: InputEvent) -> Int64 {
        let event_native = event._native_ptr()
        let viewport_camera_native = viewport_camera._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_camera_native), .init(event_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__forward_3d_gui_input_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func _forward_3d_draw_over_viewport(viewport_control: Control)  {
        let viewport_control_native = viewport_control._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_control_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__forward_3d_draw_over_viewport_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _forward_3d_force_draw_over_viewport(viewport_control: Control)  {
        let viewport_control_native = viewport_control._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_control_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__forward_3d_force_draw_over_viewport_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _get_plugin_name() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_plugin_name_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func _get_plugin_icon() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_plugin_icon_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
    }
    public func _has_main_screen() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__has_main_screen_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func _make_visible(visible: UInt8)  {
        withUnsafePointer(to: visible) { visible_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(visible_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__make_visible_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _edit(object: Variant)  {
        let object_native = object._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(object_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__edit_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _handles(object: Variant) -> UInt8 {
        let object_native = object._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(object_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__handles_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func _get_state() -> Dictionary {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_state_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
    }
    public func _set_state(state: Dictionary)  {
        let state_native = state._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(state_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__set_state_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _clear()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__clear_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _save_external_data()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__save_external_data_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _apply_changes()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__apply_changes_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _get_breakpoints() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_breakpoints_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func _set_window_layout(configuration: ConfigFile)  {
        let configuration_native = configuration._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(configuration_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__set_window_layout_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _get_window_layout(configuration: ConfigFile)  {
        let configuration_native = configuration._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(configuration_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_window_layout_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _build() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__build_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func _enable_plugin()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__enable_plugin_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _disable_plugin()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__disable_plugin_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_control_to_container(container: EditorPlugin.CustomControlContainer, control: Control)  {
        withUnsafePointer(to: container.rawValue) { container_native in
        let control_native = control._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(container_native), .init(control_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_control_to_container_3092750152,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_control_to_bottom_panel(control: Control, title: godot.String) -> Button {
        let title_native = title._native_ptr()
        let control_native = control._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(control_native), .init(title_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_control_to_bottom_panel_3526039376,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Button(godot: __resPtr.pointee)
    }
    public func add_control_to_dock(slot: EditorPlugin.DockSlot, control: Control)  {
        withUnsafePointer(to: slot.rawValue) { slot_native in
        let control_native = control._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(slot_native), .init(control_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_control_to_dock_3354871258,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func remove_control_from_docks(control: Control)  {
        let control_native = control._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(control_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_control_from_docks_1496901182,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_control_from_bottom_panel(control: Control)  {
        let control_native = control._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(control_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_control_from_bottom_panel_1496901182,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_control_from_container(container: EditorPlugin.CustomControlContainer, control: Control)  {
        withUnsafePointer(to: container.rawValue) { container_native in
        let control_native = control._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(container_native), .init(control_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_control_from_container_3092750152,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_tool_menu_item(name: godot.String, callable: Callable)  {
        let callable_native = callable._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(callable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_tool_menu_item_2137474292,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_tool_submenu_item(name: godot.String, submenu: PopupMenu)  {
        let submenu_native = submenu._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(submenu_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_tool_submenu_item_1019428915,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_tool_menu_item(name: godot.String)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_tool_menu_item_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_export_as_menu() -> PopupMenu {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_export_as_menu_1775878644,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PopupMenu(godot: __resPtr.pointee)
    }
    public func add_custom_type(`type`: godot.String, base: godot.String, script: Script, icon: Texture2D)  {
        let icon_native = icon._native_ptr()
        let script_native = script._native_ptr()
        let base_native = base._native_ptr()
        let type_native = `type`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native), .init(base_native), .init(script_native), .init(icon_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_custom_type_1986814599,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_custom_type(`type`: godot.String)  {
        let type_native = `type`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_custom_type_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_autoload_singleton(name: godot.String, path: godot.String)  {
        let path_native = path._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_autoload_singleton_3186203200,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_autoload_singleton(name: godot.String)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_autoload_singleton_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func update_overlays() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_update_overlays_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func make_bottom_panel_item_visible(item: Control)  {
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_make_bottom_panel_item_visible_1496901182,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func hide_bottom_panel()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_hide_bottom_panel_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_undo_redo() -> EditorUndoRedoManager {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_undo_redo_773492341,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return EditorUndoRedoManager(godot: __resPtr.pointee)
    }
    public func add_undo_redo_inspector_hook_callback(callable: Callable)  {
        let callable_native = callable._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(callable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_undo_redo_inspector_hook_callback_1611583062,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_undo_redo_inspector_hook_callback(callable: Callable)  {
        let callable_native = callable._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(callable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_undo_redo_inspector_hook_callback_1611583062,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func queue_save_layout()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_queue_save_layout_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_translation_parser_plugin(parser: EditorTranslationParserPlugin)  {
        let parser_native = parser._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(parser_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_translation_parser_plugin_3116463128,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_translation_parser_plugin(parser: EditorTranslationParserPlugin)  {
        let parser_native = parser._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(parser_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_translation_parser_plugin_3116463128,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_import_plugin(importer: EditorImportPlugin, first_priority: UInt8)  {
        withUnsafePointer(to: first_priority) { first_priority_native in
        let importer_native = importer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(importer_native), .init(first_priority_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_import_plugin_3113975762,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func remove_import_plugin(importer: EditorImportPlugin)  {
        let importer_native = importer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(importer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_import_plugin_2312482773,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_scene_format_importer_plugin(scene_format_importer: EditorSceneFormatImporter, first_priority: UInt8)  {
        withUnsafePointer(to: first_priority) { first_priority_native in
        let scene_format_importer_native = scene_format_importer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scene_format_importer_native), .init(first_priority_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_scene_format_importer_plugin_2764104752,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func remove_scene_format_importer_plugin(scene_format_importer: EditorSceneFormatImporter)  {
        let scene_format_importer_native = scene_format_importer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scene_format_importer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_scene_format_importer_plugin_2637776123,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_scene_post_import_plugin(scene_import_plugin: EditorScenePostImportPlugin, first_priority: UInt8)  {
        withUnsafePointer(to: first_priority) { first_priority_native in
        let scene_import_plugin_native = scene_import_plugin._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scene_import_plugin_native), .init(first_priority_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_scene_post_import_plugin_3492436322,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func remove_scene_post_import_plugin(scene_import_plugin: EditorScenePostImportPlugin)  {
        let scene_import_plugin_native = scene_import_plugin._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scene_import_plugin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_scene_post_import_plugin_3045178206,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_export_plugin(plugin: EditorExportPlugin)  {
        let plugin_native = plugin._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(plugin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_export_plugin_4095952207,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_export_plugin(plugin: EditorExportPlugin)  {
        let plugin_native = plugin._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(plugin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_export_plugin_4095952207,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_node_3d_gizmo_plugin(plugin: EditorNode3DGizmoPlugin)  {
        let plugin_native = plugin._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(plugin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_node_3d_gizmo_plugin_1541015022,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_node_3d_gizmo_plugin(plugin: EditorNode3DGizmoPlugin)  {
        let plugin_native = plugin._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(plugin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_node_3d_gizmo_plugin_1541015022,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_inspector_plugin(plugin: EditorInspectorPlugin)  {
        let plugin_native = plugin._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(plugin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_inspector_plugin_546395733,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_inspector_plugin(plugin: EditorInspectorPlugin)  {
        let plugin_native = plugin._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(plugin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_inspector_plugin_546395733,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_resource_conversion_plugin(plugin: EditorResourceConversionPlugin)  {
        let plugin_native = plugin._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(plugin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_resource_conversion_plugin_2124849111,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_resource_conversion_plugin(plugin: EditorResourceConversionPlugin)  {
        let plugin_native = plugin._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(plugin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_resource_conversion_plugin_2124849111,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_input_event_forwarding_always_enabled()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_input_event_forwarding_always_enabled_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_force_draw_over_forwarding_enabled()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_force_draw_over_forwarding_enabled_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_editor_interface() -> EditorInterface {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_editor_interface_4223731786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return EditorInterface(godot: __resPtr.pointee)
    }
    public func get_script_create_dialog() -> ScriptCreateDialog {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_script_create_dialog_3121871482,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ScriptCreateDialog(godot: __resPtr.pointee)
    }
    public func add_debugger_plugin(script: EditorDebuggerPlugin)  {
        let script_native = script._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(script_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_debugger_plugin_3749880309,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_debugger_plugin(script: EditorDebuggerPlugin)  {
        let script_native = script._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(script_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_debugger_plugin_3749880309,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}