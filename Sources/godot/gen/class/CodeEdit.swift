import godot_native

fileprivate var __godot_name_CodeEdit: StringName! = nil

/// Multiline text control intended for editing code.
/// 
/// CodeEdit is a specialized [TextEdit] designed for editing plain text code files. It contains a bunch of features commonly found in code editors such as line numbers, line folding, code completion, indent management and string / comment management.
///  
/// [b]Note:[/b] By default [CodeEdit] always use left-to-right text direction to correctly display source code.
open class CodeEdit : TextEdit {

    public enum CodeCompletionKind : Int32 {
        case KIND_CLASS = 0
        case KIND_FUNCTION = 1
        case KIND_SIGNAL = 2
        case KIND_VARIABLE = 3
        case KIND_MEMBER = 4
        case KIND_ENUM = 5
        case KIND_CONSTANT = 6
        case KIND_NODE_PATH = 7
        case KIND_FILE_PATH = 8
        case KIND_PLAIN_TEXT = 9
    }

    public override class var __godot_name: StringName { __godot_name_CodeEdit }

    static var _method__confirm_code_completion_0: StringName! = nil
    static var _method__request_code_completion_0: StringName! = nil
    static var _method__filter_code_completion_candidates_0: StringName! = nil
    static var _method_set_indent_size_1286410249: StringName! = nil
    static var _method_get_indent_size_3905245786: StringName! = nil
    static var _method_set_indent_using_spaces_2586408642: StringName! = nil
    static var _method_is_indent_using_spaces_36873697: StringName! = nil
    static var _method_set_auto_indent_enabled_2586408642: StringName! = nil
    static var _method_is_auto_indent_enabled_36873697: StringName! = nil
    static var _method_set_auto_indent_prefixes_381264803: StringName! = nil
    static var _method_get_auto_indent_prefixes_3995934104: StringName! = nil
    static var _method_do_indent_3218959716: StringName! = nil
    static var _method_indent_lines_3218959716: StringName! = nil
    static var _method_unindent_lines_3218959716: StringName! = nil
    static var _method_set_auto_brace_completion_enabled_2586408642: StringName! = nil
    static var _method_is_auto_brace_completion_enabled_36873697: StringName! = nil
    static var _method_set_highlight_matching_braces_enabled_2586408642: StringName! = nil
    static var _method_is_highlight_matching_braces_enabled_36873697: StringName! = nil
    static var _method_add_auto_brace_completion_pair_3186203200: StringName! = nil
    static var _method_set_auto_brace_completion_pairs_4155329257: StringName! = nil
    static var _method_get_auto_brace_completion_pairs_3102165223: StringName! = nil
    static var _method_has_auto_brace_completion_open_key_3927539163: StringName! = nil
    static var _method_has_auto_brace_completion_close_key_3927539163: StringName! = nil
    static var _method_get_auto_brace_completion_close_key_3135753539: StringName! = nil
    static var _method_set_draw_breakpoints_gutter_2586408642: StringName! = nil
    static var _method_is_drawing_breakpoints_gutter_36873697: StringName! = nil
    static var _method_set_draw_bookmarks_gutter_2586408642: StringName! = nil
    static var _method_is_drawing_bookmarks_gutter_36873697: StringName! = nil
    static var _method_set_draw_executing_lines_gutter_2586408642: StringName! = nil
    static var _method_is_drawing_executing_lines_gutter_36873697: StringName! = nil
    static var _method_set_line_as_breakpoint_300928843: StringName! = nil
    static var _method_is_line_breakpointed_1116898809: StringName! = nil
    static var _method_clear_breakpointed_lines_3218959716: StringName! = nil
    static var _method_get_breakpointed_lines_1930428628: StringName! = nil
    static var _method_set_line_as_bookmarked_300928843: StringName! = nil
    static var _method_is_line_bookmarked_1116898809: StringName! = nil
    static var _method_clear_bookmarked_lines_3218959716: StringName! = nil
    static var _method_get_bookmarked_lines_1930428628: StringName! = nil
    static var _method_set_line_as_executing_300928843: StringName! = nil
    static var _method_is_line_executing_1116898809: StringName! = nil
    static var _method_clear_executing_lines_3218959716: StringName! = nil
    static var _method_get_executing_lines_1930428628: StringName! = nil
    static var _method_set_draw_line_numbers_2586408642: StringName! = nil
    static var _method_is_draw_line_numbers_enabled_36873697: StringName! = nil
    static var _method_set_line_numbers_zero_padded_2586408642: StringName! = nil
    static var _method_is_line_numbers_zero_padded_36873697: StringName! = nil
    static var _method_set_draw_fold_gutter_2586408642: StringName! = nil
    static var _method_is_drawing_fold_gutter_36873697: StringName! = nil
    static var _method_set_line_folding_enabled_2586408642: StringName! = nil
    static var _method_is_line_folding_enabled_36873697: StringName! = nil
    static var _method_can_fold_line_1116898809: StringName! = nil
    static var _method_fold_line_1286410249: StringName! = nil
    static var _method_unfold_line_1286410249: StringName! = nil
    static var _method_fold_all_lines_3218959716: StringName! = nil
    static var _method_unfold_all_lines_3218959716: StringName! = nil
    static var _method_toggle_foldable_line_1286410249: StringName! = nil
    static var _method_is_line_folded_1116898809: StringName! = nil
    static var _method_get_folded_lines_3995934104: StringName! = nil
    static var _method_add_string_delimiter_3146098955: StringName! = nil
    static var _method_remove_string_delimiter_83702148: StringName! = nil
    static var _method_has_string_delimiter_3927539163: StringName! = nil
    static var _method_set_string_delimiters_381264803: StringName! = nil
    static var _method_clear_string_delimiters_3218959716: StringName! = nil
    static var _method_get_string_delimiters_3995934104: StringName! = nil
    static var _method_is_in_string_3294126239: StringName! = nil
    static var _method_add_comment_delimiter_3146098955: StringName! = nil
    static var _method_remove_comment_delimiter_83702148: StringName! = nil
    static var _method_has_comment_delimiter_3927539163: StringName! = nil
    static var _method_set_comment_delimiters_381264803: StringName! = nil
    static var _method_clear_comment_delimiters_3218959716: StringName! = nil
    static var _method_get_comment_delimiters_3995934104: StringName! = nil
    static var _method_is_in_comment_3294126239: StringName! = nil
    static var _method_get_delimiter_start_key_844755477: StringName! = nil
    static var _method_get_delimiter_end_key_844755477: StringName! = nil
    static var _method_get_delimiter_start_position_3016396712: StringName! = nil
    static var _method_get_delimiter_end_position_3016396712: StringName! = nil
    static var _method_set_code_hint_83702148: StringName! = nil
    static var _method_set_code_hint_draw_below_2586408642: StringName! = nil
    static var _method_get_text_for_code_completion_201670096: StringName! = nil
    static var _method_request_code_completion_107499316: StringName! = nil
    static var _method_add_code_completion_option_3965792804: StringName! = nil
    static var _method_update_code_completion_options_2586408642: StringName! = nil
    static var _method_get_code_completion_options_3995934104: StringName! = nil
    static var _method_get_code_completion_option_3485342025: StringName! = nil
    static var _method_get_code_completion_selected_index_3905245786: StringName! = nil
    static var _method_set_code_completion_selected_index_1286410249: StringName! = nil
    static var _method_confirm_code_completion_107499316: StringName! = nil
    static var _method_cancel_code_completion_3218959716: StringName! = nil
    static var _method_set_code_completion_enabled_2586408642: StringName! = nil
    static var _method_is_code_completion_enabled_36873697: StringName! = nil
    static var _method_set_code_completion_prefixes_381264803: StringName! = nil
    static var _method_get_code_completion_prefixes_3995934104: StringName! = nil
    static var _method_set_line_length_guidelines_381264803: StringName! = nil
    static var _method_get_line_length_guidelines_3995934104: StringName! = nil
    static var _method_set_symbol_lookup_on_click_enabled_2586408642: StringName! = nil
    static var _method_is_symbol_lookup_on_click_enabled_36873697: StringName! = nil
    static var _method_get_text_for_symbol_lookup_2841200299: StringName! = nil
    static var _method_set_symbol_lookup_word_as_valid_2586408642: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_CodeEdit == nil)
        __godot_name_CodeEdit = StringName(from: "CodeEdit")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_indent_size_1286410249 = StringName(from: "set_indent_size")
        assert(self._method_set_indent_size_1286410249 != nil)
        self._method_get_indent_size_3905245786 = StringName(from: "get_indent_size")
        assert(self._method_get_indent_size_3905245786 != nil)
        self._method_set_indent_using_spaces_2586408642 = StringName(from: "set_indent_using_spaces")
        assert(self._method_set_indent_using_spaces_2586408642 != nil)
        self._method_is_indent_using_spaces_36873697 = StringName(from: "is_indent_using_spaces")
        assert(self._method_is_indent_using_spaces_36873697 != nil)
        self._method_set_auto_indent_enabled_2586408642 = StringName(from: "set_auto_indent_enabled")
        assert(self._method_set_auto_indent_enabled_2586408642 != nil)
        self._method_is_auto_indent_enabled_36873697 = StringName(from: "is_auto_indent_enabled")
        assert(self._method_is_auto_indent_enabled_36873697 != nil)
        self._method_set_auto_indent_prefixes_381264803 = StringName(from: "set_auto_indent_prefixes")
        assert(self._method_set_auto_indent_prefixes_381264803 != nil)
        self._method_get_auto_indent_prefixes_3995934104 = StringName(from: "get_auto_indent_prefixes")
        assert(self._method_get_auto_indent_prefixes_3995934104 != nil)
        self._method_do_indent_3218959716 = StringName(from: "do_indent")
        assert(self._method_do_indent_3218959716 != nil)
        self._method_indent_lines_3218959716 = StringName(from: "indent_lines")
        assert(self._method_indent_lines_3218959716 != nil)
        self._method_unindent_lines_3218959716 = StringName(from: "unindent_lines")
        assert(self._method_unindent_lines_3218959716 != nil)
        self._method_set_auto_brace_completion_enabled_2586408642 = StringName(from: "set_auto_brace_completion_enabled")
        assert(self._method_set_auto_brace_completion_enabled_2586408642 != nil)
        self._method_is_auto_brace_completion_enabled_36873697 = StringName(from: "is_auto_brace_completion_enabled")
        assert(self._method_is_auto_brace_completion_enabled_36873697 != nil)
        self._method_set_highlight_matching_braces_enabled_2586408642 = StringName(from: "set_highlight_matching_braces_enabled")
        assert(self._method_set_highlight_matching_braces_enabled_2586408642 != nil)
        self._method_is_highlight_matching_braces_enabled_36873697 = StringName(from: "is_highlight_matching_braces_enabled")
        assert(self._method_is_highlight_matching_braces_enabled_36873697 != nil)
        self._method_add_auto_brace_completion_pair_3186203200 = StringName(from: "add_auto_brace_completion_pair")
        assert(self._method_add_auto_brace_completion_pair_3186203200 != nil)
        self._method_set_auto_brace_completion_pairs_4155329257 = StringName(from: "set_auto_brace_completion_pairs")
        assert(self._method_set_auto_brace_completion_pairs_4155329257 != nil)
        self._method_get_auto_brace_completion_pairs_3102165223 = StringName(from: "get_auto_brace_completion_pairs")
        assert(self._method_get_auto_brace_completion_pairs_3102165223 != nil)
        self._method_has_auto_brace_completion_open_key_3927539163 = StringName(from: "has_auto_brace_completion_open_key")
        assert(self._method_has_auto_brace_completion_open_key_3927539163 != nil)
        self._method_has_auto_brace_completion_close_key_3927539163 = StringName(from: "has_auto_brace_completion_close_key")
        assert(self._method_has_auto_brace_completion_close_key_3927539163 != nil)
        self._method_get_auto_brace_completion_close_key_3135753539 = StringName(from: "get_auto_brace_completion_close_key")
        assert(self._method_get_auto_brace_completion_close_key_3135753539 != nil)
        self._method_set_draw_breakpoints_gutter_2586408642 = StringName(from: "set_draw_breakpoints_gutter")
        assert(self._method_set_draw_breakpoints_gutter_2586408642 != nil)
        self._method_is_drawing_breakpoints_gutter_36873697 = StringName(from: "is_drawing_breakpoints_gutter")
        assert(self._method_is_drawing_breakpoints_gutter_36873697 != nil)
        self._method_set_draw_bookmarks_gutter_2586408642 = StringName(from: "set_draw_bookmarks_gutter")
        assert(self._method_set_draw_bookmarks_gutter_2586408642 != nil)
        self._method_is_drawing_bookmarks_gutter_36873697 = StringName(from: "is_drawing_bookmarks_gutter")
        assert(self._method_is_drawing_bookmarks_gutter_36873697 != nil)
        self._method_set_draw_executing_lines_gutter_2586408642 = StringName(from: "set_draw_executing_lines_gutter")
        assert(self._method_set_draw_executing_lines_gutter_2586408642 != nil)
        self._method_is_drawing_executing_lines_gutter_36873697 = StringName(from: "is_drawing_executing_lines_gutter")
        assert(self._method_is_drawing_executing_lines_gutter_36873697 != nil)
        self._method_set_line_as_breakpoint_300928843 = StringName(from: "set_line_as_breakpoint")
        assert(self._method_set_line_as_breakpoint_300928843 != nil)
        self._method_is_line_breakpointed_1116898809 = StringName(from: "is_line_breakpointed")
        assert(self._method_is_line_breakpointed_1116898809 != nil)
        self._method_clear_breakpointed_lines_3218959716 = StringName(from: "clear_breakpointed_lines")
        assert(self._method_clear_breakpointed_lines_3218959716 != nil)
        self._method_get_breakpointed_lines_1930428628 = StringName(from: "get_breakpointed_lines")
        assert(self._method_get_breakpointed_lines_1930428628 != nil)
        self._method_set_line_as_bookmarked_300928843 = StringName(from: "set_line_as_bookmarked")
        assert(self._method_set_line_as_bookmarked_300928843 != nil)
        self._method_is_line_bookmarked_1116898809 = StringName(from: "is_line_bookmarked")
        assert(self._method_is_line_bookmarked_1116898809 != nil)
        self._method_clear_bookmarked_lines_3218959716 = StringName(from: "clear_bookmarked_lines")
        assert(self._method_clear_bookmarked_lines_3218959716 != nil)
        self._method_get_bookmarked_lines_1930428628 = StringName(from: "get_bookmarked_lines")
        assert(self._method_get_bookmarked_lines_1930428628 != nil)
        self._method_set_line_as_executing_300928843 = StringName(from: "set_line_as_executing")
        assert(self._method_set_line_as_executing_300928843 != nil)
        self._method_is_line_executing_1116898809 = StringName(from: "is_line_executing")
        assert(self._method_is_line_executing_1116898809 != nil)
        self._method_clear_executing_lines_3218959716 = StringName(from: "clear_executing_lines")
        assert(self._method_clear_executing_lines_3218959716 != nil)
        self._method_get_executing_lines_1930428628 = StringName(from: "get_executing_lines")
        assert(self._method_get_executing_lines_1930428628 != nil)
        self._method_set_draw_line_numbers_2586408642 = StringName(from: "set_draw_line_numbers")
        assert(self._method_set_draw_line_numbers_2586408642 != nil)
        self._method_is_draw_line_numbers_enabled_36873697 = StringName(from: "is_draw_line_numbers_enabled")
        assert(self._method_is_draw_line_numbers_enabled_36873697 != nil)
        self._method_set_line_numbers_zero_padded_2586408642 = StringName(from: "set_line_numbers_zero_padded")
        assert(self._method_set_line_numbers_zero_padded_2586408642 != nil)
        self._method_is_line_numbers_zero_padded_36873697 = StringName(from: "is_line_numbers_zero_padded")
        assert(self._method_is_line_numbers_zero_padded_36873697 != nil)
        self._method_set_draw_fold_gutter_2586408642 = StringName(from: "set_draw_fold_gutter")
        assert(self._method_set_draw_fold_gutter_2586408642 != nil)
        self._method_is_drawing_fold_gutter_36873697 = StringName(from: "is_drawing_fold_gutter")
        assert(self._method_is_drawing_fold_gutter_36873697 != nil)
        self._method_set_line_folding_enabled_2586408642 = StringName(from: "set_line_folding_enabled")
        assert(self._method_set_line_folding_enabled_2586408642 != nil)
        self._method_is_line_folding_enabled_36873697 = StringName(from: "is_line_folding_enabled")
        assert(self._method_is_line_folding_enabled_36873697 != nil)
        self._method_can_fold_line_1116898809 = StringName(from: "can_fold_line")
        assert(self._method_can_fold_line_1116898809 != nil)
        self._method_fold_line_1286410249 = StringName(from: "fold_line")
        assert(self._method_fold_line_1286410249 != nil)
        self._method_unfold_line_1286410249 = StringName(from: "unfold_line")
        assert(self._method_unfold_line_1286410249 != nil)
        self._method_fold_all_lines_3218959716 = StringName(from: "fold_all_lines")
        assert(self._method_fold_all_lines_3218959716 != nil)
        self._method_unfold_all_lines_3218959716 = StringName(from: "unfold_all_lines")
        assert(self._method_unfold_all_lines_3218959716 != nil)
        self._method_toggle_foldable_line_1286410249 = StringName(from: "toggle_foldable_line")
        assert(self._method_toggle_foldable_line_1286410249 != nil)
        self._method_is_line_folded_1116898809 = StringName(from: "is_line_folded")
        assert(self._method_is_line_folded_1116898809 != nil)
        self._method_get_folded_lines_3995934104 = StringName(from: "get_folded_lines")
        assert(self._method_get_folded_lines_3995934104 != nil)
        self._method_add_string_delimiter_3146098955 = StringName(from: "add_string_delimiter")
        assert(self._method_add_string_delimiter_3146098955 != nil)
        self._method_remove_string_delimiter_83702148 = StringName(from: "remove_string_delimiter")
        assert(self._method_remove_string_delimiter_83702148 != nil)
        self._method_has_string_delimiter_3927539163 = StringName(from: "has_string_delimiter")
        assert(self._method_has_string_delimiter_3927539163 != nil)
        self._method_set_string_delimiters_381264803 = StringName(from: "set_string_delimiters")
        assert(self._method_set_string_delimiters_381264803 != nil)
        self._method_clear_string_delimiters_3218959716 = StringName(from: "clear_string_delimiters")
        assert(self._method_clear_string_delimiters_3218959716 != nil)
        self._method_get_string_delimiters_3995934104 = StringName(from: "get_string_delimiters")
        assert(self._method_get_string_delimiters_3995934104 != nil)
        self._method_is_in_string_3294126239 = StringName(from: "is_in_string")
        assert(self._method_is_in_string_3294126239 != nil)
        self._method_add_comment_delimiter_3146098955 = StringName(from: "add_comment_delimiter")
        assert(self._method_add_comment_delimiter_3146098955 != nil)
        self._method_remove_comment_delimiter_83702148 = StringName(from: "remove_comment_delimiter")
        assert(self._method_remove_comment_delimiter_83702148 != nil)
        self._method_has_comment_delimiter_3927539163 = StringName(from: "has_comment_delimiter")
        assert(self._method_has_comment_delimiter_3927539163 != nil)
        self._method_set_comment_delimiters_381264803 = StringName(from: "set_comment_delimiters")
        assert(self._method_set_comment_delimiters_381264803 != nil)
        self._method_clear_comment_delimiters_3218959716 = StringName(from: "clear_comment_delimiters")
        assert(self._method_clear_comment_delimiters_3218959716 != nil)
        self._method_get_comment_delimiters_3995934104 = StringName(from: "get_comment_delimiters")
        assert(self._method_get_comment_delimiters_3995934104 != nil)
        self._method_is_in_comment_3294126239 = StringName(from: "is_in_comment")
        assert(self._method_is_in_comment_3294126239 != nil)
        self._method_get_delimiter_start_key_844755477 = StringName(from: "get_delimiter_start_key")
        assert(self._method_get_delimiter_start_key_844755477 != nil)
        self._method_get_delimiter_end_key_844755477 = StringName(from: "get_delimiter_end_key")
        assert(self._method_get_delimiter_end_key_844755477 != nil)
        self._method_get_delimiter_start_position_3016396712 = StringName(from: "get_delimiter_start_position")
        assert(self._method_get_delimiter_start_position_3016396712 != nil)
        self._method_get_delimiter_end_position_3016396712 = StringName(from: "get_delimiter_end_position")
        assert(self._method_get_delimiter_end_position_3016396712 != nil)
        self._method_set_code_hint_83702148 = StringName(from: "set_code_hint")
        assert(self._method_set_code_hint_83702148 != nil)
        self._method_set_code_hint_draw_below_2586408642 = StringName(from: "set_code_hint_draw_below")
        assert(self._method_set_code_hint_draw_below_2586408642 != nil)
        self._method_get_text_for_code_completion_201670096 = StringName(from: "get_text_for_code_completion")
        assert(self._method_get_text_for_code_completion_201670096 != nil)
        self._method_request_code_completion_107499316 = StringName(from: "request_code_completion")
        assert(self._method_request_code_completion_107499316 != nil)
        self._method_add_code_completion_option_3965792804 = StringName(from: "add_code_completion_option")
        assert(self._method_add_code_completion_option_3965792804 != nil)
        self._method_update_code_completion_options_2586408642 = StringName(from: "update_code_completion_options")
        assert(self._method_update_code_completion_options_2586408642 != nil)
        self._method_get_code_completion_options_3995934104 = StringName(from: "get_code_completion_options")
        assert(self._method_get_code_completion_options_3995934104 != nil)
        self._method_get_code_completion_option_3485342025 = StringName(from: "get_code_completion_option")
        assert(self._method_get_code_completion_option_3485342025 != nil)
        self._method_get_code_completion_selected_index_3905245786 = StringName(from: "get_code_completion_selected_index")
        assert(self._method_get_code_completion_selected_index_3905245786 != nil)
        self._method_set_code_completion_selected_index_1286410249 = StringName(from: "set_code_completion_selected_index")
        assert(self._method_set_code_completion_selected_index_1286410249 != nil)
        self._method_confirm_code_completion_107499316 = StringName(from: "confirm_code_completion")
        assert(self._method_confirm_code_completion_107499316 != nil)
        self._method_cancel_code_completion_3218959716 = StringName(from: "cancel_code_completion")
        assert(self._method_cancel_code_completion_3218959716 != nil)
        self._method_set_code_completion_enabled_2586408642 = StringName(from: "set_code_completion_enabled")
        assert(self._method_set_code_completion_enabled_2586408642 != nil)
        self._method_is_code_completion_enabled_36873697 = StringName(from: "is_code_completion_enabled")
        assert(self._method_is_code_completion_enabled_36873697 != nil)
        self._method_set_code_completion_prefixes_381264803 = StringName(from: "set_code_completion_prefixes")
        assert(self._method_set_code_completion_prefixes_381264803 != nil)
        self._method_get_code_completion_prefixes_3995934104 = StringName(from: "get_code_completion_prefixes")
        assert(self._method_get_code_completion_prefixes_3995934104 != nil)
        self._method_set_line_length_guidelines_381264803 = StringName(from: "set_line_length_guidelines")
        assert(self._method_set_line_length_guidelines_381264803 != nil)
        self._method_get_line_length_guidelines_3995934104 = StringName(from: "get_line_length_guidelines")
        assert(self._method_get_line_length_guidelines_3995934104 != nil)
        self._method_set_symbol_lookup_on_click_enabled_2586408642 = StringName(from: "set_symbol_lookup_on_click_enabled")
        assert(self._method_set_symbol_lookup_on_click_enabled_2586408642 != nil)
        self._method_is_symbol_lookup_on_click_enabled_36873697 = StringName(from: "is_symbol_lookup_on_click_enabled")
        assert(self._method_is_symbol_lookup_on_click_enabled_36873697 != nil)
        self._method_get_text_for_symbol_lookup_2841200299 = StringName(from: "get_text_for_symbol_lookup")
        assert(self._method_get_text_for_symbol_lookup_2841200299 != nil)
        self._method_set_symbol_lookup_word_as_valid_2586408642 = StringName(from: "set_symbol_lookup_word_as_valid")
        assert(self._method_set_symbol_lookup_word_as_valid_2586408642 != nil)
    }

    public func _confirm_code_completion(replace: UInt8)  {
        withUnsafePointer(to: replace) { replace_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(replace_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
        }
    }
    public func _request_code_completion(force: UInt8)  {
        withUnsafePointer(to: force) { force_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(force_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
        }
    }
    public func _filter_code_completion_candidates(candidates: [Dictionary]) -> [Dictionary] {
        let candidates_native = candidates._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(candidates_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return [Dictionary](godot: __resPtr.pointee)
    }
    public func set_indent_size(size: Int64)  {
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_indent_size_1286410249._native_ptr(),
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
    public func get_indent_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_indent_size_3905245786._native_ptr(),
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
    public func set_indent_using_spaces(use_spaces: UInt8)  {
        withUnsafePointer(to: use_spaces) { use_spaces_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(use_spaces_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_indent_using_spaces_2586408642._native_ptr(),
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
    public func is_indent_using_spaces() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_indent_using_spaces_36873697._native_ptr(),
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
    public func set_auto_indent_enabled(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_auto_indent_enabled_2586408642._native_ptr(),
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
    public func is_auto_indent_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_auto_indent_enabled_36873697._native_ptr(),
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
    public func set_auto_indent_prefixes(prefixes: [godot.String])  {
        let prefixes_native = prefixes._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(prefixes_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_auto_indent_prefixes_381264803._native_ptr(),
                    381264803)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_auto_indent_prefixes() -> [godot.String] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_auto_indent_prefixes_3995934104._native_ptr(),
                    3995934104)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [godot.String](godot: __resPtr.pointee)
    }
    public func do_indent()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_do_indent_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func indent_lines()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_indent_lines_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func unindent_lines()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_unindent_lines_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_auto_brace_completion_enabled(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_auto_brace_completion_enabled_2586408642._native_ptr(),
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
    public func is_auto_brace_completion_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_auto_brace_completion_enabled_36873697._native_ptr(),
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
    public func set_highlight_matching_braces_enabled(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_highlight_matching_braces_enabled_2586408642._native_ptr(),
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
    public func is_highlight_matching_braces_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_highlight_matching_braces_enabled_36873697._native_ptr(),
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
    public func add_auto_brace_completion_pair(start_key: godot.String, end_key: godot.String)  {
        let end_key_native = end_key._native_ptr()
        let start_key_native = start_key._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(start_key_native), .init(end_key_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_auto_brace_completion_pair_3186203200._native_ptr(),
                    3186203200)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_auto_brace_completion_pairs(pairs: Dictionary)  {
        let pairs_native = pairs._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pairs_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_auto_brace_completion_pairs_4155329257._native_ptr(),
                    4155329257)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_auto_brace_completion_pairs() -> Dictionary {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_auto_brace_completion_pairs_3102165223._native_ptr(),
                    3102165223)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
    }
    public func has_auto_brace_completion_open_key(open_key: godot.String) -> UInt8 {
        let open_key_native = open_key._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(open_key_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_auto_brace_completion_open_key_3927539163._native_ptr(),
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
    public func has_auto_brace_completion_close_key(close_key: godot.String) -> UInt8 {
        let close_key_native = close_key._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(close_key_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_auto_brace_completion_close_key_3927539163._native_ptr(),
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
    public func get_auto_brace_completion_close_key(open_key: godot.String) -> godot.String {
        let open_key_native = open_key._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(open_key_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_auto_brace_completion_close_key_3135753539._native_ptr(),
                    3135753539)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func set_draw_breakpoints_gutter(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_draw_breakpoints_gutter_2586408642._native_ptr(),
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
    public func is_drawing_breakpoints_gutter() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_drawing_breakpoints_gutter_36873697._native_ptr(),
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
    public func set_draw_bookmarks_gutter(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_draw_bookmarks_gutter_2586408642._native_ptr(),
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
    public func is_drawing_bookmarks_gutter() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_drawing_bookmarks_gutter_36873697._native_ptr(),
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
    public func set_draw_executing_lines_gutter(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_draw_executing_lines_gutter_2586408642._native_ptr(),
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
    public func is_drawing_executing_lines_gutter() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_drawing_executing_lines_gutter_36873697._native_ptr(),
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
    public func set_line_as_breakpoint(line: Int64, breakpointed: UInt8)  {
        withUnsafePointer(to: breakpointed) { breakpointed_native in
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native), .init(breakpointed_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_line_as_breakpoint_300928843._native_ptr(),
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
    public func is_line_breakpointed(line: Int64) -> UInt8 {
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
                    Self._method_is_line_breakpointed_1116898809._native_ptr(),
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
    public func clear_breakpointed_lines()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_breakpointed_lines_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_breakpointed_lines() -> PackedInt32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_breakpointed_lines_1930428628._native_ptr(),
                    1930428628)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
    }
    public func set_line_as_bookmarked(line: Int64, bookmarked: UInt8)  {
        withUnsafePointer(to: bookmarked) { bookmarked_native in
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native), .init(bookmarked_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_line_as_bookmarked_300928843._native_ptr(),
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
    public func is_line_bookmarked(line: Int64) -> UInt8 {
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
                    Self._method_is_line_bookmarked_1116898809._native_ptr(),
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
    public func clear_bookmarked_lines()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_bookmarked_lines_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_bookmarked_lines() -> PackedInt32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_bookmarked_lines_1930428628._native_ptr(),
                    1930428628)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
    }
    public func set_line_as_executing(line: Int64, executing: UInt8)  {
        withUnsafePointer(to: executing) { executing_native in
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native), .init(executing_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_line_as_executing_300928843._native_ptr(),
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
    public func is_line_executing(line: Int64) -> UInt8 {
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
                    Self._method_is_line_executing_1116898809._native_ptr(),
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
    public func clear_executing_lines()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_executing_lines_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_executing_lines() -> PackedInt32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_executing_lines_1930428628._native_ptr(),
                    1930428628)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
    }
    public func set_draw_line_numbers(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_draw_line_numbers_2586408642._native_ptr(),
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
    public func is_draw_line_numbers_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_draw_line_numbers_enabled_36873697._native_ptr(),
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
    public func set_line_numbers_zero_padded(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_line_numbers_zero_padded_2586408642._native_ptr(),
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
    public func is_line_numbers_zero_padded() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_line_numbers_zero_padded_36873697._native_ptr(),
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
    public func set_draw_fold_gutter(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_draw_fold_gutter_2586408642._native_ptr(),
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
    public func is_drawing_fold_gutter() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_drawing_fold_gutter_36873697._native_ptr(),
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
    public func set_line_folding_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_line_folding_enabled_2586408642._native_ptr(),
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
    public func is_line_folding_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_line_folding_enabled_36873697._native_ptr(),
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
    public func can_fold_line(line: Int64) -> UInt8 {
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
                    Self._method_can_fold_line_1116898809._native_ptr(),
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
    public func fold_line(line: Int64)  {
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_fold_line_1286410249._native_ptr(),
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
    public func unfold_line(line: Int64)  {
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_unfold_line_1286410249._native_ptr(),
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
    public func fold_all_lines()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_fold_all_lines_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func unfold_all_lines()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_unfold_all_lines_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func toggle_foldable_line(line: Int64)  {
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_toggle_foldable_line_1286410249._native_ptr(),
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
    public func is_line_folded(line: Int64) -> UInt8 {
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
                    Self._method_is_line_folded_1116898809._native_ptr(),
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
    public func get_folded_lines() -> [Int64] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_folded_lines_3995934104._native_ptr(),
                    3995934104)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Int64](godot: __resPtr.pointee)
    }
    public func add_string_delimiter(start_key: godot.String, end_key: godot.String, line_only: UInt8)  {
        withUnsafePointer(to: line_only) { line_only_native in
        let end_key_native = end_key._native_ptr()
        let start_key_native = start_key._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(start_key_native), .init(end_key_native), .init(line_only_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_string_delimiter_3146098955._native_ptr(),
                    3146098955)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func remove_string_delimiter(start_key: godot.String)  {
        let start_key_native = start_key._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(start_key_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_string_delimiter_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func has_string_delimiter(start_key: godot.String) -> UInt8 {
        let start_key_native = start_key._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(start_key_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_string_delimiter_3927539163._native_ptr(),
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
    public func set_string_delimiters(string_delimiters: [godot.String])  {
        let string_delimiters_native = string_delimiters._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(string_delimiters_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_string_delimiters_381264803._native_ptr(),
                    381264803)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func clear_string_delimiters()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_string_delimiters_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_string_delimiters() -> [godot.String] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_string_delimiters_3995934104._native_ptr(),
                    3995934104)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [godot.String](godot: __resPtr.pointee)
    }
    public func is_in_string(line: Int64, column: Int64) -> Int64 {
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
                    Self._method_is_in_string_3294126239._native_ptr(),
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
    public func add_comment_delimiter(start_key: godot.String, end_key: godot.String, line_only: UInt8)  {
        withUnsafePointer(to: line_only) { line_only_native in
        let end_key_native = end_key._native_ptr()
        let start_key_native = start_key._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(start_key_native), .init(end_key_native), .init(line_only_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_comment_delimiter_3146098955._native_ptr(),
                    3146098955)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func remove_comment_delimiter(start_key: godot.String)  {
        let start_key_native = start_key._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(start_key_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_comment_delimiter_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func has_comment_delimiter(start_key: godot.String) -> UInt8 {
        let start_key_native = start_key._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(start_key_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_comment_delimiter_3927539163._native_ptr(),
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
    public func set_comment_delimiters(comment_delimiters: [godot.String])  {
        let comment_delimiters_native = comment_delimiters._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(comment_delimiters_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_comment_delimiters_381264803._native_ptr(),
                    381264803)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func clear_comment_delimiters()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_comment_delimiters_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_comment_delimiters() -> [godot.String] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_comment_delimiters_3995934104._native_ptr(),
                    3995934104)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [godot.String](godot: __resPtr.pointee)
    }
    public func is_in_comment(line: Int64, column: Int64) -> Int64 {
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
                    Self._method_is_in_comment_3294126239._native_ptr(),
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
    public func get_delimiter_start_key(delimiter_index: Int64) -> godot.String {
        withUnsafePointer(to: delimiter_index) { delimiter_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(delimiter_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_delimiter_start_key_844755477._native_ptr(),
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
    public func get_delimiter_end_key(delimiter_index: Int64) -> godot.String {
        withUnsafePointer(to: delimiter_index) { delimiter_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(delimiter_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_delimiter_end_key_844755477._native_ptr(),
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
    public func get_delimiter_start_position(line: Int64, column: Int64) -> Vector2 {
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
                    Self._method_get_delimiter_start_position_3016396712._native_ptr(),
                    3016396712)
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
    }
    public func get_delimiter_end_position(line: Int64, column: Int64) -> Vector2 {
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
                    Self._method_get_delimiter_end_position_3016396712._native_ptr(),
                    3016396712)
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
    }
    public func set_code_hint(code_hint: godot.String)  {
        let code_hint_native = code_hint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(code_hint_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_code_hint_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_code_hint_draw_below(draw_below: UInt8)  {
        withUnsafePointer(to: draw_below) { draw_below_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(draw_below_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_code_hint_draw_below_2586408642._native_ptr(),
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
    public func get_text_for_code_completion() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_text_for_code_completion_201670096._native_ptr(),
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
    public func request_code_completion(force: UInt8)  {
        withUnsafePointer(to: force) { force_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(force_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_request_code_completion_107499316._native_ptr(),
                    107499316)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_code_completion_option(`type`: CodeEdit.CodeCompletionKind, display_text: godot.String, insert_text: godot.String, text_color: Color, icon: Resource, value: Variant)  {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let value_native = value._native_ptr()
        let icon_native = icon._native_ptr()
        let text_color_native = text_color._native_ptr()
        let insert_text_native = insert_text._native_ptr()
        let display_text_native = display_text._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native), .init(display_text_native), .init(insert_text_native), .init(text_color_native), .init(icon_native), .init(value_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_code_completion_option_3965792804._native_ptr(),
                    3965792804)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func update_code_completion_options(force: UInt8)  {
        withUnsafePointer(to: force) { force_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(force_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_update_code_completion_options_2586408642._native_ptr(),
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
    public func get_code_completion_options() -> [Dictionary] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_code_completion_options_3995934104._native_ptr(),
                    3995934104)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](godot: __resPtr.pointee)
    }
    public func get_code_completion_option(index: Int64) -> Dictionary {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_code_completion_option_3485342025._native_ptr(),
                    3485342025)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
        }
    }
    public func get_code_completion_selected_index() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_code_completion_selected_index_3905245786._native_ptr(),
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
    public func set_code_completion_selected_index(index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_code_completion_selected_index_1286410249._native_ptr(),
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
    public func confirm_code_completion(replace: UInt8)  {
        withUnsafePointer(to: replace) { replace_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(replace_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_confirm_code_completion_107499316._native_ptr(),
                    107499316)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func cancel_code_completion()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_cancel_code_completion_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_code_completion_enabled(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_code_completion_enabled_2586408642._native_ptr(),
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
    public func is_code_completion_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_code_completion_enabled_36873697._native_ptr(),
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
    public func set_code_completion_prefixes(prefixes: [godot.String])  {
        let prefixes_native = prefixes._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(prefixes_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_code_completion_prefixes_381264803._native_ptr(),
                    381264803)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_code_completion_prefixes() -> [godot.String] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_code_completion_prefixes_3995934104._native_ptr(),
                    3995934104)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [godot.String](godot: __resPtr.pointee)
    }
    public func set_line_length_guidelines(guideline_columns: [Int64])  {
        let guideline_columns_native = guideline_columns._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(guideline_columns_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_line_length_guidelines_381264803._native_ptr(),
                    381264803)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_line_length_guidelines() -> [Int64] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_line_length_guidelines_3995934104._native_ptr(),
                    3995934104)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Int64](godot: __resPtr.pointee)
    }
    public func set_symbol_lookup_on_click_enabled(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_symbol_lookup_on_click_enabled_2586408642._native_ptr(),
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
    public func is_symbol_lookup_on_click_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_symbol_lookup_on_click_enabled_36873697._native_ptr(),
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
    public func get_text_for_symbol_lookup() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_text_for_symbol_lookup_2841200299._native_ptr(),
                    2841200299)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func set_symbol_lookup_word_as_valid(valid: UInt8)  {
        withUnsafePointer(to: valid) { valid_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(valid_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_symbol_lookup_word_as_valid_2586408642._native_ptr(),
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
}