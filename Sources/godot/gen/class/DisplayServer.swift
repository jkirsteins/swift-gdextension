import godot_native

fileprivate var __godot_name_DisplayServer: StringName! = nil

/// Singleton for window management functions.
/// 
/// [DisplayServer] handles everything related to window management. This is separated from [OS] as a single operating system may support multiple display servers.
///  
/// [b]Headless mode:[/b] Starting the engine with the [code]--headless[/code] [url=$DOCS_URL/tutorials/editor/command_line_tutorial.html]command line argument[/url] disables all rendering and window management functions. Most functions from [DisplayServer] will return dummy values in this case.
public class DisplayServer : Object {

    public enum Feature : Int32 {
        case FEATURE_GLOBAL_MENU = 0
        case FEATURE_SUBWINDOWS = 1
        case FEATURE_TOUCHSCREEN = 2
        case FEATURE_MOUSE = 3
        case FEATURE_MOUSE_WARP = 4
        case FEATURE_CLIPBOARD = 5
        case FEATURE_VIRTUAL_KEYBOARD = 6
        case FEATURE_CURSOR_SHAPE = 7
        case FEATURE_CUSTOM_CURSOR_SHAPE = 8
        case FEATURE_NATIVE_DIALOG = 9
        case FEATURE_IME = 10
        case FEATURE_WINDOW_TRANSPARENCY = 11
        case FEATURE_HIDPI = 12
        case FEATURE_ICON = 13
        case FEATURE_NATIVE_ICON = 14
        case FEATURE_ORIENTATION = 15
        case FEATURE_SWAP_BUFFERS = 16
        case FEATURE_CLIPBOARD_PRIMARY = 18
        case FEATURE_TEXT_TO_SPEECH = 19
        case FEATURE_EXTEND_TO_TITLE = 20
    }
    public enum MouseMode : Int32 {
        case MOUSE_MODE_VISIBLE = 0
        case MOUSE_MODE_HIDDEN = 1
        case MOUSE_MODE_CAPTURED = 2
        case MOUSE_MODE_CONFINED = 3
        case MOUSE_MODE_CONFINED_HIDDEN = 4
    }
    public enum ScreenOrientation : Int32 {
        case SCREEN_LANDSCAPE = 0
        case SCREEN_PORTRAIT = 1
        case SCREEN_REVERSE_LANDSCAPE = 2
        case SCREEN_REVERSE_PORTRAIT = 3
        case SCREEN_SENSOR_LANDSCAPE = 4
        case SCREEN_SENSOR_PORTRAIT = 5
        case SCREEN_SENSOR = 6
    }
    public enum VirtualKeyboardType : Int32 {
        case KEYBOARD_TYPE_DEFAULT = 0
        case KEYBOARD_TYPE_MULTILINE = 1
        case KEYBOARD_TYPE_NUMBER = 2
        case KEYBOARD_TYPE_NUMBER_DECIMAL = 3
        case KEYBOARD_TYPE_PHONE = 4
        case KEYBOARD_TYPE_EMAIL_ADDRESS = 5
        case KEYBOARD_TYPE_PASSWORD = 6
        case KEYBOARD_TYPE_URL = 7
    }
    public enum CursorShape : Int32 {
        case CURSOR_ARROW = 0
        case CURSOR_IBEAM = 1
        case CURSOR_POINTING_HAND = 2
        case CURSOR_CROSS = 3
        case CURSOR_WAIT = 4
        case CURSOR_BUSY = 5
        case CURSOR_DRAG = 6
        case CURSOR_CAN_DROP = 7
        case CURSOR_FORBIDDEN = 8
        case CURSOR_VSIZE = 9
        case CURSOR_HSIZE = 10
        case CURSOR_BDIAGSIZE = 11
        case CURSOR_FDIAGSIZE = 12
        case CURSOR_MOVE = 13
        case CURSOR_VSPLIT = 14
        case CURSOR_HSPLIT = 15
        case CURSOR_HELP = 16
        case CURSOR_MAX = 17
    }
    public enum WindowMode : Int32 {
        case WINDOW_MODE_WINDOWED = 0
        case WINDOW_MODE_MINIMIZED = 1
        case WINDOW_MODE_MAXIMIZED = 2
        case WINDOW_MODE_FULLSCREEN = 3
        case WINDOW_MODE_EXCLUSIVE_FULLSCREEN = 4
    }
    public enum WindowFlags : Int32 {
        case WINDOW_FLAG_RESIZE_DISABLED = 0
        case WINDOW_FLAG_BORDERLESS = 1
        case WINDOW_FLAG_ALWAYS_ON_TOP = 2
        case WINDOW_FLAG_TRANSPARENT = 3
        case WINDOW_FLAG_NO_FOCUS = 4
        case WINDOW_FLAG_POPUP = 5
        case WINDOW_FLAG_EXTEND_TO_TITLE = 6
        case WINDOW_FLAG_MOUSE_PASSTHROUGH = 7
        case WINDOW_FLAG_MAX = 8
    }
    public enum WindowEvent : Int32 {
        case WINDOW_EVENT_MOUSE_ENTER = 0
        case WINDOW_EVENT_MOUSE_EXIT = 1
        case WINDOW_EVENT_FOCUS_IN = 2
        case WINDOW_EVENT_FOCUS_OUT = 3
        case WINDOW_EVENT_CLOSE_REQUEST = 4
        case WINDOW_EVENT_GO_BACK_REQUEST = 5
        case WINDOW_EVENT_DPI_CHANGE = 6
        case WINDOW_EVENT_TITLEBAR_CHANGE = 7
    }
    public enum VSyncMode : Int32 {
        case VSYNC_DISABLED = 0
        case VSYNC_ENABLED = 1
        case VSYNC_ADAPTIVE = 2
        case VSYNC_MAILBOX = 3
    }
    public enum HandleType : Int32 {
        case DISPLAY_HANDLE = 0
        case WINDOW_HANDLE = 1
        case WINDOW_VIEW = 2
        case OPENGL_CONTEXT = 3
    }
    public enum TTSUtteranceEvent : Int32 {
        case TTS_UTTERANCE_STARTED = 0
        case TTS_UTTERANCE_ENDED = 1
        case TTS_UTTERANCE_CANCELED = 2
        case TTS_UTTERANCE_BOUNDARY = 3
    }

    public override class var __godot_name: StringName { __godot_name_DisplayServer }

    static var _method_has_feature_334065950: GDExtensionMethodBindPtr! = nil
    static var _method_get_name_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_add_submenu_item_3806306913: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_add_item_3415468211: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_add_check_item_3415468211: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_add_icon_item_1700867534: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_add_icon_check_item_1700867534: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_add_radio_check_item_3415468211: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_add_icon_radio_check_item_1700867534: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_add_multistate_item_635750054: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_add_separator_1041533178: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_get_item_index_from_text_2878152881: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_get_item_index_from_tag_2941063483: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_is_item_checked_3511468594: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_is_item_checkable_3511468594: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_is_item_radio_checkable_3511468594: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_get_item_callback_748666903: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_get_item_key_callback_748666903: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_get_item_tag_330672633: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_get_item_text_591067909: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_get_item_submenu_591067909: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_get_item_accelerator_936065394: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_is_item_disabled_3511468594: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_get_item_tooltip_591067909: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_get_item_state_3422818498: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_get_item_max_states_3422818498: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_get_item_icon_3591713183: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_get_item_indentation_level_3422818498: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_set_item_checked_4108344793: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_set_item_checkable_4108344793: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_set_item_radio_checkable_4108344793: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_set_item_callback_3809915389: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_set_item_key_callback_3809915389: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_set_item_tag_453659863: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_set_item_text_965966136: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_set_item_submenu_965966136: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_set_item_accelerator_566943293: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_set_item_disabled_4108344793: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_set_item_tooltip_965966136: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_set_item_state_3474840532: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_set_item_max_states_3474840532: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_set_item_icon_3201338066: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_set_item_indentation_level_3474840532: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_get_item_count_1321353865: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_remove_item_2956805083: GDExtensionMethodBindPtr! = nil
    static var _method_global_menu_clear_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_tts_is_speaking_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_tts_is_paused_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_tts_get_voices_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_tts_get_voices_for_language_4291131558: GDExtensionMethodBindPtr! = nil
    static var _method_tts_speak_3723082199: GDExtensionMethodBindPtr! = nil
    static var _method_tts_pause_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_tts_resume_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_tts_stop_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_tts_set_utterance_callback_109679083: GDExtensionMethodBindPtr! = nil
    static var _method_is_dark_mode_supported_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_is_dark_mode_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_accent_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_mouse_set_mode_348288463: GDExtensionMethodBindPtr! = nil
    static var _method_mouse_get_mode_1353961651: GDExtensionMethodBindPtr! = nil
    static var _method_warp_mouse_1130785943: GDExtensionMethodBindPtr! = nil
    static var _method_mouse_get_position_3690982128: GDExtensionMethodBindPtr! = nil
    static var _method_mouse_get_button_state_2512161324: GDExtensionMethodBindPtr! = nil
    static var _method_clipboard_set_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_clipboard_get_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_clipboard_has_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_clipboard_set_primary_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_clipboard_get_primary_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_display_cutouts_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_get_display_safe_area_410525958: GDExtensionMethodBindPtr! = nil
    static var _method_get_screen_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_primary_screen_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_screen_from_rect_741354659: GDExtensionMethodBindPtr! = nil
    static var _method_screen_get_position_1725937825: GDExtensionMethodBindPtr! = nil
    static var _method_screen_get_size_1725937825: GDExtensionMethodBindPtr! = nil
    static var _method_screen_get_usable_rect_2439012528: GDExtensionMethodBindPtr! = nil
    static var _method_screen_get_dpi_181039630: GDExtensionMethodBindPtr! = nil
    static var _method_screen_get_scale_909105437: GDExtensionMethodBindPtr! = nil
    static var _method_is_touchscreen_available_4162880507: GDExtensionMethodBindPtr! = nil
    static var _method_screen_get_max_scale_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_screen_get_refresh_rate_909105437: GDExtensionMethodBindPtr! = nil
    static var _method_screen_set_orientation_2629526904: GDExtensionMethodBindPtr! = nil
    static var _method_screen_get_orientation_133818562: GDExtensionMethodBindPtr! = nil
    static var _method_screen_set_keep_on_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_screen_is_kept_on_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_window_list_1930428628: GDExtensionMethodBindPtr! = nil
    static var _method_get_window_at_screen_position_2485466453: GDExtensionMethodBindPtr! = nil
    static var _method_window_get_native_handle_2709193271: GDExtensionMethodBindPtr! = nil
    static var _method_window_get_active_popup_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_window_set_popup_safe_rect_3317281434: GDExtensionMethodBindPtr! = nil
    static var _method_window_get_popup_safe_rect_2161169500: GDExtensionMethodBindPtr! = nil
    static var _method_window_set_title_3043792800: GDExtensionMethodBindPtr! = nil
    static var _method_window_set_mouse_passthrough_3958815166: GDExtensionMethodBindPtr! = nil
    static var _method_window_get_current_screen_1591665591: GDExtensionMethodBindPtr! = nil
    static var _method_window_set_current_screen_3023605688: GDExtensionMethodBindPtr! = nil
    static var _method_window_get_position_763922886: GDExtensionMethodBindPtr! = nil
    static var _method_window_get_position_with_decorations_763922886: GDExtensionMethodBindPtr! = nil
    static var _method_window_set_position_3614040015: GDExtensionMethodBindPtr! = nil
    static var _method_window_get_size_763922886: GDExtensionMethodBindPtr! = nil
    static var _method_window_set_size_3614040015: GDExtensionMethodBindPtr! = nil
    static var _method_window_set_rect_changed_callback_3653650673: GDExtensionMethodBindPtr! = nil
    static var _method_window_set_window_event_callback_3653650673: GDExtensionMethodBindPtr! = nil
    static var _method_window_set_input_event_callback_3653650673: GDExtensionMethodBindPtr! = nil
    static var _method_window_set_input_text_callback_3653650673: GDExtensionMethodBindPtr! = nil
    static var _method_window_set_drop_files_callback_3653650673: GDExtensionMethodBindPtr! = nil
    static var _method_window_get_attached_instance_id_1591665591: GDExtensionMethodBindPtr! = nil
    static var _method_window_get_max_size_763922886: GDExtensionMethodBindPtr! = nil
    static var _method_window_set_max_size_3614040015: GDExtensionMethodBindPtr! = nil
    static var _method_window_get_min_size_763922886: GDExtensionMethodBindPtr! = nil
    static var _method_window_set_min_size_3614040015: GDExtensionMethodBindPtr! = nil
    static var _method_window_get_size_with_decorations_763922886: GDExtensionMethodBindPtr! = nil
    static var _method_window_get_mode_2185728461: GDExtensionMethodBindPtr! = nil
    static var _method_window_set_mode_2942569511: GDExtensionMethodBindPtr! = nil
    static var _method_window_set_flag_3971592565: GDExtensionMethodBindPtr! = nil
    static var _method_window_get_flag_2662949986: GDExtensionMethodBindPtr! = nil
    static var _method_window_set_window_buttons_offset_3614040015: GDExtensionMethodBindPtr! = nil
    static var _method_window_get_safe_title_margins_2295066620: GDExtensionMethodBindPtr! = nil
    static var _method_window_request_attention_1995695955: GDExtensionMethodBindPtr! = nil
    static var _method_window_move_to_foreground_1995695955: GDExtensionMethodBindPtr! = nil
    static var _method_window_can_draw_1051549951: GDExtensionMethodBindPtr! = nil
    static var _method_window_set_transient_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_window_set_exclusive_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_window_set_ime_active_450484987: GDExtensionMethodBindPtr! = nil
    static var _method_window_set_ime_position_3614040015: GDExtensionMethodBindPtr! = nil
    static var _method_window_set_vsync_mode_1708924624: GDExtensionMethodBindPtr! = nil
    static var _method_window_get_vsync_mode_578873795: GDExtensionMethodBindPtr! = nil
    static var _method_window_is_maximize_allowed_1051549951: GDExtensionMethodBindPtr! = nil
    static var _method_window_maximize_on_title_dbl_click_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_window_minimize_on_title_dbl_click_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_ime_get_selection_3690982128: GDExtensionMethodBindPtr! = nil
    static var _method_ime_get_text_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_virtual_keyboard_show_860410478: GDExtensionMethodBindPtr! = nil
    static var _method_virtual_keyboard_hide_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_virtual_keyboard_get_height_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_cursor_set_shape_2026291549: GDExtensionMethodBindPtr! = nil
    static var _method_cursor_get_shape_1087724927: GDExtensionMethodBindPtr! = nil
    static var _method_cursor_set_custom_image_1358907026: GDExtensionMethodBindPtr! = nil
    static var _method_get_swap_cancel_ok_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_enable_for_stealing_focus_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_dialog_show_4115553226: GDExtensionMethodBindPtr! = nil
    static var _method_dialog_input_text_3088703427: GDExtensionMethodBindPtr! = nil
    static var _method_keyboard_get_layout_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_keyboard_get_current_layout_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_keyboard_set_current_layout_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_keyboard_get_layout_language_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_keyboard_get_layout_name_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_keyboard_get_keycode_from_physical_3447613187: GDExtensionMethodBindPtr! = nil
    static var _method_process_events_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_force_process_and_drop_events_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_native_icon_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_set_icon_532598488: GDExtensionMethodBindPtr! = nil
    static var _method_tablet_get_driver_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_tablet_get_driver_name_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_tablet_get_current_driver_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_tablet_set_current_driver_83702148: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_DisplayServer = StringName(from: "DisplayServer")

        let _method_has_feature_334065950_name = StringName(from: "has_feature")
        self._method_has_feature_334065950 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_feature_334065950_name._native_ptr(), 334065950)
        assert(DisplayServer._method_has_feature_334065950 != nil)
        let _method_get_name_201670096_name = StringName(from: "get_name")
        self._method_get_name_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_name_201670096_name._native_ptr(), 201670096)
        assert(DisplayServer._method_get_name_201670096 != nil)
        let _method_global_menu_add_submenu_item_3806306913_name = StringName(from: "global_menu_add_submenu_item")
        self._method_global_menu_add_submenu_item_3806306913 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_add_submenu_item_3806306913_name._native_ptr(), 3806306913)
        assert(DisplayServer._method_global_menu_add_submenu_item_3806306913 != nil)
        let _method_global_menu_add_item_3415468211_name = StringName(from: "global_menu_add_item")
        self._method_global_menu_add_item_3415468211 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_add_item_3415468211_name._native_ptr(), 3415468211)
        assert(DisplayServer._method_global_menu_add_item_3415468211 != nil)
        let _method_global_menu_add_check_item_3415468211_name = StringName(from: "global_menu_add_check_item")
        self._method_global_menu_add_check_item_3415468211 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_add_check_item_3415468211_name._native_ptr(), 3415468211)
        assert(DisplayServer._method_global_menu_add_check_item_3415468211 != nil)
        let _method_global_menu_add_icon_item_1700867534_name = StringName(from: "global_menu_add_icon_item")
        self._method_global_menu_add_icon_item_1700867534 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_add_icon_item_1700867534_name._native_ptr(), 1700867534)
        assert(DisplayServer._method_global_menu_add_icon_item_1700867534 != nil)
        let _method_global_menu_add_icon_check_item_1700867534_name = StringName(from: "global_menu_add_icon_check_item")
        self._method_global_menu_add_icon_check_item_1700867534 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_add_icon_check_item_1700867534_name._native_ptr(), 1700867534)
        assert(DisplayServer._method_global_menu_add_icon_check_item_1700867534 != nil)
        let _method_global_menu_add_radio_check_item_3415468211_name = StringName(from: "global_menu_add_radio_check_item")
        self._method_global_menu_add_radio_check_item_3415468211 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_add_radio_check_item_3415468211_name._native_ptr(), 3415468211)
        assert(DisplayServer._method_global_menu_add_radio_check_item_3415468211 != nil)
        let _method_global_menu_add_icon_radio_check_item_1700867534_name = StringName(from: "global_menu_add_icon_radio_check_item")
        self._method_global_menu_add_icon_radio_check_item_1700867534 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_add_icon_radio_check_item_1700867534_name._native_ptr(), 1700867534)
        assert(DisplayServer._method_global_menu_add_icon_radio_check_item_1700867534 != nil)
        let _method_global_menu_add_multistate_item_635750054_name = StringName(from: "global_menu_add_multistate_item")
        self._method_global_menu_add_multistate_item_635750054 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_add_multistate_item_635750054_name._native_ptr(), 635750054)
        assert(DisplayServer._method_global_menu_add_multistate_item_635750054 != nil)
        let _method_global_menu_add_separator_1041533178_name = StringName(from: "global_menu_add_separator")
        self._method_global_menu_add_separator_1041533178 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_add_separator_1041533178_name._native_ptr(), 1041533178)
        assert(DisplayServer._method_global_menu_add_separator_1041533178 != nil)
        let _method_global_menu_get_item_index_from_text_2878152881_name = StringName(from: "global_menu_get_item_index_from_text")
        self._method_global_menu_get_item_index_from_text_2878152881 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_get_item_index_from_text_2878152881_name._native_ptr(), 2878152881)
        assert(DisplayServer._method_global_menu_get_item_index_from_text_2878152881 != nil)
        let _method_global_menu_get_item_index_from_tag_2941063483_name = StringName(from: "global_menu_get_item_index_from_tag")
        self._method_global_menu_get_item_index_from_tag_2941063483 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_get_item_index_from_tag_2941063483_name._native_ptr(), 2941063483)
        assert(DisplayServer._method_global_menu_get_item_index_from_tag_2941063483 != nil)
        let _method_global_menu_is_item_checked_3511468594_name = StringName(from: "global_menu_is_item_checked")
        self._method_global_menu_is_item_checked_3511468594 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_is_item_checked_3511468594_name._native_ptr(), 3511468594)
        assert(DisplayServer._method_global_menu_is_item_checked_3511468594 != nil)
        let _method_global_menu_is_item_checkable_3511468594_name = StringName(from: "global_menu_is_item_checkable")
        self._method_global_menu_is_item_checkable_3511468594 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_is_item_checkable_3511468594_name._native_ptr(), 3511468594)
        assert(DisplayServer._method_global_menu_is_item_checkable_3511468594 != nil)
        let _method_global_menu_is_item_radio_checkable_3511468594_name = StringName(from: "global_menu_is_item_radio_checkable")
        self._method_global_menu_is_item_radio_checkable_3511468594 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_is_item_radio_checkable_3511468594_name._native_ptr(), 3511468594)
        assert(DisplayServer._method_global_menu_is_item_radio_checkable_3511468594 != nil)
        let _method_global_menu_get_item_callback_748666903_name = StringName(from: "global_menu_get_item_callback")
        self._method_global_menu_get_item_callback_748666903 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_get_item_callback_748666903_name._native_ptr(), 748666903)
        assert(DisplayServer._method_global_menu_get_item_callback_748666903 != nil)
        let _method_global_menu_get_item_key_callback_748666903_name = StringName(from: "global_menu_get_item_key_callback")
        self._method_global_menu_get_item_key_callback_748666903 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_get_item_key_callback_748666903_name._native_ptr(), 748666903)
        assert(DisplayServer._method_global_menu_get_item_key_callback_748666903 != nil)
        let _method_global_menu_get_item_tag_330672633_name = StringName(from: "global_menu_get_item_tag")
        self._method_global_menu_get_item_tag_330672633 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_get_item_tag_330672633_name._native_ptr(), 330672633)
        assert(DisplayServer._method_global_menu_get_item_tag_330672633 != nil)
        let _method_global_menu_get_item_text_591067909_name = StringName(from: "global_menu_get_item_text")
        self._method_global_menu_get_item_text_591067909 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_get_item_text_591067909_name._native_ptr(), 591067909)
        assert(DisplayServer._method_global_menu_get_item_text_591067909 != nil)
        let _method_global_menu_get_item_submenu_591067909_name = StringName(from: "global_menu_get_item_submenu")
        self._method_global_menu_get_item_submenu_591067909 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_get_item_submenu_591067909_name._native_ptr(), 591067909)
        assert(DisplayServer._method_global_menu_get_item_submenu_591067909 != nil)
        let _method_global_menu_get_item_accelerator_936065394_name = StringName(from: "global_menu_get_item_accelerator")
        self._method_global_menu_get_item_accelerator_936065394 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_get_item_accelerator_936065394_name._native_ptr(), 936065394)
        assert(DisplayServer._method_global_menu_get_item_accelerator_936065394 != nil)
        let _method_global_menu_is_item_disabled_3511468594_name = StringName(from: "global_menu_is_item_disabled")
        self._method_global_menu_is_item_disabled_3511468594 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_is_item_disabled_3511468594_name._native_ptr(), 3511468594)
        assert(DisplayServer._method_global_menu_is_item_disabled_3511468594 != nil)
        let _method_global_menu_get_item_tooltip_591067909_name = StringName(from: "global_menu_get_item_tooltip")
        self._method_global_menu_get_item_tooltip_591067909 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_get_item_tooltip_591067909_name._native_ptr(), 591067909)
        assert(DisplayServer._method_global_menu_get_item_tooltip_591067909 != nil)
        let _method_global_menu_get_item_state_3422818498_name = StringName(from: "global_menu_get_item_state")
        self._method_global_menu_get_item_state_3422818498 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_get_item_state_3422818498_name._native_ptr(), 3422818498)
        assert(DisplayServer._method_global_menu_get_item_state_3422818498 != nil)
        let _method_global_menu_get_item_max_states_3422818498_name = StringName(from: "global_menu_get_item_max_states")
        self._method_global_menu_get_item_max_states_3422818498 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_get_item_max_states_3422818498_name._native_ptr(), 3422818498)
        assert(DisplayServer._method_global_menu_get_item_max_states_3422818498 != nil)
        let _method_global_menu_get_item_icon_3591713183_name = StringName(from: "global_menu_get_item_icon")
        self._method_global_menu_get_item_icon_3591713183 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_get_item_icon_3591713183_name._native_ptr(), 3591713183)
        assert(DisplayServer._method_global_menu_get_item_icon_3591713183 != nil)
        let _method_global_menu_get_item_indentation_level_3422818498_name = StringName(from: "global_menu_get_item_indentation_level")
        self._method_global_menu_get_item_indentation_level_3422818498 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_get_item_indentation_level_3422818498_name._native_ptr(), 3422818498)
        assert(DisplayServer._method_global_menu_get_item_indentation_level_3422818498 != nil)
        let _method_global_menu_set_item_checked_4108344793_name = StringName(from: "global_menu_set_item_checked")
        self._method_global_menu_set_item_checked_4108344793 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_set_item_checked_4108344793_name._native_ptr(), 4108344793)
        assert(DisplayServer._method_global_menu_set_item_checked_4108344793 != nil)
        let _method_global_menu_set_item_checkable_4108344793_name = StringName(from: "global_menu_set_item_checkable")
        self._method_global_menu_set_item_checkable_4108344793 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_set_item_checkable_4108344793_name._native_ptr(), 4108344793)
        assert(DisplayServer._method_global_menu_set_item_checkable_4108344793 != nil)
        let _method_global_menu_set_item_radio_checkable_4108344793_name = StringName(from: "global_menu_set_item_radio_checkable")
        self._method_global_menu_set_item_radio_checkable_4108344793 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_set_item_radio_checkable_4108344793_name._native_ptr(), 4108344793)
        assert(DisplayServer._method_global_menu_set_item_radio_checkable_4108344793 != nil)
        let _method_global_menu_set_item_callback_3809915389_name = StringName(from: "global_menu_set_item_callback")
        self._method_global_menu_set_item_callback_3809915389 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_set_item_callback_3809915389_name._native_ptr(), 3809915389)
        assert(DisplayServer._method_global_menu_set_item_callback_3809915389 != nil)
        let _method_global_menu_set_item_key_callback_3809915389_name = StringName(from: "global_menu_set_item_key_callback")
        self._method_global_menu_set_item_key_callback_3809915389 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_set_item_key_callback_3809915389_name._native_ptr(), 3809915389)
        assert(DisplayServer._method_global_menu_set_item_key_callback_3809915389 != nil)
        let _method_global_menu_set_item_tag_453659863_name = StringName(from: "global_menu_set_item_tag")
        self._method_global_menu_set_item_tag_453659863 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_set_item_tag_453659863_name._native_ptr(), 453659863)
        assert(DisplayServer._method_global_menu_set_item_tag_453659863 != nil)
        let _method_global_menu_set_item_text_965966136_name = StringName(from: "global_menu_set_item_text")
        self._method_global_menu_set_item_text_965966136 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_set_item_text_965966136_name._native_ptr(), 965966136)
        assert(DisplayServer._method_global_menu_set_item_text_965966136 != nil)
        let _method_global_menu_set_item_submenu_965966136_name = StringName(from: "global_menu_set_item_submenu")
        self._method_global_menu_set_item_submenu_965966136 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_set_item_submenu_965966136_name._native_ptr(), 965966136)
        assert(DisplayServer._method_global_menu_set_item_submenu_965966136 != nil)
        let _method_global_menu_set_item_accelerator_566943293_name = StringName(from: "global_menu_set_item_accelerator")
        self._method_global_menu_set_item_accelerator_566943293 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_set_item_accelerator_566943293_name._native_ptr(), 566943293)
        assert(DisplayServer._method_global_menu_set_item_accelerator_566943293 != nil)
        let _method_global_menu_set_item_disabled_4108344793_name = StringName(from: "global_menu_set_item_disabled")
        self._method_global_menu_set_item_disabled_4108344793 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_set_item_disabled_4108344793_name._native_ptr(), 4108344793)
        assert(DisplayServer._method_global_menu_set_item_disabled_4108344793 != nil)
        let _method_global_menu_set_item_tooltip_965966136_name = StringName(from: "global_menu_set_item_tooltip")
        self._method_global_menu_set_item_tooltip_965966136 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_set_item_tooltip_965966136_name._native_ptr(), 965966136)
        assert(DisplayServer._method_global_menu_set_item_tooltip_965966136 != nil)
        let _method_global_menu_set_item_state_3474840532_name = StringName(from: "global_menu_set_item_state")
        self._method_global_menu_set_item_state_3474840532 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_set_item_state_3474840532_name._native_ptr(), 3474840532)
        assert(DisplayServer._method_global_menu_set_item_state_3474840532 != nil)
        let _method_global_menu_set_item_max_states_3474840532_name = StringName(from: "global_menu_set_item_max_states")
        self._method_global_menu_set_item_max_states_3474840532 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_set_item_max_states_3474840532_name._native_ptr(), 3474840532)
        assert(DisplayServer._method_global_menu_set_item_max_states_3474840532 != nil)
        let _method_global_menu_set_item_icon_3201338066_name = StringName(from: "global_menu_set_item_icon")
        self._method_global_menu_set_item_icon_3201338066 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_set_item_icon_3201338066_name._native_ptr(), 3201338066)
        assert(DisplayServer._method_global_menu_set_item_icon_3201338066 != nil)
        let _method_global_menu_set_item_indentation_level_3474840532_name = StringName(from: "global_menu_set_item_indentation_level")
        self._method_global_menu_set_item_indentation_level_3474840532 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_set_item_indentation_level_3474840532_name._native_ptr(), 3474840532)
        assert(DisplayServer._method_global_menu_set_item_indentation_level_3474840532 != nil)
        let _method_global_menu_get_item_count_1321353865_name = StringName(from: "global_menu_get_item_count")
        self._method_global_menu_get_item_count_1321353865 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_get_item_count_1321353865_name._native_ptr(), 1321353865)
        assert(DisplayServer._method_global_menu_get_item_count_1321353865 != nil)
        let _method_global_menu_remove_item_2956805083_name = StringName(from: "global_menu_remove_item")
        self._method_global_menu_remove_item_2956805083 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_remove_item_2956805083_name._native_ptr(), 2956805083)
        assert(DisplayServer._method_global_menu_remove_item_2956805083 != nil)
        let _method_global_menu_clear_83702148_name = StringName(from: "global_menu_clear")
        self._method_global_menu_clear_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_menu_clear_83702148_name._native_ptr(), 83702148)
        assert(DisplayServer._method_global_menu_clear_83702148 != nil)
        let _method_tts_is_speaking_36873697_name = StringName(from: "tts_is_speaking")
        self._method_tts_is_speaking_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_tts_is_speaking_36873697_name._native_ptr(), 36873697)
        assert(DisplayServer._method_tts_is_speaking_36873697 != nil)
        let _method_tts_is_paused_36873697_name = StringName(from: "tts_is_paused")
        self._method_tts_is_paused_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_tts_is_paused_36873697_name._native_ptr(), 36873697)
        assert(DisplayServer._method_tts_is_paused_36873697 != nil)
        let _method_tts_get_voices_3995934104_name = StringName(from: "tts_get_voices")
        self._method_tts_get_voices_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_tts_get_voices_3995934104_name._native_ptr(), 3995934104)
        assert(DisplayServer._method_tts_get_voices_3995934104 != nil)
        let _method_tts_get_voices_for_language_4291131558_name = StringName(from: "tts_get_voices_for_language")
        self._method_tts_get_voices_for_language_4291131558 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_tts_get_voices_for_language_4291131558_name._native_ptr(), 4291131558)
        assert(DisplayServer._method_tts_get_voices_for_language_4291131558 != nil)
        let _method_tts_speak_3723082199_name = StringName(from: "tts_speak")
        self._method_tts_speak_3723082199 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_tts_speak_3723082199_name._native_ptr(), 3723082199)
        assert(DisplayServer._method_tts_speak_3723082199 != nil)
        let _method_tts_pause_3218959716_name = StringName(from: "tts_pause")
        self._method_tts_pause_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_tts_pause_3218959716_name._native_ptr(), 3218959716)
        assert(DisplayServer._method_tts_pause_3218959716 != nil)
        let _method_tts_resume_3218959716_name = StringName(from: "tts_resume")
        self._method_tts_resume_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_tts_resume_3218959716_name._native_ptr(), 3218959716)
        assert(DisplayServer._method_tts_resume_3218959716 != nil)
        let _method_tts_stop_3218959716_name = StringName(from: "tts_stop")
        self._method_tts_stop_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_tts_stop_3218959716_name._native_ptr(), 3218959716)
        assert(DisplayServer._method_tts_stop_3218959716 != nil)
        let _method_tts_set_utterance_callback_109679083_name = StringName(from: "tts_set_utterance_callback")
        self._method_tts_set_utterance_callback_109679083 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_tts_set_utterance_callback_109679083_name._native_ptr(), 109679083)
        assert(DisplayServer._method_tts_set_utterance_callback_109679083 != nil)
        let _method_is_dark_mode_supported_36873697_name = StringName(from: "is_dark_mode_supported")
        self._method_is_dark_mode_supported_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_dark_mode_supported_36873697_name._native_ptr(), 36873697)
        assert(DisplayServer._method_is_dark_mode_supported_36873697 != nil)
        let _method_is_dark_mode_36873697_name = StringName(from: "is_dark_mode")
        self._method_is_dark_mode_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_dark_mode_36873697_name._native_ptr(), 36873697)
        assert(DisplayServer._method_is_dark_mode_36873697 != nil)
        let _method_get_accent_color_3444240500_name = StringName(from: "get_accent_color")
        self._method_get_accent_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_accent_color_3444240500_name._native_ptr(), 3444240500)
        assert(DisplayServer._method_get_accent_color_3444240500 != nil)
        let _method_mouse_set_mode_348288463_name = StringName(from: "mouse_set_mode")
        self._method_mouse_set_mode_348288463 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_mouse_set_mode_348288463_name._native_ptr(), 348288463)
        assert(DisplayServer._method_mouse_set_mode_348288463 != nil)
        let _method_mouse_get_mode_1353961651_name = StringName(from: "mouse_get_mode")
        self._method_mouse_get_mode_1353961651 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_mouse_get_mode_1353961651_name._native_ptr(), 1353961651)
        assert(DisplayServer._method_mouse_get_mode_1353961651 != nil)
        let _method_warp_mouse_1130785943_name = StringName(from: "warp_mouse")
        self._method_warp_mouse_1130785943 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_warp_mouse_1130785943_name._native_ptr(), 1130785943)
        assert(DisplayServer._method_warp_mouse_1130785943 != nil)
        let _method_mouse_get_position_3690982128_name = StringName(from: "mouse_get_position")
        self._method_mouse_get_position_3690982128 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_mouse_get_position_3690982128_name._native_ptr(), 3690982128)
        assert(DisplayServer._method_mouse_get_position_3690982128 != nil)
        let _method_mouse_get_button_state_2512161324_name = StringName(from: "mouse_get_button_state")
        self._method_mouse_get_button_state_2512161324 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_mouse_get_button_state_2512161324_name._native_ptr(), 2512161324)
        assert(DisplayServer._method_mouse_get_button_state_2512161324 != nil)
        let _method_clipboard_set_83702148_name = StringName(from: "clipboard_set")
        self._method_clipboard_set_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clipboard_set_83702148_name._native_ptr(), 83702148)
        assert(DisplayServer._method_clipboard_set_83702148 != nil)
        let _method_clipboard_get_201670096_name = StringName(from: "clipboard_get")
        self._method_clipboard_get_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clipboard_get_201670096_name._native_ptr(), 201670096)
        assert(DisplayServer._method_clipboard_get_201670096 != nil)
        let _method_clipboard_has_36873697_name = StringName(from: "clipboard_has")
        self._method_clipboard_has_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clipboard_has_36873697_name._native_ptr(), 36873697)
        assert(DisplayServer._method_clipboard_has_36873697 != nil)
        let _method_clipboard_set_primary_83702148_name = StringName(from: "clipboard_set_primary")
        self._method_clipboard_set_primary_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clipboard_set_primary_83702148_name._native_ptr(), 83702148)
        assert(DisplayServer._method_clipboard_set_primary_83702148 != nil)
        let _method_clipboard_get_primary_201670096_name = StringName(from: "clipboard_get_primary")
        self._method_clipboard_get_primary_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clipboard_get_primary_201670096_name._native_ptr(), 201670096)
        assert(DisplayServer._method_clipboard_get_primary_201670096 != nil)
        let _method_get_display_cutouts_3995934104_name = StringName(from: "get_display_cutouts")
        self._method_get_display_cutouts_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_display_cutouts_3995934104_name._native_ptr(), 3995934104)
        assert(DisplayServer._method_get_display_cutouts_3995934104 != nil)
        let _method_get_display_safe_area_410525958_name = StringName(from: "get_display_safe_area")
        self._method_get_display_safe_area_410525958 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_display_safe_area_410525958_name._native_ptr(), 410525958)
        assert(DisplayServer._method_get_display_safe_area_410525958 != nil)
        let _method_get_screen_count_3905245786_name = StringName(from: "get_screen_count")
        self._method_get_screen_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_screen_count_3905245786_name._native_ptr(), 3905245786)
        assert(DisplayServer._method_get_screen_count_3905245786 != nil)
        let _method_get_primary_screen_3905245786_name = StringName(from: "get_primary_screen")
        self._method_get_primary_screen_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_primary_screen_3905245786_name._native_ptr(), 3905245786)
        assert(DisplayServer._method_get_primary_screen_3905245786 != nil)
        let _method_get_screen_from_rect_741354659_name = StringName(from: "get_screen_from_rect")
        self._method_get_screen_from_rect_741354659 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_screen_from_rect_741354659_name._native_ptr(), 741354659)
        assert(DisplayServer._method_get_screen_from_rect_741354659 != nil)
        let _method_screen_get_position_1725937825_name = StringName(from: "screen_get_position")
        self._method_screen_get_position_1725937825 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_screen_get_position_1725937825_name._native_ptr(), 1725937825)
        assert(DisplayServer._method_screen_get_position_1725937825 != nil)
        let _method_screen_get_size_1725937825_name = StringName(from: "screen_get_size")
        self._method_screen_get_size_1725937825 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_screen_get_size_1725937825_name._native_ptr(), 1725937825)
        assert(DisplayServer._method_screen_get_size_1725937825 != nil)
        let _method_screen_get_usable_rect_2439012528_name = StringName(from: "screen_get_usable_rect")
        self._method_screen_get_usable_rect_2439012528 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_screen_get_usable_rect_2439012528_name._native_ptr(), 2439012528)
        assert(DisplayServer._method_screen_get_usable_rect_2439012528 != nil)
        let _method_screen_get_dpi_181039630_name = StringName(from: "screen_get_dpi")
        self._method_screen_get_dpi_181039630 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_screen_get_dpi_181039630_name._native_ptr(), 181039630)
        assert(DisplayServer._method_screen_get_dpi_181039630 != nil)
        let _method_screen_get_scale_909105437_name = StringName(from: "screen_get_scale")
        self._method_screen_get_scale_909105437 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_screen_get_scale_909105437_name._native_ptr(), 909105437)
        assert(DisplayServer._method_screen_get_scale_909105437 != nil)
        let _method_is_touchscreen_available_4162880507_name = StringName(from: "is_touchscreen_available")
        self._method_is_touchscreen_available_4162880507 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_touchscreen_available_4162880507_name._native_ptr(), 4162880507)
        assert(DisplayServer._method_is_touchscreen_available_4162880507 != nil)
        let _method_screen_get_max_scale_1740695150_name = StringName(from: "screen_get_max_scale")
        self._method_screen_get_max_scale_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_screen_get_max_scale_1740695150_name._native_ptr(), 1740695150)
        assert(DisplayServer._method_screen_get_max_scale_1740695150 != nil)
        let _method_screen_get_refresh_rate_909105437_name = StringName(from: "screen_get_refresh_rate")
        self._method_screen_get_refresh_rate_909105437 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_screen_get_refresh_rate_909105437_name._native_ptr(), 909105437)
        assert(DisplayServer._method_screen_get_refresh_rate_909105437 != nil)
        let _method_screen_set_orientation_2629526904_name = StringName(from: "screen_set_orientation")
        self._method_screen_set_orientation_2629526904 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_screen_set_orientation_2629526904_name._native_ptr(), 2629526904)
        assert(DisplayServer._method_screen_set_orientation_2629526904 != nil)
        let _method_screen_get_orientation_133818562_name = StringName(from: "screen_get_orientation")
        self._method_screen_get_orientation_133818562 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_screen_get_orientation_133818562_name._native_ptr(), 133818562)
        assert(DisplayServer._method_screen_get_orientation_133818562 != nil)
        let _method_screen_set_keep_on_2586408642_name = StringName(from: "screen_set_keep_on")
        self._method_screen_set_keep_on_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_screen_set_keep_on_2586408642_name._native_ptr(), 2586408642)
        assert(DisplayServer._method_screen_set_keep_on_2586408642 != nil)
        let _method_screen_is_kept_on_36873697_name = StringName(from: "screen_is_kept_on")
        self._method_screen_is_kept_on_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_screen_is_kept_on_36873697_name._native_ptr(), 36873697)
        assert(DisplayServer._method_screen_is_kept_on_36873697 != nil)
        let _method_get_window_list_1930428628_name = StringName(from: "get_window_list")
        self._method_get_window_list_1930428628 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_window_list_1930428628_name._native_ptr(), 1930428628)
        assert(DisplayServer._method_get_window_list_1930428628 != nil)
        let _method_get_window_at_screen_position_2485466453_name = StringName(from: "get_window_at_screen_position")
        self._method_get_window_at_screen_position_2485466453 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_window_at_screen_position_2485466453_name._native_ptr(), 2485466453)
        assert(DisplayServer._method_get_window_at_screen_position_2485466453 != nil)
        let _method_window_get_native_handle_2709193271_name = StringName(from: "window_get_native_handle")
        self._method_window_get_native_handle_2709193271 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_get_native_handle_2709193271_name._native_ptr(), 2709193271)
        assert(DisplayServer._method_window_get_native_handle_2709193271 != nil)
        let _method_window_get_active_popup_3905245786_name = StringName(from: "window_get_active_popup")
        self._method_window_get_active_popup_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_get_active_popup_3905245786_name._native_ptr(), 3905245786)
        assert(DisplayServer._method_window_get_active_popup_3905245786 != nil)
        let _method_window_set_popup_safe_rect_3317281434_name = StringName(from: "window_set_popup_safe_rect")
        self._method_window_set_popup_safe_rect_3317281434 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_set_popup_safe_rect_3317281434_name._native_ptr(), 3317281434)
        assert(DisplayServer._method_window_set_popup_safe_rect_3317281434 != nil)
        let _method_window_get_popup_safe_rect_2161169500_name = StringName(from: "window_get_popup_safe_rect")
        self._method_window_get_popup_safe_rect_2161169500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_get_popup_safe_rect_2161169500_name._native_ptr(), 2161169500)
        assert(DisplayServer._method_window_get_popup_safe_rect_2161169500 != nil)
        let _method_window_set_title_3043792800_name = StringName(from: "window_set_title")
        self._method_window_set_title_3043792800 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_set_title_3043792800_name._native_ptr(), 3043792800)
        assert(DisplayServer._method_window_set_title_3043792800 != nil)
        let _method_window_set_mouse_passthrough_3958815166_name = StringName(from: "window_set_mouse_passthrough")
        self._method_window_set_mouse_passthrough_3958815166 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_set_mouse_passthrough_3958815166_name._native_ptr(), 3958815166)
        assert(DisplayServer._method_window_set_mouse_passthrough_3958815166 != nil)
        let _method_window_get_current_screen_1591665591_name = StringName(from: "window_get_current_screen")
        self._method_window_get_current_screen_1591665591 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_get_current_screen_1591665591_name._native_ptr(), 1591665591)
        assert(DisplayServer._method_window_get_current_screen_1591665591 != nil)
        let _method_window_set_current_screen_3023605688_name = StringName(from: "window_set_current_screen")
        self._method_window_set_current_screen_3023605688 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_set_current_screen_3023605688_name._native_ptr(), 3023605688)
        assert(DisplayServer._method_window_set_current_screen_3023605688 != nil)
        let _method_window_get_position_763922886_name = StringName(from: "window_get_position")
        self._method_window_get_position_763922886 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_get_position_763922886_name._native_ptr(), 763922886)
        assert(DisplayServer._method_window_get_position_763922886 != nil)
        let _method_window_get_position_with_decorations_763922886_name = StringName(from: "window_get_position_with_decorations")
        self._method_window_get_position_with_decorations_763922886 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_get_position_with_decorations_763922886_name._native_ptr(), 763922886)
        assert(DisplayServer._method_window_get_position_with_decorations_763922886 != nil)
        let _method_window_set_position_3614040015_name = StringName(from: "window_set_position")
        self._method_window_set_position_3614040015 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_set_position_3614040015_name._native_ptr(), 3614040015)
        assert(DisplayServer._method_window_set_position_3614040015 != nil)
        let _method_window_get_size_763922886_name = StringName(from: "window_get_size")
        self._method_window_get_size_763922886 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_get_size_763922886_name._native_ptr(), 763922886)
        assert(DisplayServer._method_window_get_size_763922886 != nil)
        let _method_window_set_size_3614040015_name = StringName(from: "window_set_size")
        self._method_window_set_size_3614040015 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_set_size_3614040015_name._native_ptr(), 3614040015)
        assert(DisplayServer._method_window_set_size_3614040015 != nil)
        let _method_window_set_rect_changed_callback_3653650673_name = StringName(from: "window_set_rect_changed_callback")
        self._method_window_set_rect_changed_callback_3653650673 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_set_rect_changed_callback_3653650673_name._native_ptr(), 3653650673)
        assert(DisplayServer._method_window_set_rect_changed_callback_3653650673 != nil)
        let _method_window_set_window_event_callback_3653650673_name = StringName(from: "window_set_window_event_callback")
        self._method_window_set_window_event_callback_3653650673 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_set_window_event_callback_3653650673_name._native_ptr(), 3653650673)
        assert(DisplayServer._method_window_set_window_event_callback_3653650673 != nil)
        let _method_window_set_input_event_callback_3653650673_name = StringName(from: "window_set_input_event_callback")
        self._method_window_set_input_event_callback_3653650673 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_set_input_event_callback_3653650673_name._native_ptr(), 3653650673)
        assert(DisplayServer._method_window_set_input_event_callback_3653650673 != nil)
        let _method_window_set_input_text_callback_3653650673_name = StringName(from: "window_set_input_text_callback")
        self._method_window_set_input_text_callback_3653650673 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_set_input_text_callback_3653650673_name._native_ptr(), 3653650673)
        assert(DisplayServer._method_window_set_input_text_callback_3653650673 != nil)
        let _method_window_set_drop_files_callback_3653650673_name = StringName(from: "window_set_drop_files_callback")
        self._method_window_set_drop_files_callback_3653650673 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_set_drop_files_callback_3653650673_name._native_ptr(), 3653650673)
        assert(DisplayServer._method_window_set_drop_files_callback_3653650673 != nil)
        let _method_window_get_attached_instance_id_1591665591_name = StringName(from: "window_get_attached_instance_id")
        self._method_window_get_attached_instance_id_1591665591 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_get_attached_instance_id_1591665591_name._native_ptr(), 1591665591)
        assert(DisplayServer._method_window_get_attached_instance_id_1591665591 != nil)
        let _method_window_get_max_size_763922886_name = StringName(from: "window_get_max_size")
        self._method_window_get_max_size_763922886 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_get_max_size_763922886_name._native_ptr(), 763922886)
        assert(DisplayServer._method_window_get_max_size_763922886 != nil)
        let _method_window_set_max_size_3614040015_name = StringName(from: "window_set_max_size")
        self._method_window_set_max_size_3614040015 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_set_max_size_3614040015_name._native_ptr(), 3614040015)
        assert(DisplayServer._method_window_set_max_size_3614040015 != nil)
        let _method_window_get_min_size_763922886_name = StringName(from: "window_get_min_size")
        self._method_window_get_min_size_763922886 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_get_min_size_763922886_name._native_ptr(), 763922886)
        assert(DisplayServer._method_window_get_min_size_763922886 != nil)
        let _method_window_set_min_size_3614040015_name = StringName(from: "window_set_min_size")
        self._method_window_set_min_size_3614040015 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_set_min_size_3614040015_name._native_ptr(), 3614040015)
        assert(DisplayServer._method_window_set_min_size_3614040015 != nil)
        let _method_window_get_size_with_decorations_763922886_name = StringName(from: "window_get_size_with_decorations")
        self._method_window_get_size_with_decorations_763922886 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_get_size_with_decorations_763922886_name._native_ptr(), 763922886)
        assert(DisplayServer._method_window_get_size_with_decorations_763922886 != nil)
        let _method_window_get_mode_2185728461_name = StringName(from: "window_get_mode")
        self._method_window_get_mode_2185728461 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_get_mode_2185728461_name._native_ptr(), 2185728461)
        assert(DisplayServer._method_window_get_mode_2185728461 != nil)
        let _method_window_set_mode_2942569511_name = StringName(from: "window_set_mode")
        self._method_window_set_mode_2942569511 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_set_mode_2942569511_name._native_ptr(), 2942569511)
        assert(DisplayServer._method_window_set_mode_2942569511 != nil)
        let _method_window_set_flag_3971592565_name = StringName(from: "window_set_flag")
        self._method_window_set_flag_3971592565 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_set_flag_3971592565_name._native_ptr(), 3971592565)
        assert(DisplayServer._method_window_set_flag_3971592565 != nil)
        let _method_window_get_flag_2662949986_name = StringName(from: "window_get_flag")
        self._method_window_get_flag_2662949986 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_get_flag_2662949986_name._native_ptr(), 2662949986)
        assert(DisplayServer._method_window_get_flag_2662949986 != nil)
        let _method_window_set_window_buttons_offset_3614040015_name = StringName(from: "window_set_window_buttons_offset")
        self._method_window_set_window_buttons_offset_3614040015 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_set_window_buttons_offset_3614040015_name._native_ptr(), 3614040015)
        assert(DisplayServer._method_window_set_window_buttons_offset_3614040015 != nil)
        let _method_window_get_safe_title_margins_2295066620_name = StringName(from: "window_get_safe_title_margins")
        self._method_window_get_safe_title_margins_2295066620 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_get_safe_title_margins_2295066620_name._native_ptr(), 2295066620)
        assert(DisplayServer._method_window_get_safe_title_margins_2295066620 != nil)
        let _method_window_request_attention_1995695955_name = StringName(from: "window_request_attention")
        self._method_window_request_attention_1995695955 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_request_attention_1995695955_name._native_ptr(), 1995695955)
        assert(DisplayServer._method_window_request_attention_1995695955 != nil)
        let _method_window_move_to_foreground_1995695955_name = StringName(from: "window_move_to_foreground")
        self._method_window_move_to_foreground_1995695955 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_move_to_foreground_1995695955_name._native_ptr(), 1995695955)
        assert(DisplayServer._method_window_move_to_foreground_1995695955 != nil)
        let _method_window_can_draw_1051549951_name = StringName(from: "window_can_draw")
        self._method_window_can_draw_1051549951 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_can_draw_1051549951_name._native_ptr(), 1051549951)
        assert(DisplayServer._method_window_can_draw_1051549951 != nil)
        let _method_window_set_transient_3937882851_name = StringName(from: "window_set_transient")
        self._method_window_set_transient_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_set_transient_3937882851_name._native_ptr(), 3937882851)
        assert(DisplayServer._method_window_set_transient_3937882851 != nil)
        let _method_window_set_exclusive_300928843_name = StringName(from: "window_set_exclusive")
        self._method_window_set_exclusive_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_set_exclusive_300928843_name._native_ptr(), 300928843)
        assert(DisplayServer._method_window_set_exclusive_300928843 != nil)
        let _method_window_set_ime_active_450484987_name = StringName(from: "window_set_ime_active")
        self._method_window_set_ime_active_450484987 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_set_ime_active_450484987_name._native_ptr(), 450484987)
        assert(DisplayServer._method_window_set_ime_active_450484987 != nil)
        let _method_window_set_ime_position_3614040015_name = StringName(from: "window_set_ime_position")
        self._method_window_set_ime_position_3614040015 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_set_ime_position_3614040015_name._native_ptr(), 3614040015)
        assert(DisplayServer._method_window_set_ime_position_3614040015 != nil)
        let _method_window_set_vsync_mode_1708924624_name = StringName(from: "window_set_vsync_mode")
        self._method_window_set_vsync_mode_1708924624 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_set_vsync_mode_1708924624_name._native_ptr(), 1708924624)
        assert(DisplayServer._method_window_set_vsync_mode_1708924624 != nil)
        let _method_window_get_vsync_mode_578873795_name = StringName(from: "window_get_vsync_mode")
        self._method_window_get_vsync_mode_578873795 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_get_vsync_mode_578873795_name._native_ptr(), 578873795)
        assert(DisplayServer._method_window_get_vsync_mode_578873795 != nil)
        let _method_window_is_maximize_allowed_1051549951_name = StringName(from: "window_is_maximize_allowed")
        self._method_window_is_maximize_allowed_1051549951 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_is_maximize_allowed_1051549951_name._native_ptr(), 1051549951)
        assert(DisplayServer._method_window_is_maximize_allowed_1051549951 != nil)
        let _method_window_maximize_on_title_dbl_click_36873697_name = StringName(from: "window_maximize_on_title_dbl_click")
        self._method_window_maximize_on_title_dbl_click_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_maximize_on_title_dbl_click_36873697_name._native_ptr(), 36873697)
        assert(DisplayServer._method_window_maximize_on_title_dbl_click_36873697 != nil)
        let _method_window_minimize_on_title_dbl_click_36873697_name = StringName(from: "window_minimize_on_title_dbl_click")
        self._method_window_minimize_on_title_dbl_click_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_window_minimize_on_title_dbl_click_36873697_name._native_ptr(), 36873697)
        assert(DisplayServer._method_window_minimize_on_title_dbl_click_36873697 != nil)
        let _method_ime_get_selection_3690982128_name = StringName(from: "ime_get_selection")
        self._method_ime_get_selection_3690982128 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_ime_get_selection_3690982128_name._native_ptr(), 3690982128)
        assert(DisplayServer._method_ime_get_selection_3690982128 != nil)
        let _method_ime_get_text_201670096_name = StringName(from: "ime_get_text")
        self._method_ime_get_text_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_ime_get_text_201670096_name._native_ptr(), 201670096)
        assert(DisplayServer._method_ime_get_text_201670096 != nil)
        let _method_virtual_keyboard_show_860410478_name = StringName(from: "virtual_keyboard_show")
        self._method_virtual_keyboard_show_860410478 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_virtual_keyboard_show_860410478_name._native_ptr(), 860410478)
        assert(DisplayServer._method_virtual_keyboard_show_860410478 != nil)
        let _method_virtual_keyboard_hide_3218959716_name = StringName(from: "virtual_keyboard_hide")
        self._method_virtual_keyboard_hide_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_virtual_keyboard_hide_3218959716_name._native_ptr(), 3218959716)
        assert(DisplayServer._method_virtual_keyboard_hide_3218959716 != nil)
        let _method_virtual_keyboard_get_height_3905245786_name = StringName(from: "virtual_keyboard_get_height")
        self._method_virtual_keyboard_get_height_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_virtual_keyboard_get_height_3905245786_name._native_ptr(), 3905245786)
        assert(DisplayServer._method_virtual_keyboard_get_height_3905245786 != nil)
        let _method_cursor_set_shape_2026291549_name = StringName(from: "cursor_set_shape")
        self._method_cursor_set_shape_2026291549 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_cursor_set_shape_2026291549_name._native_ptr(), 2026291549)
        assert(DisplayServer._method_cursor_set_shape_2026291549 != nil)
        let _method_cursor_get_shape_1087724927_name = StringName(from: "cursor_get_shape")
        self._method_cursor_get_shape_1087724927 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_cursor_get_shape_1087724927_name._native_ptr(), 1087724927)
        assert(DisplayServer._method_cursor_get_shape_1087724927 != nil)
        let _method_cursor_set_custom_image_1358907026_name = StringName(from: "cursor_set_custom_image")
        self._method_cursor_set_custom_image_1358907026 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_cursor_set_custom_image_1358907026_name._native_ptr(), 1358907026)
        assert(DisplayServer._method_cursor_set_custom_image_1358907026 != nil)
        let _method_get_swap_cancel_ok_2240911060_name = StringName(from: "get_swap_cancel_ok")
        self._method_get_swap_cancel_ok_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_swap_cancel_ok_2240911060_name._native_ptr(), 2240911060)
        assert(DisplayServer._method_get_swap_cancel_ok_2240911060 != nil)
        let _method_enable_for_stealing_focus_1286410249_name = StringName(from: "enable_for_stealing_focus")
        self._method_enable_for_stealing_focus_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_enable_for_stealing_focus_1286410249_name._native_ptr(), 1286410249)
        assert(DisplayServer._method_enable_for_stealing_focus_1286410249 != nil)
        let _method_dialog_show_4115553226_name = StringName(from: "dialog_show")
        self._method_dialog_show_4115553226 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_dialog_show_4115553226_name._native_ptr(), 4115553226)
        assert(DisplayServer._method_dialog_show_4115553226 != nil)
        let _method_dialog_input_text_3088703427_name = StringName(from: "dialog_input_text")
        self._method_dialog_input_text_3088703427 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_dialog_input_text_3088703427_name._native_ptr(), 3088703427)
        assert(DisplayServer._method_dialog_input_text_3088703427 != nil)
        let _method_keyboard_get_layout_count_3905245786_name = StringName(from: "keyboard_get_layout_count")
        self._method_keyboard_get_layout_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_keyboard_get_layout_count_3905245786_name._native_ptr(), 3905245786)
        assert(DisplayServer._method_keyboard_get_layout_count_3905245786 != nil)
        let _method_keyboard_get_current_layout_3905245786_name = StringName(from: "keyboard_get_current_layout")
        self._method_keyboard_get_current_layout_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_keyboard_get_current_layout_3905245786_name._native_ptr(), 3905245786)
        assert(DisplayServer._method_keyboard_get_current_layout_3905245786 != nil)
        let _method_keyboard_set_current_layout_1286410249_name = StringName(from: "keyboard_set_current_layout")
        self._method_keyboard_set_current_layout_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_keyboard_set_current_layout_1286410249_name._native_ptr(), 1286410249)
        assert(DisplayServer._method_keyboard_set_current_layout_1286410249 != nil)
        let _method_keyboard_get_layout_language_844755477_name = StringName(from: "keyboard_get_layout_language")
        self._method_keyboard_get_layout_language_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_keyboard_get_layout_language_844755477_name._native_ptr(), 844755477)
        assert(DisplayServer._method_keyboard_get_layout_language_844755477 != nil)
        let _method_keyboard_get_layout_name_844755477_name = StringName(from: "keyboard_get_layout_name")
        self._method_keyboard_get_layout_name_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_keyboard_get_layout_name_844755477_name._native_ptr(), 844755477)
        assert(DisplayServer._method_keyboard_get_layout_name_844755477 != nil)
        let _method_keyboard_get_keycode_from_physical_3447613187_name = StringName(from: "keyboard_get_keycode_from_physical")
        self._method_keyboard_get_keycode_from_physical_3447613187 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_keyboard_get_keycode_from_physical_3447613187_name._native_ptr(), 3447613187)
        assert(DisplayServer._method_keyboard_get_keycode_from_physical_3447613187 != nil)
        let _method_process_events_3218959716_name = StringName(from: "process_events")
        self._method_process_events_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_process_events_3218959716_name._native_ptr(), 3218959716)
        assert(DisplayServer._method_process_events_3218959716 != nil)
        let _method_force_process_and_drop_events_3218959716_name = StringName(from: "force_process_and_drop_events")
        self._method_force_process_and_drop_events_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_force_process_and_drop_events_3218959716_name._native_ptr(), 3218959716)
        assert(DisplayServer._method_force_process_and_drop_events_3218959716 != nil)
        let _method_set_native_icon_83702148_name = StringName(from: "set_native_icon")
        self._method_set_native_icon_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_native_icon_83702148_name._native_ptr(), 83702148)
        assert(DisplayServer._method_set_native_icon_83702148 != nil)
        let _method_set_icon_532598488_name = StringName(from: "set_icon")
        self._method_set_icon_532598488 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_icon_532598488_name._native_ptr(), 532598488)
        assert(DisplayServer._method_set_icon_532598488 != nil)
        let _method_tablet_get_driver_count_3905245786_name = StringName(from: "tablet_get_driver_count")
        self._method_tablet_get_driver_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_tablet_get_driver_count_3905245786_name._native_ptr(), 3905245786)
        assert(DisplayServer._method_tablet_get_driver_count_3905245786 != nil)
        let _method_tablet_get_driver_name_844755477_name = StringName(from: "tablet_get_driver_name")
        self._method_tablet_get_driver_name_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_tablet_get_driver_name_844755477_name._native_ptr(), 844755477)
        assert(DisplayServer._method_tablet_get_driver_name_844755477 != nil)
        let _method_tablet_get_current_driver_201670096_name = StringName(from: "tablet_get_current_driver")
        self._method_tablet_get_current_driver_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_tablet_get_current_driver_201670096_name._native_ptr(), 201670096)
        assert(DisplayServer._method_tablet_get_current_driver_201670096 != nil)
        let _method_tablet_set_current_driver_83702148_name = StringName(from: "tablet_set_current_driver")
        self._method_tablet_set_current_driver_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_tablet_set_current_driver_83702148_name._native_ptr(), 83702148)
        assert(DisplayServer._method_tablet_set_current_driver_83702148 != nil)
    }

    public func has_feature(feature: DisplayServer.Feature) -> UInt8 {
        withUnsafePointer(to: feature.rawValue) { feature_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(feature_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_feature_334065950,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func get_name() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_name_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func global_menu_add_submenu_item(menu_root: String, label: String, submenu: String, index: Int64) -> Int64 {
        withUnsafePointer(to: index) { index_native in
        withUnsafePointer(to: submenu) { submenu_native in
        withUnsafePointer(to: label) { label_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(label_native), .init(submenu_native), .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_add_submenu_item_3806306913,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
        }
        }
    }
    public func global_menu_add_item(menu_root: String, label: String, callback: Callable, key_callback: Callable, tag: Variant, accelerator: Key, index: Int64) -> Int64 {
        withUnsafePointer(to: index) { index_native in
        withUnsafePointer(to: label) { label_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        withUnsafePointer(to: accelerator.rawValue) { accelerator_native in
        let tag_native = tag._native_ptr()
        let key_callback_native = key_callback._native_ptr()
        let callback_native = callback._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 7)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(label_native), .init(callback_native), .init(key_callback_native), .init(tag_native), .init(accelerator_native), .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_add_item_3415468211,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
        }
        }
    }
    public func global_menu_add_check_item(menu_root: String, label: String, callback: Callable, key_callback: Callable, tag: Variant, accelerator: Key, index: Int64) -> Int64 {
        withUnsafePointer(to: index) { index_native in
        withUnsafePointer(to: label) { label_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        withUnsafePointer(to: accelerator.rawValue) { accelerator_native in
        let tag_native = tag._native_ptr()
        let key_callback_native = key_callback._native_ptr()
        let callback_native = callback._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 7)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(label_native), .init(callback_native), .init(key_callback_native), .init(tag_native), .init(accelerator_native), .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_add_check_item_3415468211,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
        }
        }
    }
    public func global_menu_add_icon_item(menu_root: String, icon: Texture2D, label: String, callback: Callable, key_callback: Callable, tag: Variant, accelerator: Key, index: Int64) -> Int64 {
        withUnsafePointer(to: index) { index_native in
        withUnsafePointer(to: label) { label_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        withUnsafePointer(to: accelerator.rawValue) { accelerator_native in
        let tag_native = tag._native_ptr()
        let key_callback_native = key_callback._native_ptr()
        let callback_native = callback._native_ptr()
        let icon_native = icon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 8)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(icon_native), .init(label_native), .init(callback_native), .init(key_callback_native), .init(tag_native), .init(accelerator_native), .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_add_icon_item_1700867534,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
        }
        }
    }
    public func global_menu_add_icon_check_item(menu_root: String, icon: Texture2D, label: String, callback: Callable, key_callback: Callable, tag: Variant, accelerator: Key, index: Int64) -> Int64 {
        withUnsafePointer(to: index) { index_native in
        withUnsafePointer(to: label) { label_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        withUnsafePointer(to: accelerator.rawValue) { accelerator_native in
        let tag_native = tag._native_ptr()
        let key_callback_native = key_callback._native_ptr()
        let callback_native = callback._native_ptr()
        let icon_native = icon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 8)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(icon_native), .init(label_native), .init(callback_native), .init(key_callback_native), .init(tag_native), .init(accelerator_native), .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_add_icon_check_item_1700867534,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
        }
        }
    }
    public func global_menu_add_radio_check_item(menu_root: String, label: String, callback: Callable, key_callback: Callable, tag: Variant, accelerator: Key, index: Int64) -> Int64 {
        withUnsafePointer(to: index) { index_native in
        withUnsafePointer(to: label) { label_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        withUnsafePointer(to: accelerator.rawValue) { accelerator_native in
        let tag_native = tag._native_ptr()
        let key_callback_native = key_callback._native_ptr()
        let callback_native = callback._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 7)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(label_native), .init(callback_native), .init(key_callback_native), .init(tag_native), .init(accelerator_native), .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_add_radio_check_item_3415468211,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
        }
        }
    }
    public func global_menu_add_icon_radio_check_item(menu_root: String, icon: Texture2D, label: String, callback: Callable, key_callback: Callable, tag: Variant, accelerator: Key, index: Int64) -> Int64 {
        withUnsafePointer(to: index) { index_native in
        withUnsafePointer(to: label) { label_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        withUnsafePointer(to: accelerator.rawValue) { accelerator_native in
        let tag_native = tag._native_ptr()
        let key_callback_native = key_callback._native_ptr()
        let callback_native = callback._native_ptr()
        let icon_native = icon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 8)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(icon_native), .init(label_native), .init(callback_native), .init(key_callback_native), .init(tag_native), .init(accelerator_native), .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_add_icon_radio_check_item_1700867534,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
        }
        }
    }
    public func global_menu_add_multistate_item(menu_root: String, label: String, max_states: Int64, default_state: Int64, callback: Callable, key_callback: Callable, tag: Variant, accelerator: Key, index: Int64) -> Int64 {
        withUnsafePointer(to: index) { index_native in
        withUnsafePointer(to: default_state) { default_state_native in
        withUnsafePointer(to: max_states) { max_states_native in
        withUnsafePointer(to: label) { label_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        withUnsafePointer(to: accelerator.rawValue) { accelerator_native in
        let tag_native = tag._native_ptr()
        let key_callback_native = key_callback._native_ptr()
        let callback_native = callback._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 9)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(label_native), .init(max_states_native), .init(default_state_native), .init(callback_native), .init(key_callback_native), .init(tag_native), .init(accelerator_native), .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_add_multistate_item_635750054,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
        }
        }
        }
        }
    }
    public func global_menu_add_separator(menu_root: String, index: Int64) -> Int64 {
        withUnsafePointer(to: index) { index_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_add_separator_1041533178,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
    }
    public func global_menu_get_item_index_from_text(menu_root: String, text: String) -> Int64 {
        withUnsafePointer(to: text) { text_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(text_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_get_item_index_from_text_2878152881,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
    }
    public func global_menu_get_item_index_from_tag(menu_root: String, tag: Variant) -> Int64 {
        withUnsafePointer(to: menu_root) { menu_root_native in
        let tag_native = tag._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(tag_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_get_item_index_from_tag_2941063483,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func global_menu_is_item_checked(menu_root: String, idx: Int64) -> UInt8 {
        withUnsafePointer(to: idx) { idx_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_is_item_checked_3511468594,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
        }
    }
    public func global_menu_is_item_checkable(menu_root: String, idx: Int64) -> UInt8 {
        withUnsafePointer(to: idx) { idx_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_is_item_checkable_3511468594,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
        }
    }
    public func global_menu_is_item_radio_checkable(menu_root: String, idx: Int64) -> UInt8 {
        withUnsafePointer(to: idx) { idx_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_is_item_radio_checkable_3511468594,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
        }
    }
    public func global_menu_get_item_callback(menu_root: String, idx: Int64) -> Callable {
        withUnsafePointer(to: idx) { idx_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_get_item_callback_748666903,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Callable(from: __resPtr.pointee)
        }
        }
    }
    public func global_menu_get_item_key_callback(menu_root: String, idx: Int64) -> Callable {
        withUnsafePointer(to: idx) { idx_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_get_item_key_callback_748666903,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Callable(from: __resPtr.pointee)
        }
        }
    }
    public func global_menu_get_item_tag(menu_root: String, idx: Int64) -> Variant {
        withUnsafePointer(to: idx) { idx_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_get_item_tag_330672633,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
        }
        }
    }
    public func global_menu_get_item_text(menu_root: String, idx: Int64) -> String {
        withUnsafePointer(to: idx) { idx_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_get_item_text_591067909,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
        }
    }
    public func global_menu_get_item_submenu(menu_root: String, idx: Int64) -> String {
        withUnsafePointer(to: idx) { idx_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_get_item_submenu_591067909,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
        }
    }
    public func global_menu_get_item_accelerator(menu_root: String, idx: Int64) -> Key {
        withUnsafePointer(to: idx) { idx_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_get_item_accelerator_936065394,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Key(from: __resPtr.pointee)
        }
        }
    }
    public func global_menu_is_item_disabled(menu_root: String, idx: Int64) -> UInt8 {
        withUnsafePointer(to: idx) { idx_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_is_item_disabled_3511468594,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
        }
    }
    public func global_menu_get_item_tooltip(menu_root: String, idx: Int64) -> String {
        withUnsafePointer(to: idx) { idx_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_get_item_tooltip_591067909,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
        }
    }
    public func global_menu_get_item_state(menu_root: String, idx: Int64) -> Int64 {
        withUnsafePointer(to: idx) { idx_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_get_item_state_3422818498,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
    }
    public func global_menu_get_item_max_states(menu_root: String, idx: Int64) -> Int64 {
        withUnsafePointer(to: idx) { idx_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_get_item_max_states_3422818498,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
    }
    public func global_menu_get_item_icon(menu_root: String, idx: Int64) -> Texture2D {
        withUnsafePointer(to: idx) { idx_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_get_item_icon_3591713183,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(from: __resPtr.pointee)
        }
        }
    }
    public func global_menu_get_item_indentation_level(menu_root: String, idx: Int64) -> Int64 {
        withUnsafePointer(to: idx) { idx_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_get_item_indentation_level_3422818498,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
    }
    public func global_menu_set_item_checked(menu_root: String, idx: Int64, checked: UInt8)  {
        withUnsafePointer(to: checked) { checked_native in
        withUnsafePointer(to: idx) { idx_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(idx_native), .init(checked_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_set_item_checked_4108344793,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func global_menu_set_item_checkable(menu_root: String, idx: Int64, checkable: UInt8)  {
        withUnsafePointer(to: checkable) { checkable_native in
        withUnsafePointer(to: idx) { idx_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(idx_native), .init(checkable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_set_item_checkable_4108344793,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func global_menu_set_item_radio_checkable(menu_root: String, idx: Int64, checkable: UInt8)  {
        withUnsafePointer(to: checkable) { checkable_native in
        withUnsafePointer(to: idx) { idx_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(idx_native), .init(checkable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_set_item_radio_checkable_4108344793,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func global_menu_set_item_callback(menu_root: String, idx: Int64, callback: Callable)  {
        withUnsafePointer(to: idx) { idx_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        let callback_native = callback._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(idx_native), .init(callback_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_set_item_callback_3809915389,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func global_menu_set_item_key_callback(menu_root: String, idx: Int64, key_callback: Callable)  {
        withUnsafePointer(to: idx) { idx_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        let key_callback_native = key_callback._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(idx_native), .init(key_callback_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_set_item_key_callback_3809915389,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func global_menu_set_item_tag(menu_root: String, idx: Int64, tag: Variant)  {
        withUnsafePointer(to: idx) { idx_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        let tag_native = tag._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(idx_native), .init(tag_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_set_item_tag_453659863,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func global_menu_set_item_text(menu_root: String, idx: Int64, text: String)  {
        withUnsafePointer(to: text) { text_native in
        withUnsafePointer(to: idx) { idx_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(idx_native), .init(text_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_set_item_text_965966136,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func global_menu_set_item_submenu(menu_root: String, idx: Int64, submenu: String)  {
        withUnsafePointer(to: submenu) { submenu_native in
        withUnsafePointer(to: idx) { idx_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(idx_native), .init(submenu_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_set_item_submenu_965966136,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func global_menu_set_item_accelerator(menu_root: String, idx: Int64, keycode: Key)  {
        withUnsafePointer(to: idx) { idx_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        withUnsafePointer(to: keycode.rawValue) { keycode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(idx_native), .init(keycode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_set_item_accelerator_566943293,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func global_menu_set_item_disabled(menu_root: String, idx: Int64, disabled: UInt8)  {
        withUnsafePointer(to: disabled) { disabled_native in
        withUnsafePointer(to: idx) { idx_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(idx_native), .init(disabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_set_item_disabled_4108344793,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func global_menu_set_item_tooltip(menu_root: String, idx: Int64, tooltip: String)  {
        withUnsafePointer(to: tooltip) { tooltip_native in
        withUnsafePointer(to: idx) { idx_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(idx_native), .init(tooltip_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_set_item_tooltip_965966136,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func global_menu_set_item_state(menu_root: String, idx: Int64, state: Int64)  {
        withUnsafePointer(to: state) { state_native in
        withUnsafePointer(to: idx) { idx_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(idx_native), .init(state_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_set_item_state_3474840532,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func global_menu_set_item_max_states(menu_root: String, idx: Int64, max_states: Int64)  {
        withUnsafePointer(to: max_states) { max_states_native in
        withUnsafePointer(to: idx) { idx_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(idx_native), .init(max_states_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_set_item_max_states_3474840532,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func global_menu_set_item_icon(menu_root: String, idx: Int64, icon: Texture2D)  {
        withUnsafePointer(to: idx) { idx_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        let icon_native = icon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(idx_native), .init(icon_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_set_item_icon_3201338066,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func global_menu_set_item_indentation_level(menu_root: String, idx: Int64, level: Int64)  {
        withUnsafePointer(to: level) { level_native in
        withUnsafePointer(to: idx) { idx_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(idx_native), .init(level_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_set_item_indentation_level_3474840532,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func global_menu_get_item_count(menu_root: String) -> Int64 {
        withUnsafePointer(to: menu_root) { menu_root_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_get_item_count_1321353865,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func global_menu_remove_item(menu_root: String, idx: Int64)  {
        withUnsafePointer(to: idx) { idx_native in
        withUnsafePointer(to: menu_root) { menu_root_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native), .init(idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_remove_item_2956805083,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func global_menu_clear(menu_root: String)  {
        withUnsafePointer(to: menu_root) { menu_root_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_root_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_menu_clear_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func tts_is_speaking() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_tts_is_speaking_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func tts_is_paused() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_tts_is_paused_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func tts_get_voices() -> [Dictionary] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_tts_get_voices_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](from: __resPtr.pointee)
    }
    public func tts_get_voices_for_language(language: String) -> PackedStringArray {
        withUnsafePointer(to: language) { language_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(language_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_tts_get_voices_for_language_4291131558,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
        }
    }
    public func tts_speak(text: String, voice: String, volume: Int64, pitch: Float64, rate: Float64, utterance_id: Int64, interrupt: UInt8)  {
        withUnsafePointer(to: interrupt) { interrupt_native in
        withUnsafePointer(to: utterance_id) { utterance_id_native in
        withUnsafePointer(to: rate) { rate_native in
        withUnsafePointer(to: pitch) { pitch_native in
        withUnsafePointer(to: volume) { volume_native in
        withUnsafePointer(to: voice) { voice_native in
        withUnsafePointer(to: text) { text_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 7)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(text_native), .init(voice_native), .init(volume_native), .init(pitch_native), .init(rate_native), .init(utterance_id_native), .init(interrupt_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_tts_speak_3723082199,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
        }
        }
        }
        }
    }
    public func tts_pause()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_tts_pause_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func tts_resume()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_tts_resume_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func tts_stop()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_tts_stop_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func tts_set_utterance_callback(event: DisplayServer.TTSUtteranceEvent, callable: Callable)  {
        withUnsafePointer(to: event.rawValue) { event_native in
        let callable_native = callable._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(event_native), .init(callable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_tts_set_utterance_callback_109679083,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_dark_mode_supported() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_dark_mode_supported_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func is_dark_mode() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_dark_mode_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_accent_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_accent_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func mouse_set_mode(mouse_mode: DisplayServer.MouseMode)  {
        withUnsafePointer(to: mouse_mode.rawValue) { mouse_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mouse_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_mouse_set_mode_348288463,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func mouse_get_mode() -> DisplayServer.MouseMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_mouse_get_mode_1353961651,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return DisplayServer.MouseMode(from: __resPtr.pointee)
    }
    public func warp_mouse(position: Vector2i)  {
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_warp_mouse_1130785943,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func mouse_get_position() -> Vector2i {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_mouse_get_position_3690982128,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(from: __resPtr.pointee)
    }
    public func mouse_get_button_state() -> MouseButtonMask {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_mouse_get_button_state_2512161324,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return MouseButtonMask(from: __resPtr.pointee)
    }
    public func clipboard_set(clipboard: String)  {
        withUnsafePointer(to: clipboard) { clipboard_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(clipboard_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clipboard_set_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func clipboard_get() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clipboard_get_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func clipboard_has() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clipboard_has_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func clipboard_set_primary(clipboard_primary: String)  {
        withUnsafePointer(to: clipboard_primary) { clipboard_primary_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(clipboard_primary_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clipboard_set_primary_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func clipboard_get_primary() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clipboard_get_primary_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func get_display_cutouts() -> [Rect2] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_display_cutouts_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Rect2](from: __resPtr.pointee)
    }
    public func get_display_safe_area() -> Rect2i {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_display_safe_area_410525958,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2i(from: __resPtr.pointee)
    }
    public func get_screen_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_screen_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_primary_screen() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_primary_screen_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_screen_from_rect(rect: Rect2) -> Int64 {
        let rect_native = rect._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rect_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_screen_from_rect_741354659,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func screen_get_position(screen: Int64) -> Vector2i {
        withUnsafePointer(to: screen) { screen_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(screen_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_screen_get_position_1725937825,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(from: __resPtr.pointee)
        }
    }
    public func screen_get_size(screen: Int64) -> Vector2i {
        withUnsafePointer(to: screen) { screen_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(screen_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_screen_get_size_1725937825,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(from: __resPtr.pointee)
        }
    }
    public func screen_get_usable_rect(screen: Int64) -> Rect2i {
        withUnsafePointer(to: screen) { screen_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(screen_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_screen_get_usable_rect_2439012528,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2i(from: __resPtr.pointee)
        }
    }
    public func screen_get_dpi(screen: Int64) -> Int64 {
        withUnsafePointer(to: screen) { screen_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(screen_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_screen_get_dpi_181039630,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func screen_get_scale(screen: Int64) -> Float64 {
        withUnsafePointer(to: screen) { screen_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(screen_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_screen_get_scale_909105437,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func is_touchscreen_available() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_touchscreen_available_4162880507,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func screen_get_max_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_screen_get_max_scale_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func screen_get_refresh_rate(screen: Int64) -> Float64 {
        withUnsafePointer(to: screen) { screen_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(screen_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_screen_get_refresh_rate_909105437,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func screen_set_orientation(orientation: DisplayServer.ScreenOrientation, screen: Int64)  {
        withUnsafePointer(to: screen) { screen_native in
        withUnsafePointer(to: orientation.rawValue) { orientation_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(orientation_native), .init(screen_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_screen_set_orientation_2629526904,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func screen_get_orientation(screen: Int64) -> DisplayServer.ScreenOrientation {
        withUnsafePointer(to: screen) { screen_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(screen_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_screen_get_orientation_133818562,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return DisplayServer.ScreenOrientation(from: __resPtr.pointee)
        }
    }
    public func screen_set_keep_on(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_screen_set_keep_on_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func screen_is_kept_on() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_screen_is_kept_on_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_window_list() -> PackedInt32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_window_list_1930428628,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(from: __resPtr.pointee)
    }
    public func get_window_at_screen_position(position: Vector2i) -> Int64 {
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_window_at_screen_position_2485466453,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func window_get_native_handle(handle_type: DisplayServer.HandleType, window_id: Int64) -> Int64 {
        withUnsafePointer(to: window_id) { window_id_native in
        withUnsafePointer(to: handle_type.rawValue) { handle_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(handle_type_native), .init(window_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_get_native_handle_2709193271,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
    }
    public func window_get_active_popup() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_get_active_popup_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func window_set_popup_safe_rect(window: Int64, rect: Rect2i)  {
        withUnsafePointer(to: window) { window_native in
        let rect_native = rect._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(window_native), .init(rect_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_set_popup_safe_rect_3317281434,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func window_get_popup_safe_rect(window: Int64) -> Rect2i {
        withUnsafePointer(to: window) { window_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(window_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_get_popup_safe_rect_2161169500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2i(from: __resPtr.pointee)
        }
    }
    public func window_set_title(title: String, window_id: Int64)  {
        withUnsafePointer(to: window_id) { window_id_native in
        withUnsafePointer(to: title) { title_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(title_native), .init(window_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_set_title_3043792800,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func window_set_mouse_passthrough(region: PackedVector2Array, window_id: Int64)  {
        withUnsafePointer(to: window_id) { window_id_native in
        let region_native = region._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(region_native), .init(window_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_set_mouse_passthrough_3958815166,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func window_get_current_screen(window_id: Int64) -> Int64 {
        withUnsafePointer(to: window_id) { window_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(window_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_get_current_screen_1591665591,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func window_set_current_screen(screen: Int64, window_id: Int64)  {
        withUnsafePointer(to: window_id) { window_id_native in
        withUnsafePointer(to: screen) { screen_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(screen_native), .init(window_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_set_current_screen_3023605688,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func window_get_position(window_id: Int64) -> Vector2i {
        withUnsafePointer(to: window_id) { window_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(window_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_get_position_763922886,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(from: __resPtr.pointee)
        }
    }
    public func window_get_position_with_decorations(window_id: Int64) -> Vector2i {
        withUnsafePointer(to: window_id) { window_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(window_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_get_position_with_decorations_763922886,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(from: __resPtr.pointee)
        }
    }
    public func window_set_position(position: Vector2i, window_id: Int64)  {
        withUnsafePointer(to: window_id) { window_id_native in
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native), .init(window_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_set_position_3614040015,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func window_get_size(window_id: Int64) -> Vector2i {
        withUnsafePointer(to: window_id) { window_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(window_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_get_size_763922886,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(from: __resPtr.pointee)
        }
    }
    public func window_set_size(size: Vector2i, window_id: Int64)  {
        withUnsafePointer(to: window_id) { window_id_native in
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native), .init(window_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_set_size_3614040015,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func window_set_rect_changed_callback(callback: Callable, window_id: Int64)  {
        withUnsafePointer(to: window_id) { window_id_native in
        let callback_native = callback._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(callback_native), .init(window_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_set_rect_changed_callback_3653650673,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func window_set_window_event_callback(callback: Callable, window_id: Int64)  {
        withUnsafePointer(to: window_id) { window_id_native in
        let callback_native = callback._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(callback_native), .init(window_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_set_window_event_callback_3653650673,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func window_set_input_event_callback(callback: Callable, window_id: Int64)  {
        withUnsafePointer(to: window_id) { window_id_native in
        let callback_native = callback._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(callback_native), .init(window_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_set_input_event_callback_3653650673,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func window_set_input_text_callback(callback: Callable, window_id: Int64)  {
        withUnsafePointer(to: window_id) { window_id_native in
        let callback_native = callback._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(callback_native), .init(window_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_set_input_text_callback_3653650673,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func window_set_drop_files_callback(callback: Callable, window_id: Int64)  {
        withUnsafePointer(to: window_id) { window_id_native in
        let callback_native = callback._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(callback_native), .init(window_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_set_drop_files_callback_3653650673,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func window_get_attached_instance_id(window_id: Int64) -> Int64 {
        withUnsafePointer(to: window_id) { window_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(window_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_get_attached_instance_id_1591665591,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func window_get_max_size(window_id: Int64) -> Vector2i {
        withUnsafePointer(to: window_id) { window_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(window_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_get_max_size_763922886,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(from: __resPtr.pointee)
        }
    }
    public func window_set_max_size(max_size: Vector2i, window_id: Int64)  {
        withUnsafePointer(to: window_id) { window_id_native in
        let max_size_native = max_size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_size_native), .init(window_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_set_max_size_3614040015,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func window_get_min_size(window_id: Int64) -> Vector2i {
        withUnsafePointer(to: window_id) { window_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(window_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_get_min_size_763922886,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(from: __resPtr.pointee)
        }
    }
    public func window_set_min_size(min_size: Vector2i, window_id: Int64)  {
        withUnsafePointer(to: window_id) { window_id_native in
        let min_size_native = min_size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(min_size_native), .init(window_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_set_min_size_3614040015,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func window_get_size_with_decorations(window_id: Int64) -> Vector2i {
        withUnsafePointer(to: window_id) { window_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(window_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_get_size_with_decorations_763922886,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(from: __resPtr.pointee)
        }
    }
    public func window_get_mode(window_id: Int64) -> DisplayServer.WindowMode {
        withUnsafePointer(to: window_id) { window_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(window_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_get_mode_2185728461,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return DisplayServer.WindowMode(from: __resPtr.pointee)
        }
    }
    public func window_set_mode(mode: DisplayServer.WindowMode, window_id: Int64)  {
        withUnsafePointer(to: window_id) { window_id_native in
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native), .init(window_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_set_mode_2942569511,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func window_set_flag(flag: DisplayServer.WindowFlags, enabled: UInt8, window_id: Int64)  {
        withUnsafePointer(to: window_id) { window_id_native in
        withUnsafePointer(to: enabled) { enabled_native in
        withUnsafePointer(to: flag.rawValue) { flag_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flag_native), .init(enabled_native), .init(window_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_set_flag_3971592565,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func window_get_flag(flag: DisplayServer.WindowFlags, window_id: Int64) -> UInt8 {
        withUnsafePointer(to: window_id) { window_id_native in
        withUnsafePointer(to: flag.rawValue) { flag_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flag_native), .init(window_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_get_flag_2662949986,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
        }
    }
    public func window_set_window_buttons_offset(offset: Vector2i, window_id: Int64)  {
        withUnsafePointer(to: window_id) { window_id_native in
        let offset_native = offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native), .init(window_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_set_window_buttons_offset_3614040015,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func window_get_safe_title_margins(window_id: Int64) -> Vector3i {
        withUnsafePointer(to: window_id) { window_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(window_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_get_safe_title_margins_2295066620,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3i(from: __resPtr.pointee)
        }
    }
    public func window_request_attention(window_id: Int64)  {
        withUnsafePointer(to: window_id) { window_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(window_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_request_attention_1995695955,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func window_move_to_foreground(window_id: Int64)  {
        withUnsafePointer(to: window_id) { window_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(window_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_move_to_foreground_1995695955,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func window_can_draw(window_id: Int64) -> UInt8 {
        withUnsafePointer(to: window_id) { window_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(window_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_can_draw_1051549951,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func window_set_transient(window_id: Int64, parent_window_id: Int64)  {
        withUnsafePointer(to: parent_window_id) { parent_window_id_native in
        withUnsafePointer(to: window_id) { window_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(window_id_native), .init(parent_window_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_set_transient_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func window_set_exclusive(window_id: Int64, exclusive: UInt8)  {
        withUnsafePointer(to: exclusive) { exclusive_native in
        withUnsafePointer(to: window_id) { window_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(window_id_native), .init(exclusive_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_set_exclusive_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func window_set_ime_active(active: UInt8, window_id: Int64)  {
        withUnsafePointer(to: window_id) { window_id_native in
        withUnsafePointer(to: active) { active_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(active_native), .init(window_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_set_ime_active_450484987,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func window_set_ime_position(position: Vector2i, window_id: Int64)  {
        withUnsafePointer(to: window_id) { window_id_native in
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native), .init(window_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_set_ime_position_3614040015,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func window_set_vsync_mode(vsync_mode: DisplayServer.VSyncMode, window_id: Int64)  {
        withUnsafePointer(to: window_id) { window_id_native in
        withUnsafePointer(to: vsync_mode.rawValue) { vsync_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(vsync_mode_native), .init(window_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_set_vsync_mode_1708924624,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func window_get_vsync_mode(window_id: Int64) -> DisplayServer.VSyncMode {
        withUnsafePointer(to: window_id) { window_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(window_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_get_vsync_mode_578873795,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return DisplayServer.VSyncMode(from: __resPtr.pointee)
        }
    }
    public func window_is_maximize_allowed(window_id: Int64) -> UInt8 {
        withUnsafePointer(to: window_id) { window_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(window_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_is_maximize_allowed_1051549951,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func window_maximize_on_title_dbl_click() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_maximize_on_title_dbl_click_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func window_minimize_on_title_dbl_click() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_window_minimize_on_title_dbl_click_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func ime_get_selection() -> Vector2i {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_ime_get_selection_3690982128,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(from: __resPtr.pointee)
    }
    public func ime_get_text() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_ime_get_text_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func virtual_keyboard_show(existing_text: String, position: Rect2, `type`: DisplayServer.VirtualKeyboardType, max_length: Int64, cursor_start: Int64, cursor_end: Int64)  {
        withUnsafePointer(to: cursor_end) { cursor_end_native in
        withUnsafePointer(to: cursor_start) { cursor_start_native in
        withUnsafePointer(to: max_length) { max_length_native in
        withUnsafePointer(to: existing_text) { existing_text_native in
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(existing_text_native), .init(position_native), .init(type_native), .init(max_length_native), .init(cursor_start_native), .init(cursor_end_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_virtual_keyboard_show_860410478,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
        }
        }
    }
    public func virtual_keyboard_hide()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_virtual_keyboard_hide_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func virtual_keyboard_get_height() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_virtual_keyboard_get_height_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func cursor_set_shape(shape: DisplayServer.CursorShape)  {
        withUnsafePointer(to: shape.rawValue) { shape_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_cursor_set_shape_2026291549,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func cursor_get_shape() -> DisplayServer.CursorShape {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_cursor_get_shape_1087724927,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return DisplayServer.CursorShape(from: __resPtr.pointee)
    }
    public func cursor_set_custom_image(cursor: Resource, shape: DisplayServer.CursorShape, hotspot: Vector2)  {
        withUnsafePointer(to: shape.rawValue) { shape_native in
        let hotspot_native = hotspot._native_ptr()
        let cursor_native = cursor._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cursor_native), .init(shape_native), .init(hotspot_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_cursor_set_custom_image_1358907026,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_swap_cancel_ok() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_swap_cancel_ok_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func enable_for_stealing_focus(process_id: Int64)  {
        withUnsafePointer(to: process_id) { process_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(process_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_enable_for_stealing_focus_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func dialog_show(title: String, description: String, buttons: PackedStringArray, callback: Callable) -> Error {
        withUnsafePointer(to: description) { description_native in
        withUnsafePointer(to: title) { title_native in
        let callback_native = callback._native_ptr()
        let buttons_native = buttons._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(title_native), .init(description_native), .init(buttons_native), .init(callback_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_dialog_show_4115553226,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
        }
    }
    public func dialog_input_text(title: String, description: String, existing_text: String, callback: Callable) -> Error {
        withUnsafePointer(to: existing_text) { existing_text_native in
        withUnsafePointer(to: description) { description_native in
        withUnsafePointer(to: title) { title_native in
        let callback_native = callback._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(title_native), .init(description_native), .init(existing_text_native), .init(callback_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_dialog_input_text_3088703427,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
        }
        }
    }
    public func keyboard_get_layout_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_keyboard_get_layout_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func keyboard_get_current_layout() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_keyboard_get_current_layout_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func keyboard_set_current_layout(index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_keyboard_set_current_layout_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func keyboard_get_layout_language(index: Int64) -> String {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_keyboard_get_layout_language_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
    public func keyboard_get_layout_name(index: Int64) -> String {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_keyboard_get_layout_name_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
    public func keyboard_get_keycode_from_physical(keycode: Key) -> Key {
        withUnsafePointer(to: keycode.rawValue) { keycode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(keycode_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_keyboard_get_keycode_from_physical_3447613187,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Key(from: __resPtr.pointee)
        }
    }
    public func process_events()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_process_events_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func force_process_and_drop_events()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_force_process_and_drop_events_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_native_icon(filename: String)  {
        withUnsafePointer(to: filename) { filename_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(filename_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_native_icon_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_icon(image: Image)  {
        let image_native = image._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(image_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_icon_532598488,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func tablet_get_driver_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_tablet_get_driver_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func tablet_get_driver_name(idx: Int64) -> String {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_tablet_get_driver_name_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
    public func tablet_get_current_driver() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_tablet_get_current_driver_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func tablet_set_current_driver(name: String)  {
        withUnsafePointer(to: name) { name_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_tablet_set_current_driver_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}