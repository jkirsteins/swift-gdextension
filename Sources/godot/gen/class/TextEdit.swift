import godot_native

fileprivate var __godot_name_TextEdit: StringName! = nil

/// Multiline text editing control.
/// 
/// TextEdit is meant for editing large, multiline text. It also has facilities for editing code, such as syntax highlighting support and multiple levels of undo/redo.
///  
/// [b]Note:[/b] Most viewport, caret and edit methods contain a [code]caret_index[/code] argument for [member caret_multiple] support. The argument should be one of the following: [code]-1[/code] for all carets, [code]0[/code] for the main caret, or greater than [code]0[/code] for secondary carets.
///  
/// [b]Note:[/b] When holding down [kbd]Alt[/kbd], the vertical scroll wheel will scroll 5 times as fast as it would normally do. This also works in the Godot script editor.
open class TextEdit : Control {

    public enum MenuItems : Int32 {
        case MENU_CUT = 0
        case MENU_COPY = 1
        case MENU_PASTE = 2
        case MENU_CLEAR = 3
        case MENU_SELECT_ALL = 4
        case MENU_UNDO = 5
        case MENU_REDO = 6
        case MENU_SUBMENU_TEXT_DIR = 7
        case MENU_DIR_INHERITED = 8
        case MENU_DIR_AUTO = 9
        case MENU_DIR_LTR = 10
        case MENU_DIR_RTL = 11
        case MENU_DISPLAY_UCC = 12
        case MENU_SUBMENU_INSERT_UCC = 13
        case MENU_INSERT_LRM = 14
        case MENU_INSERT_RLM = 15
        case MENU_INSERT_LRE = 16
        case MENU_INSERT_RLE = 17
        case MENU_INSERT_LRO = 18
        case MENU_INSERT_RLO = 19
        case MENU_INSERT_PDF = 20
        case MENU_INSERT_ALM = 21
        case MENU_INSERT_LRI = 22
        case MENU_INSERT_RLI = 23
        case MENU_INSERT_FSI = 24
        case MENU_INSERT_PDI = 25
        case MENU_INSERT_ZWJ = 26
        case MENU_INSERT_ZWNJ = 27
        case MENU_INSERT_WJ = 28
        case MENU_INSERT_SHY = 29
        case MENU_MAX = 30
    }
    public enum EditAction : Int32 {
        case ACTION_NONE = 0
        case ACTION_TYPING = 1
        case ACTION_BACKSPACE = 2
        case ACTION_DELETE = 3
    }
    public enum SearchFlags : Int32 {
        case SEARCH_MATCH_CASE = 1
        case SEARCH_WHOLE_WORDS = 2
        case SEARCH_BACKWARDS = 4
    }
    public enum CaretType : Int32 {
        case CARET_TYPE_LINE = 0
        case CARET_TYPE_BLOCK = 1
    }
    public enum SelectionMode : Int32 {
        case SELECTION_MODE_NONE = 0
        case SELECTION_MODE_SHIFT = 1
        case SELECTION_MODE_POINTER = 2
        case SELECTION_MODE_WORD = 3
        case SELECTION_MODE_LINE = 4
    }
    public enum LineWrappingMode : Int32 {
        case LINE_WRAPPING_NONE = 0
        case LINE_WRAPPING_BOUNDARY = 1
    }
    public enum GutterType : Int32 {
        case GUTTER_TYPE_STRING = 0
        case GUTTER_TYPE_ICON = 1
        case GUTTER_TYPE_CUSTOM = 2
    }

    public override class var __godot_name: StringName { __godot_name_TextEdit }

    static var _method__handle_unicode_input_0: StringName! = nil
    static var _method__backspace_0: StringName! = nil
    static var _method__cut_0: StringName! = nil
    static var _method__copy_0: StringName! = nil
    static var _method__paste_0: StringName! = nil
    static var _method__paste_primary_clipboard_0: StringName! = nil
    static var _method_has_ime_text_36873697: StringName! = nil
    static var _method_set_editable_2586408642: StringName! = nil
    static var _method_is_editable_36873697: StringName! = nil
    static var _method_set_text_direction_119160795: StringName! = nil
    static var _method_get_text_direction_797257663: StringName! = nil
    static var _method_set_language_83702148: StringName! = nil
    static var _method_get_language_201670096: StringName! = nil
    static var _method_set_structured_text_bidi_override_55961453: StringName! = nil
    static var _method_get_structured_text_bidi_override_3385126229: StringName! = nil
    static var _method_set_structured_text_bidi_override_options_381264803: StringName! = nil
    static var _method_get_structured_text_bidi_override_options_3995934104: StringName! = nil
    static var _method_set_tab_size_1286410249: StringName! = nil
    static var _method_get_tab_size_3905245786: StringName! = nil
    static var _method_set_overtype_mode_enabled_2586408642: StringName! = nil
    static var _method_is_overtype_mode_enabled_36873697: StringName! = nil
    static var _method_set_context_menu_enabled_2586408642: StringName! = nil
    static var _method_is_context_menu_enabled_36873697: StringName! = nil
    static var _method_set_shortcut_keys_enabled_2586408642: StringName! = nil
    static var _method_is_shortcut_keys_enabled_36873697: StringName! = nil
    static var _method_set_virtual_keyboard_enabled_2586408642: StringName! = nil
    static var _method_is_virtual_keyboard_enabled_36873697: StringName! = nil
    static var _method_set_middle_mouse_paste_enabled_2586408642: StringName! = nil
    static var _method_is_middle_mouse_paste_enabled_36873697: StringName! = nil
    static var _method_clear_3218959716: StringName! = nil
    static var _method_set_text_83702148: StringName! = nil
    static var _method_get_text_201670096: StringName! = nil
    static var _method_get_line_count_3905245786: StringName! = nil
    static var _method_set_placeholder_83702148: StringName! = nil
    static var _method_get_placeholder_201670096: StringName! = nil
    static var _method_set_line_501894301: StringName! = nil
    static var _method_get_line_844755477: StringName! = nil
    static var _method_get_line_width_3294126239: StringName! = nil
    static var _method_get_line_height_3905245786: StringName! = nil
    static var _method_get_indent_level_923996154: StringName! = nil
    static var _method_get_first_non_whitespace_column_923996154: StringName! = nil
    static var _method_swap_lines_3937882851: StringName! = nil
    static var _method_insert_line_at_501894301: StringName! = nil
    static var _method_insert_text_at_caret_3043792800: StringName! = nil
    static var _method_remove_text_4275841770: StringName! = nil
    static var _method_get_last_unhidden_line_3905245786: StringName! = nil
    static var _method_get_next_visible_line_offset_from_3175239445: StringName! = nil
    static var _method_get_next_visible_line_index_offset_from_3386475622: StringName! = nil
    static var _method_backspace_1025054187: StringName! = nil
    static var _method_cut_1025054187: StringName! = nil
    static var _method_copy_1025054187: StringName! = nil
    static var _method_paste_1025054187: StringName! = nil
    static var _method_paste_primary_clipboard_1025054187: StringName! = nil
    static var _method_start_action_2834827583: StringName! = nil
    static var _method_end_action_3218959716: StringName! = nil
    static var _method_begin_complex_operation_3218959716: StringName! = nil
    static var _method_end_complex_operation_3218959716: StringName! = nil
    static var _method_has_undo_36873697: StringName! = nil
    static var _method_has_redo_36873697: StringName! = nil
    static var _method_undo_3218959716: StringName! = nil
    static var _method_redo_3218959716: StringName! = nil
    static var _method_clear_undo_history_3218959716: StringName! = nil
    static var _method_tag_saved_version_3218959716: StringName! = nil
    static var _method_get_version_3905245786: StringName! = nil
    static var _method_get_saved_version_3905245786: StringName! = nil
    static var _method_set_search_text_83702148: StringName! = nil
    static var _method_set_search_flags_1286410249: StringName! = nil
    static var _method_search_1203739136: StringName! = nil
    static var _method_set_tooltip_request_func_1611583062: StringName! = nil
    static var _method_get_local_mouse_pos_3341600327: StringName! = nil
    static var _method_get_word_at_pos_3674420000: StringName! = nil
    static var _method_get_line_column_at_pos_850652858: StringName! = nil
    static var _method_get_pos_at_line_column_410388347: StringName! = nil
    static var _method_get_rect_at_line_column_3256618057: StringName! = nil
    static var _method_get_minimap_line_at_pos_2485466453: StringName! = nil
    static var _method_is_dragging_cursor_36873697: StringName! = nil
    static var _method_is_mouse_over_selection_1099474134: StringName! = nil
    static var _method_set_caret_type_1211596914: StringName! = nil
    static var _method_get_caret_type_2830252959: StringName! = nil
    static var _method_set_caret_blink_enabled_2586408642: StringName! = nil
    static var _method_is_caret_blink_enabled_36873697: StringName! = nil
    static var _method_set_caret_blink_interval_373806689: StringName! = nil
    static var _method_get_caret_blink_interval_1740695150: StringName! = nil
    static var _method_set_move_caret_on_right_click_enabled_2586408642: StringName! = nil
    static var _method_is_move_caret_on_right_click_enabled_36873697: StringName! = nil
    static var _method_set_caret_mid_grapheme_enabled_2586408642: StringName! = nil
    static var _method_is_caret_mid_grapheme_enabled_36873697: StringName! = nil
    static var _method_set_multiple_carets_enabled_2586408642: StringName! = nil
    static var _method_is_multiple_carets_enabled_36873697: StringName! = nil
    static var _method_add_caret_50157827: StringName! = nil
    static var _method_remove_caret_1286410249: StringName! = nil
    static var _method_remove_secondary_carets_3218959716: StringName! = nil
    static var _method_merge_overlapping_carets_3218959716: StringName! = nil
    static var _method_get_caret_count_3905245786: StringName! = nil
    static var _method_add_caret_at_carets_2586408642: StringName! = nil
    static var _method_get_caret_index_edit_order_969006518: StringName! = nil
    static var _method_adjust_carets_after_edit_1770277138: StringName! = nil
    static var _method_is_caret_visible_1051549951: StringName! = nil
    static var _method_get_caret_draw_pos_478253731: StringName! = nil
    static var _method_set_caret_line_1413195636: StringName! = nil
    static var _method_get_caret_line_1591665591: StringName! = nil
    static var _method_set_caret_column_1071284433: StringName! = nil
    static var _method_get_caret_column_1591665591: StringName! = nil
    static var _method_get_caret_wrap_index_1591665591: StringName! = nil
    static var _method_get_word_under_caret_3929349208: StringName! = nil
    static var _method_set_selecting_enabled_2586408642: StringName! = nil
    static var _method_is_selecting_enabled_36873697: StringName! = nil
    static var _method_set_deselect_on_focus_loss_enabled_2586408642: StringName! = nil
    static var _method_is_deselect_on_focus_loss_enabled_36873697: StringName! = nil
    static var _method_set_drag_and_drop_selection_enabled_2586408642: StringName! = nil
    static var _method_is_drag_and_drop_selection_enabled_36873697: StringName! = nil
    static var _method_set_selection_mode_2920622473: StringName! = nil
    static var _method_get_selection_mode_3750106938: StringName! = nil
    static var _method_select_all_3218959716: StringName! = nil
    static var _method_select_word_under_caret_1025054187: StringName! = nil
    static var _method_add_selection_for_next_occurrence_3218959716: StringName! = nil
    static var _method_select_4269665324: StringName! = nil
    static var _method_has_selection_2824505868: StringName! = nil
    static var _method_get_selected_text_2309358862: StringName! = nil
    static var _method_get_selection_line_1591665591: StringName! = nil
    static var _method_get_selection_column_1591665591: StringName! = nil
    static var _method_get_selection_from_line_1591665591: StringName! = nil
    static var _method_get_selection_from_column_1591665591: StringName! = nil
    static var _method_get_selection_to_line_1591665591: StringName! = nil
    static var _method_get_selection_to_column_1591665591: StringName! = nil
    static var _method_deselect_1025054187: StringName! = nil
    static var _method_delete_selection_1025054187: StringName! = nil
    static var _method_set_line_wrapping_mode_2525115309: StringName! = nil
    static var _method_get_line_wrapping_mode_3562716114: StringName! = nil
    static var _method_is_line_wrapped_1116898809: StringName! = nil
    static var _method_get_line_wrap_count_923996154: StringName! = nil
    static var _method_get_line_wrap_index_at_column_3175239445: StringName! = nil
    static var _method_get_line_wrapped_text_647634434: StringName! = nil
    static var _method_set_smooth_scroll_enabled_2586408642: StringName! = nil
    static var _method_is_smooth_scroll_enabled_36873697: StringName! = nil
    static var _method_get_v_scroll_bar_3226026593: StringName! = nil
    static var _method_get_h_scroll_bar_3774687988: StringName! = nil
    static var _method_set_v_scroll_373806689: StringName! = nil
    static var _method_get_v_scroll_1740695150: StringName! = nil
    static var _method_set_h_scroll_1286410249: StringName! = nil
    static var _method_get_h_scroll_3905245786: StringName! = nil
    static var _method_set_scroll_past_end_of_file_enabled_2586408642: StringName! = nil
    static var _method_is_scroll_past_end_of_file_enabled_36873697: StringName! = nil
    static var _method_set_v_scroll_speed_373806689: StringName! = nil
    static var _method_get_v_scroll_speed_1740695150: StringName! = nil
    static var _method_set_fit_content_height_enabled_2586408642: StringName! = nil
    static var _method_is_fit_content_height_enabled_36873697: StringName! = nil
    static var _method_get_scroll_pos_for_line_3274652423: StringName! = nil
    static var _method_set_line_as_first_visible_3023605688: StringName! = nil
    static var _method_get_first_visible_line_3905245786: StringName! = nil
    static var _method_set_line_as_center_visible_3023605688: StringName! = nil
    static var _method_set_line_as_last_visible_3023605688: StringName! = nil
    static var _method_get_last_full_visible_line_3905245786: StringName! = nil
    static var _method_get_last_full_visible_line_wrap_index_3905245786: StringName! = nil
    static var _method_get_visible_line_count_3905245786: StringName! = nil
    static var _method_get_visible_line_count_in_range_3175239445: StringName! = nil
    static var _method_get_total_visible_line_count_3905245786: StringName! = nil
    static var _method_adjust_viewport_to_caret_1995695955: StringName! = nil
    static var _method_center_viewport_to_caret_1995695955: StringName! = nil
    static var _method_set_draw_minimap_2586408642: StringName! = nil
    static var _method_is_drawing_minimap_36873697: StringName! = nil
    static var _method_set_minimap_width_1286410249: StringName! = nil
    static var _method_get_minimap_width_3905245786: StringName! = nil
    static var _method_get_minimap_visible_lines_3905245786: StringName! = nil
    static var _method_add_gutter_1025054187: StringName! = nil
    static var _method_remove_gutter_1286410249: StringName! = nil
    static var _method_get_gutter_count_3905245786: StringName! = nil
    static var _method_set_gutter_name_501894301: StringName! = nil
    static var _method_get_gutter_name_844755477: StringName! = nil
    static var _method_set_gutter_type_1088959071: StringName! = nil
    static var _method_get_gutter_type_1159699127: StringName! = nil
    static var _method_set_gutter_width_3937882851: StringName! = nil
    static var _method_get_gutter_width_923996154: StringName! = nil
    static var _method_set_gutter_draw_300928843: StringName! = nil
    static var _method_is_gutter_drawn_1116898809: StringName! = nil
    static var _method_set_gutter_clickable_300928843: StringName! = nil
    static var _method_is_gutter_clickable_1116898809: StringName! = nil
    static var _method_set_gutter_overwritable_300928843: StringName! = nil
    static var _method_is_gutter_overwritable_1116898809: StringName! = nil
    static var _method_merge_gutters_3937882851: StringName! = nil
    static var _method_set_gutter_custom_draw_957362965: StringName! = nil
    static var _method_get_total_gutter_width_3905245786: StringName! = nil
    static var _method_set_line_gutter_metadata_2060538656: StringName! = nil
    static var _method_get_line_gutter_metadata_678354945: StringName! = nil
    static var _method_set_line_gutter_text_2285447957: StringName! = nil
    static var _method_get_line_gutter_text_1391810591: StringName! = nil
    static var _method_set_line_gutter_icon_176101966: StringName! = nil
    static var _method_get_line_gutter_icon_2584904275: StringName! = nil
    static var _method_set_line_gutter_item_color_3733378741: StringName! = nil
    static var _method_get_line_gutter_item_color_2165839948: StringName! = nil
    static var _method_set_line_gutter_clickable_1383440665: StringName! = nil
    static var _method_is_line_gutter_clickable_2522259332: StringName! = nil
    static var _method_set_line_background_color_2878471219: StringName! = nil
    static var _method_get_line_background_color_3457211756: StringName! = nil
    static var _method_set_syntax_highlighter_2765644541: StringName! = nil
    static var _method_get_syntax_highlighter_2721131626: StringName! = nil
    static var _method_set_highlight_current_line_2586408642: StringName! = nil
    static var _method_is_highlight_current_line_enabled_36873697: StringName! = nil
    static var _method_set_highlight_all_occurrences_2586408642: StringName! = nil
    static var _method_is_highlight_all_occurrences_enabled_36873697: StringName! = nil
    static var _method_get_draw_control_chars_36873697: StringName! = nil
    static var _method_set_draw_control_chars_2586408642: StringName! = nil
    static var _method_set_draw_tabs_2586408642: StringName! = nil
    static var _method_is_drawing_tabs_36873697: StringName! = nil
    static var _method_set_draw_spaces_2586408642: StringName! = nil
    static var _method_is_drawing_spaces_36873697: StringName! = nil
    static var _method_get_menu_229722558: StringName! = nil
    static var _method_is_menu_visible_36873697: StringName! = nil
    static var _method_menu_option_1286410249: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_TextEdit == nil)
        __godot_name_TextEdit = StringName(from: "TextEdit")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_has_ime_text_36873697 = StringName(from: "has_ime_text")
        assert(self._method_has_ime_text_36873697 != nil)
        self._method_set_editable_2586408642 = StringName(from: "set_editable")
        assert(self._method_set_editable_2586408642 != nil)
        self._method_is_editable_36873697 = StringName(from: "is_editable")
        assert(self._method_is_editable_36873697 != nil)
        self._method_set_text_direction_119160795 = StringName(from: "set_text_direction")
        assert(self._method_set_text_direction_119160795 != nil)
        self._method_get_text_direction_797257663 = StringName(from: "get_text_direction")
        assert(self._method_get_text_direction_797257663 != nil)
        self._method_set_language_83702148 = StringName(from: "set_language")
        assert(self._method_set_language_83702148 != nil)
        self._method_get_language_201670096 = StringName(from: "get_language")
        assert(self._method_get_language_201670096 != nil)
        self._method_set_structured_text_bidi_override_55961453 = StringName(from: "set_structured_text_bidi_override")
        assert(self._method_set_structured_text_bidi_override_55961453 != nil)
        self._method_get_structured_text_bidi_override_3385126229 = StringName(from: "get_structured_text_bidi_override")
        assert(self._method_get_structured_text_bidi_override_3385126229 != nil)
        self._method_set_structured_text_bidi_override_options_381264803 = StringName(from: "set_structured_text_bidi_override_options")
        assert(self._method_set_structured_text_bidi_override_options_381264803 != nil)
        self._method_get_structured_text_bidi_override_options_3995934104 = StringName(from: "get_structured_text_bidi_override_options")
        assert(self._method_get_structured_text_bidi_override_options_3995934104 != nil)
        self._method_set_tab_size_1286410249 = StringName(from: "set_tab_size")
        assert(self._method_set_tab_size_1286410249 != nil)
        self._method_get_tab_size_3905245786 = StringName(from: "get_tab_size")
        assert(self._method_get_tab_size_3905245786 != nil)
        self._method_set_overtype_mode_enabled_2586408642 = StringName(from: "set_overtype_mode_enabled")
        assert(self._method_set_overtype_mode_enabled_2586408642 != nil)
        self._method_is_overtype_mode_enabled_36873697 = StringName(from: "is_overtype_mode_enabled")
        assert(self._method_is_overtype_mode_enabled_36873697 != nil)
        self._method_set_context_menu_enabled_2586408642 = StringName(from: "set_context_menu_enabled")
        assert(self._method_set_context_menu_enabled_2586408642 != nil)
        self._method_is_context_menu_enabled_36873697 = StringName(from: "is_context_menu_enabled")
        assert(self._method_is_context_menu_enabled_36873697 != nil)
        self._method_set_shortcut_keys_enabled_2586408642 = StringName(from: "set_shortcut_keys_enabled")
        assert(self._method_set_shortcut_keys_enabled_2586408642 != nil)
        self._method_is_shortcut_keys_enabled_36873697 = StringName(from: "is_shortcut_keys_enabled")
        assert(self._method_is_shortcut_keys_enabled_36873697 != nil)
        self._method_set_virtual_keyboard_enabled_2586408642 = StringName(from: "set_virtual_keyboard_enabled")
        assert(self._method_set_virtual_keyboard_enabled_2586408642 != nil)
        self._method_is_virtual_keyboard_enabled_36873697 = StringName(from: "is_virtual_keyboard_enabled")
        assert(self._method_is_virtual_keyboard_enabled_36873697 != nil)
        self._method_set_middle_mouse_paste_enabled_2586408642 = StringName(from: "set_middle_mouse_paste_enabled")
        assert(self._method_set_middle_mouse_paste_enabled_2586408642 != nil)
        self._method_is_middle_mouse_paste_enabled_36873697 = StringName(from: "is_middle_mouse_paste_enabled")
        assert(self._method_is_middle_mouse_paste_enabled_36873697 != nil)
        self._method_clear_3218959716 = StringName(from: "clear")
        assert(self._method_clear_3218959716 != nil)
        self._method_set_text_83702148 = StringName(from: "set_text")
        assert(self._method_set_text_83702148 != nil)
        self._method_get_text_201670096 = StringName(from: "get_text")
        assert(self._method_get_text_201670096 != nil)
        self._method_get_line_count_3905245786 = StringName(from: "get_line_count")
        assert(self._method_get_line_count_3905245786 != nil)
        self._method_set_placeholder_83702148 = StringName(from: "set_placeholder")
        assert(self._method_set_placeholder_83702148 != nil)
        self._method_get_placeholder_201670096 = StringName(from: "get_placeholder")
        assert(self._method_get_placeholder_201670096 != nil)
        self._method_set_line_501894301 = StringName(from: "set_line")
        assert(self._method_set_line_501894301 != nil)
        self._method_get_line_844755477 = StringName(from: "get_line")
        assert(self._method_get_line_844755477 != nil)
        self._method_get_line_width_3294126239 = StringName(from: "get_line_width")
        assert(self._method_get_line_width_3294126239 != nil)
        self._method_get_line_height_3905245786 = StringName(from: "get_line_height")
        assert(self._method_get_line_height_3905245786 != nil)
        self._method_get_indent_level_923996154 = StringName(from: "get_indent_level")
        assert(self._method_get_indent_level_923996154 != nil)
        self._method_get_first_non_whitespace_column_923996154 = StringName(from: "get_first_non_whitespace_column")
        assert(self._method_get_first_non_whitespace_column_923996154 != nil)
        self._method_swap_lines_3937882851 = StringName(from: "swap_lines")
        assert(self._method_swap_lines_3937882851 != nil)
        self._method_insert_line_at_501894301 = StringName(from: "insert_line_at")
        assert(self._method_insert_line_at_501894301 != nil)
        self._method_insert_text_at_caret_3043792800 = StringName(from: "insert_text_at_caret")
        assert(self._method_insert_text_at_caret_3043792800 != nil)
        self._method_remove_text_4275841770 = StringName(from: "remove_text")
        assert(self._method_remove_text_4275841770 != nil)
        self._method_get_last_unhidden_line_3905245786 = StringName(from: "get_last_unhidden_line")
        assert(self._method_get_last_unhidden_line_3905245786 != nil)
        self._method_get_next_visible_line_offset_from_3175239445 = StringName(from: "get_next_visible_line_offset_from")
        assert(self._method_get_next_visible_line_offset_from_3175239445 != nil)
        self._method_get_next_visible_line_index_offset_from_3386475622 = StringName(from: "get_next_visible_line_index_offset_from")
        assert(self._method_get_next_visible_line_index_offset_from_3386475622 != nil)
        self._method_backspace_1025054187 = StringName(from: "backspace")
        assert(self._method_backspace_1025054187 != nil)
        self._method_cut_1025054187 = StringName(from: "cut")
        assert(self._method_cut_1025054187 != nil)
        self._method_copy_1025054187 = StringName(from: "copy")
        assert(self._method_copy_1025054187 != nil)
        self._method_paste_1025054187 = StringName(from: "paste")
        assert(self._method_paste_1025054187 != nil)
        self._method_paste_primary_clipboard_1025054187 = StringName(from: "paste_primary_clipboard")
        assert(self._method_paste_primary_clipboard_1025054187 != nil)
        self._method_start_action_2834827583 = StringName(from: "start_action")
        assert(self._method_start_action_2834827583 != nil)
        self._method_end_action_3218959716 = StringName(from: "end_action")
        assert(self._method_end_action_3218959716 != nil)
        self._method_begin_complex_operation_3218959716 = StringName(from: "begin_complex_operation")
        assert(self._method_begin_complex_operation_3218959716 != nil)
        self._method_end_complex_operation_3218959716 = StringName(from: "end_complex_operation")
        assert(self._method_end_complex_operation_3218959716 != nil)
        self._method_has_undo_36873697 = StringName(from: "has_undo")
        assert(self._method_has_undo_36873697 != nil)
        self._method_has_redo_36873697 = StringName(from: "has_redo")
        assert(self._method_has_redo_36873697 != nil)
        self._method_undo_3218959716 = StringName(from: "undo")
        assert(self._method_undo_3218959716 != nil)
        self._method_redo_3218959716 = StringName(from: "redo")
        assert(self._method_redo_3218959716 != nil)
        self._method_clear_undo_history_3218959716 = StringName(from: "clear_undo_history")
        assert(self._method_clear_undo_history_3218959716 != nil)
        self._method_tag_saved_version_3218959716 = StringName(from: "tag_saved_version")
        assert(self._method_tag_saved_version_3218959716 != nil)
        self._method_get_version_3905245786 = StringName(from: "get_version")
        assert(self._method_get_version_3905245786 != nil)
        self._method_get_saved_version_3905245786 = StringName(from: "get_saved_version")
        assert(self._method_get_saved_version_3905245786 != nil)
        self._method_set_search_text_83702148 = StringName(from: "set_search_text")
        assert(self._method_set_search_text_83702148 != nil)
        self._method_set_search_flags_1286410249 = StringName(from: "set_search_flags")
        assert(self._method_set_search_flags_1286410249 != nil)
        self._method_search_1203739136 = StringName(from: "search")
        assert(self._method_search_1203739136 != nil)
        self._method_set_tooltip_request_func_1611583062 = StringName(from: "set_tooltip_request_func")
        assert(self._method_set_tooltip_request_func_1611583062 != nil)
        self._method_get_local_mouse_pos_3341600327 = StringName(from: "get_local_mouse_pos")
        assert(self._method_get_local_mouse_pos_3341600327 != nil)
        self._method_get_word_at_pos_3674420000 = StringName(from: "get_word_at_pos")
        assert(self._method_get_word_at_pos_3674420000 != nil)
        self._method_get_line_column_at_pos_850652858 = StringName(from: "get_line_column_at_pos")
        assert(self._method_get_line_column_at_pos_850652858 != nil)
        self._method_get_pos_at_line_column_410388347 = StringName(from: "get_pos_at_line_column")
        assert(self._method_get_pos_at_line_column_410388347 != nil)
        self._method_get_rect_at_line_column_3256618057 = StringName(from: "get_rect_at_line_column")
        assert(self._method_get_rect_at_line_column_3256618057 != nil)
        self._method_get_minimap_line_at_pos_2485466453 = StringName(from: "get_minimap_line_at_pos")
        assert(self._method_get_minimap_line_at_pos_2485466453 != nil)
        self._method_is_dragging_cursor_36873697 = StringName(from: "is_dragging_cursor")
        assert(self._method_is_dragging_cursor_36873697 != nil)
        self._method_is_mouse_over_selection_1099474134 = StringName(from: "is_mouse_over_selection")
        assert(self._method_is_mouse_over_selection_1099474134 != nil)
        self._method_set_caret_type_1211596914 = StringName(from: "set_caret_type")
        assert(self._method_set_caret_type_1211596914 != nil)
        self._method_get_caret_type_2830252959 = StringName(from: "get_caret_type")
        assert(self._method_get_caret_type_2830252959 != nil)
        self._method_set_caret_blink_enabled_2586408642 = StringName(from: "set_caret_blink_enabled")
        assert(self._method_set_caret_blink_enabled_2586408642 != nil)
        self._method_is_caret_blink_enabled_36873697 = StringName(from: "is_caret_blink_enabled")
        assert(self._method_is_caret_blink_enabled_36873697 != nil)
        self._method_set_caret_blink_interval_373806689 = StringName(from: "set_caret_blink_interval")
        assert(self._method_set_caret_blink_interval_373806689 != nil)
        self._method_get_caret_blink_interval_1740695150 = StringName(from: "get_caret_blink_interval")
        assert(self._method_get_caret_blink_interval_1740695150 != nil)
        self._method_set_move_caret_on_right_click_enabled_2586408642 = StringName(from: "set_move_caret_on_right_click_enabled")
        assert(self._method_set_move_caret_on_right_click_enabled_2586408642 != nil)
        self._method_is_move_caret_on_right_click_enabled_36873697 = StringName(from: "is_move_caret_on_right_click_enabled")
        assert(self._method_is_move_caret_on_right_click_enabled_36873697 != nil)
        self._method_set_caret_mid_grapheme_enabled_2586408642 = StringName(from: "set_caret_mid_grapheme_enabled")
        assert(self._method_set_caret_mid_grapheme_enabled_2586408642 != nil)
        self._method_is_caret_mid_grapheme_enabled_36873697 = StringName(from: "is_caret_mid_grapheme_enabled")
        assert(self._method_is_caret_mid_grapheme_enabled_36873697 != nil)
        self._method_set_multiple_carets_enabled_2586408642 = StringName(from: "set_multiple_carets_enabled")
        assert(self._method_set_multiple_carets_enabled_2586408642 != nil)
        self._method_is_multiple_carets_enabled_36873697 = StringName(from: "is_multiple_carets_enabled")
        assert(self._method_is_multiple_carets_enabled_36873697 != nil)
        self._method_add_caret_50157827 = StringName(from: "add_caret")
        assert(self._method_add_caret_50157827 != nil)
        self._method_remove_caret_1286410249 = StringName(from: "remove_caret")
        assert(self._method_remove_caret_1286410249 != nil)
        self._method_remove_secondary_carets_3218959716 = StringName(from: "remove_secondary_carets")
        assert(self._method_remove_secondary_carets_3218959716 != nil)
        self._method_merge_overlapping_carets_3218959716 = StringName(from: "merge_overlapping_carets")
        assert(self._method_merge_overlapping_carets_3218959716 != nil)
        self._method_get_caret_count_3905245786 = StringName(from: "get_caret_count")
        assert(self._method_get_caret_count_3905245786 != nil)
        self._method_add_caret_at_carets_2586408642 = StringName(from: "add_caret_at_carets")
        assert(self._method_add_caret_at_carets_2586408642 != nil)
        self._method_get_caret_index_edit_order_969006518 = StringName(from: "get_caret_index_edit_order")
        assert(self._method_get_caret_index_edit_order_969006518 != nil)
        self._method_adjust_carets_after_edit_1770277138 = StringName(from: "adjust_carets_after_edit")
        assert(self._method_adjust_carets_after_edit_1770277138 != nil)
        self._method_is_caret_visible_1051549951 = StringName(from: "is_caret_visible")
        assert(self._method_is_caret_visible_1051549951 != nil)
        self._method_get_caret_draw_pos_478253731 = StringName(from: "get_caret_draw_pos")
        assert(self._method_get_caret_draw_pos_478253731 != nil)
        self._method_set_caret_line_1413195636 = StringName(from: "set_caret_line")
        assert(self._method_set_caret_line_1413195636 != nil)
        self._method_get_caret_line_1591665591 = StringName(from: "get_caret_line")
        assert(self._method_get_caret_line_1591665591 != nil)
        self._method_set_caret_column_1071284433 = StringName(from: "set_caret_column")
        assert(self._method_set_caret_column_1071284433 != nil)
        self._method_get_caret_column_1591665591 = StringName(from: "get_caret_column")
        assert(self._method_get_caret_column_1591665591 != nil)
        self._method_get_caret_wrap_index_1591665591 = StringName(from: "get_caret_wrap_index")
        assert(self._method_get_caret_wrap_index_1591665591 != nil)
        self._method_get_word_under_caret_3929349208 = StringName(from: "get_word_under_caret")
        assert(self._method_get_word_under_caret_3929349208 != nil)
        self._method_set_selecting_enabled_2586408642 = StringName(from: "set_selecting_enabled")
        assert(self._method_set_selecting_enabled_2586408642 != nil)
        self._method_is_selecting_enabled_36873697 = StringName(from: "is_selecting_enabled")
        assert(self._method_is_selecting_enabled_36873697 != nil)
        self._method_set_deselect_on_focus_loss_enabled_2586408642 = StringName(from: "set_deselect_on_focus_loss_enabled")
        assert(self._method_set_deselect_on_focus_loss_enabled_2586408642 != nil)
        self._method_is_deselect_on_focus_loss_enabled_36873697 = StringName(from: "is_deselect_on_focus_loss_enabled")
        assert(self._method_is_deselect_on_focus_loss_enabled_36873697 != nil)
        self._method_set_drag_and_drop_selection_enabled_2586408642 = StringName(from: "set_drag_and_drop_selection_enabled")
        assert(self._method_set_drag_and_drop_selection_enabled_2586408642 != nil)
        self._method_is_drag_and_drop_selection_enabled_36873697 = StringName(from: "is_drag_and_drop_selection_enabled")
        assert(self._method_is_drag_and_drop_selection_enabled_36873697 != nil)
        self._method_set_selection_mode_2920622473 = StringName(from: "set_selection_mode")
        assert(self._method_set_selection_mode_2920622473 != nil)
        self._method_get_selection_mode_3750106938 = StringName(from: "get_selection_mode")
        assert(self._method_get_selection_mode_3750106938 != nil)
        self._method_select_all_3218959716 = StringName(from: "select_all")
        assert(self._method_select_all_3218959716 != nil)
        self._method_select_word_under_caret_1025054187 = StringName(from: "select_word_under_caret")
        assert(self._method_select_word_under_caret_1025054187 != nil)
        self._method_add_selection_for_next_occurrence_3218959716 = StringName(from: "add_selection_for_next_occurrence")
        assert(self._method_add_selection_for_next_occurrence_3218959716 != nil)
        self._method_select_4269665324 = StringName(from: "select")
        assert(self._method_select_4269665324 != nil)
        self._method_has_selection_2824505868 = StringName(from: "has_selection")
        assert(self._method_has_selection_2824505868 != nil)
        self._method_get_selected_text_2309358862 = StringName(from: "get_selected_text")
        assert(self._method_get_selected_text_2309358862 != nil)
        self._method_get_selection_line_1591665591 = StringName(from: "get_selection_line")
        assert(self._method_get_selection_line_1591665591 != nil)
        self._method_get_selection_column_1591665591 = StringName(from: "get_selection_column")
        assert(self._method_get_selection_column_1591665591 != nil)
        self._method_get_selection_from_line_1591665591 = StringName(from: "get_selection_from_line")
        assert(self._method_get_selection_from_line_1591665591 != nil)
        self._method_get_selection_from_column_1591665591 = StringName(from: "get_selection_from_column")
        assert(self._method_get_selection_from_column_1591665591 != nil)
        self._method_get_selection_to_line_1591665591 = StringName(from: "get_selection_to_line")
        assert(self._method_get_selection_to_line_1591665591 != nil)
        self._method_get_selection_to_column_1591665591 = StringName(from: "get_selection_to_column")
        assert(self._method_get_selection_to_column_1591665591 != nil)
        self._method_deselect_1025054187 = StringName(from: "deselect")
        assert(self._method_deselect_1025054187 != nil)
        self._method_delete_selection_1025054187 = StringName(from: "delete_selection")
        assert(self._method_delete_selection_1025054187 != nil)
        self._method_set_line_wrapping_mode_2525115309 = StringName(from: "set_line_wrapping_mode")
        assert(self._method_set_line_wrapping_mode_2525115309 != nil)
        self._method_get_line_wrapping_mode_3562716114 = StringName(from: "get_line_wrapping_mode")
        assert(self._method_get_line_wrapping_mode_3562716114 != nil)
        self._method_is_line_wrapped_1116898809 = StringName(from: "is_line_wrapped")
        assert(self._method_is_line_wrapped_1116898809 != nil)
        self._method_get_line_wrap_count_923996154 = StringName(from: "get_line_wrap_count")
        assert(self._method_get_line_wrap_count_923996154 != nil)
        self._method_get_line_wrap_index_at_column_3175239445 = StringName(from: "get_line_wrap_index_at_column")
        assert(self._method_get_line_wrap_index_at_column_3175239445 != nil)
        self._method_get_line_wrapped_text_647634434 = StringName(from: "get_line_wrapped_text")
        assert(self._method_get_line_wrapped_text_647634434 != nil)
        self._method_set_smooth_scroll_enabled_2586408642 = StringName(from: "set_smooth_scroll_enabled")
        assert(self._method_set_smooth_scroll_enabled_2586408642 != nil)
        self._method_is_smooth_scroll_enabled_36873697 = StringName(from: "is_smooth_scroll_enabled")
        assert(self._method_is_smooth_scroll_enabled_36873697 != nil)
        self._method_get_v_scroll_bar_3226026593 = StringName(from: "get_v_scroll_bar")
        assert(self._method_get_v_scroll_bar_3226026593 != nil)
        self._method_get_h_scroll_bar_3774687988 = StringName(from: "get_h_scroll_bar")
        assert(self._method_get_h_scroll_bar_3774687988 != nil)
        self._method_set_v_scroll_373806689 = StringName(from: "set_v_scroll")
        assert(self._method_set_v_scroll_373806689 != nil)
        self._method_get_v_scroll_1740695150 = StringName(from: "get_v_scroll")
        assert(self._method_get_v_scroll_1740695150 != nil)
        self._method_set_h_scroll_1286410249 = StringName(from: "set_h_scroll")
        assert(self._method_set_h_scroll_1286410249 != nil)
        self._method_get_h_scroll_3905245786 = StringName(from: "get_h_scroll")
        assert(self._method_get_h_scroll_3905245786 != nil)
        self._method_set_scroll_past_end_of_file_enabled_2586408642 = StringName(from: "set_scroll_past_end_of_file_enabled")
        assert(self._method_set_scroll_past_end_of_file_enabled_2586408642 != nil)
        self._method_is_scroll_past_end_of_file_enabled_36873697 = StringName(from: "is_scroll_past_end_of_file_enabled")
        assert(self._method_is_scroll_past_end_of_file_enabled_36873697 != nil)
        self._method_set_v_scroll_speed_373806689 = StringName(from: "set_v_scroll_speed")
        assert(self._method_set_v_scroll_speed_373806689 != nil)
        self._method_get_v_scroll_speed_1740695150 = StringName(from: "get_v_scroll_speed")
        assert(self._method_get_v_scroll_speed_1740695150 != nil)
        self._method_set_fit_content_height_enabled_2586408642 = StringName(from: "set_fit_content_height_enabled")
        assert(self._method_set_fit_content_height_enabled_2586408642 != nil)
        self._method_is_fit_content_height_enabled_36873697 = StringName(from: "is_fit_content_height_enabled")
        assert(self._method_is_fit_content_height_enabled_36873697 != nil)
        self._method_get_scroll_pos_for_line_3274652423 = StringName(from: "get_scroll_pos_for_line")
        assert(self._method_get_scroll_pos_for_line_3274652423 != nil)
        self._method_set_line_as_first_visible_3023605688 = StringName(from: "set_line_as_first_visible")
        assert(self._method_set_line_as_first_visible_3023605688 != nil)
        self._method_get_first_visible_line_3905245786 = StringName(from: "get_first_visible_line")
        assert(self._method_get_first_visible_line_3905245786 != nil)
        self._method_set_line_as_center_visible_3023605688 = StringName(from: "set_line_as_center_visible")
        assert(self._method_set_line_as_center_visible_3023605688 != nil)
        self._method_set_line_as_last_visible_3023605688 = StringName(from: "set_line_as_last_visible")
        assert(self._method_set_line_as_last_visible_3023605688 != nil)
        self._method_get_last_full_visible_line_3905245786 = StringName(from: "get_last_full_visible_line")
        assert(self._method_get_last_full_visible_line_3905245786 != nil)
        self._method_get_last_full_visible_line_wrap_index_3905245786 = StringName(from: "get_last_full_visible_line_wrap_index")
        assert(self._method_get_last_full_visible_line_wrap_index_3905245786 != nil)
        self._method_get_visible_line_count_3905245786 = StringName(from: "get_visible_line_count")
        assert(self._method_get_visible_line_count_3905245786 != nil)
        self._method_get_visible_line_count_in_range_3175239445 = StringName(from: "get_visible_line_count_in_range")
        assert(self._method_get_visible_line_count_in_range_3175239445 != nil)
        self._method_get_total_visible_line_count_3905245786 = StringName(from: "get_total_visible_line_count")
        assert(self._method_get_total_visible_line_count_3905245786 != nil)
        self._method_adjust_viewport_to_caret_1995695955 = StringName(from: "adjust_viewport_to_caret")
        assert(self._method_adjust_viewport_to_caret_1995695955 != nil)
        self._method_center_viewport_to_caret_1995695955 = StringName(from: "center_viewport_to_caret")
        assert(self._method_center_viewport_to_caret_1995695955 != nil)
        self._method_set_draw_minimap_2586408642 = StringName(from: "set_draw_minimap")
        assert(self._method_set_draw_minimap_2586408642 != nil)
        self._method_is_drawing_minimap_36873697 = StringName(from: "is_drawing_minimap")
        assert(self._method_is_drawing_minimap_36873697 != nil)
        self._method_set_minimap_width_1286410249 = StringName(from: "set_minimap_width")
        assert(self._method_set_minimap_width_1286410249 != nil)
        self._method_get_minimap_width_3905245786 = StringName(from: "get_minimap_width")
        assert(self._method_get_minimap_width_3905245786 != nil)
        self._method_get_minimap_visible_lines_3905245786 = StringName(from: "get_minimap_visible_lines")
        assert(self._method_get_minimap_visible_lines_3905245786 != nil)
        self._method_add_gutter_1025054187 = StringName(from: "add_gutter")
        assert(self._method_add_gutter_1025054187 != nil)
        self._method_remove_gutter_1286410249 = StringName(from: "remove_gutter")
        assert(self._method_remove_gutter_1286410249 != nil)
        self._method_get_gutter_count_3905245786 = StringName(from: "get_gutter_count")
        assert(self._method_get_gutter_count_3905245786 != nil)
        self._method_set_gutter_name_501894301 = StringName(from: "set_gutter_name")
        assert(self._method_set_gutter_name_501894301 != nil)
        self._method_get_gutter_name_844755477 = StringName(from: "get_gutter_name")
        assert(self._method_get_gutter_name_844755477 != nil)
        self._method_set_gutter_type_1088959071 = StringName(from: "set_gutter_type")
        assert(self._method_set_gutter_type_1088959071 != nil)
        self._method_get_gutter_type_1159699127 = StringName(from: "get_gutter_type")
        assert(self._method_get_gutter_type_1159699127 != nil)
        self._method_set_gutter_width_3937882851 = StringName(from: "set_gutter_width")
        assert(self._method_set_gutter_width_3937882851 != nil)
        self._method_get_gutter_width_923996154 = StringName(from: "get_gutter_width")
        assert(self._method_get_gutter_width_923996154 != nil)
        self._method_set_gutter_draw_300928843 = StringName(from: "set_gutter_draw")
        assert(self._method_set_gutter_draw_300928843 != nil)
        self._method_is_gutter_drawn_1116898809 = StringName(from: "is_gutter_drawn")
        assert(self._method_is_gutter_drawn_1116898809 != nil)
        self._method_set_gutter_clickable_300928843 = StringName(from: "set_gutter_clickable")
        assert(self._method_set_gutter_clickable_300928843 != nil)
        self._method_is_gutter_clickable_1116898809 = StringName(from: "is_gutter_clickable")
        assert(self._method_is_gutter_clickable_1116898809 != nil)
        self._method_set_gutter_overwritable_300928843 = StringName(from: "set_gutter_overwritable")
        assert(self._method_set_gutter_overwritable_300928843 != nil)
        self._method_is_gutter_overwritable_1116898809 = StringName(from: "is_gutter_overwritable")
        assert(self._method_is_gutter_overwritable_1116898809 != nil)
        self._method_merge_gutters_3937882851 = StringName(from: "merge_gutters")
        assert(self._method_merge_gutters_3937882851 != nil)
        self._method_set_gutter_custom_draw_957362965 = StringName(from: "set_gutter_custom_draw")
        assert(self._method_set_gutter_custom_draw_957362965 != nil)
        self._method_get_total_gutter_width_3905245786 = StringName(from: "get_total_gutter_width")
        assert(self._method_get_total_gutter_width_3905245786 != nil)
        self._method_set_line_gutter_metadata_2060538656 = StringName(from: "set_line_gutter_metadata")
        assert(self._method_set_line_gutter_metadata_2060538656 != nil)
        self._method_get_line_gutter_metadata_678354945 = StringName(from: "get_line_gutter_metadata")
        assert(self._method_get_line_gutter_metadata_678354945 != nil)
        self._method_set_line_gutter_text_2285447957 = StringName(from: "set_line_gutter_text")
        assert(self._method_set_line_gutter_text_2285447957 != nil)
        self._method_get_line_gutter_text_1391810591 = StringName(from: "get_line_gutter_text")
        assert(self._method_get_line_gutter_text_1391810591 != nil)
        self._method_set_line_gutter_icon_176101966 = StringName(from: "set_line_gutter_icon")
        assert(self._method_set_line_gutter_icon_176101966 != nil)
        self._method_get_line_gutter_icon_2584904275 = StringName(from: "get_line_gutter_icon")
        assert(self._method_get_line_gutter_icon_2584904275 != nil)
        self._method_set_line_gutter_item_color_3733378741 = StringName(from: "set_line_gutter_item_color")
        assert(self._method_set_line_gutter_item_color_3733378741 != nil)
        self._method_get_line_gutter_item_color_2165839948 = StringName(from: "get_line_gutter_item_color")
        assert(self._method_get_line_gutter_item_color_2165839948 != nil)
        self._method_set_line_gutter_clickable_1383440665 = StringName(from: "set_line_gutter_clickable")
        assert(self._method_set_line_gutter_clickable_1383440665 != nil)
        self._method_is_line_gutter_clickable_2522259332 = StringName(from: "is_line_gutter_clickable")
        assert(self._method_is_line_gutter_clickable_2522259332 != nil)
        self._method_set_line_background_color_2878471219 = StringName(from: "set_line_background_color")
        assert(self._method_set_line_background_color_2878471219 != nil)
        self._method_get_line_background_color_3457211756 = StringName(from: "get_line_background_color")
        assert(self._method_get_line_background_color_3457211756 != nil)
        self._method_set_syntax_highlighter_2765644541 = StringName(from: "set_syntax_highlighter")
        assert(self._method_set_syntax_highlighter_2765644541 != nil)
        self._method_get_syntax_highlighter_2721131626 = StringName(from: "get_syntax_highlighter")
        assert(self._method_get_syntax_highlighter_2721131626 != nil)
        self._method_set_highlight_current_line_2586408642 = StringName(from: "set_highlight_current_line")
        assert(self._method_set_highlight_current_line_2586408642 != nil)
        self._method_is_highlight_current_line_enabled_36873697 = StringName(from: "is_highlight_current_line_enabled")
        assert(self._method_is_highlight_current_line_enabled_36873697 != nil)
        self._method_set_highlight_all_occurrences_2586408642 = StringName(from: "set_highlight_all_occurrences")
        assert(self._method_set_highlight_all_occurrences_2586408642 != nil)
        self._method_is_highlight_all_occurrences_enabled_36873697 = StringName(from: "is_highlight_all_occurrences_enabled")
        assert(self._method_is_highlight_all_occurrences_enabled_36873697 != nil)
        self._method_get_draw_control_chars_36873697 = StringName(from: "get_draw_control_chars")
        assert(self._method_get_draw_control_chars_36873697 != nil)
        self._method_set_draw_control_chars_2586408642 = StringName(from: "set_draw_control_chars")
        assert(self._method_set_draw_control_chars_2586408642 != nil)
        self._method_set_draw_tabs_2586408642 = StringName(from: "set_draw_tabs")
        assert(self._method_set_draw_tabs_2586408642 != nil)
        self._method_is_drawing_tabs_36873697 = StringName(from: "is_drawing_tabs")
        assert(self._method_is_drawing_tabs_36873697 != nil)
        self._method_set_draw_spaces_2586408642 = StringName(from: "set_draw_spaces")
        assert(self._method_set_draw_spaces_2586408642 != nil)
        self._method_is_drawing_spaces_36873697 = StringName(from: "is_drawing_spaces")
        assert(self._method_is_drawing_spaces_36873697 != nil)
        self._method_get_menu_229722558 = StringName(from: "get_menu")
        assert(self._method_get_menu_229722558 != nil)
        self._method_is_menu_visible_36873697 = StringName(from: "is_menu_visible")
        assert(self._method_is_menu_visible_36873697 != nil)
        self._method_menu_option_1286410249 = StringName(from: "menu_option")
        assert(self._method_menu_option_1286410249 != nil)
    }

    public func _handle_unicode_input(unicode_char: Int64, caret_index: Int64)  {
        withUnsafePointer(to: caret_index) { caret_index_native in
        withUnsafePointer(to: unicode_char) { unicode_char_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(unicode_char_native), .init(caret_index_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
        }
        }
    }
    public func _backspace(caret_index: Int64)  {
        withUnsafePointer(to: caret_index) { caret_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_index_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
        }
    }
    public func _cut(caret_index: Int64)  {
        withUnsafePointer(to: caret_index) { caret_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_index_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
        }
    }
    public func _copy(caret_index: Int64)  {
        withUnsafePointer(to: caret_index) { caret_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_index_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
        }
    }
    public func _paste(caret_index: Int64)  {
        withUnsafePointer(to: caret_index) { caret_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_index_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
        }
    }
    public func _paste_primary_clipboard(caret_index: Int64)  {
        withUnsafePointer(to: caret_index) { caret_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_index_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
        }
    }
    public func has_ime_text() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_ime_text_36873697._native_ptr(),
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
    public func set_editable(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_editable_2586408642._native_ptr(),
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
    public func is_editable() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_editable_36873697._native_ptr(),
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
    public func set_text_direction(direction: Control.TextDirection)  {
        withUnsafePointer(to: direction.rawValue) { direction_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(direction_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_text_direction_119160795._native_ptr(),
                    119160795)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_text_direction() -> Control.TextDirection {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_text_direction_797257663._native_ptr(),
                    797257663)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Control.TextDirection(godot: __resPtr.pointee)
    }
    public func set_language(language: godot.String)  {
        let language_native = language._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(language_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_language_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_language() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_language_201670096._native_ptr(),
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
    public func set_structured_text_bidi_override(parser: TextServer.StructuredTextParser)  {
        withUnsafePointer(to: parser.rawValue) { parser_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(parser_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_structured_text_bidi_override_55961453._native_ptr(),
                    55961453)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_structured_text_bidi_override() -> TextServer.StructuredTextParser {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_structured_text_bidi_override_3385126229._native_ptr(),
                    3385126229)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.StructuredTextParser(godot: __resPtr.pointee)
    }
    public func set_structured_text_bidi_override_options(args: Array)  {
        let args_native = args._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(args_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_structured_text_bidi_override_options_381264803._native_ptr(),
                    381264803)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_structured_text_bidi_override_options() -> Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_structured_text_bidi_override_options_3995934104._native_ptr(),
                    3995934104)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(godot: __resPtr.pointee)
    }
    public func set_tab_size(size: Int64)  {
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tab_size_1286410249._native_ptr(),
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
    public func get_tab_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tab_size_3905245786._native_ptr(),
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
    public func set_overtype_mode_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_overtype_mode_enabled_2586408642._native_ptr(),
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
    public func is_overtype_mode_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_overtype_mode_enabled_36873697._native_ptr(),
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
    public func set_context_menu_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_context_menu_enabled_2586408642._native_ptr(),
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
    public func is_context_menu_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_context_menu_enabled_36873697._native_ptr(),
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
    public func set_shortcut_keys_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_shortcut_keys_enabled_2586408642._native_ptr(),
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
    public func is_shortcut_keys_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_shortcut_keys_enabled_36873697._native_ptr(),
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
    public func set_virtual_keyboard_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_virtual_keyboard_enabled_2586408642._native_ptr(),
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
    public func is_virtual_keyboard_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_virtual_keyboard_enabled_36873697._native_ptr(),
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
    public func set_middle_mouse_paste_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_middle_mouse_paste_enabled_2586408642._native_ptr(),
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
    public func is_middle_mouse_paste_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_middle_mouse_paste_enabled_36873697._native_ptr(),
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
    public func clear()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_text(text: godot.String)  {
        let text_native = text._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(text_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_text_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_text() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_text_201670096._native_ptr(),
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
    public func get_line_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_line_count_3905245786._native_ptr(),
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
    public func set_placeholder(text: godot.String)  {
        let text_native = text._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(text_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_placeholder_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_placeholder() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_placeholder_201670096._native_ptr(),
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
    public func set_line(line: Int64, new_text: godot.String)  {
        withUnsafePointer(to: line) { line_native in
        let new_text_native = new_text._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native), .init(new_text_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_line_501894301._native_ptr(),
                    501894301)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_line(line: Int64) -> godot.String {
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_line_844755477._native_ptr(),
                    844755477)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func get_line_width(line: Int64, wrap_index: Int64) -> Int64 {
        withUnsafePointer(to: wrap_index) { wrap_index_native in
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native), .init(wrap_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_line_width_3294126239._native_ptr(),
                    3294126239)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
        }
    }
    public func get_line_height() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_line_height_3905245786._native_ptr(),
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
    public func get_indent_level(line: Int64) -> Int64 {
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_indent_level_923996154._native_ptr(),
                    923996154)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func get_first_non_whitespace_column(line: Int64) -> Int64 {
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_first_non_whitespace_column_923996154._native_ptr(),
                    923996154)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func swap_lines(from_line: Int64, to_line: Int64)  {
        withUnsafePointer(to: to_line) { to_line_native in
        withUnsafePointer(to: from_line) { from_line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_line_native), .init(to_line_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_swap_lines_3937882851._native_ptr(),
                    3937882851)
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
    public func insert_line_at(line: Int64, text: godot.String)  {
        withUnsafePointer(to: line) { line_native in
        let text_native = text._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native), .init(text_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_insert_line_at_501894301._native_ptr(),
                    501894301)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func insert_text_at_caret(text: godot.String, caret_index: Int64)  {
        withUnsafePointer(to: caret_index) { caret_index_native in
        let text_native = text._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(text_native), .init(caret_index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_insert_text_at_caret_3043792800._native_ptr(),
                    3043792800)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func remove_text(from_line: Int64, from_column: Int64, to_line: Int64, to_column: Int64)  {
        withUnsafePointer(to: to_column) { to_column_native in
        withUnsafePointer(to: to_line) { to_line_native in
        withUnsafePointer(to: from_column) { from_column_native in
        withUnsafePointer(to: from_line) { from_line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_line_native), .init(from_column_native), .init(to_line_native), .init(to_column_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_text_4275841770._native_ptr(),
                    4275841770)
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
    }
    public func get_last_unhidden_line() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_last_unhidden_line_3905245786._native_ptr(),
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
    public func get_next_visible_line_offset_from(line: Int64, visible_amount: Int64) -> Int64 {
        withUnsafePointer(to: visible_amount) { visible_amount_native in
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native), .init(visible_amount_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_next_visible_line_offset_from_3175239445._native_ptr(),
                    3175239445)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
        }
    }
    public func get_next_visible_line_index_offset_from(line: Int64, wrap_index: Int64, visible_amount: Int64) -> Vector2i {
        withUnsafePointer(to: visible_amount) { visible_amount_native in
        withUnsafePointer(to: wrap_index) { wrap_index_native in
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native), .init(wrap_index_native), .init(visible_amount_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_next_visible_line_index_offset_from_3386475622._native_ptr(),
                    3386475622)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(godot: __resPtr.pointee)
        }
        }
        }
    }
    public func backspace(caret_index: Int64)  {
        withUnsafePointer(to: caret_index) { caret_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_backspace_1025054187._native_ptr(),
                    1025054187)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func cut(caret_index: Int64)  {
        withUnsafePointer(to: caret_index) { caret_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_cut_1025054187._native_ptr(),
                    1025054187)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func copy(caret_index: Int64)  {
        withUnsafePointer(to: caret_index) { caret_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_copy_1025054187._native_ptr(),
                    1025054187)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func paste(caret_index: Int64)  {
        withUnsafePointer(to: caret_index) { caret_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_paste_1025054187._native_ptr(),
                    1025054187)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func paste_primary_clipboard(caret_index: Int64)  {
        withUnsafePointer(to: caret_index) { caret_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_paste_primary_clipboard_1025054187._native_ptr(),
                    1025054187)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func start_action(action: TextEdit.EditAction)  {
        withUnsafePointer(to: action.rawValue) { action_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(action_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_start_action_2834827583._native_ptr(),
                    2834827583)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func end_action()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_end_action_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func begin_complex_operation()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_begin_complex_operation_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func end_complex_operation()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_end_complex_operation_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func has_undo() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_undo_36873697._native_ptr(),
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
    public func has_redo() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_redo_36873697._native_ptr(),
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
    public func undo()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_undo_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func redo()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_redo_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func clear_undo_history()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_undo_history_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func tag_saved_version()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_tag_saved_version_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_version() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_version_3905245786._native_ptr(),
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
    public func get_saved_version() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_saved_version_3905245786._native_ptr(),
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
    public func set_search_text(search_text: godot.String)  {
        let search_text_native = search_text._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(search_text_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_search_text_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_search_flags(flags: Int64)  {
        withUnsafePointer(to: flags) { flags_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flags_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_search_flags_1286410249._native_ptr(),
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
    public func search(text: godot.String, flags: Int64, from_line: Int64, from_colum: Int64) -> Vector2i {
        withUnsafePointer(to: from_colum) { from_colum_native in
        withUnsafePointer(to: from_line) { from_line_native in
        withUnsafePointer(to: flags) { flags_native in
        let text_native = text._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(text_native), .init(flags_native), .init(from_line_native), .init(from_colum_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_search_1203739136._native_ptr(),
                    1203739136)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(godot: __resPtr.pointee)
        }
        }
        }
    }
    public func set_tooltip_request_func(callback: Callable)  {
        let callback_native = callback._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(callback_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tooltip_request_func_1611583062._native_ptr(),
                    1611583062)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_local_mouse_pos() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_local_mouse_pos_3341600327._native_ptr(),
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
    public func get_word_at_pos(position: Vector2) -> godot.String {
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_word_at_pos_3674420000._native_ptr(),
                    3674420000)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_line_column_at_pos(position: Vector2i, allow_out_of_bounds: UInt8) -> Vector2i {
        withUnsafePointer(to: allow_out_of_bounds) { allow_out_of_bounds_native in
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native), .init(allow_out_of_bounds_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_line_column_at_pos_850652858._native_ptr(),
                    850652858)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(godot: __resPtr.pointee)
        }
    }
    public func get_pos_at_line_column(line: Int64, column: Int64) -> Vector2i {
        withUnsafePointer(to: column) { column_native in
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native), .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_pos_at_line_column_410388347._native_ptr(),
                    410388347)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(godot: __resPtr.pointee)
        }
        }
    }
    public func get_rect_at_line_column(line: Int64, column: Int64) -> Rect2i {
        withUnsafePointer(to: column) { column_native in
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native), .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_rect_at_line_column_3256618057._native_ptr(),
                    3256618057)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2i(godot: __resPtr.pointee)
        }
        }
    }
    public func get_minimap_line_at_pos(position: Vector2i) -> Int64 {
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_minimap_line_at_pos_2485466453._native_ptr(),
                    2485466453)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func is_dragging_cursor() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_dragging_cursor_36873697._native_ptr(),
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
    public func is_mouse_over_selection(edges: UInt8, caret_index: Int64) -> UInt8 {
        withUnsafePointer(to: caret_index) { caret_index_native in
        withUnsafePointer(to: edges) { edges_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(edges_native), .init(caret_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_mouse_over_selection_1099474134._native_ptr(),
                    1099474134)
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
    }
    public func set_caret_type(`type`: TextEdit.CaretType)  {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_caret_type_1211596914._native_ptr(),
                    1211596914)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_caret_type() -> TextEdit.CaretType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_caret_type_2830252959._native_ptr(),
                    2830252959)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextEdit.CaretType(godot: __resPtr.pointee)
    }
    public func set_caret_blink_enabled(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_caret_blink_enabled_2586408642._native_ptr(),
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
    public func is_caret_blink_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_caret_blink_enabled_36873697._native_ptr(),
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
    public func set_caret_blink_interval(interval: Float64)  {
        withUnsafePointer(to: interval) { interval_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(interval_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_caret_blink_interval_373806689._native_ptr(),
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
    public func get_caret_blink_interval() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_caret_blink_interval_1740695150._native_ptr(),
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
    public func set_move_caret_on_right_click_enabled(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_move_caret_on_right_click_enabled_2586408642._native_ptr(),
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
    public func is_move_caret_on_right_click_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_move_caret_on_right_click_enabled_36873697._native_ptr(),
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
    public func set_caret_mid_grapheme_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_caret_mid_grapheme_enabled_2586408642._native_ptr(),
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
    public func is_caret_mid_grapheme_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_caret_mid_grapheme_enabled_36873697._native_ptr(),
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
    public func set_multiple_carets_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_multiple_carets_enabled_2586408642._native_ptr(),
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
    public func is_multiple_carets_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_multiple_carets_enabled_36873697._native_ptr(),
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
    public func add_caret(line: Int64, col: Int64) -> Int64 {
        withUnsafePointer(to: col) { col_native in
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native), .init(col_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_caret_50157827._native_ptr(),
                    50157827)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
        }
    }
    public func remove_caret(caret: Int64)  {
        withUnsafePointer(to: caret) { caret_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_caret_1286410249._native_ptr(),
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
    public func remove_secondary_carets()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_secondary_carets_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func merge_overlapping_carets()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_merge_overlapping_carets_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_caret_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_caret_count_3905245786._native_ptr(),
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
    public func add_caret_at_carets(below: UInt8)  {
        withUnsafePointer(to: below) { below_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(below_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_caret_at_carets_2586408642._native_ptr(),
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
    public func get_caret_index_edit_order() -> PackedInt32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_caret_index_edit_order_969006518._native_ptr(),
                    969006518)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
    }
    public func adjust_carets_after_edit(caret: Int64, from_line: Int64, from_col: Int64, to_line: Int64, to_col: Int64)  {
        withUnsafePointer(to: to_col) { to_col_native in
        withUnsafePointer(to: to_line) { to_line_native in
        withUnsafePointer(to: from_col) { from_col_native in
        withUnsafePointer(to: from_line) { from_line_native in
        withUnsafePointer(to: caret) { caret_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_native), .init(from_line_native), .init(from_col_native), .init(to_line_native), .init(to_col_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_adjust_carets_after_edit_1770277138._native_ptr(),
                    1770277138)
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
        }
    }
    public func is_caret_visible(caret_index: Int64) -> UInt8 {
        withUnsafePointer(to: caret_index) { caret_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_caret_visible_1051549951._native_ptr(),
                    1051549951)
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
    public func get_caret_draw_pos(caret_index: Int64) -> Vector2 {
        withUnsafePointer(to: caret_index) { caret_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_caret_draw_pos_478253731._native_ptr(),
                    478253731)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
        }
    }
    public func set_caret_line(line: Int64, adjust_viewport: UInt8, can_be_hidden: UInt8, wrap_index: Int64, caret_index: Int64)  {
        withUnsafePointer(to: caret_index) { caret_index_native in
        withUnsafePointer(to: wrap_index) { wrap_index_native in
        withUnsafePointer(to: can_be_hidden) { can_be_hidden_native in
        withUnsafePointer(to: adjust_viewport) { adjust_viewport_native in
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native), .init(adjust_viewport_native), .init(can_be_hidden_native), .init(wrap_index_native), .init(caret_index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_caret_line_1413195636._native_ptr(),
                    1413195636)
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
        }
    }
    public func get_caret_line(caret_index: Int64) -> Int64 {
        withUnsafePointer(to: caret_index) { caret_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_caret_line_1591665591._native_ptr(),
                    1591665591)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func set_caret_column(column: Int64, adjust_viewport: UInt8, caret_index: Int64)  {
        withUnsafePointer(to: caret_index) { caret_index_native in
        withUnsafePointer(to: adjust_viewport) { adjust_viewport_native in
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(adjust_viewport_native), .init(caret_index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_caret_column_1071284433._native_ptr(),
                    1071284433)
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
    public func get_caret_column(caret_index: Int64) -> Int64 {
        withUnsafePointer(to: caret_index) { caret_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_caret_column_1591665591._native_ptr(),
                    1591665591)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func get_caret_wrap_index(caret_index: Int64) -> Int64 {
        withUnsafePointer(to: caret_index) { caret_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_caret_wrap_index_1591665591._native_ptr(),
                    1591665591)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func get_word_under_caret(caret_index: Int64) -> godot.String {
        withUnsafePointer(to: caret_index) { caret_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_word_under_caret_3929349208._native_ptr(),
                    3929349208)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func set_selecting_enabled(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_selecting_enabled_2586408642._native_ptr(),
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
    public func is_selecting_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_selecting_enabled_36873697._native_ptr(),
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
    public func set_deselect_on_focus_loss_enabled(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_deselect_on_focus_loss_enabled_2586408642._native_ptr(),
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
    public func is_deselect_on_focus_loss_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_deselect_on_focus_loss_enabled_36873697._native_ptr(),
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
    public func set_drag_and_drop_selection_enabled(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_drag_and_drop_selection_enabled_2586408642._native_ptr(),
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
    public func is_drag_and_drop_selection_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_drag_and_drop_selection_enabled_36873697._native_ptr(),
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
    public func set_selection_mode(mode: TextEdit.SelectionMode, line: Int64, column: Int64, caret_index: Int64)  {
        withUnsafePointer(to: caret_index) { caret_index_native in
        withUnsafePointer(to: column) { column_native in
        withUnsafePointer(to: line) { line_native in
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native), .init(line_native), .init(column_native), .init(caret_index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_selection_mode_2920622473._native_ptr(),
                    2920622473)
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
    }
    public func get_selection_mode() -> TextEdit.SelectionMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_selection_mode_3750106938._native_ptr(),
                    3750106938)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextEdit.SelectionMode(godot: __resPtr.pointee)
    }
    public func select_all()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_select_all_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func select_word_under_caret(caret_index: Int64)  {
        withUnsafePointer(to: caret_index) { caret_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_select_word_under_caret_1025054187._native_ptr(),
                    1025054187)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_selection_for_next_occurrence()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_selection_for_next_occurrence_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func select(from_line: Int64, from_column: Int64, to_line: Int64, to_column: Int64, caret_index: Int64)  {
        withUnsafePointer(to: caret_index) { caret_index_native in
        withUnsafePointer(to: to_column) { to_column_native in
        withUnsafePointer(to: to_line) { to_line_native in
        withUnsafePointer(to: from_column) { from_column_native in
        withUnsafePointer(to: from_line) { from_line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_line_native), .init(from_column_native), .init(to_line_native), .init(to_column_native), .init(caret_index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_select_4269665324._native_ptr(),
                    4269665324)
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
        }
    }
    public func has_selection(caret_index: Int64) -> UInt8 {
        withUnsafePointer(to: caret_index) { caret_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_selection_2824505868._native_ptr(),
                    2824505868)
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
    public func get_selected_text(caret_index: Int64) -> godot.String {
        withUnsafePointer(to: caret_index) { caret_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_selected_text_2309358862._native_ptr(),
                    2309358862)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func get_selection_line(caret_index: Int64) -> Int64 {
        withUnsafePointer(to: caret_index) { caret_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_selection_line_1591665591._native_ptr(),
                    1591665591)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func get_selection_column(caret_index: Int64) -> Int64 {
        withUnsafePointer(to: caret_index) { caret_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_selection_column_1591665591._native_ptr(),
                    1591665591)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func get_selection_from_line(caret_index: Int64) -> Int64 {
        withUnsafePointer(to: caret_index) { caret_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_selection_from_line_1591665591._native_ptr(),
                    1591665591)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func get_selection_from_column(caret_index: Int64) -> Int64 {
        withUnsafePointer(to: caret_index) { caret_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_selection_from_column_1591665591._native_ptr(),
                    1591665591)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func get_selection_to_line(caret_index: Int64) -> Int64 {
        withUnsafePointer(to: caret_index) { caret_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_selection_to_line_1591665591._native_ptr(),
                    1591665591)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func get_selection_to_column(caret_index: Int64) -> Int64 {
        withUnsafePointer(to: caret_index) { caret_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_selection_to_column_1591665591._native_ptr(),
                    1591665591)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func deselect(caret_index: Int64)  {
        withUnsafePointer(to: caret_index) { caret_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_deselect_1025054187._native_ptr(),
                    1025054187)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func delete_selection(caret_index: Int64)  {
        withUnsafePointer(to: caret_index) { caret_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_delete_selection_1025054187._native_ptr(),
                    1025054187)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_line_wrapping_mode(mode: TextEdit.LineWrappingMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_line_wrapping_mode_2525115309._native_ptr(),
                    2525115309)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_line_wrapping_mode() -> TextEdit.LineWrappingMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_line_wrapping_mode_3562716114._native_ptr(),
                    3562716114)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextEdit.LineWrappingMode(godot: __resPtr.pointee)
    }
    public func is_line_wrapped(line: Int64) -> UInt8 {
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_line_wrapped_1116898809._native_ptr(),
                    1116898809)
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
    public func get_line_wrap_count(line: Int64) -> Int64 {
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_line_wrap_count_923996154._native_ptr(),
                    923996154)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func get_line_wrap_index_at_column(line: Int64, column: Int64) -> Int64 {
        withUnsafePointer(to: column) { column_native in
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native), .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_line_wrap_index_at_column_3175239445._native_ptr(),
                    3175239445)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
        }
    }
    public func get_line_wrapped_text(line: Int64) -> PackedStringArray {
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_line_wrapped_text_647634434._native_ptr(),
                    647634434)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
        }
    }
    public func set_smooth_scroll_enabled(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_smooth_scroll_enabled_2586408642._native_ptr(),
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
    public func is_smooth_scroll_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_smooth_scroll_enabled_36873697._native_ptr(),
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
    public func get_v_scroll_bar() -> VScrollBar {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_v_scroll_bar_3226026593._native_ptr(),
                    3226026593)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VScrollBar(godot: __resPtr.pointee)
    }
    public func get_h_scroll_bar() -> HScrollBar {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_h_scroll_bar_3774687988._native_ptr(),
                    3774687988)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return HScrollBar(godot: __resPtr.pointee)
    }
    public func set_v_scroll(value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_v_scroll_373806689._native_ptr(),
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
    public func get_v_scroll() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_v_scroll_1740695150._native_ptr(),
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
    public func set_h_scroll(value: Int64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_h_scroll_1286410249._native_ptr(),
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
    public func get_h_scroll() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_h_scroll_3905245786._native_ptr(),
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
    public func set_scroll_past_end_of_file_enabled(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_scroll_past_end_of_file_enabled_2586408642._native_ptr(),
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
    public func is_scroll_past_end_of_file_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_scroll_past_end_of_file_enabled_36873697._native_ptr(),
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
    public func set_v_scroll_speed(speed: Float64)  {
        withUnsafePointer(to: speed) { speed_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(speed_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_v_scroll_speed_373806689._native_ptr(),
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
    public func get_v_scroll_speed() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_v_scroll_speed_1740695150._native_ptr(),
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
    public func set_fit_content_height_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fit_content_height_enabled_2586408642._native_ptr(),
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
    public func is_fit_content_height_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_fit_content_height_enabled_36873697._native_ptr(),
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
    public func get_scroll_pos_for_line(line: Int64, wrap_index: Int64) -> Float64 {
        withUnsafePointer(to: wrap_index) { wrap_index_native in
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native), .init(wrap_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_scroll_pos_for_line_3274652423._native_ptr(),
                    3274652423)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
        }
    }
    public func set_line_as_first_visible(line: Int64, wrap_index: Int64)  {
        withUnsafePointer(to: wrap_index) { wrap_index_native in
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native), .init(wrap_index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_line_as_first_visible_3023605688._native_ptr(),
                    3023605688)
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
    public func get_first_visible_line() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_first_visible_line_3905245786._native_ptr(),
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
    public func set_line_as_center_visible(line: Int64, wrap_index: Int64)  {
        withUnsafePointer(to: wrap_index) { wrap_index_native in
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native), .init(wrap_index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_line_as_center_visible_3023605688._native_ptr(),
                    3023605688)
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
    public func set_line_as_last_visible(line: Int64, wrap_index: Int64)  {
        withUnsafePointer(to: wrap_index) { wrap_index_native in
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native), .init(wrap_index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_line_as_last_visible_3023605688._native_ptr(),
                    3023605688)
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
    public func get_last_full_visible_line() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_last_full_visible_line_3905245786._native_ptr(),
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
    public func get_last_full_visible_line_wrap_index() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_last_full_visible_line_wrap_index_3905245786._native_ptr(),
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
    public func get_visible_line_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_visible_line_count_3905245786._native_ptr(),
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
    public func get_visible_line_count_in_range(from_line: Int64, to_line: Int64) -> Int64 {
        withUnsafePointer(to: to_line) { to_line_native in
        withUnsafePointer(to: from_line) { from_line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_line_native), .init(to_line_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_visible_line_count_in_range_3175239445._native_ptr(),
                    3175239445)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
        }
    }
    public func get_total_visible_line_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_total_visible_line_count_3905245786._native_ptr(),
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
    public func adjust_viewport_to_caret(caret_index: Int64)  {
        withUnsafePointer(to: caret_index) { caret_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_adjust_viewport_to_caret_1995695955._native_ptr(),
                    1995695955)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func center_viewport_to_caret(caret_index: Int64)  {
        withUnsafePointer(to: caret_index) { caret_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_center_viewport_to_caret_1995695955._native_ptr(),
                    1995695955)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_draw_minimap(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_draw_minimap_2586408642._native_ptr(),
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
    public func is_drawing_minimap() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_drawing_minimap_36873697._native_ptr(),
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
    public func set_minimap_width(width: Int64)  {
        withUnsafePointer(to: width) { width_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(width_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_minimap_width_1286410249._native_ptr(),
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
    public func get_minimap_width() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_minimap_width_3905245786._native_ptr(),
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
    public func get_minimap_visible_lines() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_minimap_visible_lines_3905245786._native_ptr(),
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
    public func add_gutter(at: Int64)  {
        withUnsafePointer(to: at) { at_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(at_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_gutter_1025054187._native_ptr(),
                    1025054187)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func remove_gutter(gutter: Int64)  {
        withUnsafePointer(to: gutter) { gutter_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gutter_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_gutter_1286410249._native_ptr(),
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
    public func get_gutter_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_gutter_count_3905245786._native_ptr(),
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
    public func set_gutter_name(gutter: Int64, name: godot.String)  {
        withUnsafePointer(to: gutter) { gutter_native in
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gutter_native), .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_gutter_name_501894301._native_ptr(),
                    501894301)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_gutter_name(gutter: Int64) -> godot.String {
        withUnsafePointer(to: gutter) { gutter_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gutter_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_gutter_name_844755477._native_ptr(),
                    844755477)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func set_gutter_type(gutter: Int64, `type`: TextEdit.GutterType)  {
        withUnsafePointer(to: gutter) { gutter_native in
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gutter_native), .init(type_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_gutter_type_1088959071._native_ptr(),
                    1088959071)
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
    public func get_gutter_type(gutter: Int64) -> TextEdit.GutterType {
        withUnsafePointer(to: gutter) { gutter_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gutter_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_gutter_type_1159699127._native_ptr(),
                    1159699127)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextEdit.GutterType(godot: __resPtr.pointee)
        }
    }
    public func set_gutter_width(gutter: Int64, width: Int64)  {
        withUnsafePointer(to: width) { width_native in
        withUnsafePointer(to: gutter) { gutter_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gutter_native), .init(width_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_gutter_width_3937882851._native_ptr(),
                    3937882851)
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
    public func get_gutter_width(gutter: Int64) -> Int64 {
        withUnsafePointer(to: gutter) { gutter_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gutter_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_gutter_width_923996154._native_ptr(),
                    923996154)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func set_gutter_draw(gutter: Int64, draw: UInt8)  {
        withUnsafePointer(to: draw) { draw_native in
        withUnsafePointer(to: gutter) { gutter_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gutter_native), .init(draw_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_gutter_draw_300928843._native_ptr(),
                    300928843)
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
    public func is_gutter_drawn(gutter: Int64) -> UInt8 {
        withUnsafePointer(to: gutter) { gutter_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gutter_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_gutter_drawn_1116898809._native_ptr(),
                    1116898809)
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
    public func set_gutter_clickable(gutter: Int64, clickable: UInt8)  {
        withUnsafePointer(to: clickable) { clickable_native in
        withUnsafePointer(to: gutter) { gutter_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gutter_native), .init(clickable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_gutter_clickable_300928843._native_ptr(),
                    300928843)
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
    public func is_gutter_clickable(gutter: Int64) -> UInt8 {
        withUnsafePointer(to: gutter) { gutter_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gutter_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_gutter_clickable_1116898809._native_ptr(),
                    1116898809)
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
    public func set_gutter_overwritable(gutter: Int64, overwritable: UInt8)  {
        withUnsafePointer(to: overwritable) { overwritable_native in
        withUnsafePointer(to: gutter) { gutter_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gutter_native), .init(overwritable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_gutter_overwritable_300928843._native_ptr(),
                    300928843)
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
    public func is_gutter_overwritable(gutter: Int64) -> UInt8 {
        withUnsafePointer(to: gutter) { gutter_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gutter_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_gutter_overwritable_1116898809._native_ptr(),
                    1116898809)
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
    public func merge_gutters(from_line: Int64, to_line: Int64)  {
        withUnsafePointer(to: to_line) { to_line_native in
        withUnsafePointer(to: from_line) { from_line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_line_native), .init(to_line_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_merge_gutters_3937882851._native_ptr(),
                    3937882851)
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
    public func set_gutter_custom_draw(column: Int64, draw_callback: Callable)  {
        withUnsafePointer(to: column) { column_native in
        let draw_callback_native = draw_callback._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(draw_callback_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_gutter_custom_draw_957362965._native_ptr(),
                    957362965)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_total_gutter_width() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_total_gutter_width_3905245786._native_ptr(),
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
    public func set_line_gutter_metadata(line: Int64, gutter: Int64, metadata: Variant)  {
        withUnsafePointer(to: gutter) { gutter_native in
        withUnsafePointer(to: line) { line_native in
        let metadata_native = metadata._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native), .init(gutter_native), .init(metadata_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_line_gutter_metadata_2060538656._native_ptr(),
                    2060538656)
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
    public func get_line_gutter_metadata(line: Int64, gutter: Int64) -> Variant {
        withUnsafePointer(to: gutter) { gutter_native in
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native), .init(gutter_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_line_gutter_metadata_678354945._native_ptr(),
                    678354945)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
        }
        }
    }
    public func set_line_gutter_text(line: Int64, gutter: Int64, text: godot.String)  {
        withUnsafePointer(to: gutter) { gutter_native in
        withUnsafePointer(to: line) { line_native in
        let text_native = text._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native), .init(gutter_native), .init(text_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_line_gutter_text_2285447957._native_ptr(),
                    2285447957)
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
    public func get_line_gutter_text(line: Int64, gutter: Int64) -> godot.String {
        withUnsafePointer(to: gutter) { gutter_native in
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native), .init(gutter_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_line_gutter_text_1391810591._native_ptr(),
                    1391810591)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
        }
    }
    public func set_line_gutter_icon(line: Int64, gutter: Int64, icon: Texture2D)  {
        withUnsafePointer(to: gutter) { gutter_native in
        withUnsafePointer(to: line) { line_native in
        let icon_native = icon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native), .init(gutter_native), .init(icon_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_line_gutter_icon_176101966._native_ptr(),
                    176101966)
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
    public func get_line_gutter_icon(line: Int64, gutter: Int64) -> Texture2D {
        withUnsafePointer(to: gutter) { gutter_native in
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native), .init(gutter_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_line_gutter_icon_2584904275._native_ptr(),
                    2584904275)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
        }
        }
    }
    public func set_line_gutter_item_color(line: Int64, gutter: Int64, color: Color)  {
        withUnsafePointer(to: gutter) { gutter_native in
        withUnsafePointer(to: line) { line_native in
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native), .init(gutter_native), .init(color_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_line_gutter_item_color_3733378741._native_ptr(),
                    3733378741)
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
    public func get_line_gutter_item_color(line: Int64, gutter: Int64) -> Color {
        withUnsafePointer(to: gutter) { gutter_native in
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native), .init(gutter_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_line_gutter_item_color_2165839948._native_ptr(),
                    2165839948)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
        }
        }
    }
    public func set_line_gutter_clickable(line: Int64, gutter: Int64, clickable: UInt8)  {
        withUnsafePointer(to: clickable) { clickable_native in
        withUnsafePointer(to: gutter) { gutter_native in
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native), .init(gutter_native), .init(clickable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_line_gutter_clickable_1383440665._native_ptr(),
                    1383440665)
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
    public func is_line_gutter_clickable(line: Int64, gutter: Int64) -> UInt8 {
        withUnsafePointer(to: gutter) { gutter_native in
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native), .init(gutter_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_line_gutter_clickable_2522259332._native_ptr(),
                    2522259332)
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
    }
    public func set_line_background_color(line: Int64, color: Color)  {
        withUnsafePointer(to: line) { line_native in
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native), .init(color_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_line_background_color_2878471219._native_ptr(),
                    2878471219)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_line_background_color(line: Int64) -> Color {
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_line_background_color_3457211756._native_ptr(),
                    3457211756)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
        }
    }
    public func set_syntax_highlighter(syntax_highlighter: SyntaxHighlighter)  {
        let syntax_highlighter_native = syntax_highlighter._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(syntax_highlighter_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_syntax_highlighter_2765644541._native_ptr(),
                    2765644541)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_syntax_highlighter() -> SyntaxHighlighter {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_syntax_highlighter_2721131626._native_ptr(),
                    2721131626)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return SyntaxHighlighter(godot: __resPtr.pointee)
    }
    public func set_highlight_current_line(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_highlight_current_line_2586408642._native_ptr(),
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
    public func is_highlight_current_line_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_highlight_current_line_enabled_36873697._native_ptr(),
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
    public func set_highlight_all_occurrences(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_highlight_all_occurrences_2586408642._native_ptr(),
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
    public func is_highlight_all_occurrences_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_highlight_all_occurrences_enabled_36873697._native_ptr(),
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
    public func get_draw_control_chars() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_draw_control_chars_36873697._native_ptr(),
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
    public func set_draw_control_chars(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_draw_control_chars_2586408642._native_ptr(),
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
    public func set_draw_tabs(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_draw_tabs_2586408642._native_ptr(),
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
    public func is_drawing_tabs() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_drawing_tabs_36873697._native_ptr(),
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
    public func set_draw_spaces(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_draw_spaces_2586408642._native_ptr(),
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
    public func is_drawing_spaces() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_drawing_spaces_36873697._native_ptr(),
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
    public func get_menu() -> PopupMenu {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_menu_229722558._native_ptr(),
                    229722558)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PopupMenu(godot: __resPtr.pointee)
    }
    public func is_menu_visible() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_menu_visible_36873697._native_ptr(),
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
    public func menu_option(option: Int64)  {
        withUnsafePointer(to: option) { option_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(option_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_menu_option_1286410249._native_ptr(),
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
}