import godot_native

fileprivate var __godot_name_TextEdit: StringName! = nil

/// Multiline text editing control.
/// 
/// TextEdit is meant for editing large, multiline text. It also has facilities for editing code, such as syntax highlighting support and multiple levels of undo/redo.
///  
/// [b]Note:[/b] Most viewport, caret and edit methods contain a [code]caret_index[/code] argument for [member caret_multiple] support. The argument should be one of the following: [code]-1[/code] for all carets, [code]0[/code] for the main caret, or greater than [code]0[/code] for secondary carets.
///  
/// [b]Note:[/b] When holding down [kbd]Alt[/kbd], the vertical scroll wheel will scroll 5 times as fast as it would normally do. This also works in the Godot script editor.
public class TextEdit : Control {

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

    static var _method__handle_unicode_input_0: GDExtensionMethodBindPtr! = nil
    static var _method__backspace_0: GDExtensionMethodBindPtr! = nil
    static var _method__cut_0: GDExtensionMethodBindPtr! = nil
    static var _method__copy_0: GDExtensionMethodBindPtr! = nil
    static var _method__paste_0: GDExtensionMethodBindPtr! = nil
    static var _method__paste_primary_clipboard_0: GDExtensionMethodBindPtr! = nil
    static var _method_has_ime_text_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_editable_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_editable_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_text_direction_119160795: GDExtensionMethodBindPtr! = nil
    static var _method_get_text_direction_797257663: GDExtensionMethodBindPtr! = nil
    static var _method_set_language_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_language_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_structured_text_bidi_override_55961453: GDExtensionMethodBindPtr! = nil
    static var _method_get_structured_text_bidi_override_3385126229: GDExtensionMethodBindPtr! = nil
    static var _method_set_structured_text_bidi_override_options_381264803: GDExtensionMethodBindPtr! = nil
    static var _method_get_structured_text_bidi_override_options_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_set_tab_size_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_tab_size_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_overtype_mode_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_overtype_mode_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_context_menu_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_context_menu_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_shortcut_keys_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_shortcut_keys_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_virtual_keyboard_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_virtual_keyboard_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_middle_mouse_paste_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_middle_mouse_paste_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_clear_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_text_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_text_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_placeholder_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_placeholder_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_line_501894301: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_width_3294126239: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_height_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_indent_level_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_get_first_non_whitespace_column_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_swap_lines_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_insert_line_at_501894301: GDExtensionMethodBindPtr! = nil
    static var _method_insert_text_at_caret_3043792800: GDExtensionMethodBindPtr! = nil
    static var _method_remove_text_4275841770: GDExtensionMethodBindPtr! = nil
    static var _method_get_last_unhidden_line_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_next_visible_line_offset_from_3175239445: GDExtensionMethodBindPtr! = nil
    static var _method_get_next_visible_line_index_offset_from_3386475622: GDExtensionMethodBindPtr! = nil
    static var _method_backspace_1025054187: GDExtensionMethodBindPtr! = nil
    static var _method_cut_1025054187: GDExtensionMethodBindPtr! = nil
    static var _method_copy_1025054187: GDExtensionMethodBindPtr! = nil
    static var _method_paste_1025054187: GDExtensionMethodBindPtr! = nil
    static var _method_paste_primary_clipboard_1025054187: GDExtensionMethodBindPtr! = nil
    static var _method_start_action_2834827583: GDExtensionMethodBindPtr! = nil
    static var _method_end_action_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_begin_complex_operation_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_end_complex_operation_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_has_undo_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_has_redo_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_undo_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_redo_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_clear_undo_history_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_tag_saved_version_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_version_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_saved_version_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_search_text_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_set_search_flags_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_search_1203739136: GDExtensionMethodBindPtr! = nil
    static var _method_set_tooltip_request_func_1611583062: GDExtensionMethodBindPtr! = nil
    static var _method_get_local_mouse_pos_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_get_word_at_pos_3674420000: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_column_at_pos_850652858: GDExtensionMethodBindPtr! = nil
    static var _method_get_pos_at_line_column_410388347: GDExtensionMethodBindPtr! = nil
    static var _method_get_rect_at_line_column_3256618057: GDExtensionMethodBindPtr! = nil
    static var _method_get_minimap_line_at_pos_2485466453: GDExtensionMethodBindPtr! = nil
    static var _method_is_dragging_cursor_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_is_mouse_over_selection_1099474134: GDExtensionMethodBindPtr! = nil
    static var _method_set_caret_type_1211596914: GDExtensionMethodBindPtr! = nil
    static var _method_get_caret_type_2830252959: GDExtensionMethodBindPtr! = nil
    static var _method_set_caret_blink_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_caret_blink_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_caret_blink_interval_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_caret_blink_interval_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_move_caret_on_right_click_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_move_caret_on_right_click_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_caret_mid_grapheme_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_caret_mid_grapheme_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_multiple_carets_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_multiple_carets_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_add_caret_50157827: GDExtensionMethodBindPtr! = nil
    static var _method_remove_caret_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_remove_secondary_carets_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_merge_overlapping_carets_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_caret_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_add_caret_at_carets_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_caret_index_edit_order_969006518: GDExtensionMethodBindPtr! = nil
    static var _method_adjust_carets_after_edit_1770277138: GDExtensionMethodBindPtr! = nil
    static var _method_is_caret_visible_1051549951: GDExtensionMethodBindPtr! = nil
    static var _method_get_caret_draw_pos_478253731: GDExtensionMethodBindPtr! = nil
    static var _method_set_caret_line_1413195636: GDExtensionMethodBindPtr! = nil
    static var _method_get_caret_line_1591665591: GDExtensionMethodBindPtr! = nil
    static var _method_set_caret_column_1071284433: GDExtensionMethodBindPtr! = nil
    static var _method_get_caret_column_1591665591: GDExtensionMethodBindPtr! = nil
    static var _method_get_caret_wrap_index_1591665591: GDExtensionMethodBindPtr! = nil
    static var _method_get_word_under_caret_3929349208: GDExtensionMethodBindPtr! = nil
    static var _method_set_selecting_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_selecting_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_deselect_on_focus_loss_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_deselect_on_focus_loss_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_drag_and_drop_selection_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_drag_and_drop_selection_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_selection_mode_2920622473: GDExtensionMethodBindPtr! = nil
    static var _method_get_selection_mode_3750106938: GDExtensionMethodBindPtr! = nil
    static var _method_select_all_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_select_word_under_caret_1025054187: GDExtensionMethodBindPtr! = nil
    static var _method_add_selection_for_next_occurrence_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_select_4269665324: GDExtensionMethodBindPtr! = nil
    static var _method_has_selection_2824505868: GDExtensionMethodBindPtr! = nil
    static var _method_get_selected_text_2309358862: GDExtensionMethodBindPtr! = nil
    static var _method_get_selection_line_1591665591: GDExtensionMethodBindPtr! = nil
    static var _method_get_selection_column_1591665591: GDExtensionMethodBindPtr! = nil
    static var _method_get_selection_from_line_1591665591: GDExtensionMethodBindPtr! = nil
    static var _method_get_selection_from_column_1591665591: GDExtensionMethodBindPtr! = nil
    static var _method_get_selection_to_line_1591665591: GDExtensionMethodBindPtr! = nil
    static var _method_get_selection_to_column_1591665591: GDExtensionMethodBindPtr! = nil
    static var _method_deselect_1025054187: GDExtensionMethodBindPtr! = nil
    static var _method_delete_selection_1025054187: GDExtensionMethodBindPtr! = nil
    static var _method_set_line_wrapping_mode_2525115309: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_wrapping_mode_3562716114: GDExtensionMethodBindPtr! = nil
    static var _method_is_line_wrapped_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_wrap_count_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_wrap_index_at_column_3175239445: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_wrapped_text_647634434: GDExtensionMethodBindPtr! = nil
    static var _method_set_smooth_scroll_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_smooth_scroll_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_v_scroll_bar_3226026593: GDExtensionMethodBindPtr! = nil
    static var _method_get_h_scroll_bar_3774687988: GDExtensionMethodBindPtr! = nil
    static var _method_set_v_scroll_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_v_scroll_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_h_scroll_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_h_scroll_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_scroll_past_end_of_file_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_scroll_past_end_of_file_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_v_scroll_speed_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_v_scroll_speed_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_fit_content_height_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_fit_content_height_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_scroll_pos_for_line_3274652423: GDExtensionMethodBindPtr! = nil
    static var _method_set_line_as_first_visible_3023605688: GDExtensionMethodBindPtr! = nil
    static var _method_get_first_visible_line_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_line_as_center_visible_3023605688: GDExtensionMethodBindPtr! = nil
    static var _method_set_line_as_last_visible_3023605688: GDExtensionMethodBindPtr! = nil
    static var _method_get_last_full_visible_line_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_last_full_visible_line_wrap_index_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_visible_line_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_visible_line_count_in_range_3175239445: GDExtensionMethodBindPtr! = nil
    static var _method_get_total_visible_line_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_adjust_viewport_to_caret_1995695955: GDExtensionMethodBindPtr! = nil
    static var _method_center_viewport_to_caret_1995695955: GDExtensionMethodBindPtr! = nil
    static var _method_set_draw_minimap_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_drawing_minimap_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_minimap_width_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_minimap_width_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_minimap_visible_lines_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_add_gutter_1025054187: GDExtensionMethodBindPtr! = nil
    static var _method_remove_gutter_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_gutter_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_gutter_name_501894301: GDExtensionMethodBindPtr! = nil
    static var _method_get_gutter_name_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_set_gutter_type_1088959071: GDExtensionMethodBindPtr! = nil
    static var _method_get_gutter_type_1159699127: GDExtensionMethodBindPtr! = nil
    static var _method_set_gutter_width_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_get_gutter_width_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_set_gutter_draw_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_is_gutter_drawn_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_gutter_clickable_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_is_gutter_clickable_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_gutter_overwritable_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_is_gutter_overwritable_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_merge_gutters_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_set_gutter_custom_draw_957362965: GDExtensionMethodBindPtr! = nil
    static var _method_get_total_gutter_width_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_line_gutter_metadata_2060538656: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_gutter_metadata_678354945: GDExtensionMethodBindPtr! = nil
    static var _method_set_line_gutter_text_2285447957: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_gutter_text_1391810591: GDExtensionMethodBindPtr! = nil
    static var _method_set_line_gutter_icon_176101966: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_gutter_icon_2584904275: GDExtensionMethodBindPtr! = nil
    static var _method_set_line_gutter_item_color_3733378741: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_gutter_item_color_2165839948: GDExtensionMethodBindPtr! = nil
    static var _method_set_line_gutter_clickable_1383440665: GDExtensionMethodBindPtr! = nil
    static var _method_is_line_gutter_clickable_2522259332: GDExtensionMethodBindPtr! = nil
    static var _method_set_line_background_color_2878471219: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_background_color_3457211756: GDExtensionMethodBindPtr! = nil
    static var _method_set_syntax_highlighter_2765644541: GDExtensionMethodBindPtr! = nil
    static var _method_get_syntax_highlighter_2721131626: GDExtensionMethodBindPtr! = nil
    static var _method_set_highlight_current_line_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_highlight_current_line_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_highlight_all_occurrences_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_highlight_all_occurrences_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_draw_control_chars_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_draw_control_chars_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_set_draw_tabs_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_drawing_tabs_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_draw_spaces_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_drawing_spaces_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_menu_229722558: GDExtensionMethodBindPtr! = nil
    static var _method_is_menu_visible_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_menu_option_1286410249: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_TextEdit = StringName(from: "TextEdit")

        let _method_has_ime_text_36873697_name = StringName(from: "has_ime_text")
        self._method_has_ime_text_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_ime_text_36873697_name._native_ptr(), 36873697)
        assert(TextEdit._method_has_ime_text_36873697 != nil)
        let _method_set_editable_2586408642_name = StringName(from: "set_editable")
        self._method_set_editable_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_editable_2586408642_name._native_ptr(), 2586408642)
        assert(TextEdit._method_set_editable_2586408642 != nil)
        let _method_is_editable_36873697_name = StringName(from: "is_editable")
        self._method_is_editable_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_editable_36873697_name._native_ptr(), 36873697)
        assert(TextEdit._method_is_editable_36873697 != nil)
        let _method_set_text_direction_119160795_name = StringName(from: "set_text_direction")
        self._method_set_text_direction_119160795 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_text_direction_119160795_name._native_ptr(), 119160795)
        assert(TextEdit._method_set_text_direction_119160795 != nil)
        let _method_get_text_direction_797257663_name = StringName(from: "get_text_direction")
        self._method_get_text_direction_797257663 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_text_direction_797257663_name._native_ptr(), 797257663)
        assert(TextEdit._method_get_text_direction_797257663 != nil)
        let _method_set_language_83702148_name = StringName(from: "set_language")
        self._method_set_language_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_language_83702148_name._native_ptr(), 83702148)
        assert(TextEdit._method_set_language_83702148 != nil)
        let _method_get_language_201670096_name = StringName(from: "get_language")
        self._method_get_language_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_language_201670096_name._native_ptr(), 201670096)
        assert(TextEdit._method_get_language_201670096 != nil)
        let _method_set_structured_text_bidi_override_55961453_name = StringName(from: "set_structured_text_bidi_override")
        self._method_set_structured_text_bidi_override_55961453 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_structured_text_bidi_override_55961453_name._native_ptr(), 55961453)
        assert(TextEdit._method_set_structured_text_bidi_override_55961453 != nil)
        let _method_get_structured_text_bidi_override_3385126229_name = StringName(from: "get_structured_text_bidi_override")
        self._method_get_structured_text_bidi_override_3385126229 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_structured_text_bidi_override_3385126229_name._native_ptr(), 3385126229)
        assert(TextEdit._method_get_structured_text_bidi_override_3385126229 != nil)
        let _method_set_structured_text_bidi_override_options_381264803_name = StringName(from: "set_structured_text_bidi_override_options")
        self._method_set_structured_text_bidi_override_options_381264803 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_structured_text_bidi_override_options_381264803_name._native_ptr(), 381264803)
        assert(TextEdit._method_set_structured_text_bidi_override_options_381264803 != nil)
        let _method_get_structured_text_bidi_override_options_3995934104_name = StringName(from: "get_structured_text_bidi_override_options")
        self._method_get_structured_text_bidi_override_options_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_structured_text_bidi_override_options_3995934104_name._native_ptr(), 3995934104)
        assert(TextEdit._method_get_structured_text_bidi_override_options_3995934104 != nil)
        let _method_set_tab_size_1286410249_name = StringName(from: "set_tab_size")
        self._method_set_tab_size_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tab_size_1286410249_name._native_ptr(), 1286410249)
        assert(TextEdit._method_set_tab_size_1286410249 != nil)
        let _method_get_tab_size_3905245786_name = StringName(from: "get_tab_size")
        self._method_get_tab_size_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tab_size_3905245786_name._native_ptr(), 3905245786)
        assert(TextEdit._method_get_tab_size_3905245786 != nil)
        let _method_set_overtype_mode_enabled_2586408642_name = StringName(from: "set_overtype_mode_enabled")
        self._method_set_overtype_mode_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_overtype_mode_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(TextEdit._method_set_overtype_mode_enabled_2586408642 != nil)
        let _method_is_overtype_mode_enabled_36873697_name = StringName(from: "is_overtype_mode_enabled")
        self._method_is_overtype_mode_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_overtype_mode_enabled_36873697_name._native_ptr(), 36873697)
        assert(TextEdit._method_is_overtype_mode_enabled_36873697 != nil)
        let _method_set_context_menu_enabled_2586408642_name = StringName(from: "set_context_menu_enabled")
        self._method_set_context_menu_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_context_menu_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(TextEdit._method_set_context_menu_enabled_2586408642 != nil)
        let _method_is_context_menu_enabled_36873697_name = StringName(from: "is_context_menu_enabled")
        self._method_is_context_menu_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_context_menu_enabled_36873697_name._native_ptr(), 36873697)
        assert(TextEdit._method_is_context_menu_enabled_36873697 != nil)
        let _method_set_shortcut_keys_enabled_2586408642_name = StringName(from: "set_shortcut_keys_enabled")
        self._method_set_shortcut_keys_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_shortcut_keys_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(TextEdit._method_set_shortcut_keys_enabled_2586408642 != nil)
        let _method_is_shortcut_keys_enabled_36873697_name = StringName(from: "is_shortcut_keys_enabled")
        self._method_is_shortcut_keys_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_shortcut_keys_enabled_36873697_name._native_ptr(), 36873697)
        assert(TextEdit._method_is_shortcut_keys_enabled_36873697 != nil)
        let _method_set_virtual_keyboard_enabled_2586408642_name = StringName(from: "set_virtual_keyboard_enabled")
        self._method_set_virtual_keyboard_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_virtual_keyboard_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(TextEdit._method_set_virtual_keyboard_enabled_2586408642 != nil)
        let _method_is_virtual_keyboard_enabled_36873697_name = StringName(from: "is_virtual_keyboard_enabled")
        self._method_is_virtual_keyboard_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_virtual_keyboard_enabled_36873697_name._native_ptr(), 36873697)
        assert(TextEdit._method_is_virtual_keyboard_enabled_36873697 != nil)
        let _method_set_middle_mouse_paste_enabled_2586408642_name = StringName(from: "set_middle_mouse_paste_enabled")
        self._method_set_middle_mouse_paste_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_middle_mouse_paste_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(TextEdit._method_set_middle_mouse_paste_enabled_2586408642 != nil)
        let _method_is_middle_mouse_paste_enabled_36873697_name = StringName(from: "is_middle_mouse_paste_enabled")
        self._method_is_middle_mouse_paste_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_middle_mouse_paste_enabled_36873697_name._native_ptr(), 36873697)
        assert(TextEdit._method_is_middle_mouse_paste_enabled_36873697 != nil)
        let _method_clear_3218959716_name = StringName(from: "clear")
        self._method_clear_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_3218959716_name._native_ptr(), 3218959716)
        assert(TextEdit._method_clear_3218959716 != nil)
        let _method_set_text_83702148_name = StringName(from: "set_text")
        self._method_set_text_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_text_83702148_name._native_ptr(), 83702148)
        assert(TextEdit._method_set_text_83702148 != nil)
        let _method_get_text_201670096_name = StringName(from: "get_text")
        self._method_get_text_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_text_201670096_name._native_ptr(), 201670096)
        assert(TextEdit._method_get_text_201670096 != nil)
        let _method_get_line_count_3905245786_name = StringName(from: "get_line_count")
        self._method_get_line_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_line_count_3905245786_name._native_ptr(), 3905245786)
        assert(TextEdit._method_get_line_count_3905245786 != nil)
        let _method_set_placeholder_83702148_name = StringName(from: "set_placeholder")
        self._method_set_placeholder_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_placeholder_83702148_name._native_ptr(), 83702148)
        assert(TextEdit._method_set_placeholder_83702148 != nil)
        let _method_get_placeholder_201670096_name = StringName(from: "get_placeholder")
        self._method_get_placeholder_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_placeholder_201670096_name._native_ptr(), 201670096)
        assert(TextEdit._method_get_placeholder_201670096 != nil)
        let _method_set_line_501894301_name = StringName(from: "set_line")
        self._method_set_line_501894301 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_line_501894301_name._native_ptr(), 501894301)
        assert(TextEdit._method_set_line_501894301 != nil)
        let _method_get_line_844755477_name = StringName(from: "get_line")
        self._method_get_line_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_line_844755477_name._native_ptr(), 844755477)
        assert(TextEdit._method_get_line_844755477 != nil)
        let _method_get_line_width_3294126239_name = StringName(from: "get_line_width")
        self._method_get_line_width_3294126239 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_line_width_3294126239_name._native_ptr(), 3294126239)
        assert(TextEdit._method_get_line_width_3294126239 != nil)
        let _method_get_line_height_3905245786_name = StringName(from: "get_line_height")
        self._method_get_line_height_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_line_height_3905245786_name._native_ptr(), 3905245786)
        assert(TextEdit._method_get_line_height_3905245786 != nil)
        let _method_get_indent_level_923996154_name = StringName(from: "get_indent_level")
        self._method_get_indent_level_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_indent_level_923996154_name._native_ptr(), 923996154)
        assert(TextEdit._method_get_indent_level_923996154 != nil)
        let _method_get_first_non_whitespace_column_923996154_name = StringName(from: "get_first_non_whitespace_column")
        self._method_get_first_non_whitespace_column_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_first_non_whitespace_column_923996154_name._native_ptr(), 923996154)
        assert(TextEdit._method_get_first_non_whitespace_column_923996154 != nil)
        let _method_swap_lines_3937882851_name = StringName(from: "swap_lines")
        self._method_swap_lines_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_swap_lines_3937882851_name._native_ptr(), 3937882851)
        assert(TextEdit._method_swap_lines_3937882851 != nil)
        let _method_insert_line_at_501894301_name = StringName(from: "insert_line_at")
        self._method_insert_line_at_501894301 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_insert_line_at_501894301_name._native_ptr(), 501894301)
        assert(TextEdit._method_insert_line_at_501894301 != nil)
        let _method_insert_text_at_caret_3043792800_name = StringName(from: "insert_text_at_caret")
        self._method_insert_text_at_caret_3043792800 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_insert_text_at_caret_3043792800_name._native_ptr(), 3043792800)
        assert(TextEdit._method_insert_text_at_caret_3043792800 != nil)
        let _method_remove_text_4275841770_name = StringName(from: "remove_text")
        self._method_remove_text_4275841770 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_text_4275841770_name._native_ptr(), 4275841770)
        assert(TextEdit._method_remove_text_4275841770 != nil)
        let _method_get_last_unhidden_line_3905245786_name = StringName(from: "get_last_unhidden_line")
        self._method_get_last_unhidden_line_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_last_unhidden_line_3905245786_name._native_ptr(), 3905245786)
        assert(TextEdit._method_get_last_unhidden_line_3905245786 != nil)
        let _method_get_next_visible_line_offset_from_3175239445_name = StringName(from: "get_next_visible_line_offset_from")
        self._method_get_next_visible_line_offset_from_3175239445 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_next_visible_line_offset_from_3175239445_name._native_ptr(), 3175239445)
        assert(TextEdit._method_get_next_visible_line_offset_from_3175239445 != nil)
        let _method_get_next_visible_line_index_offset_from_3386475622_name = StringName(from: "get_next_visible_line_index_offset_from")
        self._method_get_next_visible_line_index_offset_from_3386475622 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_next_visible_line_index_offset_from_3386475622_name._native_ptr(), 3386475622)
        assert(TextEdit._method_get_next_visible_line_index_offset_from_3386475622 != nil)
        let _method_backspace_1025054187_name = StringName(from: "backspace")
        self._method_backspace_1025054187 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_backspace_1025054187_name._native_ptr(), 1025054187)
        assert(TextEdit._method_backspace_1025054187 != nil)
        let _method_cut_1025054187_name = StringName(from: "cut")
        self._method_cut_1025054187 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_cut_1025054187_name._native_ptr(), 1025054187)
        assert(TextEdit._method_cut_1025054187 != nil)
        let _method_copy_1025054187_name = StringName(from: "copy")
        self._method_copy_1025054187 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_copy_1025054187_name._native_ptr(), 1025054187)
        assert(TextEdit._method_copy_1025054187 != nil)
        let _method_paste_1025054187_name = StringName(from: "paste")
        self._method_paste_1025054187 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_paste_1025054187_name._native_ptr(), 1025054187)
        assert(TextEdit._method_paste_1025054187 != nil)
        let _method_paste_primary_clipboard_1025054187_name = StringName(from: "paste_primary_clipboard")
        self._method_paste_primary_clipboard_1025054187 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_paste_primary_clipboard_1025054187_name._native_ptr(), 1025054187)
        assert(TextEdit._method_paste_primary_clipboard_1025054187 != nil)
        let _method_start_action_2834827583_name = StringName(from: "start_action")
        self._method_start_action_2834827583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_start_action_2834827583_name._native_ptr(), 2834827583)
        assert(TextEdit._method_start_action_2834827583 != nil)
        let _method_end_action_3218959716_name = StringName(from: "end_action")
        self._method_end_action_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_end_action_3218959716_name._native_ptr(), 3218959716)
        assert(TextEdit._method_end_action_3218959716 != nil)
        let _method_begin_complex_operation_3218959716_name = StringName(from: "begin_complex_operation")
        self._method_begin_complex_operation_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_begin_complex_operation_3218959716_name._native_ptr(), 3218959716)
        assert(TextEdit._method_begin_complex_operation_3218959716 != nil)
        let _method_end_complex_operation_3218959716_name = StringName(from: "end_complex_operation")
        self._method_end_complex_operation_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_end_complex_operation_3218959716_name._native_ptr(), 3218959716)
        assert(TextEdit._method_end_complex_operation_3218959716 != nil)
        let _method_has_undo_36873697_name = StringName(from: "has_undo")
        self._method_has_undo_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_undo_36873697_name._native_ptr(), 36873697)
        assert(TextEdit._method_has_undo_36873697 != nil)
        let _method_has_redo_36873697_name = StringName(from: "has_redo")
        self._method_has_redo_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_redo_36873697_name._native_ptr(), 36873697)
        assert(TextEdit._method_has_redo_36873697 != nil)
        let _method_undo_3218959716_name = StringName(from: "undo")
        self._method_undo_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_undo_3218959716_name._native_ptr(), 3218959716)
        assert(TextEdit._method_undo_3218959716 != nil)
        let _method_redo_3218959716_name = StringName(from: "redo")
        self._method_redo_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_redo_3218959716_name._native_ptr(), 3218959716)
        assert(TextEdit._method_redo_3218959716 != nil)
        let _method_clear_undo_history_3218959716_name = StringName(from: "clear_undo_history")
        self._method_clear_undo_history_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_undo_history_3218959716_name._native_ptr(), 3218959716)
        assert(TextEdit._method_clear_undo_history_3218959716 != nil)
        let _method_tag_saved_version_3218959716_name = StringName(from: "tag_saved_version")
        self._method_tag_saved_version_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_tag_saved_version_3218959716_name._native_ptr(), 3218959716)
        assert(TextEdit._method_tag_saved_version_3218959716 != nil)
        let _method_get_version_3905245786_name = StringName(from: "get_version")
        self._method_get_version_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_version_3905245786_name._native_ptr(), 3905245786)
        assert(TextEdit._method_get_version_3905245786 != nil)
        let _method_get_saved_version_3905245786_name = StringName(from: "get_saved_version")
        self._method_get_saved_version_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_saved_version_3905245786_name._native_ptr(), 3905245786)
        assert(TextEdit._method_get_saved_version_3905245786 != nil)
        let _method_set_search_text_83702148_name = StringName(from: "set_search_text")
        self._method_set_search_text_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_search_text_83702148_name._native_ptr(), 83702148)
        assert(TextEdit._method_set_search_text_83702148 != nil)
        let _method_set_search_flags_1286410249_name = StringName(from: "set_search_flags")
        self._method_set_search_flags_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_search_flags_1286410249_name._native_ptr(), 1286410249)
        assert(TextEdit._method_set_search_flags_1286410249 != nil)
        let _method_search_1203739136_name = StringName(from: "search")
        self._method_search_1203739136 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_search_1203739136_name._native_ptr(), 1203739136)
        assert(TextEdit._method_search_1203739136 != nil)
        let _method_set_tooltip_request_func_1611583062_name = StringName(from: "set_tooltip_request_func")
        self._method_set_tooltip_request_func_1611583062 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tooltip_request_func_1611583062_name._native_ptr(), 1611583062)
        assert(TextEdit._method_set_tooltip_request_func_1611583062 != nil)
        let _method_get_local_mouse_pos_3341600327_name = StringName(from: "get_local_mouse_pos")
        self._method_get_local_mouse_pos_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_local_mouse_pos_3341600327_name._native_ptr(), 3341600327)
        assert(TextEdit._method_get_local_mouse_pos_3341600327 != nil)
        let _method_get_word_at_pos_3674420000_name = StringName(from: "get_word_at_pos")
        self._method_get_word_at_pos_3674420000 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_word_at_pos_3674420000_name._native_ptr(), 3674420000)
        assert(TextEdit._method_get_word_at_pos_3674420000 != nil)
        let _method_get_line_column_at_pos_850652858_name = StringName(from: "get_line_column_at_pos")
        self._method_get_line_column_at_pos_850652858 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_line_column_at_pos_850652858_name._native_ptr(), 850652858)
        assert(TextEdit._method_get_line_column_at_pos_850652858 != nil)
        let _method_get_pos_at_line_column_410388347_name = StringName(from: "get_pos_at_line_column")
        self._method_get_pos_at_line_column_410388347 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_pos_at_line_column_410388347_name._native_ptr(), 410388347)
        assert(TextEdit._method_get_pos_at_line_column_410388347 != nil)
        let _method_get_rect_at_line_column_3256618057_name = StringName(from: "get_rect_at_line_column")
        self._method_get_rect_at_line_column_3256618057 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_rect_at_line_column_3256618057_name._native_ptr(), 3256618057)
        assert(TextEdit._method_get_rect_at_line_column_3256618057 != nil)
        let _method_get_minimap_line_at_pos_2485466453_name = StringName(from: "get_minimap_line_at_pos")
        self._method_get_minimap_line_at_pos_2485466453 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_minimap_line_at_pos_2485466453_name._native_ptr(), 2485466453)
        assert(TextEdit._method_get_minimap_line_at_pos_2485466453 != nil)
        let _method_is_dragging_cursor_36873697_name = StringName(from: "is_dragging_cursor")
        self._method_is_dragging_cursor_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_dragging_cursor_36873697_name._native_ptr(), 36873697)
        assert(TextEdit._method_is_dragging_cursor_36873697 != nil)
        let _method_is_mouse_over_selection_1099474134_name = StringName(from: "is_mouse_over_selection")
        self._method_is_mouse_over_selection_1099474134 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_mouse_over_selection_1099474134_name._native_ptr(), 1099474134)
        assert(TextEdit._method_is_mouse_over_selection_1099474134 != nil)
        let _method_set_caret_type_1211596914_name = StringName(from: "set_caret_type")
        self._method_set_caret_type_1211596914 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_caret_type_1211596914_name._native_ptr(), 1211596914)
        assert(TextEdit._method_set_caret_type_1211596914 != nil)
        let _method_get_caret_type_2830252959_name = StringName(from: "get_caret_type")
        self._method_get_caret_type_2830252959 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_caret_type_2830252959_name._native_ptr(), 2830252959)
        assert(TextEdit._method_get_caret_type_2830252959 != nil)
        let _method_set_caret_blink_enabled_2586408642_name = StringName(from: "set_caret_blink_enabled")
        self._method_set_caret_blink_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_caret_blink_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(TextEdit._method_set_caret_blink_enabled_2586408642 != nil)
        let _method_is_caret_blink_enabled_36873697_name = StringName(from: "is_caret_blink_enabled")
        self._method_is_caret_blink_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_caret_blink_enabled_36873697_name._native_ptr(), 36873697)
        assert(TextEdit._method_is_caret_blink_enabled_36873697 != nil)
        let _method_set_caret_blink_interval_373806689_name = StringName(from: "set_caret_blink_interval")
        self._method_set_caret_blink_interval_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_caret_blink_interval_373806689_name._native_ptr(), 373806689)
        assert(TextEdit._method_set_caret_blink_interval_373806689 != nil)
        let _method_get_caret_blink_interval_1740695150_name = StringName(from: "get_caret_blink_interval")
        self._method_get_caret_blink_interval_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_caret_blink_interval_1740695150_name._native_ptr(), 1740695150)
        assert(TextEdit._method_get_caret_blink_interval_1740695150 != nil)
        let _method_set_move_caret_on_right_click_enabled_2586408642_name = StringName(from: "set_move_caret_on_right_click_enabled")
        self._method_set_move_caret_on_right_click_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_move_caret_on_right_click_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(TextEdit._method_set_move_caret_on_right_click_enabled_2586408642 != nil)
        let _method_is_move_caret_on_right_click_enabled_36873697_name = StringName(from: "is_move_caret_on_right_click_enabled")
        self._method_is_move_caret_on_right_click_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_move_caret_on_right_click_enabled_36873697_name._native_ptr(), 36873697)
        assert(TextEdit._method_is_move_caret_on_right_click_enabled_36873697 != nil)
        let _method_set_caret_mid_grapheme_enabled_2586408642_name = StringName(from: "set_caret_mid_grapheme_enabled")
        self._method_set_caret_mid_grapheme_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_caret_mid_grapheme_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(TextEdit._method_set_caret_mid_grapheme_enabled_2586408642 != nil)
        let _method_is_caret_mid_grapheme_enabled_36873697_name = StringName(from: "is_caret_mid_grapheme_enabled")
        self._method_is_caret_mid_grapheme_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_caret_mid_grapheme_enabled_36873697_name._native_ptr(), 36873697)
        assert(TextEdit._method_is_caret_mid_grapheme_enabled_36873697 != nil)
        let _method_set_multiple_carets_enabled_2586408642_name = StringName(from: "set_multiple_carets_enabled")
        self._method_set_multiple_carets_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_multiple_carets_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(TextEdit._method_set_multiple_carets_enabled_2586408642 != nil)
        let _method_is_multiple_carets_enabled_36873697_name = StringName(from: "is_multiple_carets_enabled")
        self._method_is_multiple_carets_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_multiple_carets_enabled_36873697_name._native_ptr(), 36873697)
        assert(TextEdit._method_is_multiple_carets_enabled_36873697 != nil)
        let _method_add_caret_50157827_name = StringName(from: "add_caret")
        self._method_add_caret_50157827 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_caret_50157827_name._native_ptr(), 50157827)
        assert(TextEdit._method_add_caret_50157827 != nil)
        let _method_remove_caret_1286410249_name = StringName(from: "remove_caret")
        self._method_remove_caret_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_caret_1286410249_name._native_ptr(), 1286410249)
        assert(TextEdit._method_remove_caret_1286410249 != nil)
        let _method_remove_secondary_carets_3218959716_name = StringName(from: "remove_secondary_carets")
        self._method_remove_secondary_carets_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_secondary_carets_3218959716_name._native_ptr(), 3218959716)
        assert(TextEdit._method_remove_secondary_carets_3218959716 != nil)
        let _method_merge_overlapping_carets_3218959716_name = StringName(from: "merge_overlapping_carets")
        self._method_merge_overlapping_carets_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_merge_overlapping_carets_3218959716_name._native_ptr(), 3218959716)
        assert(TextEdit._method_merge_overlapping_carets_3218959716 != nil)
        let _method_get_caret_count_3905245786_name = StringName(from: "get_caret_count")
        self._method_get_caret_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_caret_count_3905245786_name._native_ptr(), 3905245786)
        assert(TextEdit._method_get_caret_count_3905245786 != nil)
        let _method_add_caret_at_carets_2586408642_name = StringName(from: "add_caret_at_carets")
        self._method_add_caret_at_carets_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_caret_at_carets_2586408642_name._native_ptr(), 2586408642)
        assert(TextEdit._method_add_caret_at_carets_2586408642 != nil)
        let _method_get_caret_index_edit_order_969006518_name = StringName(from: "get_caret_index_edit_order")
        self._method_get_caret_index_edit_order_969006518 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_caret_index_edit_order_969006518_name._native_ptr(), 969006518)
        assert(TextEdit._method_get_caret_index_edit_order_969006518 != nil)
        let _method_adjust_carets_after_edit_1770277138_name = StringName(from: "adjust_carets_after_edit")
        self._method_adjust_carets_after_edit_1770277138 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_adjust_carets_after_edit_1770277138_name._native_ptr(), 1770277138)
        assert(TextEdit._method_adjust_carets_after_edit_1770277138 != nil)
        let _method_is_caret_visible_1051549951_name = StringName(from: "is_caret_visible")
        self._method_is_caret_visible_1051549951 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_caret_visible_1051549951_name._native_ptr(), 1051549951)
        assert(TextEdit._method_is_caret_visible_1051549951 != nil)
        let _method_get_caret_draw_pos_478253731_name = StringName(from: "get_caret_draw_pos")
        self._method_get_caret_draw_pos_478253731 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_caret_draw_pos_478253731_name._native_ptr(), 478253731)
        assert(TextEdit._method_get_caret_draw_pos_478253731 != nil)
        let _method_set_caret_line_1413195636_name = StringName(from: "set_caret_line")
        self._method_set_caret_line_1413195636 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_caret_line_1413195636_name._native_ptr(), 1413195636)
        assert(TextEdit._method_set_caret_line_1413195636 != nil)
        let _method_get_caret_line_1591665591_name = StringName(from: "get_caret_line")
        self._method_get_caret_line_1591665591 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_caret_line_1591665591_name._native_ptr(), 1591665591)
        assert(TextEdit._method_get_caret_line_1591665591 != nil)
        let _method_set_caret_column_1071284433_name = StringName(from: "set_caret_column")
        self._method_set_caret_column_1071284433 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_caret_column_1071284433_name._native_ptr(), 1071284433)
        assert(TextEdit._method_set_caret_column_1071284433 != nil)
        let _method_get_caret_column_1591665591_name = StringName(from: "get_caret_column")
        self._method_get_caret_column_1591665591 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_caret_column_1591665591_name._native_ptr(), 1591665591)
        assert(TextEdit._method_get_caret_column_1591665591 != nil)
        let _method_get_caret_wrap_index_1591665591_name = StringName(from: "get_caret_wrap_index")
        self._method_get_caret_wrap_index_1591665591 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_caret_wrap_index_1591665591_name._native_ptr(), 1591665591)
        assert(TextEdit._method_get_caret_wrap_index_1591665591 != nil)
        let _method_get_word_under_caret_3929349208_name = StringName(from: "get_word_under_caret")
        self._method_get_word_under_caret_3929349208 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_word_under_caret_3929349208_name._native_ptr(), 3929349208)
        assert(TextEdit._method_get_word_under_caret_3929349208 != nil)
        let _method_set_selecting_enabled_2586408642_name = StringName(from: "set_selecting_enabled")
        self._method_set_selecting_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_selecting_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(TextEdit._method_set_selecting_enabled_2586408642 != nil)
        let _method_is_selecting_enabled_36873697_name = StringName(from: "is_selecting_enabled")
        self._method_is_selecting_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_selecting_enabled_36873697_name._native_ptr(), 36873697)
        assert(TextEdit._method_is_selecting_enabled_36873697 != nil)
        let _method_set_deselect_on_focus_loss_enabled_2586408642_name = StringName(from: "set_deselect_on_focus_loss_enabled")
        self._method_set_deselect_on_focus_loss_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_deselect_on_focus_loss_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(TextEdit._method_set_deselect_on_focus_loss_enabled_2586408642 != nil)
        let _method_is_deselect_on_focus_loss_enabled_36873697_name = StringName(from: "is_deselect_on_focus_loss_enabled")
        self._method_is_deselect_on_focus_loss_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_deselect_on_focus_loss_enabled_36873697_name._native_ptr(), 36873697)
        assert(TextEdit._method_is_deselect_on_focus_loss_enabled_36873697 != nil)
        let _method_set_drag_and_drop_selection_enabled_2586408642_name = StringName(from: "set_drag_and_drop_selection_enabled")
        self._method_set_drag_and_drop_selection_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_drag_and_drop_selection_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(TextEdit._method_set_drag_and_drop_selection_enabled_2586408642 != nil)
        let _method_is_drag_and_drop_selection_enabled_36873697_name = StringName(from: "is_drag_and_drop_selection_enabled")
        self._method_is_drag_and_drop_selection_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_drag_and_drop_selection_enabled_36873697_name._native_ptr(), 36873697)
        assert(TextEdit._method_is_drag_and_drop_selection_enabled_36873697 != nil)
        let _method_set_selection_mode_2920622473_name = StringName(from: "set_selection_mode")
        self._method_set_selection_mode_2920622473 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_selection_mode_2920622473_name._native_ptr(), 2920622473)
        assert(TextEdit._method_set_selection_mode_2920622473 != nil)
        let _method_get_selection_mode_3750106938_name = StringName(from: "get_selection_mode")
        self._method_get_selection_mode_3750106938 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_selection_mode_3750106938_name._native_ptr(), 3750106938)
        assert(TextEdit._method_get_selection_mode_3750106938 != nil)
        let _method_select_all_3218959716_name = StringName(from: "select_all")
        self._method_select_all_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_select_all_3218959716_name._native_ptr(), 3218959716)
        assert(TextEdit._method_select_all_3218959716 != nil)
        let _method_select_word_under_caret_1025054187_name = StringName(from: "select_word_under_caret")
        self._method_select_word_under_caret_1025054187 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_select_word_under_caret_1025054187_name._native_ptr(), 1025054187)
        assert(TextEdit._method_select_word_under_caret_1025054187 != nil)
        let _method_add_selection_for_next_occurrence_3218959716_name = StringName(from: "add_selection_for_next_occurrence")
        self._method_add_selection_for_next_occurrence_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_selection_for_next_occurrence_3218959716_name._native_ptr(), 3218959716)
        assert(TextEdit._method_add_selection_for_next_occurrence_3218959716 != nil)
        let _method_select_4269665324_name = StringName(from: "select")
        self._method_select_4269665324 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_select_4269665324_name._native_ptr(), 4269665324)
        assert(TextEdit._method_select_4269665324 != nil)
        let _method_has_selection_2824505868_name = StringName(from: "has_selection")
        self._method_has_selection_2824505868 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_selection_2824505868_name._native_ptr(), 2824505868)
        assert(TextEdit._method_has_selection_2824505868 != nil)
        let _method_get_selected_text_2309358862_name = StringName(from: "get_selected_text")
        self._method_get_selected_text_2309358862 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_selected_text_2309358862_name._native_ptr(), 2309358862)
        assert(TextEdit._method_get_selected_text_2309358862 != nil)
        let _method_get_selection_line_1591665591_name = StringName(from: "get_selection_line")
        self._method_get_selection_line_1591665591 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_selection_line_1591665591_name._native_ptr(), 1591665591)
        assert(TextEdit._method_get_selection_line_1591665591 != nil)
        let _method_get_selection_column_1591665591_name = StringName(from: "get_selection_column")
        self._method_get_selection_column_1591665591 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_selection_column_1591665591_name._native_ptr(), 1591665591)
        assert(TextEdit._method_get_selection_column_1591665591 != nil)
        let _method_get_selection_from_line_1591665591_name = StringName(from: "get_selection_from_line")
        self._method_get_selection_from_line_1591665591 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_selection_from_line_1591665591_name._native_ptr(), 1591665591)
        assert(TextEdit._method_get_selection_from_line_1591665591 != nil)
        let _method_get_selection_from_column_1591665591_name = StringName(from: "get_selection_from_column")
        self._method_get_selection_from_column_1591665591 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_selection_from_column_1591665591_name._native_ptr(), 1591665591)
        assert(TextEdit._method_get_selection_from_column_1591665591 != nil)
        let _method_get_selection_to_line_1591665591_name = StringName(from: "get_selection_to_line")
        self._method_get_selection_to_line_1591665591 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_selection_to_line_1591665591_name._native_ptr(), 1591665591)
        assert(TextEdit._method_get_selection_to_line_1591665591 != nil)
        let _method_get_selection_to_column_1591665591_name = StringName(from: "get_selection_to_column")
        self._method_get_selection_to_column_1591665591 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_selection_to_column_1591665591_name._native_ptr(), 1591665591)
        assert(TextEdit._method_get_selection_to_column_1591665591 != nil)
        let _method_deselect_1025054187_name = StringName(from: "deselect")
        self._method_deselect_1025054187 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_deselect_1025054187_name._native_ptr(), 1025054187)
        assert(TextEdit._method_deselect_1025054187 != nil)
        let _method_delete_selection_1025054187_name = StringName(from: "delete_selection")
        self._method_delete_selection_1025054187 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_delete_selection_1025054187_name._native_ptr(), 1025054187)
        assert(TextEdit._method_delete_selection_1025054187 != nil)
        let _method_set_line_wrapping_mode_2525115309_name = StringName(from: "set_line_wrapping_mode")
        self._method_set_line_wrapping_mode_2525115309 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_line_wrapping_mode_2525115309_name._native_ptr(), 2525115309)
        assert(TextEdit._method_set_line_wrapping_mode_2525115309 != nil)
        let _method_get_line_wrapping_mode_3562716114_name = StringName(from: "get_line_wrapping_mode")
        self._method_get_line_wrapping_mode_3562716114 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_line_wrapping_mode_3562716114_name._native_ptr(), 3562716114)
        assert(TextEdit._method_get_line_wrapping_mode_3562716114 != nil)
        let _method_is_line_wrapped_1116898809_name = StringName(from: "is_line_wrapped")
        self._method_is_line_wrapped_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_line_wrapped_1116898809_name._native_ptr(), 1116898809)
        assert(TextEdit._method_is_line_wrapped_1116898809 != nil)
        let _method_get_line_wrap_count_923996154_name = StringName(from: "get_line_wrap_count")
        self._method_get_line_wrap_count_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_line_wrap_count_923996154_name._native_ptr(), 923996154)
        assert(TextEdit._method_get_line_wrap_count_923996154 != nil)
        let _method_get_line_wrap_index_at_column_3175239445_name = StringName(from: "get_line_wrap_index_at_column")
        self._method_get_line_wrap_index_at_column_3175239445 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_line_wrap_index_at_column_3175239445_name._native_ptr(), 3175239445)
        assert(TextEdit._method_get_line_wrap_index_at_column_3175239445 != nil)
        let _method_get_line_wrapped_text_647634434_name = StringName(from: "get_line_wrapped_text")
        self._method_get_line_wrapped_text_647634434 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_line_wrapped_text_647634434_name._native_ptr(), 647634434)
        assert(TextEdit._method_get_line_wrapped_text_647634434 != nil)
        let _method_set_smooth_scroll_enabled_2586408642_name = StringName(from: "set_smooth_scroll_enabled")
        self._method_set_smooth_scroll_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_smooth_scroll_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(TextEdit._method_set_smooth_scroll_enabled_2586408642 != nil)
        let _method_is_smooth_scroll_enabled_36873697_name = StringName(from: "is_smooth_scroll_enabled")
        self._method_is_smooth_scroll_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_smooth_scroll_enabled_36873697_name._native_ptr(), 36873697)
        assert(TextEdit._method_is_smooth_scroll_enabled_36873697 != nil)
        let _method_get_v_scroll_bar_3226026593_name = StringName(from: "get_v_scroll_bar")
        self._method_get_v_scroll_bar_3226026593 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_v_scroll_bar_3226026593_name._native_ptr(), 3226026593)
        assert(TextEdit._method_get_v_scroll_bar_3226026593 != nil)
        let _method_get_h_scroll_bar_3774687988_name = StringName(from: "get_h_scroll_bar")
        self._method_get_h_scroll_bar_3774687988 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_h_scroll_bar_3774687988_name._native_ptr(), 3774687988)
        assert(TextEdit._method_get_h_scroll_bar_3774687988 != nil)
        let _method_set_v_scroll_373806689_name = StringName(from: "set_v_scroll")
        self._method_set_v_scroll_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_v_scroll_373806689_name._native_ptr(), 373806689)
        assert(TextEdit._method_set_v_scroll_373806689 != nil)
        let _method_get_v_scroll_1740695150_name = StringName(from: "get_v_scroll")
        self._method_get_v_scroll_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_v_scroll_1740695150_name._native_ptr(), 1740695150)
        assert(TextEdit._method_get_v_scroll_1740695150 != nil)
        let _method_set_h_scroll_1286410249_name = StringName(from: "set_h_scroll")
        self._method_set_h_scroll_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_h_scroll_1286410249_name._native_ptr(), 1286410249)
        assert(TextEdit._method_set_h_scroll_1286410249 != nil)
        let _method_get_h_scroll_3905245786_name = StringName(from: "get_h_scroll")
        self._method_get_h_scroll_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_h_scroll_3905245786_name._native_ptr(), 3905245786)
        assert(TextEdit._method_get_h_scroll_3905245786 != nil)
        let _method_set_scroll_past_end_of_file_enabled_2586408642_name = StringName(from: "set_scroll_past_end_of_file_enabled")
        self._method_set_scroll_past_end_of_file_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_scroll_past_end_of_file_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(TextEdit._method_set_scroll_past_end_of_file_enabled_2586408642 != nil)
        let _method_is_scroll_past_end_of_file_enabled_36873697_name = StringName(from: "is_scroll_past_end_of_file_enabled")
        self._method_is_scroll_past_end_of_file_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_scroll_past_end_of_file_enabled_36873697_name._native_ptr(), 36873697)
        assert(TextEdit._method_is_scroll_past_end_of_file_enabled_36873697 != nil)
        let _method_set_v_scroll_speed_373806689_name = StringName(from: "set_v_scroll_speed")
        self._method_set_v_scroll_speed_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_v_scroll_speed_373806689_name._native_ptr(), 373806689)
        assert(TextEdit._method_set_v_scroll_speed_373806689 != nil)
        let _method_get_v_scroll_speed_1740695150_name = StringName(from: "get_v_scroll_speed")
        self._method_get_v_scroll_speed_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_v_scroll_speed_1740695150_name._native_ptr(), 1740695150)
        assert(TextEdit._method_get_v_scroll_speed_1740695150 != nil)
        let _method_set_fit_content_height_enabled_2586408642_name = StringName(from: "set_fit_content_height_enabled")
        self._method_set_fit_content_height_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_fit_content_height_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(TextEdit._method_set_fit_content_height_enabled_2586408642 != nil)
        let _method_is_fit_content_height_enabled_36873697_name = StringName(from: "is_fit_content_height_enabled")
        self._method_is_fit_content_height_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_fit_content_height_enabled_36873697_name._native_ptr(), 36873697)
        assert(TextEdit._method_is_fit_content_height_enabled_36873697 != nil)
        let _method_get_scroll_pos_for_line_3274652423_name = StringName(from: "get_scroll_pos_for_line")
        self._method_get_scroll_pos_for_line_3274652423 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_scroll_pos_for_line_3274652423_name._native_ptr(), 3274652423)
        assert(TextEdit._method_get_scroll_pos_for_line_3274652423 != nil)
        let _method_set_line_as_first_visible_3023605688_name = StringName(from: "set_line_as_first_visible")
        self._method_set_line_as_first_visible_3023605688 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_line_as_first_visible_3023605688_name._native_ptr(), 3023605688)
        assert(TextEdit._method_set_line_as_first_visible_3023605688 != nil)
        let _method_get_first_visible_line_3905245786_name = StringName(from: "get_first_visible_line")
        self._method_get_first_visible_line_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_first_visible_line_3905245786_name._native_ptr(), 3905245786)
        assert(TextEdit._method_get_first_visible_line_3905245786 != nil)
        let _method_set_line_as_center_visible_3023605688_name = StringName(from: "set_line_as_center_visible")
        self._method_set_line_as_center_visible_3023605688 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_line_as_center_visible_3023605688_name._native_ptr(), 3023605688)
        assert(TextEdit._method_set_line_as_center_visible_3023605688 != nil)
        let _method_set_line_as_last_visible_3023605688_name = StringName(from: "set_line_as_last_visible")
        self._method_set_line_as_last_visible_3023605688 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_line_as_last_visible_3023605688_name._native_ptr(), 3023605688)
        assert(TextEdit._method_set_line_as_last_visible_3023605688 != nil)
        let _method_get_last_full_visible_line_3905245786_name = StringName(from: "get_last_full_visible_line")
        self._method_get_last_full_visible_line_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_last_full_visible_line_3905245786_name._native_ptr(), 3905245786)
        assert(TextEdit._method_get_last_full_visible_line_3905245786 != nil)
        let _method_get_last_full_visible_line_wrap_index_3905245786_name = StringName(from: "get_last_full_visible_line_wrap_index")
        self._method_get_last_full_visible_line_wrap_index_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_last_full_visible_line_wrap_index_3905245786_name._native_ptr(), 3905245786)
        assert(TextEdit._method_get_last_full_visible_line_wrap_index_3905245786 != nil)
        let _method_get_visible_line_count_3905245786_name = StringName(from: "get_visible_line_count")
        self._method_get_visible_line_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_visible_line_count_3905245786_name._native_ptr(), 3905245786)
        assert(TextEdit._method_get_visible_line_count_3905245786 != nil)
        let _method_get_visible_line_count_in_range_3175239445_name = StringName(from: "get_visible_line_count_in_range")
        self._method_get_visible_line_count_in_range_3175239445 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_visible_line_count_in_range_3175239445_name._native_ptr(), 3175239445)
        assert(TextEdit._method_get_visible_line_count_in_range_3175239445 != nil)
        let _method_get_total_visible_line_count_3905245786_name = StringName(from: "get_total_visible_line_count")
        self._method_get_total_visible_line_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_total_visible_line_count_3905245786_name._native_ptr(), 3905245786)
        assert(TextEdit._method_get_total_visible_line_count_3905245786 != nil)
        let _method_adjust_viewport_to_caret_1995695955_name = StringName(from: "adjust_viewport_to_caret")
        self._method_adjust_viewport_to_caret_1995695955 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_adjust_viewport_to_caret_1995695955_name._native_ptr(), 1995695955)
        assert(TextEdit._method_adjust_viewport_to_caret_1995695955 != nil)
        let _method_center_viewport_to_caret_1995695955_name = StringName(from: "center_viewport_to_caret")
        self._method_center_viewport_to_caret_1995695955 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_center_viewport_to_caret_1995695955_name._native_ptr(), 1995695955)
        assert(TextEdit._method_center_viewport_to_caret_1995695955 != nil)
        let _method_set_draw_minimap_2586408642_name = StringName(from: "set_draw_minimap")
        self._method_set_draw_minimap_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_draw_minimap_2586408642_name._native_ptr(), 2586408642)
        assert(TextEdit._method_set_draw_minimap_2586408642 != nil)
        let _method_is_drawing_minimap_36873697_name = StringName(from: "is_drawing_minimap")
        self._method_is_drawing_minimap_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_drawing_minimap_36873697_name._native_ptr(), 36873697)
        assert(TextEdit._method_is_drawing_minimap_36873697 != nil)
        let _method_set_minimap_width_1286410249_name = StringName(from: "set_minimap_width")
        self._method_set_minimap_width_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_minimap_width_1286410249_name._native_ptr(), 1286410249)
        assert(TextEdit._method_set_minimap_width_1286410249 != nil)
        let _method_get_minimap_width_3905245786_name = StringName(from: "get_minimap_width")
        self._method_get_minimap_width_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_minimap_width_3905245786_name._native_ptr(), 3905245786)
        assert(TextEdit._method_get_minimap_width_3905245786 != nil)
        let _method_get_minimap_visible_lines_3905245786_name = StringName(from: "get_minimap_visible_lines")
        self._method_get_minimap_visible_lines_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_minimap_visible_lines_3905245786_name._native_ptr(), 3905245786)
        assert(TextEdit._method_get_minimap_visible_lines_3905245786 != nil)
        let _method_add_gutter_1025054187_name = StringName(from: "add_gutter")
        self._method_add_gutter_1025054187 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_gutter_1025054187_name._native_ptr(), 1025054187)
        assert(TextEdit._method_add_gutter_1025054187 != nil)
        let _method_remove_gutter_1286410249_name = StringName(from: "remove_gutter")
        self._method_remove_gutter_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_gutter_1286410249_name._native_ptr(), 1286410249)
        assert(TextEdit._method_remove_gutter_1286410249 != nil)
        let _method_get_gutter_count_3905245786_name = StringName(from: "get_gutter_count")
        self._method_get_gutter_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_gutter_count_3905245786_name._native_ptr(), 3905245786)
        assert(TextEdit._method_get_gutter_count_3905245786 != nil)
        let _method_set_gutter_name_501894301_name = StringName(from: "set_gutter_name")
        self._method_set_gutter_name_501894301 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_gutter_name_501894301_name._native_ptr(), 501894301)
        assert(TextEdit._method_set_gutter_name_501894301 != nil)
        let _method_get_gutter_name_844755477_name = StringName(from: "get_gutter_name")
        self._method_get_gutter_name_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_gutter_name_844755477_name._native_ptr(), 844755477)
        assert(TextEdit._method_get_gutter_name_844755477 != nil)
        let _method_set_gutter_type_1088959071_name = StringName(from: "set_gutter_type")
        self._method_set_gutter_type_1088959071 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_gutter_type_1088959071_name._native_ptr(), 1088959071)
        assert(TextEdit._method_set_gutter_type_1088959071 != nil)
        let _method_get_gutter_type_1159699127_name = StringName(from: "get_gutter_type")
        self._method_get_gutter_type_1159699127 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_gutter_type_1159699127_name._native_ptr(), 1159699127)
        assert(TextEdit._method_get_gutter_type_1159699127 != nil)
        let _method_set_gutter_width_3937882851_name = StringName(from: "set_gutter_width")
        self._method_set_gutter_width_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_gutter_width_3937882851_name._native_ptr(), 3937882851)
        assert(TextEdit._method_set_gutter_width_3937882851 != nil)
        let _method_get_gutter_width_923996154_name = StringName(from: "get_gutter_width")
        self._method_get_gutter_width_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_gutter_width_923996154_name._native_ptr(), 923996154)
        assert(TextEdit._method_get_gutter_width_923996154 != nil)
        let _method_set_gutter_draw_300928843_name = StringName(from: "set_gutter_draw")
        self._method_set_gutter_draw_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_gutter_draw_300928843_name._native_ptr(), 300928843)
        assert(TextEdit._method_set_gutter_draw_300928843 != nil)
        let _method_is_gutter_drawn_1116898809_name = StringName(from: "is_gutter_drawn")
        self._method_is_gutter_drawn_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_gutter_drawn_1116898809_name._native_ptr(), 1116898809)
        assert(TextEdit._method_is_gutter_drawn_1116898809 != nil)
        let _method_set_gutter_clickable_300928843_name = StringName(from: "set_gutter_clickable")
        self._method_set_gutter_clickable_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_gutter_clickable_300928843_name._native_ptr(), 300928843)
        assert(TextEdit._method_set_gutter_clickable_300928843 != nil)
        let _method_is_gutter_clickable_1116898809_name = StringName(from: "is_gutter_clickable")
        self._method_is_gutter_clickable_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_gutter_clickable_1116898809_name._native_ptr(), 1116898809)
        assert(TextEdit._method_is_gutter_clickable_1116898809 != nil)
        let _method_set_gutter_overwritable_300928843_name = StringName(from: "set_gutter_overwritable")
        self._method_set_gutter_overwritable_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_gutter_overwritable_300928843_name._native_ptr(), 300928843)
        assert(TextEdit._method_set_gutter_overwritable_300928843 != nil)
        let _method_is_gutter_overwritable_1116898809_name = StringName(from: "is_gutter_overwritable")
        self._method_is_gutter_overwritable_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_gutter_overwritable_1116898809_name._native_ptr(), 1116898809)
        assert(TextEdit._method_is_gutter_overwritable_1116898809 != nil)
        let _method_merge_gutters_3937882851_name = StringName(from: "merge_gutters")
        self._method_merge_gutters_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_merge_gutters_3937882851_name._native_ptr(), 3937882851)
        assert(TextEdit._method_merge_gutters_3937882851 != nil)
        let _method_set_gutter_custom_draw_957362965_name = StringName(from: "set_gutter_custom_draw")
        self._method_set_gutter_custom_draw_957362965 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_gutter_custom_draw_957362965_name._native_ptr(), 957362965)
        assert(TextEdit._method_set_gutter_custom_draw_957362965 != nil)
        let _method_get_total_gutter_width_3905245786_name = StringName(from: "get_total_gutter_width")
        self._method_get_total_gutter_width_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_total_gutter_width_3905245786_name._native_ptr(), 3905245786)
        assert(TextEdit._method_get_total_gutter_width_3905245786 != nil)
        let _method_set_line_gutter_metadata_2060538656_name = StringName(from: "set_line_gutter_metadata")
        self._method_set_line_gutter_metadata_2060538656 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_line_gutter_metadata_2060538656_name._native_ptr(), 2060538656)
        assert(TextEdit._method_set_line_gutter_metadata_2060538656 != nil)
        let _method_get_line_gutter_metadata_678354945_name = StringName(from: "get_line_gutter_metadata")
        self._method_get_line_gutter_metadata_678354945 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_line_gutter_metadata_678354945_name._native_ptr(), 678354945)
        assert(TextEdit._method_get_line_gutter_metadata_678354945 != nil)
        let _method_set_line_gutter_text_2285447957_name = StringName(from: "set_line_gutter_text")
        self._method_set_line_gutter_text_2285447957 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_line_gutter_text_2285447957_name._native_ptr(), 2285447957)
        assert(TextEdit._method_set_line_gutter_text_2285447957 != nil)
        let _method_get_line_gutter_text_1391810591_name = StringName(from: "get_line_gutter_text")
        self._method_get_line_gutter_text_1391810591 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_line_gutter_text_1391810591_name._native_ptr(), 1391810591)
        assert(TextEdit._method_get_line_gutter_text_1391810591 != nil)
        let _method_set_line_gutter_icon_176101966_name = StringName(from: "set_line_gutter_icon")
        self._method_set_line_gutter_icon_176101966 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_line_gutter_icon_176101966_name._native_ptr(), 176101966)
        assert(TextEdit._method_set_line_gutter_icon_176101966 != nil)
        let _method_get_line_gutter_icon_2584904275_name = StringName(from: "get_line_gutter_icon")
        self._method_get_line_gutter_icon_2584904275 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_line_gutter_icon_2584904275_name._native_ptr(), 2584904275)
        assert(TextEdit._method_get_line_gutter_icon_2584904275 != nil)
        let _method_set_line_gutter_item_color_3733378741_name = StringName(from: "set_line_gutter_item_color")
        self._method_set_line_gutter_item_color_3733378741 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_line_gutter_item_color_3733378741_name._native_ptr(), 3733378741)
        assert(TextEdit._method_set_line_gutter_item_color_3733378741 != nil)
        let _method_get_line_gutter_item_color_2165839948_name = StringName(from: "get_line_gutter_item_color")
        self._method_get_line_gutter_item_color_2165839948 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_line_gutter_item_color_2165839948_name._native_ptr(), 2165839948)
        assert(TextEdit._method_get_line_gutter_item_color_2165839948 != nil)
        let _method_set_line_gutter_clickable_1383440665_name = StringName(from: "set_line_gutter_clickable")
        self._method_set_line_gutter_clickable_1383440665 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_line_gutter_clickable_1383440665_name._native_ptr(), 1383440665)
        assert(TextEdit._method_set_line_gutter_clickable_1383440665 != nil)
        let _method_is_line_gutter_clickable_2522259332_name = StringName(from: "is_line_gutter_clickable")
        self._method_is_line_gutter_clickable_2522259332 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_line_gutter_clickable_2522259332_name._native_ptr(), 2522259332)
        assert(TextEdit._method_is_line_gutter_clickable_2522259332 != nil)
        let _method_set_line_background_color_2878471219_name = StringName(from: "set_line_background_color")
        self._method_set_line_background_color_2878471219 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_line_background_color_2878471219_name._native_ptr(), 2878471219)
        assert(TextEdit._method_set_line_background_color_2878471219 != nil)
        let _method_get_line_background_color_3457211756_name = StringName(from: "get_line_background_color")
        self._method_get_line_background_color_3457211756 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_line_background_color_3457211756_name._native_ptr(), 3457211756)
        assert(TextEdit._method_get_line_background_color_3457211756 != nil)
        let _method_set_syntax_highlighter_2765644541_name = StringName(from: "set_syntax_highlighter")
        self._method_set_syntax_highlighter_2765644541 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_syntax_highlighter_2765644541_name._native_ptr(), 2765644541)
        assert(TextEdit._method_set_syntax_highlighter_2765644541 != nil)
        let _method_get_syntax_highlighter_2721131626_name = StringName(from: "get_syntax_highlighter")
        self._method_get_syntax_highlighter_2721131626 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_syntax_highlighter_2721131626_name._native_ptr(), 2721131626)
        assert(TextEdit._method_get_syntax_highlighter_2721131626 != nil)
        let _method_set_highlight_current_line_2586408642_name = StringName(from: "set_highlight_current_line")
        self._method_set_highlight_current_line_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_highlight_current_line_2586408642_name._native_ptr(), 2586408642)
        assert(TextEdit._method_set_highlight_current_line_2586408642 != nil)
        let _method_is_highlight_current_line_enabled_36873697_name = StringName(from: "is_highlight_current_line_enabled")
        self._method_is_highlight_current_line_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_highlight_current_line_enabled_36873697_name._native_ptr(), 36873697)
        assert(TextEdit._method_is_highlight_current_line_enabled_36873697 != nil)
        let _method_set_highlight_all_occurrences_2586408642_name = StringName(from: "set_highlight_all_occurrences")
        self._method_set_highlight_all_occurrences_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_highlight_all_occurrences_2586408642_name._native_ptr(), 2586408642)
        assert(TextEdit._method_set_highlight_all_occurrences_2586408642 != nil)
        let _method_is_highlight_all_occurrences_enabled_36873697_name = StringName(from: "is_highlight_all_occurrences_enabled")
        self._method_is_highlight_all_occurrences_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_highlight_all_occurrences_enabled_36873697_name._native_ptr(), 36873697)
        assert(TextEdit._method_is_highlight_all_occurrences_enabled_36873697 != nil)
        let _method_get_draw_control_chars_36873697_name = StringName(from: "get_draw_control_chars")
        self._method_get_draw_control_chars_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_draw_control_chars_36873697_name._native_ptr(), 36873697)
        assert(TextEdit._method_get_draw_control_chars_36873697 != nil)
        let _method_set_draw_control_chars_2586408642_name = StringName(from: "set_draw_control_chars")
        self._method_set_draw_control_chars_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_draw_control_chars_2586408642_name._native_ptr(), 2586408642)
        assert(TextEdit._method_set_draw_control_chars_2586408642 != nil)
        let _method_set_draw_tabs_2586408642_name = StringName(from: "set_draw_tabs")
        self._method_set_draw_tabs_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_draw_tabs_2586408642_name._native_ptr(), 2586408642)
        assert(TextEdit._method_set_draw_tabs_2586408642 != nil)
        let _method_is_drawing_tabs_36873697_name = StringName(from: "is_drawing_tabs")
        self._method_is_drawing_tabs_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_drawing_tabs_36873697_name._native_ptr(), 36873697)
        assert(TextEdit._method_is_drawing_tabs_36873697 != nil)
        let _method_set_draw_spaces_2586408642_name = StringName(from: "set_draw_spaces")
        self._method_set_draw_spaces_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_draw_spaces_2586408642_name._native_ptr(), 2586408642)
        assert(TextEdit._method_set_draw_spaces_2586408642 != nil)
        let _method_is_drawing_spaces_36873697_name = StringName(from: "is_drawing_spaces")
        self._method_is_drawing_spaces_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_drawing_spaces_36873697_name._native_ptr(), 36873697)
        assert(TextEdit._method_is_drawing_spaces_36873697 != nil)
        let _method_get_menu_229722558_name = StringName(from: "get_menu")
        self._method_get_menu_229722558 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_menu_229722558_name._native_ptr(), 229722558)
        assert(TextEdit._method_get_menu_229722558 != nil)
        let _method_is_menu_visible_36873697_name = StringName(from: "is_menu_visible")
        self._method_is_menu_visible_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_menu_visible_36873697_name._native_ptr(), 36873697)
        assert(TextEdit._method_is_menu_visible_36873697 != nil)
        let _method_menu_option_1286410249_name = StringName(from: "menu_option")
        self._method_menu_option_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_menu_option_1286410249_name._native_ptr(), 1286410249)
        assert(TextEdit._method_menu_option_1286410249 != nil)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__handle_unicode_input_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__backspace_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__cut_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__copy_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__paste_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__paste_primary_clipboard_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_ime_text_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_editable(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_editable_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_editable_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_text_direction(direction: Control.TextDirection)  {
        withUnsafePointer(to: direction.rawValue) { direction_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(direction_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_text_direction_119160795,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_text_direction_797257663,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Control.TextDirection(from: __resPtr.pointee)
    }
    public func set_language(language: String)  {
        withUnsafePointer(to: language) { language_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(language_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_language_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_language() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_language_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_structured_text_bidi_override(parser: TextServer.StructuredTextParser)  {
        withUnsafePointer(to: parser.rawValue) { parser_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(parser_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_structured_text_bidi_override_55961453,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_structured_text_bidi_override_3385126229,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.StructuredTextParser(from: __resPtr.pointee)
    }
    public func set_structured_text_bidi_override_options(args: Array)  {
        let args_native = args._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(args_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_structured_text_bidi_override_options_381264803,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_structured_text_bidi_override_options_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(from: __resPtr.pointee)
    }
    public func set_tab_size(size: Int64)  {
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tab_size_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tab_size_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_overtype_mode_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_overtype_mode_enabled_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_overtype_mode_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_context_menu_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_context_menu_enabled_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_context_menu_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_shortcut_keys_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_shortcut_keys_enabled_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_shortcut_keys_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_virtual_keyboard_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_virtual_keyboard_enabled_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_virtual_keyboard_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_middle_mouse_paste_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_middle_mouse_paste_enabled_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_middle_mouse_paste_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func clear()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_text(text: String)  {
        withUnsafePointer(to: text) { text_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(text_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_text_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_text() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_text_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func get_line_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_placeholder(text: String)  {
        withUnsafePointer(to: text) { text_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(text_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_placeholder_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_placeholder() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_placeholder_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_line(line: Int64, new_text: String)  {
        withUnsafePointer(to: new_text) { new_text_native in
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native), .init(new_text_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_line_501894301,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_line(line: Int64) -> String {
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_width_3294126239,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_height_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_indent_level_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_first_non_whitespace_column_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_swap_lines_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func insert_line_at(line: Int64, text: String)  {
        withUnsafePointer(to: text) { text_native in
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native), .init(text_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_insert_line_at_501894301,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func insert_text_at_caret(text: String, caret_index: Int64)  {
        withUnsafePointer(to: caret_index) { caret_index_native in
        withUnsafePointer(to: text) { text_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(text_native), .init(caret_index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_insert_text_at_caret_3043792800,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_text_4275841770,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_last_unhidden_line_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_next_visible_line_offset_from_3175239445,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_next_visible_line_index_offset_from_3386475622,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_backspace_1025054187,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_cut_1025054187,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_copy_1025054187,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_paste_1025054187,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_paste_primary_clipboard_1025054187,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_start_action_2834827583,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_end_action_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_begin_complex_operation_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_end_complex_operation_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_undo_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func has_redo() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_redo_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func undo()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_undo_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_redo_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_undo_history_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_tag_saved_version_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_version_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_saved_version() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_saved_version_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_search_text(search_text: String)  {
        withUnsafePointer(to: search_text) { search_text_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(search_text_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_search_text_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_search_flags(flags: Int64)  {
        withUnsafePointer(to: flags) { flags_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flags_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_search_flags_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func search(text: String, flags: Int64, from_line: Int64, from_colum: Int64) -> Vector2i {
        withUnsafePointer(to: from_colum) { from_colum_native in
        withUnsafePointer(to: from_line) { from_line_native in
        withUnsafePointer(to: flags) { flags_native in
        withUnsafePointer(to: text) { text_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(text_native), .init(flags_native), .init(from_line_native), .init(from_colum_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_search_1203739136,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(from: __resPtr.pointee)
        }
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tooltip_request_func_1611583062,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_local_mouse_pos_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func get_word_at_pos(position: Vector2) -> String {
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
                    Self._method_get_word_at_pos_3674420000,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_column_at_pos_850652858,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_pos_at_line_column_410388347,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_rect_at_line_column_3256618057,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2i(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_minimap_line_at_pos_2485466453,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func is_dragging_cursor() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_dragging_cursor_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_mouse_over_selection_1099474134,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_caret_type_1211596914,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_caret_type_2830252959,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextEdit.CaretType(from: __resPtr.pointee)
    }
    public func set_caret_blink_enabled(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_caret_blink_enabled_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_caret_blink_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_caret_blink_interval(interval: Float64)  {
        withUnsafePointer(to: interval) { interval_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(interval_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_caret_blink_interval_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_caret_blink_interval_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_move_caret_on_right_click_enabled(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_move_caret_on_right_click_enabled_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_move_caret_on_right_click_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_caret_mid_grapheme_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_caret_mid_grapheme_enabled_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_caret_mid_grapheme_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_multiple_carets_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_multiple_carets_enabled_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_multiple_carets_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_caret_50157827,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_caret_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_secondary_carets_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_merge_overlapping_carets_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_caret_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func add_caret_at_carets(below: UInt8)  {
        withUnsafePointer(to: below) { below_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(below_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_caret_at_carets_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_caret_index_edit_order_969006518,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_adjust_carets_after_edit_1770277138,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_caret_visible_1051549951,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_caret_draw_pos_478253731,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_caret_line_1413195636,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_caret_line_1591665591,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_caret_column_1071284433,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_caret_column_1591665591,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_caret_wrap_index_1591665591,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func get_word_under_caret(caret_index: Int64) -> String {
        withUnsafePointer(to: caret_index) { caret_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_word_under_caret_3929349208,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_selecting_enabled_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_selecting_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_deselect_on_focus_loss_enabled(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_deselect_on_focus_loss_enabled_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_deselect_on_focus_loss_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_drag_and_drop_selection_enabled(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_drag_and_drop_selection_enabled_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_drag_and_drop_selection_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_selection_mode_2920622473,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_selection_mode_3750106938,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextEdit.SelectionMode(from: __resPtr.pointee)
    }
    public func select_all()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_select_all_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_select_word_under_caret_1025054187,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_selection_for_next_occurrence_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_select_4269665324,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_selection_2824505868,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func get_selected_text(caret_index: Int64) -> String {
        withUnsafePointer(to: caret_index) { caret_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_selected_text_2309358862,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_selection_line_1591665591,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_selection_column_1591665591,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_selection_from_line_1591665591,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_selection_from_column_1591665591,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_selection_to_line_1591665591,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_selection_to_column_1591665591,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_deselect_1025054187,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_delete_selection_1025054187,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_line_wrapping_mode_2525115309,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_wrapping_mode_3562716114,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextEdit.LineWrappingMode(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_line_wrapped_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_wrap_count_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_wrap_index_at_column_3175239445,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_wrapped_text_647634434,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_smooth_scroll_enabled_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_smooth_scroll_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_v_scroll_bar() -> VScrollBar {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_v_scroll_bar_3226026593,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VScrollBar(from: __resPtr.pointee)
    }
    public func get_h_scroll_bar() -> HScrollBar {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_h_scroll_bar_3774687988,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return HScrollBar(from: __resPtr.pointee)
    }
    public func set_v_scroll(value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_v_scroll_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_v_scroll_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_h_scroll(value: Int64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_h_scroll_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_h_scroll_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_scroll_past_end_of_file_enabled(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_scroll_past_end_of_file_enabled_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_scroll_past_end_of_file_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_v_scroll_speed(speed: Float64)  {
        withUnsafePointer(to: speed) { speed_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(speed_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_v_scroll_speed_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_v_scroll_speed_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_fit_content_height_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fit_content_height_enabled_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_fit_content_height_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_scroll_pos_for_line_3274652423,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_line_as_first_visible_3023605688,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_first_visible_line_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_line_as_center_visible_3023605688,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_line_as_last_visible_3023605688,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_last_full_visible_line_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_last_full_visible_line_wrap_index() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_last_full_visible_line_wrap_index_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_visible_line_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_visible_line_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_visible_line_count_in_range_3175239445,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_total_visible_line_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func adjust_viewport_to_caret(caret_index: Int64)  {
        withUnsafePointer(to: caret_index) { caret_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(caret_index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_adjust_viewport_to_caret_1995695955,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_center_viewport_to_caret_1995695955,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_draw_minimap_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_drawing_minimap_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_minimap_width(width: Int64)  {
        withUnsafePointer(to: width) { width_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(width_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_minimap_width_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_minimap_width_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_minimap_visible_lines() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_minimap_visible_lines_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func add_gutter(at: Int64)  {
        withUnsafePointer(to: at) { at_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(at_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_gutter_1025054187,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_gutter_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_gutter_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_gutter_name(gutter: Int64, name: String)  {
        withUnsafePointer(to: name) { name_native in
        withUnsafePointer(to: gutter) { gutter_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gutter_native), .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_gutter_name_501894301,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_gutter_name(gutter: Int64) -> String {
        withUnsafePointer(to: gutter) { gutter_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gutter_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_gutter_name_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_gutter_type_1088959071,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_gutter_type_1159699127,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextEdit.GutterType(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_gutter_width_3937882851,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_gutter_width_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_gutter_draw_300928843,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_gutter_drawn_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_gutter_clickable_300928843,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_gutter_clickable_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_gutter_overwritable_300928843,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_gutter_overwritable_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_merge_gutters_3937882851,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_gutter_custom_draw_957362965,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_total_gutter_width_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_line_gutter_metadata_2060538656,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_gutter_metadata_678354945,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
        }
        }
    }
    public func set_line_gutter_text(line: Int64, gutter: Int64, text: String)  {
        withUnsafePointer(to: text) { text_native in
        withUnsafePointer(to: gutter) { gutter_native in
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native), .init(gutter_native), .init(text_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_line_gutter_text_2285447957,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func get_line_gutter_text(line: Int64, gutter: Int64) -> String {
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_gutter_text_1391810591,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_line_gutter_icon_176101966,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_gutter_icon_2584904275,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_line_gutter_item_color_3733378741,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_gutter_item_color_2165839948,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_line_gutter_clickable_1383440665,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_line_gutter_clickable_2522259332,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_line_background_color_2878471219,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_background_color_3457211756,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_syntax_highlighter_2765644541,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_syntax_highlighter_2721131626,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return SyntaxHighlighter(from: __resPtr.pointee)
    }
    public func set_highlight_current_line(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_highlight_current_line_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_highlight_current_line_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_highlight_all_occurrences(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_highlight_all_occurrences_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_highlight_all_occurrences_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_draw_control_chars() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_draw_control_chars_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_draw_control_chars(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_draw_control_chars_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_draw_tabs_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_drawing_tabs_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_draw_spaces(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_draw_spaces_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_drawing_spaces_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_menu() -> PopupMenu {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_menu_229722558,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PopupMenu(from: __resPtr.pointee)
    }
    public func is_menu_visible() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_menu_visible_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func menu_option(option: Int64)  {
        withUnsafePointer(to: option) { option_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(option_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_menu_option_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}