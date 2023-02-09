import godot_native

fileprivate var __godot_name_Window: StringName! = nil

/// Base class for all windows.
/// 
/// A node that creates a window. The window can either be a native system window or embedded inside another [Window] (see [member Viewport.gui_embed_subwindows]).
///  
/// At runtime, [Window]s will not close automatically when requested. You need to handle it manually using [signal close_requested] (this applies both to clicking close button and clicking outside popup).
open class Window : Viewport {

    public enum Mode : Int32 {
        case MODE_WINDOWED = 0
        case MODE_MINIMIZED = 1
        case MODE_MAXIMIZED = 2
        case MODE_FULLSCREEN = 3
        case MODE_EXCLUSIVE_FULLSCREEN = 4
    }
    public enum Flags : Int32 {
        case FLAG_RESIZE_DISABLED = 0
        case FLAG_BORDERLESS = 1
        case FLAG_ALWAYS_ON_TOP = 2
        case FLAG_TRANSPARENT = 3
        case FLAG_NO_FOCUS = 4
        case FLAG_POPUP = 5
        case FLAG_EXTEND_TO_TITLE = 6
        case FLAG_MOUSE_PASSTHROUGH = 7
        case FLAG_MAX = 8
    }
    public enum ContentScaleMode : Int32 {
        case CONTENT_SCALE_MODE_DISABLED = 0
        case CONTENT_SCALE_MODE_CANVAS_ITEMS = 1
        case CONTENT_SCALE_MODE_VIEWPORT = 2
    }
    public enum ContentScaleAspect : Int32 {
        case CONTENT_SCALE_ASPECT_IGNORE = 0
        case CONTENT_SCALE_ASPECT_KEEP = 1
        case CONTENT_SCALE_ASPECT_KEEP_WIDTH = 2
        case CONTENT_SCALE_ASPECT_KEEP_HEIGHT = 3
        case CONTENT_SCALE_ASPECT_EXPAND = 4
    }
    public enum LayoutDirection : Int32 {
        case LAYOUT_DIRECTION_INHERITED = 0
        case LAYOUT_DIRECTION_LOCALE = 1
        case LAYOUT_DIRECTION_LTR = 2
        case LAYOUT_DIRECTION_RTL = 3
    }
    public enum WindowInitialPosition : Int32 {
        case WINDOW_INITIAL_POSITION_ABSOLUTE = 0
        case WINDOW_INITIAL_POSITION_CENTER_PRIMARY_SCREEN = 1
        case WINDOW_INITIAL_POSITION_CENTER_MAIN_WINDOW_SCREEN = 2
        case WINDOW_INITIAL_POSITION_CENTER_OTHER_SCREEN = 3
    }

    public override class var __godot_name: StringName { __godot_name_Window }

    static var _method_set_title_83702148: StringName! = nil
    static var _method_get_title_201670096: StringName! = nil
    static var _method_set_initial_position_4084468099: StringName! = nil
    static var _method_get_initial_position_4294066647: StringName! = nil
    static var _method_set_current_screen_1286410249: StringName! = nil
    static var _method_get_current_screen_3905245786: StringName! = nil
    static var _method_set_position_1130785943: StringName! = nil
    static var _method_get_position_3690982128: StringName! = nil
    static var _method_set_size_1130785943: StringName! = nil
    static var _method_get_size_3690982128: StringName! = nil
    static var _method_reset_size_3218959716: StringName! = nil
    static var _method_get_position_with_decorations_3690982128: StringName! = nil
    static var _method_get_size_with_decorations_3690982128: StringName! = nil
    static var _method_set_max_size_1130785943: StringName! = nil
    static var _method_get_max_size_3690982128: StringName! = nil
    static var _method_set_min_size_1130785943: StringName! = nil
    static var _method_get_min_size_3690982128: StringName! = nil
    static var _method_set_mode_3095236531: StringName! = nil
    static var _method_get_mode_2566346114: StringName! = nil
    static var _method_set_flag_3426449779: StringName! = nil
    static var _method_get_flag_3062752289: StringName! = nil
    static var _method_is_maximize_allowed_36873697: StringName! = nil
    static var _method_request_attention_3218959716: StringName! = nil
    static var _method_move_to_foreground_3218959716: StringName! = nil
    static var _method_set_visible_2586408642: StringName! = nil
    static var _method_is_visible_36873697: StringName! = nil
    static var _method_hide_3218959716: StringName! = nil
    static var _method_show_3218959716: StringName! = nil
    static var _method_set_transient_2586408642: StringName! = nil
    static var _method_is_transient_36873697: StringName! = nil
    static var _method_set_exclusive_2586408642: StringName! = nil
    static var _method_is_exclusive_36873697: StringName! = nil
    static var _method_can_draw_36873697: StringName! = nil
    static var _method_has_focus_36873697: StringName! = nil
    static var _method_grab_focus_3218959716: StringName! = nil
    static var _method_set_ime_active_2586408642: StringName! = nil
    static var _method_set_ime_position_1130785943: StringName! = nil
    static var _method_is_embedded_36873697: StringName! = nil
    static var _method_get_contents_minimum_size_3341600327: StringName! = nil
    static var _method_set_content_scale_size_1130785943: StringName! = nil
    static var _method_get_content_scale_size_3690982128: StringName! = nil
    static var _method_set_content_scale_mode_2937716473: StringName! = nil
    static var _method_get_content_scale_mode_161585230: StringName! = nil
    static var _method_set_content_scale_aspect_2370399418: StringName! = nil
    static var _method_get_content_scale_aspect_4158790715: StringName! = nil
    static var _method_set_content_scale_factor_373806689: StringName! = nil
    static var _method_get_content_scale_factor_1740695150: StringName! = nil
    static var _method_set_use_font_oversampling_2586408642: StringName! = nil
    static var _method_is_using_font_oversampling_36873697: StringName! = nil
    static var _method_set_mouse_passthrough_polygon_1509147220: StringName! = nil
    static var _method_get_mouse_passthrough_polygon_2961356807: StringName! = nil
    static var _method_set_wrap_controls_2586408642: StringName! = nil
    static var _method_is_wrapping_controls_36873697: StringName! = nil
    static var _method_child_controls_changed_3218959716: StringName! = nil
    static var _method_set_theme_2326690814: StringName! = nil
    static var _method_get_theme_3846893731: StringName! = nil
    static var _method_set_theme_type_variation_3304788590: StringName! = nil
    static var _method_get_theme_type_variation_2002593661: StringName! = nil
    static var _method_begin_bulk_theme_override_3218959716: StringName! = nil
    static var _method_end_bulk_theme_override_3218959716: StringName! = nil
    static var _method_add_theme_icon_override_1373065600: StringName! = nil
    static var _method_add_theme_stylebox_override_4188838905: StringName! = nil
    static var _method_add_theme_font_override_3518018674: StringName! = nil
    static var _method_add_theme_font_size_override_2415702435: StringName! = nil
    static var _method_add_theme_color_override_4260178595: StringName! = nil
    static var _method_add_theme_constant_override_2415702435: StringName! = nil
    static var _method_remove_theme_icon_override_3304788590: StringName! = nil
    static var _method_remove_theme_stylebox_override_3304788590: StringName! = nil
    static var _method_remove_theme_font_override_3304788590: StringName! = nil
    static var _method_remove_theme_font_size_override_3304788590: StringName! = nil
    static var _method_remove_theme_color_override_3304788590: StringName! = nil
    static var _method_remove_theme_constant_override_3304788590: StringName! = nil
    static var _method_get_theme_icon_2336455395: StringName! = nil
    static var _method_get_theme_stylebox_2759935355: StringName! = nil
    static var _method_get_theme_font_387378635: StringName! = nil
    static var _method_get_theme_font_size_229578101: StringName! = nil
    static var _method_get_theme_color_2377051548: StringName! = nil
    static var _method_get_theme_constant_229578101: StringName! = nil
    static var _method_has_theme_icon_override_2619796661: StringName! = nil
    static var _method_has_theme_stylebox_override_2619796661: StringName! = nil
    static var _method_has_theme_font_override_2619796661: StringName! = nil
    static var _method_has_theme_font_size_override_2619796661: StringName! = nil
    static var _method_has_theme_color_override_2619796661: StringName! = nil
    static var _method_has_theme_constant_override_2619796661: StringName! = nil
    static var _method_has_theme_icon_1187511791: StringName! = nil
    static var _method_has_theme_stylebox_1187511791: StringName! = nil
    static var _method_has_theme_font_1187511791: StringName! = nil
    static var _method_has_theme_font_size_1187511791: StringName! = nil
    static var _method_has_theme_color_1187511791: StringName! = nil
    static var _method_has_theme_constant_1187511791: StringName! = nil
    static var _method_get_theme_default_base_scale_1740695150: StringName! = nil
    static var _method_get_theme_default_font_3229501585: StringName! = nil
    static var _method_get_theme_default_font_size_3905245786: StringName! = nil
    static var _method_set_layout_direction_3094704184: StringName! = nil
    static var _method_get_layout_direction_3909617982: StringName! = nil
    static var _method_is_layout_rtl_36873697: StringName! = nil
    static var _method_set_auto_translate_2586408642: StringName! = nil
    static var _method_is_auto_translating_36873697: StringName! = nil
    static var _method_popup_1680304321: StringName! = nil
    static var _method_popup_on_parent_1763793166: StringName! = nil
    static var _method_popup_centered_ratio_1912078273: StringName! = nil
    static var _method_popup_centered_3447975422: StringName! = nil
    static var _method_popup_centered_clamped_3728566557: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_Window == nil)
        __godot_name_Window = StringName(from: "Window")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_title_83702148 = StringName(from: "set_title")
        assert(self._method_set_title_83702148 != nil)
        self._method_get_title_201670096 = StringName(from: "get_title")
        assert(self._method_get_title_201670096 != nil)
        self._method_set_initial_position_4084468099 = StringName(from: "set_initial_position")
        assert(self._method_set_initial_position_4084468099 != nil)
        self._method_get_initial_position_4294066647 = StringName(from: "get_initial_position")
        assert(self._method_get_initial_position_4294066647 != nil)
        self._method_set_current_screen_1286410249 = StringName(from: "set_current_screen")
        assert(self._method_set_current_screen_1286410249 != nil)
        self._method_get_current_screen_3905245786 = StringName(from: "get_current_screen")
        assert(self._method_get_current_screen_3905245786 != nil)
        self._method_set_position_1130785943 = StringName(from: "set_position")
        assert(self._method_set_position_1130785943 != nil)
        self._method_get_position_3690982128 = StringName(from: "get_position")
        assert(self._method_get_position_3690982128 != nil)
        self._method_set_size_1130785943 = StringName(from: "set_size")
        assert(self._method_set_size_1130785943 != nil)
        self._method_get_size_3690982128 = StringName(from: "get_size")
        assert(self._method_get_size_3690982128 != nil)
        self._method_reset_size_3218959716 = StringName(from: "reset_size")
        assert(self._method_reset_size_3218959716 != nil)
        self._method_get_position_with_decorations_3690982128 = StringName(from: "get_position_with_decorations")
        assert(self._method_get_position_with_decorations_3690982128 != nil)
        self._method_get_size_with_decorations_3690982128 = StringName(from: "get_size_with_decorations")
        assert(self._method_get_size_with_decorations_3690982128 != nil)
        self._method_set_max_size_1130785943 = StringName(from: "set_max_size")
        assert(self._method_set_max_size_1130785943 != nil)
        self._method_get_max_size_3690982128 = StringName(from: "get_max_size")
        assert(self._method_get_max_size_3690982128 != nil)
        self._method_set_min_size_1130785943 = StringName(from: "set_min_size")
        assert(self._method_set_min_size_1130785943 != nil)
        self._method_get_min_size_3690982128 = StringName(from: "get_min_size")
        assert(self._method_get_min_size_3690982128 != nil)
        self._method_set_mode_3095236531 = StringName(from: "set_mode")
        assert(self._method_set_mode_3095236531 != nil)
        self._method_get_mode_2566346114 = StringName(from: "get_mode")
        assert(self._method_get_mode_2566346114 != nil)
        self._method_set_flag_3426449779 = StringName(from: "set_flag")
        assert(self._method_set_flag_3426449779 != nil)
        self._method_get_flag_3062752289 = StringName(from: "get_flag")
        assert(self._method_get_flag_3062752289 != nil)
        self._method_is_maximize_allowed_36873697 = StringName(from: "is_maximize_allowed")
        assert(self._method_is_maximize_allowed_36873697 != nil)
        self._method_request_attention_3218959716 = StringName(from: "request_attention")
        assert(self._method_request_attention_3218959716 != nil)
        self._method_move_to_foreground_3218959716 = StringName(from: "move_to_foreground")
        assert(self._method_move_to_foreground_3218959716 != nil)
        self._method_set_visible_2586408642 = StringName(from: "set_visible")
        assert(self._method_set_visible_2586408642 != nil)
        self._method_is_visible_36873697 = StringName(from: "is_visible")
        assert(self._method_is_visible_36873697 != nil)
        self._method_hide_3218959716 = StringName(from: "hide")
        assert(self._method_hide_3218959716 != nil)
        self._method_show_3218959716 = StringName(from: "show")
        assert(self._method_show_3218959716 != nil)
        self._method_set_transient_2586408642 = StringName(from: "set_transient")
        assert(self._method_set_transient_2586408642 != nil)
        self._method_is_transient_36873697 = StringName(from: "is_transient")
        assert(self._method_is_transient_36873697 != nil)
        self._method_set_exclusive_2586408642 = StringName(from: "set_exclusive")
        assert(self._method_set_exclusive_2586408642 != nil)
        self._method_is_exclusive_36873697 = StringName(from: "is_exclusive")
        assert(self._method_is_exclusive_36873697 != nil)
        self._method_can_draw_36873697 = StringName(from: "can_draw")
        assert(self._method_can_draw_36873697 != nil)
        self._method_has_focus_36873697 = StringName(from: "has_focus")
        assert(self._method_has_focus_36873697 != nil)
        self._method_grab_focus_3218959716 = StringName(from: "grab_focus")
        assert(self._method_grab_focus_3218959716 != nil)
        self._method_set_ime_active_2586408642 = StringName(from: "set_ime_active")
        assert(self._method_set_ime_active_2586408642 != nil)
        self._method_set_ime_position_1130785943 = StringName(from: "set_ime_position")
        assert(self._method_set_ime_position_1130785943 != nil)
        self._method_is_embedded_36873697 = StringName(from: "is_embedded")
        assert(self._method_is_embedded_36873697 != nil)
        self._method_get_contents_minimum_size_3341600327 = StringName(from: "get_contents_minimum_size")
        assert(self._method_get_contents_minimum_size_3341600327 != nil)
        self._method_set_content_scale_size_1130785943 = StringName(from: "set_content_scale_size")
        assert(self._method_set_content_scale_size_1130785943 != nil)
        self._method_get_content_scale_size_3690982128 = StringName(from: "get_content_scale_size")
        assert(self._method_get_content_scale_size_3690982128 != nil)
        self._method_set_content_scale_mode_2937716473 = StringName(from: "set_content_scale_mode")
        assert(self._method_set_content_scale_mode_2937716473 != nil)
        self._method_get_content_scale_mode_161585230 = StringName(from: "get_content_scale_mode")
        assert(self._method_get_content_scale_mode_161585230 != nil)
        self._method_set_content_scale_aspect_2370399418 = StringName(from: "set_content_scale_aspect")
        assert(self._method_set_content_scale_aspect_2370399418 != nil)
        self._method_get_content_scale_aspect_4158790715 = StringName(from: "get_content_scale_aspect")
        assert(self._method_get_content_scale_aspect_4158790715 != nil)
        self._method_set_content_scale_factor_373806689 = StringName(from: "set_content_scale_factor")
        assert(self._method_set_content_scale_factor_373806689 != nil)
        self._method_get_content_scale_factor_1740695150 = StringName(from: "get_content_scale_factor")
        assert(self._method_get_content_scale_factor_1740695150 != nil)
        self._method_set_use_font_oversampling_2586408642 = StringName(from: "set_use_font_oversampling")
        assert(self._method_set_use_font_oversampling_2586408642 != nil)
        self._method_is_using_font_oversampling_36873697 = StringName(from: "is_using_font_oversampling")
        assert(self._method_is_using_font_oversampling_36873697 != nil)
        self._method_set_mouse_passthrough_polygon_1509147220 = StringName(from: "set_mouse_passthrough_polygon")
        assert(self._method_set_mouse_passthrough_polygon_1509147220 != nil)
        self._method_get_mouse_passthrough_polygon_2961356807 = StringName(from: "get_mouse_passthrough_polygon")
        assert(self._method_get_mouse_passthrough_polygon_2961356807 != nil)
        self._method_set_wrap_controls_2586408642 = StringName(from: "set_wrap_controls")
        assert(self._method_set_wrap_controls_2586408642 != nil)
        self._method_is_wrapping_controls_36873697 = StringName(from: "is_wrapping_controls")
        assert(self._method_is_wrapping_controls_36873697 != nil)
        self._method_child_controls_changed_3218959716 = StringName(from: "child_controls_changed")
        assert(self._method_child_controls_changed_3218959716 != nil)
        self._method_set_theme_2326690814 = StringName(from: "set_theme")
        assert(self._method_set_theme_2326690814 != nil)
        self._method_get_theme_3846893731 = StringName(from: "get_theme")
        assert(self._method_get_theme_3846893731 != nil)
        self._method_set_theme_type_variation_3304788590 = StringName(from: "set_theme_type_variation")
        assert(self._method_set_theme_type_variation_3304788590 != nil)
        self._method_get_theme_type_variation_2002593661 = StringName(from: "get_theme_type_variation")
        assert(self._method_get_theme_type_variation_2002593661 != nil)
        self._method_begin_bulk_theme_override_3218959716 = StringName(from: "begin_bulk_theme_override")
        assert(self._method_begin_bulk_theme_override_3218959716 != nil)
        self._method_end_bulk_theme_override_3218959716 = StringName(from: "end_bulk_theme_override")
        assert(self._method_end_bulk_theme_override_3218959716 != nil)
        self._method_add_theme_icon_override_1373065600 = StringName(from: "add_theme_icon_override")
        assert(self._method_add_theme_icon_override_1373065600 != nil)
        self._method_add_theme_stylebox_override_4188838905 = StringName(from: "add_theme_stylebox_override")
        assert(self._method_add_theme_stylebox_override_4188838905 != nil)
        self._method_add_theme_font_override_3518018674 = StringName(from: "add_theme_font_override")
        assert(self._method_add_theme_font_override_3518018674 != nil)
        self._method_add_theme_font_size_override_2415702435 = StringName(from: "add_theme_font_size_override")
        assert(self._method_add_theme_font_size_override_2415702435 != nil)
        self._method_add_theme_color_override_4260178595 = StringName(from: "add_theme_color_override")
        assert(self._method_add_theme_color_override_4260178595 != nil)
        self._method_add_theme_constant_override_2415702435 = StringName(from: "add_theme_constant_override")
        assert(self._method_add_theme_constant_override_2415702435 != nil)
        self._method_remove_theme_icon_override_3304788590 = StringName(from: "remove_theme_icon_override")
        assert(self._method_remove_theme_icon_override_3304788590 != nil)
        self._method_remove_theme_stylebox_override_3304788590 = StringName(from: "remove_theme_stylebox_override")
        assert(self._method_remove_theme_stylebox_override_3304788590 != nil)
        self._method_remove_theme_font_override_3304788590 = StringName(from: "remove_theme_font_override")
        assert(self._method_remove_theme_font_override_3304788590 != nil)
        self._method_remove_theme_font_size_override_3304788590 = StringName(from: "remove_theme_font_size_override")
        assert(self._method_remove_theme_font_size_override_3304788590 != nil)
        self._method_remove_theme_color_override_3304788590 = StringName(from: "remove_theme_color_override")
        assert(self._method_remove_theme_color_override_3304788590 != nil)
        self._method_remove_theme_constant_override_3304788590 = StringName(from: "remove_theme_constant_override")
        assert(self._method_remove_theme_constant_override_3304788590 != nil)
        self._method_get_theme_icon_2336455395 = StringName(from: "get_theme_icon")
        assert(self._method_get_theme_icon_2336455395 != nil)
        self._method_get_theme_stylebox_2759935355 = StringName(from: "get_theme_stylebox")
        assert(self._method_get_theme_stylebox_2759935355 != nil)
        self._method_get_theme_font_387378635 = StringName(from: "get_theme_font")
        assert(self._method_get_theme_font_387378635 != nil)
        self._method_get_theme_font_size_229578101 = StringName(from: "get_theme_font_size")
        assert(self._method_get_theme_font_size_229578101 != nil)
        self._method_get_theme_color_2377051548 = StringName(from: "get_theme_color")
        assert(self._method_get_theme_color_2377051548 != nil)
        self._method_get_theme_constant_229578101 = StringName(from: "get_theme_constant")
        assert(self._method_get_theme_constant_229578101 != nil)
        self._method_has_theme_icon_override_2619796661 = StringName(from: "has_theme_icon_override")
        assert(self._method_has_theme_icon_override_2619796661 != nil)
        self._method_has_theme_stylebox_override_2619796661 = StringName(from: "has_theme_stylebox_override")
        assert(self._method_has_theme_stylebox_override_2619796661 != nil)
        self._method_has_theme_font_override_2619796661 = StringName(from: "has_theme_font_override")
        assert(self._method_has_theme_font_override_2619796661 != nil)
        self._method_has_theme_font_size_override_2619796661 = StringName(from: "has_theme_font_size_override")
        assert(self._method_has_theme_font_size_override_2619796661 != nil)
        self._method_has_theme_color_override_2619796661 = StringName(from: "has_theme_color_override")
        assert(self._method_has_theme_color_override_2619796661 != nil)
        self._method_has_theme_constant_override_2619796661 = StringName(from: "has_theme_constant_override")
        assert(self._method_has_theme_constant_override_2619796661 != nil)
        self._method_has_theme_icon_1187511791 = StringName(from: "has_theme_icon")
        assert(self._method_has_theme_icon_1187511791 != nil)
        self._method_has_theme_stylebox_1187511791 = StringName(from: "has_theme_stylebox")
        assert(self._method_has_theme_stylebox_1187511791 != nil)
        self._method_has_theme_font_1187511791 = StringName(from: "has_theme_font")
        assert(self._method_has_theme_font_1187511791 != nil)
        self._method_has_theme_font_size_1187511791 = StringName(from: "has_theme_font_size")
        assert(self._method_has_theme_font_size_1187511791 != nil)
        self._method_has_theme_color_1187511791 = StringName(from: "has_theme_color")
        assert(self._method_has_theme_color_1187511791 != nil)
        self._method_has_theme_constant_1187511791 = StringName(from: "has_theme_constant")
        assert(self._method_has_theme_constant_1187511791 != nil)
        self._method_get_theme_default_base_scale_1740695150 = StringName(from: "get_theme_default_base_scale")
        assert(self._method_get_theme_default_base_scale_1740695150 != nil)
        self._method_get_theme_default_font_3229501585 = StringName(from: "get_theme_default_font")
        assert(self._method_get_theme_default_font_3229501585 != nil)
        self._method_get_theme_default_font_size_3905245786 = StringName(from: "get_theme_default_font_size")
        assert(self._method_get_theme_default_font_size_3905245786 != nil)
        self._method_set_layout_direction_3094704184 = StringName(from: "set_layout_direction")
        assert(self._method_set_layout_direction_3094704184 != nil)
        self._method_get_layout_direction_3909617982 = StringName(from: "get_layout_direction")
        assert(self._method_get_layout_direction_3909617982 != nil)
        self._method_is_layout_rtl_36873697 = StringName(from: "is_layout_rtl")
        assert(self._method_is_layout_rtl_36873697 != nil)
        self._method_set_auto_translate_2586408642 = StringName(from: "set_auto_translate")
        assert(self._method_set_auto_translate_2586408642 != nil)
        self._method_is_auto_translating_36873697 = StringName(from: "is_auto_translating")
        assert(self._method_is_auto_translating_36873697 != nil)
        self._method_popup_1680304321 = StringName(from: "popup")
        assert(self._method_popup_1680304321 != nil)
        self._method_popup_on_parent_1763793166 = StringName(from: "popup_on_parent")
        assert(self._method_popup_on_parent_1763793166 != nil)
        self._method_popup_centered_ratio_1912078273 = StringName(from: "popup_centered_ratio")
        assert(self._method_popup_centered_ratio_1912078273 != nil)
        self._method_popup_centered_3447975422 = StringName(from: "popup_centered")
        assert(self._method_popup_centered_3447975422 != nil)
        self._method_popup_centered_clamped_3728566557 = StringName(from: "popup_centered_clamped")
        assert(self._method_popup_centered_clamped_3728566557 != nil)
    }

    public func set_title(title: godot.String)  {
        let title_native = title._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(title_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_title_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_title() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_title_201670096._native_ptr(),
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
    public func set_initial_position(initial_position: Window.WindowInitialPosition)  {
        withUnsafePointer(to: initial_position.rawValue) { initial_position_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(initial_position_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_initial_position_4084468099._native_ptr(),
                    4084468099)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_initial_position() -> Window.WindowInitialPosition {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_initial_position_4294066647._native_ptr(),
                    4294066647)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Window.WindowInitialPosition(godot: __resPtr.pointee)
    }
    public func set_current_screen(index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_current_screen_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_current_screen() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_current_screen_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_position(position: Vector2i)  {
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_position_1130785943._native_ptr(),
                    1130785943)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_position() -> Vector2i {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_position_3690982128._native_ptr(),
                    3690982128)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(godot: __resPtr.pointee)
    }
    public func set_size(size: Vector2i)  {
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_size_1130785943._native_ptr(),
                    1130785943)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_size() -> Vector2i {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_size_3690982128._native_ptr(),
                    3690982128)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(godot: __resPtr.pointee)
    }
    public func reset_size()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_reset_size_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_position_with_decorations() -> Vector2i {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_position_with_decorations_3690982128._native_ptr(),
                    3690982128)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(godot: __resPtr.pointee)
    }
    public func get_size_with_decorations() -> Vector2i {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_size_with_decorations_3690982128._native_ptr(),
                    3690982128)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(godot: __resPtr.pointee)
    }
    public func set_max_size(max_size: Vector2i)  {
        let max_size_native = max_size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_max_size_1130785943._native_ptr(),
                    1130785943)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_max_size() -> Vector2i {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_max_size_3690982128._native_ptr(),
                    3690982128)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(godot: __resPtr.pointee)
    }
    public func set_min_size(min_size: Vector2i)  {
        let min_size_native = min_size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(min_size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_min_size_1130785943._native_ptr(),
                    1130785943)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_min_size() -> Vector2i {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_min_size_3690982128._native_ptr(),
                    3690982128)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(godot: __resPtr.pointee)
    }
    public func set_mode(mode: Window.Mode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_mode_3095236531._native_ptr(),
                    3095236531)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_mode() -> Window.Mode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_mode_2566346114._native_ptr(),
                    2566346114)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Window.Mode(godot: __resPtr.pointee)
    }
    public func set_flag(flag: Window.Flags, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        withUnsafePointer(to: flag.rawValue) { flag_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flag_native), .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_flag_3426449779._native_ptr(),
                    3426449779)
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
    public func get_flag(flag: Window.Flags) -> UInt8 {
        withUnsafePointer(to: flag.rawValue) { flag_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flag_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_flag_3062752289._native_ptr(),
                    3062752289)
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
    public func is_maximize_allowed() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_maximize_allowed_36873697._native_ptr(),
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
    public func request_attention()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_request_attention_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func move_to_foreground()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_move_to_foreground_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_visible(visible: UInt8)  {
        withUnsafePointer(to: visible) { visible_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(visible_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_visible_2586408642._native_ptr(),
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
    public func is_visible() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_visible_36873697._native_ptr(),
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
    public func hide()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_hide_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func show()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_show_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_transient(transient: UInt8)  {
        withUnsafePointer(to: transient) { transient_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(transient_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_transient_2586408642._native_ptr(),
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
    public func is_transient() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_transient_36873697._native_ptr(),
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
    public func set_exclusive(exclusive: UInt8)  {
        withUnsafePointer(to: exclusive) { exclusive_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(exclusive_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_exclusive_2586408642._native_ptr(),
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
    public func is_exclusive() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_exclusive_36873697._native_ptr(),
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
    public func can_draw() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_can_draw_36873697._native_ptr(),
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
    public func has_focus() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_focus_36873697._native_ptr(),
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
    public func grab_focus()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_grab_focus_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_ime_active(active: UInt8)  {
        withUnsafePointer(to: active) { active_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(active_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ime_active_2586408642._native_ptr(),
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
    public func set_ime_position(position: Vector2i)  {
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ime_position_1130785943._native_ptr(),
                    1130785943)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func is_embedded() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_embedded_36873697._native_ptr(),
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
    public func get_contents_minimum_size() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_contents_minimum_size_3341600327._native_ptr(),
                    3341600327)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func set_content_scale_size(size: Vector2i)  {
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_content_scale_size_1130785943._native_ptr(),
                    1130785943)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_content_scale_size() -> Vector2i {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_content_scale_size_3690982128._native_ptr(),
                    3690982128)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(godot: __resPtr.pointee)
    }
    public func set_content_scale_mode(mode: Window.ContentScaleMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_content_scale_mode_2937716473._native_ptr(),
                    2937716473)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_content_scale_mode() -> Window.ContentScaleMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_content_scale_mode_161585230._native_ptr(),
                    161585230)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Window.ContentScaleMode(godot: __resPtr.pointee)
    }
    public func set_content_scale_aspect(aspect: Window.ContentScaleAspect)  {
        withUnsafePointer(to: aspect.rawValue) { aspect_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(aspect_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_content_scale_aspect_2370399418._native_ptr(),
                    2370399418)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_content_scale_aspect() -> Window.ContentScaleAspect {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_content_scale_aspect_4158790715._native_ptr(),
                    4158790715)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Window.ContentScaleAspect(godot: __resPtr.pointee)
    }
    public func set_content_scale_factor(factor: Float64)  {
        withUnsafePointer(to: factor) { factor_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(factor_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_content_scale_factor_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_content_scale_factor() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_content_scale_factor_1740695150._native_ptr(),
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
    public func set_use_font_oversampling(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_use_font_oversampling_2586408642._native_ptr(),
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
    public func is_using_font_oversampling() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_using_font_oversampling_36873697._native_ptr(),
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
    public func set_mouse_passthrough_polygon(polygon: PackedVector2Array)  {
        let polygon_native = polygon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(polygon_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_mouse_passthrough_polygon_1509147220._native_ptr(),
                    1509147220)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_mouse_passthrough_polygon() -> PackedVector2Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_mouse_passthrough_polygon_2961356807._native_ptr(),
                    2961356807)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(godot: __resPtr.pointee)
    }
    public func set_wrap_controls(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_wrap_controls_2586408642._native_ptr(),
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
    public func is_wrapping_controls() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_wrapping_controls_36873697._native_ptr(),
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
    public func child_controls_changed()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_child_controls_changed_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_theme(theme: Theme)  {
        let theme_native = theme._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(theme_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_theme_2326690814._native_ptr(),
                    2326690814)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_theme() -> Theme {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_theme_3846893731._native_ptr(),
                    3846893731)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Theme(godot: __resPtr.pointee)
    }
    public func set_theme_type_variation(theme_type: StringName)  {
        let theme_type_native = theme_type._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(theme_type_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_theme_type_variation_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_theme_type_variation() -> StringName {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_theme_type_variation_2002593661._native_ptr(),
                    2002593661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
    }
    public func begin_bulk_theme_override()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_begin_bulk_theme_override_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func end_bulk_theme_override()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_end_bulk_theme_override_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_theme_icon_override(name: StringName, texture: Texture2D)  {
        let texture_native = texture._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(texture_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_theme_icon_override_1373065600._native_ptr(),
                    1373065600)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_theme_stylebox_override(name: StringName, stylebox: StyleBox)  {
        let stylebox_native = stylebox._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(stylebox_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_theme_stylebox_override_4188838905._native_ptr(),
                    4188838905)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_theme_font_override(name: StringName, font: Font)  {
        let font_native = font._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(font_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_theme_font_override_3518018674._native_ptr(),
                    3518018674)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_theme_font_size_override(name: StringName, font_size: Int64)  {
        withUnsafePointer(to: font_size) { font_size_native in
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(font_size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_theme_font_size_override_2415702435._native_ptr(),
                    2415702435)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_theme_color_override(name: StringName, color: Color)  {
        let color_native = color._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(color_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_theme_color_override_4260178595._native_ptr(),
                    4260178595)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_theme_constant_override(name: StringName, constant: Int64)  {
        withUnsafePointer(to: constant) { constant_native in
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(constant_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_theme_constant_override_2415702435._native_ptr(),
                    2415702435)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func remove_theme_icon_override(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_theme_icon_override_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_theme_stylebox_override(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_theme_stylebox_override_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_theme_font_override(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_theme_font_override_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_theme_font_size_override(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_theme_font_size_override_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_theme_color_override(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_theme_color_override_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_theme_constant_override(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_theme_constant_override_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_theme_icon(name: StringName, theme_type: StringName) -> Texture2D {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_theme_icon_2336455395._native_ptr(),
                    2336455395)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
    }
    public func get_theme_stylebox(name: StringName, theme_type: StringName) -> StyleBox {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_theme_stylebox_2759935355._native_ptr(),
                    2759935355)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StyleBox(godot: __resPtr.pointee)
    }
    public func get_theme_font(name: StringName, theme_type: StringName) -> Font {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_theme_font_387378635._native_ptr(),
                    387378635)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Font(godot: __resPtr.pointee)
    }
    public func get_theme_font_size(name: StringName, theme_type: StringName) -> Int64 {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_theme_font_size_229578101._native_ptr(),
                    229578101)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_theme_color(name: StringName, theme_type: StringName) -> Color {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_theme_color_2377051548._native_ptr(),
                    2377051548)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
    public func get_theme_constant(name: StringName, theme_type: StringName) -> Int64 {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_theme_constant_229578101._native_ptr(),
                    229578101)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func has_theme_icon_override(name: StringName) -> UInt8 {
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
                    Self._method_has_theme_icon_override_2619796661._native_ptr(),
                    2619796661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func has_theme_stylebox_override(name: StringName) -> UInt8 {
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
                    Self._method_has_theme_stylebox_override_2619796661._native_ptr(),
                    2619796661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func has_theme_font_override(name: StringName) -> UInt8 {
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
                    Self._method_has_theme_font_override_2619796661._native_ptr(),
                    2619796661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func has_theme_font_size_override(name: StringName) -> UInt8 {
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
                    Self._method_has_theme_font_size_override_2619796661._native_ptr(),
                    2619796661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func has_theme_color_override(name: StringName) -> UInt8 {
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
                    Self._method_has_theme_color_override_2619796661._native_ptr(),
                    2619796661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func has_theme_constant_override(name: StringName) -> UInt8 {
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
                    Self._method_has_theme_constant_override_2619796661._native_ptr(),
                    2619796661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func has_theme_icon(name: StringName, theme_type: StringName) -> UInt8 {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_theme_icon_1187511791._native_ptr(),
                    1187511791)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func has_theme_stylebox(name: StringName, theme_type: StringName) -> UInt8 {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_theme_stylebox_1187511791._native_ptr(),
                    1187511791)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func has_theme_font(name: StringName, theme_type: StringName) -> UInt8 {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_theme_font_1187511791._native_ptr(),
                    1187511791)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func has_theme_font_size(name: StringName, theme_type: StringName) -> UInt8 {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_theme_font_size_1187511791._native_ptr(),
                    1187511791)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func has_theme_color(name: StringName, theme_type: StringName) -> UInt8 {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_theme_color_1187511791._native_ptr(),
                    1187511791)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func has_theme_constant(name: StringName, theme_type: StringName) -> UInt8 {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_theme_constant_1187511791._native_ptr(),
                    1187511791)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_theme_default_base_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_theme_default_base_scale_1740695150._native_ptr(),
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
    public func get_theme_default_font() -> Font {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_theme_default_font_3229501585._native_ptr(),
                    3229501585)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Font(godot: __resPtr.pointee)
    }
    public func get_theme_default_font_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_theme_default_font_size_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_layout_direction(direction: Window.LayoutDirection)  {
        withUnsafePointer(to: direction.rawValue) { direction_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(direction_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_layout_direction_3094704184._native_ptr(),
                    3094704184)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_layout_direction() -> Window.LayoutDirection {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_layout_direction_3909617982._native_ptr(),
                    3909617982)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Window.LayoutDirection(godot: __resPtr.pointee)
    }
    public func is_layout_rtl() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_layout_rtl_36873697._native_ptr(),
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
    public func set_auto_translate(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_auto_translate_2586408642._native_ptr(),
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
    public func is_auto_translating() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_auto_translating_36873697._native_ptr(),
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
    public func popup(rect: Rect2i)  {
        let rect_native = rect._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rect_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_popup_1680304321._native_ptr(),
                    1680304321)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func popup_on_parent(parent_rect: Rect2i)  {
        let parent_rect_native = parent_rect._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(parent_rect_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_popup_on_parent_1763793166._native_ptr(),
                    1763793166)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func popup_centered_ratio(ratio: Float64)  {
        withUnsafePointer(to: ratio) { ratio_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ratio_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_popup_centered_ratio_1912078273._native_ptr(),
                    1912078273)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func popup_centered(minsize: Vector2i)  {
        let minsize_native = minsize._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(minsize_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_popup_centered_3447975422._native_ptr(),
                    3447975422)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func popup_centered_clamped(minsize: Vector2i, fallback_ratio: Float64)  {
        withUnsafePointer(to: fallback_ratio) { fallback_ratio_native in
        let minsize_native = minsize._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(minsize_native), .init(fallback_ratio_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_popup_centered_clamped_3728566557._native_ptr(),
                    3728566557)
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