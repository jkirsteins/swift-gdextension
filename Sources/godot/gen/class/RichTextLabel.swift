import godot_native

fileprivate var __godot_name_RichTextLabel: StringName! = nil

/// Label that displays rich text.
/// 
/// Rich text can contain custom text, fonts, images and some basic formatting. The label manages these as an internal tag stack. It also adapts itself to given width/heights.
///  
/// [b]Note:[/b] Assignments to [member text] clear the tag stack and reconstruct it from the property's contents. Any edits made to [member text] will erase previous edits made from other manual sources such as [method append_text] and the [code]push_*[/code] / [method pop] methods.
///  
/// [b]Note:[/b] RichTextLabel doesn't support entangled BBCode tags. For example, instead of using [code][b]bold[i]bold italic[/b]italic[/i][/code], use [code][b]bold[i]bold italic[/i][/b][i]italic[/i][/code].
///  
/// [b]Note:[/b] [code]push_*/pop[/code] functions won't affect BBCode.
///  
/// [b]Note:[/b] Unlike [Label], RichTextLabel doesn't have a [i]property[/i] to horizontally align text to the center. Instead, enable [member bbcode_enabled] and surround the text in a [code][center][/code] tag as follows: [code][center]Example[/center][/code]. There is currently no built-in way to vertically align text either, but this can be emulated by relying on anchors/containers and the [member fit_content] property.
public class RichTextLabel : Control {

    public enum ListType : Int32 {
        case LIST_NUMBERS = 0
        case LIST_LETTERS = 1
        case LIST_ROMAN = 2
        case LIST_DOTS = 3
    }
    public enum ItemType : Int32 {
        case ITEM_FRAME = 0
        case ITEM_TEXT = 1
        case ITEM_IMAGE = 2
        case ITEM_NEWLINE = 3
        case ITEM_FONT = 4
        case ITEM_FONT_SIZE = 5
        case ITEM_FONT_FEATURES = 6
        case ITEM_COLOR = 7
        case ITEM_OUTLINE_SIZE = 8
        case ITEM_OUTLINE_COLOR = 9
        case ITEM_UNDERLINE = 10
        case ITEM_STRIKETHROUGH = 11
        case ITEM_PARAGRAPH = 12
        case ITEM_INDENT = 13
        case ITEM_LIST = 14
        case ITEM_TABLE = 15
        case ITEM_FADE = 16
        case ITEM_SHAKE = 17
        case ITEM_WAVE = 18
        case ITEM_TORNADO = 19
        case ITEM_RAINBOW = 20
        case ITEM_BGCOLOR = 21
        case ITEM_FGCOLOR = 22
        case ITEM_META = 23
        case ITEM_HINT = 24
        case ITEM_DROPCAP = 25
        case ITEM_CUSTOMFX = 26
    }

    public override class var __godot_name: StringName { __godot_name_RichTextLabel }

    static var _method_get_parsed_text_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_add_text_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_set_text_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_add_image_3346058748: GDExtensionMethodBindPtr! = nil
    static var _method_newline_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_remove_paragraph_3067735520: GDExtensionMethodBindPtr! = nil
    static var _method_push_font_3014009009: GDExtensionMethodBindPtr! = nil
    static var _method_push_font_size_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_push_normal_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_push_bold_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_push_bold_italics_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_push_italics_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_push_mono_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_push_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_push_outline_size_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_push_outline_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_push_paragraph_1037160898: GDExtensionMethodBindPtr! = nil
    static var _method_push_indent_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_push_list_2241060727: GDExtensionMethodBindPtr! = nil
    static var _method_push_meta_1114965689: GDExtensionMethodBindPtr! = nil
    static var _method_push_hint_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_push_underline_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_push_strikethrough_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_push_table_1125058220: GDExtensionMethodBindPtr! = nil
    static var _method_push_dropcap_311501835: GDExtensionMethodBindPtr! = nil
    static var _method_set_table_column_expand_4258957458: GDExtensionMethodBindPtr! = nil
    static var _method_set_cell_row_background_color_3465483165: GDExtensionMethodBindPtr! = nil
    static var _method_set_cell_border_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_set_cell_size_override_3108078480: GDExtensionMethodBindPtr! = nil
    static var _method_set_cell_padding_2046264180: GDExtensionMethodBindPtr! = nil
    static var _method_push_cell_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_push_fgcolor_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_push_bgcolor_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_push_customfx_2337942958: GDExtensionMethodBindPtr! = nil
    static var _method_pop_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_clear_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_structured_text_bidi_override_55961453: GDExtensionMethodBindPtr! = nil
    static var _method_get_structured_text_bidi_override_3385126229: GDExtensionMethodBindPtr! = nil
    static var _method_set_structured_text_bidi_override_options_381264803: GDExtensionMethodBindPtr! = nil
    static var _method_get_structured_text_bidi_override_options_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_set_text_direction_119160795: GDExtensionMethodBindPtr! = nil
    static var _method_get_text_direction_797257663: GDExtensionMethodBindPtr! = nil
    static var _method_set_language_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_language_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_autowrap_mode_3289138044: GDExtensionMethodBindPtr! = nil
    static var _method_get_autowrap_mode_1549071663: GDExtensionMethodBindPtr! = nil
    static var _method_set_meta_underline_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_meta_underlined_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_hint_underline_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_hint_underlined_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_scroll_active_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_scroll_active_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_scroll_follow_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_scroll_following_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_v_scroll_bar_2630340773: GDExtensionMethodBindPtr! = nil
    static var _method_scroll_to_line_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_scroll_to_paragraph_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_scroll_to_selection_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_tab_size_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_tab_size_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_fit_content_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_fit_content_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_selection_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_selection_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_context_menu_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_context_menu_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_shortcut_keys_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_shortcut_keys_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_deselect_on_focus_loss_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_deselect_on_focus_loss_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_selection_from_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_selection_to_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_select_all_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_selected_text_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_deselect_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_parse_bbcode_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_append_text_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_text_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_is_ready_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_threaded_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_threaded_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_progress_bar_delay_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_progress_bar_delay_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_visible_characters_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_visible_characters_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_visible_characters_behavior_258789322: GDExtensionMethodBindPtr! = nil
    static var _method_set_visible_characters_behavior_3383839701: GDExtensionMethodBindPtr! = nil
    static var _method_set_visible_ratio_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_visible_ratio_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_character_line_3744713108: GDExtensionMethodBindPtr! = nil
    static var _method_get_character_paragraph_3744713108: GDExtensionMethodBindPtr! = nil
    static var _method_get_total_character_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_bbcode_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_using_bbcode_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_visible_line_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_paragraph_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_visible_paragraph_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_content_height_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_content_width_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_offset_4025615559: GDExtensionMethodBindPtr! = nil
    static var _method_get_paragraph_offset_4025615559: GDExtensionMethodBindPtr! = nil
    static var _method_parse_expressions_for_values_1522900837: GDExtensionMethodBindPtr! = nil
    static var _method_set_effects_381264803: GDExtensionMethodBindPtr! = nil
    static var _method_get_effects_2915620761: GDExtensionMethodBindPtr! = nil
    static var _method_install_effect_1114965689: GDExtensionMethodBindPtr! = nil
    static var _method_get_menu_229722558: GDExtensionMethodBindPtr! = nil
    static var _method_is_menu_visible_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_RichTextLabel = StringName(from: "RichTextLabel")

        let _method_get_parsed_text_201670096_name = StringName(from: "get_parsed_text")
        self._method_get_parsed_text_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_parsed_text_201670096_name._native_ptr(), 201670096)
        assert(RichTextLabel._method_get_parsed_text_201670096 != nil)
        let _method_add_text_83702148_name = StringName(from: "add_text")
        self._method_add_text_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_text_83702148_name._native_ptr(), 83702148)
        assert(RichTextLabel._method_add_text_83702148 != nil)
        let _method_set_text_83702148_name = StringName(from: "set_text")
        self._method_set_text_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_text_83702148_name._native_ptr(), 83702148)
        assert(RichTextLabel._method_set_text_83702148 != nil)
        let _method_add_image_3346058748_name = StringName(from: "add_image")
        self._method_add_image_3346058748 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_image_3346058748_name._native_ptr(), 3346058748)
        assert(RichTextLabel._method_add_image_3346058748 != nil)
        let _method_newline_3218959716_name = StringName(from: "newline")
        self._method_newline_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_newline_3218959716_name._native_ptr(), 3218959716)
        assert(RichTextLabel._method_newline_3218959716 != nil)
        let _method_remove_paragraph_3067735520_name = StringName(from: "remove_paragraph")
        self._method_remove_paragraph_3067735520 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_paragraph_3067735520_name._native_ptr(), 3067735520)
        assert(RichTextLabel._method_remove_paragraph_3067735520 != nil)
        let _method_push_font_3014009009_name = StringName(from: "push_font")
        self._method_push_font_3014009009 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_push_font_3014009009_name._native_ptr(), 3014009009)
        assert(RichTextLabel._method_push_font_3014009009 != nil)
        let _method_push_font_size_1286410249_name = StringName(from: "push_font_size")
        self._method_push_font_size_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_push_font_size_1286410249_name._native_ptr(), 1286410249)
        assert(RichTextLabel._method_push_font_size_1286410249 != nil)
        let _method_push_normal_3218959716_name = StringName(from: "push_normal")
        self._method_push_normal_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_push_normal_3218959716_name._native_ptr(), 3218959716)
        assert(RichTextLabel._method_push_normal_3218959716 != nil)
        let _method_push_bold_3218959716_name = StringName(from: "push_bold")
        self._method_push_bold_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_push_bold_3218959716_name._native_ptr(), 3218959716)
        assert(RichTextLabel._method_push_bold_3218959716 != nil)
        let _method_push_bold_italics_3218959716_name = StringName(from: "push_bold_italics")
        self._method_push_bold_italics_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_push_bold_italics_3218959716_name._native_ptr(), 3218959716)
        assert(RichTextLabel._method_push_bold_italics_3218959716 != nil)
        let _method_push_italics_3218959716_name = StringName(from: "push_italics")
        self._method_push_italics_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_push_italics_3218959716_name._native_ptr(), 3218959716)
        assert(RichTextLabel._method_push_italics_3218959716 != nil)
        let _method_push_mono_3218959716_name = StringName(from: "push_mono")
        self._method_push_mono_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_push_mono_3218959716_name._native_ptr(), 3218959716)
        assert(RichTextLabel._method_push_mono_3218959716 != nil)
        let _method_push_color_2920490490_name = StringName(from: "push_color")
        self._method_push_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_push_color_2920490490_name._native_ptr(), 2920490490)
        assert(RichTextLabel._method_push_color_2920490490 != nil)
        let _method_push_outline_size_1286410249_name = StringName(from: "push_outline_size")
        self._method_push_outline_size_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_push_outline_size_1286410249_name._native_ptr(), 1286410249)
        assert(RichTextLabel._method_push_outline_size_1286410249 != nil)
        let _method_push_outline_color_2920490490_name = StringName(from: "push_outline_color")
        self._method_push_outline_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_push_outline_color_2920490490_name._native_ptr(), 2920490490)
        assert(RichTextLabel._method_push_outline_color_2920490490 != nil)
        let _method_push_paragraph_1037160898_name = StringName(from: "push_paragraph")
        self._method_push_paragraph_1037160898 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_push_paragraph_1037160898_name._native_ptr(), 1037160898)
        assert(RichTextLabel._method_push_paragraph_1037160898 != nil)
        let _method_push_indent_1286410249_name = StringName(from: "push_indent")
        self._method_push_indent_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_push_indent_1286410249_name._native_ptr(), 1286410249)
        assert(RichTextLabel._method_push_indent_1286410249 != nil)
        let _method_push_list_2241060727_name = StringName(from: "push_list")
        self._method_push_list_2241060727 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_push_list_2241060727_name._native_ptr(), 2241060727)
        assert(RichTextLabel._method_push_list_2241060727 != nil)
        let _method_push_meta_1114965689_name = StringName(from: "push_meta")
        self._method_push_meta_1114965689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_push_meta_1114965689_name._native_ptr(), 1114965689)
        assert(RichTextLabel._method_push_meta_1114965689 != nil)
        let _method_push_hint_83702148_name = StringName(from: "push_hint")
        self._method_push_hint_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_push_hint_83702148_name._native_ptr(), 83702148)
        assert(RichTextLabel._method_push_hint_83702148 != nil)
        let _method_push_underline_3218959716_name = StringName(from: "push_underline")
        self._method_push_underline_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_push_underline_3218959716_name._native_ptr(), 3218959716)
        assert(RichTextLabel._method_push_underline_3218959716 != nil)
        let _method_push_strikethrough_3218959716_name = StringName(from: "push_strikethrough")
        self._method_push_strikethrough_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_push_strikethrough_3218959716_name._native_ptr(), 3218959716)
        assert(RichTextLabel._method_push_strikethrough_3218959716 != nil)
        let _method_push_table_1125058220_name = StringName(from: "push_table")
        self._method_push_table_1125058220 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_push_table_1125058220_name._native_ptr(), 1125058220)
        assert(RichTextLabel._method_push_table_1125058220 != nil)
        let _method_push_dropcap_311501835_name = StringName(from: "push_dropcap")
        self._method_push_dropcap_311501835 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_push_dropcap_311501835_name._native_ptr(), 311501835)
        assert(RichTextLabel._method_push_dropcap_311501835 != nil)
        let _method_set_table_column_expand_4258957458_name = StringName(from: "set_table_column_expand")
        self._method_set_table_column_expand_4258957458 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_table_column_expand_4258957458_name._native_ptr(), 4258957458)
        assert(RichTextLabel._method_set_table_column_expand_4258957458 != nil)
        let _method_set_cell_row_background_color_3465483165_name = StringName(from: "set_cell_row_background_color")
        self._method_set_cell_row_background_color_3465483165 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_cell_row_background_color_3465483165_name._native_ptr(), 3465483165)
        assert(RichTextLabel._method_set_cell_row_background_color_3465483165 != nil)
        let _method_set_cell_border_color_2920490490_name = StringName(from: "set_cell_border_color")
        self._method_set_cell_border_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_cell_border_color_2920490490_name._native_ptr(), 2920490490)
        assert(RichTextLabel._method_set_cell_border_color_2920490490 != nil)
        let _method_set_cell_size_override_3108078480_name = StringName(from: "set_cell_size_override")
        self._method_set_cell_size_override_3108078480 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_cell_size_override_3108078480_name._native_ptr(), 3108078480)
        assert(RichTextLabel._method_set_cell_size_override_3108078480 != nil)
        let _method_set_cell_padding_2046264180_name = StringName(from: "set_cell_padding")
        self._method_set_cell_padding_2046264180 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_cell_padding_2046264180_name._native_ptr(), 2046264180)
        assert(RichTextLabel._method_set_cell_padding_2046264180 != nil)
        let _method_push_cell_3218959716_name = StringName(from: "push_cell")
        self._method_push_cell_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_push_cell_3218959716_name._native_ptr(), 3218959716)
        assert(RichTextLabel._method_push_cell_3218959716 != nil)
        let _method_push_fgcolor_2920490490_name = StringName(from: "push_fgcolor")
        self._method_push_fgcolor_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_push_fgcolor_2920490490_name._native_ptr(), 2920490490)
        assert(RichTextLabel._method_push_fgcolor_2920490490 != nil)
        let _method_push_bgcolor_2920490490_name = StringName(from: "push_bgcolor")
        self._method_push_bgcolor_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_push_bgcolor_2920490490_name._native_ptr(), 2920490490)
        assert(RichTextLabel._method_push_bgcolor_2920490490 != nil)
        let _method_push_customfx_2337942958_name = StringName(from: "push_customfx")
        self._method_push_customfx_2337942958 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_push_customfx_2337942958_name._native_ptr(), 2337942958)
        assert(RichTextLabel._method_push_customfx_2337942958 != nil)
        let _method_pop_3218959716_name = StringName(from: "pop")
        self._method_pop_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_pop_3218959716_name._native_ptr(), 3218959716)
        assert(RichTextLabel._method_pop_3218959716 != nil)
        let _method_clear_3218959716_name = StringName(from: "clear")
        self._method_clear_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_3218959716_name._native_ptr(), 3218959716)
        assert(RichTextLabel._method_clear_3218959716 != nil)
        let _method_set_structured_text_bidi_override_55961453_name = StringName(from: "set_structured_text_bidi_override")
        self._method_set_structured_text_bidi_override_55961453 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_structured_text_bidi_override_55961453_name._native_ptr(), 55961453)
        assert(RichTextLabel._method_set_structured_text_bidi_override_55961453 != nil)
        let _method_get_structured_text_bidi_override_3385126229_name = StringName(from: "get_structured_text_bidi_override")
        self._method_get_structured_text_bidi_override_3385126229 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_structured_text_bidi_override_3385126229_name._native_ptr(), 3385126229)
        assert(RichTextLabel._method_get_structured_text_bidi_override_3385126229 != nil)
        let _method_set_structured_text_bidi_override_options_381264803_name = StringName(from: "set_structured_text_bidi_override_options")
        self._method_set_structured_text_bidi_override_options_381264803 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_structured_text_bidi_override_options_381264803_name._native_ptr(), 381264803)
        assert(RichTextLabel._method_set_structured_text_bidi_override_options_381264803 != nil)
        let _method_get_structured_text_bidi_override_options_3995934104_name = StringName(from: "get_structured_text_bidi_override_options")
        self._method_get_structured_text_bidi_override_options_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_structured_text_bidi_override_options_3995934104_name._native_ptr(), 3995934104)
        assert(RichTextLabel._method_get_structured_text_bidi_override_options_3995934104 != nil)
        let _method_set_text_direction_119160795_name = StringName(from: "set_text_direction")
        self._method_set_text_direction_119160795 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_text_direction_119160795_name._native_ptr(), 119160795)
        assert(RichTextLabel._method_set_text_direction_119160795 != nil)
        let _method_get_text_direction_797257663_name = StringName(from: "get_text_direction")
        self._method_get_text_direction_797257663 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_text_direction_797257663_name._native_ptr(), 797257663)
        assert(RichTextLabel._method_get_text_direction_797257663 != nil)
        let _method_set_language_83702148_name = StringName(from: "set_language")
        self._method_set_language_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_language_83702148_name._native_ptr(), 83702148)
        assert(RichTextLabel._method_set_language_83702148 != nil)
        let _method_get_language_201670096_name = StringName(from: "get_language")
        self._method_get_language_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_language_201670096_name._native_ptr(), 201670096)
        assert(RichTextLabel._method_get_language_201670096 != nil)
        let _method_set_autowrap_mode_3289138044_name = StringName(from: "set_autowrap_mode")
        self._method_set_autowrap_mode_3289138044 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_autowrap_mode_3289138044_name._native_ptr(), 3289138044)
        assert(RichTextLabel._method_set_autowrap_mode_3289138044 != nil)
        let _method_get_autowrap_mode_1549071663_name = StringName(from: "get_autowrap_mode")
        self._method_get_autowrap_mode_1549071663 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_autowrap_mode_1549071663_name._native_ptr(), 1549071663)
        assert(RichTextLabel._method_get_autowrap_mode_1549071663 != nil)
        let _method_set_meta_underline_2586408642_name = StringName(from: "set_meta_underline")
        self._method_set_meta_underline_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_meta_underline_2586408642_name._native_ptr(), 2586408642)
        assert(RichTextLabel._method_set_meta_underline_2586408642 != nil)
        let _method_is_meta_underlined_36873697_name = StringName(from: "is_meta_underlined")
        self._method_is_meta_underlined_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_meta_underlined_36873697_name._native_ptr(), 36873697)
        assert(RichTextLabel._method_is_meta_underlined_36873697 != nil)
        let _method_set_hint_underline_2586408642_name = StringName(from: "set_hint_underline")
        self._method_set_hint_underline_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_hint_underline_2586408642_name._native_ptr(), 2586408642)
        assert(RichTextLabel._method_set_hint_underline_2586408642 != nil)
        let _method_is_hint_underlined_36873697_name = StringName(from: "is_hint_underlined")
        self._method_is_hint_underlined_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_hint_underlined_36873697_name._native_ptr(), 36873697)
        assert(RichTextLabel._method_is_hint_underlined_36873697 != nil)
        let _method_set_scroll_active_2586408642_name = StringName(from: "set_scroll_active")
        self._method_set_scroll_active_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_scroll_active_2586408642_name._native_ptr(), 2586408642)
        assert(RichTextLabel._method_set_scroll_active_2586408642 != nil)
        let _method_is_scroll_active_36873697_name = StringName(from: "is_scroll_active")
        self._method_is_scroll_active_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_scroll_active_36873697_name._native_ptr(), 36873697)
        assert(RichTextLabel._method_is_scroll_active_36873697 != nil)
        let _method_set_scroll_follow_2586408642_name = StringName(from: "set_scroll_follow")
        self._method_set_scroll_follow_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_scroll_follow_2586408642_name._native_ptr(), 2586408642)
        assert(RichTextLabel._method_set_scroll_follow_2586408642 != nil)
        let _method_is_scroll_following_36873697_name = StringName(from: "is_scroll_following")
        self._method_is_scroll_following_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_scroll_following_36873697_name._native_ptr(), 36873697)
        assert(RichTextLabel._method_is_scroll_following_36873697 != nil)
        let _method_get_v_scroll_bar_2630340773_name = StringName(from: "get_v_scroll_bar")
        self._method_get_v_scroll_bar_2630340773 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_v_scroll_bar_2630340773_name._native_ptr(), 2630340773)
        assert(RichTextLabel._method_get_v_scroll_bar_2630340773 != nil)
        let _method_scroll_to_line_1286410249_name = StringName(from: "scroll_to_line")
        self._method_scroll_to_line_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_scroll_to_line_1286410249_name._native_ptr(), 1286410249)
        assert(RichTextLabel._method_scroll_to_line_1286410249 != nil)
        let _method_scroll_to_paragraph_1286410249_name = StringName(from: "scroll_to_paragraph")
        self._method_scroll_to_paragraph_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_scroll_to_paragraph_1286410249_name._native_ptr(), 1286410249)
        assert(RichTextLabel._method_scroll_to_paragraph_1286410249 != nil)
        let _method_scroll_to_selection_3218959716_name = StringName(from: "scroll_to_selection")
        self._method_scroll_to_selection_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_scroll_to_selection_3218959716_name._native_ptr(), 3218959716)
        assert(RichTextLabel._method_scroll_to_selection_3218959716 != nil)
        let _method_set_tab_size_1286410249_name = StringName(from: "set_tab_size")
        self._method_set_tab_size_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tab_size_1286410249_name._native_ptr(), 1286410249)
        assert(RichTextLabel._method_set_tab_size_1286410249 != nil)
        let _method_get_tab_size_3905245786_name = StringName(from: "get_tab_size")
        self._method_get_tab_size_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tab_size_3905245786_name._native_ptr(), 3905245786)
        assert(RichTextLabel._method_get_tab_size_3905245786 != nil)
        let _method_set_fit_content_2586408642_name = StringName(from: "set_fit_content")
        self._method_set_fit_content_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_fit_content_2586408642_name._native_ptr(), 2586408642)
        assert(RichTextLabel._method_set_fit_content_2586408642 != nil)
        let _method_is_fit_content_enabled_36873697_name = StringName(from: "is_fit_content_enabled")
        self._method_is_fit_content_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_fit_content_enabled_36873697_name._native_ptr(), 36873697)
        assert(RichTextLabel._method_is_fit_content_enabled_36873697 != nil)
        let _method_set_selection_enabled_2586408642_name = StringName(from: "set_selection_enabled")
        self._method_set_selection_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_selection_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(RichTextLabel._method_set_selection_enabled_2586408642 != nil)
        let _method_is_selection_enabled_36873697_name = StringName(from: "is_selection_enabled")
        self._method_is_selection_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_selection_enabled_36873697_name._native_ptr(), 36873697)
        assert(RichTextLabel._method_is_selection_enabled_36873697 != nil)
        let _method_set_context_menu_enabled_2586408642_name = StringName(from: "set_context_menu_enabled")
        self._method_set_context_menu_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_context_menu_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(RichTextLabel._method_set_context_menu_enabled_2586408642 != nil)
        let _method_is_context_menu_enabled_36873697_name = StringName(from: "is_context_menu_enabled")
        self._method_is_context_menu_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_context_menu_enabled_36873697_name._native_ptr(), 36873697)
        assert(RichTextLabel._method_is_context_menu_enabled_36873697 != nil)
        let _method_set_shortcut_keys_enabled_2586408642_name = StringName(from: "set_shortcut_keys_enabled")
        self._method_set_shortcut_keys_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_shortcut_keys_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(RichTextLabel._method_set_shortcut_keys_enabled_2586408642 != nil)
        let _method_is_shortcut_keys_enabled_36873697_name = StringName(from: "is_shortcut_keys_enabled")
        self._method_is_shortcut_keys_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_shortcut_keys_enabled_36873697_name._native_ptr(), 36873697)
        assert(RichTextLabel._method_is_shortcut_keys_enabled_36873697 != nil)
        let _method_set_deselect_on_focus_loss_enabled_2586408642_name = StringName(from: "set_deselect_on_focus_loss_enabled")
        self._method_set_deselect_on_focus_loss_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_deselect_on_focus_loss_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(RichTextLabel._method_set_deselect_on_focus_loss_enabled_2586408642 != nil)
        let _method_is_deselect_on_focus_loss_enabled_36873697_name = StringName(from: "is_deselect_on_focus_loss_enabled")
        self._method_is_deselect_on_focus_loss_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_deselect_on_focus_loss_enabled_36873697_name._native_ptr(), 36873697)
        assert(RichTextLabel._method_is_deselect_on_focus_loss_enabled_36873697 != nil)
        let _method_get_selection_from_3905245786_name = StringName(from: "get_selection_from")
        self._method_get_selection_from_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_selection_from_3905245786_name._native_ptr(), 3905245786)
        assert(RichTextLabel._method_get_selection_from_3905245786 != nil)
        let _method_get_selection_to_3905245786_name = StringName(from: "get_selection_to")
        self._method_get_selection_to_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_selection_to_3905245786_name._native_ptr(), 3905245786)
        assert(RichTextLabel._method_get_selection_to_3905245786 != nil)
        let _method_select_all_3218959716_name = StringName(from: "select_all")
        self._method_select_all_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_select_all_3218959716_name._native_ptr(), 3218959716)
        assert(RichTextLabel._method_select_all_3218959716 != nil)
        let _method_get_selected_text_201670096_name = StringName(from: "get_selected_text")
        self._method_get_selected_text_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_selected_text_201670096_name._native_ptr(), 201670096)
        assert(RichTextLabel._method_get_selected_text_201670096 != nil)
        let _method_deselect_3218959716_name = StringName(from: "deselect")
        self._method_deselect_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_deselect_3218959716_name._native_ptr(), 3218959716)
        assert(RichTextLabel._method_deselect_3218959716 != nil)
        let _method_parse_bbcode_83702148_name = StringName(from: "parse_bbcode")
        self._method_parse_bbcode_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_parse_bbcode_83702148_name._native_ptr(), 83702148)
        assert(RichTextLabel._method_parse_bbcode_83702148 != nil)
        let _method_append_text_83702148_name = StringName(from: "append_text")
        self._method_append_text_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_append_text_83702148_name._native_ptr(), 83702148)
        assert(RichTextLabel._method_append_text_83702148 != nil)
        let _method_get_text_201670096_name = StringName(from: "get_text")
        self._method_get_text_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_text_201670096_name._native_ptr(), 201670096)
        assert(RichTextLabel._method_get_text_201670096 != nil)
        let _method_is_ready_36873697_name = StringName(from: "is_ready")
        self._method_is_ready_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_ready_36873697_name._native_ptr(), 36873697)
        assert(RichTextLabel._method_is_ready_36873697 != nil)
        let _method_set_threaded_2586408642_name = StringName(from: "set_threaded")
        self._method_set_threaded_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_threaded_2586408642_name._native_ptr(), 2586408642)
        assert(RichTextLabel._method_set_threaded_2586408642 != nil)
        let _method_is_threaded_36873697_name = StringName(from: "is_threaded")
        self._method_is_threaded_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_threaded_36873697_name._native_ptr(), 36873697)
        assert(RichTextLabel._method_is_threaded_36873697 != nil)
        let _method_set_progress_bar_delay_1286410249_name = StringName(from: "set_progress_bar_delay")
        self._method_set_progress_bar_delay_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_progress_bar_delay_1286410249_name._native_ptr(), 1286410249)
        assert(RichTextLabel._method_set_progress_bar_delay_1286410249 != nil)
        let _method_get_progress_bar_delay_3905245786_name = StringName(from: "get_progress_bar_delay")
        self._method_get_progress_bar_delay_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_progress_bar_delay_3905245786_name._native_ptr(), 3905245786)
        assert(RichTextLabel._method_get_progress_bar_delay_3905245786 != nil)
        let _method_set_visible_characters_1286410249_name = StringName(from: "set_visible_characters")
        self._method_set_visible_characters_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_visible_characters_1286410249_name._native_ptr(), 1286410249)
        assert(RichTextLabel._method_set_visible_characters_1286410249 != nil)
        let _method_get_visible_characters_3905245786_name = StringName(from: "get_visible_characters")
        self._method_get_visible_characters_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_visible_characters_3905245786_name._native_ptr(), 3905245786)
        assert(RichTextLabel._method_get_visible_characters_3905245786 != nil)
        let _method_get_visible_characters_behavior_258789322_name = StringName(from: "get_visible_characters_behavior")
        self._method_get_visible_characters_behavior_258789322 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_visible_characters_behavior_258789322_name._native_ptr(), 258789322)
        assert(RichTextLabel._method_get_visible_characters_behavior_258789322 != nil)
        let _method_set_visible_characters_behavior_3383839701_name = StringName(from: "set_visible_characters_behavior")
        self._method_set_visible_characters_behavior_3383839701 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_visible_characters_behavior_3383839701_name._native_ptr(), 3383839701)
        assert(RichTextLabel._method_set_visible_characters_behavior_3383839701 != nil)
        let _method_set_visible_ratio_373806689_name = StringName(from: "set_visible_ratio")
        self._method_set_visible_ratio_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_visible_ratio_373806689_name._native_ptr(), 373806689)
        assert(RichTextLabel._method_set_visible_ratio_373806689 != nil)
        let _method_get_visible_ratio_1740695150_name = StringName(from: "get_visible_ratio")
        self._method_get_visible_ratio_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_visible_ratio_1740695150_name._native_ptr(), 1740695150)
        assert(RichTextLabel._method_get_visible_ratio_1740695150 != nil)
        let _method_get_character_line_3744713108_name = StringName(from: "get_character_line")
        self._method_get_character_line_3744713108 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_character_line_3744713108_name._native_ptr(), 3744713108)
        assert(RichTextLabel._method_get_character_line_3744713108 != nil)
        let _method_get_character_paragraph_3744713108_name = StringName(from: "get_character_paragraph")
        self._method_get_character_paragraph_3744713108 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_character_paragraph_3744713108_name._native_ptr(), 3744713108)
        assert(RichTextLabel._method_get_character_paragraph_3744713108 != nil)
        let _method_get_total_character_count_3905245786_name = StringName(from: "get_total_character_count")
        self._method_get_total_character_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_total_character_count_3905245786_name._native_ptr(), 3905245786)
        assert(RichTextLabel._method_get_total_character_count_3905245786 != nil)
        let _method_set_use_bbcode_2586408642_name = StringName(from: "set_use_bbcode")
        self._method_set_use_bbcode_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_use_bbcode_2586408642_name._native_ptr(), 2586408642)
        assert(RichTextLabel._method_set_use_bbcode_2586408642 != nil)
        let _method_is_using_bbcode_36873697_name = StringName(from: "is_using_bbcode")
        self._method_is_using_bbcode_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_using_bbcode_36873697_name._native_ptr(), 36873697)
        assert(RichTextLabel._method_is_using_bbcode_36873697 != nil)
        let _method_get_line_count_3905245786_name = StringName(from: "get_line_count")
        self._method_get_line_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_line_count_3905245786_name._native_ptr(), 3905245786)
        assert(RichTextLabel._method_get_line_count_3905245786 != nil)
        let _method_get_visible_line_count_3905245786_name = StringName(from: "get_visible_line_count")
        self._method_get_visible_line_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_visible_line_count_3905245786_name._native_ptr(), 3905245786)
        assert(RichTextLabel._method_get_visible_line_count_3905245786 != nil)
        let _method_get_paragraph_count_3905245786_name = StringName(from: "get_paragraph_count")
        self._method_get_paragraph_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_paragraph_count_3905245786_name._native_ptr(), 3905245786)
        assert(RichTextLabel._method_get_paragraph_count_3905245786 != nil)
        let _method_get_visible_paragraph_count_3905245786_name = StringName(from: "get_visible_paragraph_count")
        self._method_get_visible_paragraph_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_visible_paragraph_count_3905245786_name._native_ptr(), 3905245786)
        assert(RichTextLabel._method_get_visible_paragraph_count_3905245786 != nil)
        let _method_get_content_height_3905245786_name = StringName(from: "get_content_height")
        self._method_get_content_height_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_content_height_3905245786_name._native_ptr(), 3905245786)
        assert(RichTextLabel._method_get_content_height_3905245786 != nil)
        let _method_get_content_width_3905245786_name = StringName(from: "get_content_width")
        self._method_get_content_width_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_content_width_3905245786_name._native_ptr(), 3905245786)
        assert(RichTextLabel._method_get_content_width_3905245786 != nil)
        let _method_get_line_offset_4025615559_name = StringName(from: "get_line_offset")
        self._method_get_line_offset_4025615559 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_line_offset_4025615559_name._native_ptr(), 4025615559)
        assert(RichTextLabel._method_get_line_offset_4025615559 != nil)
        let _method_get_paragraph_offset_4025615559_name = StringName(from: "get_paragraph_offset")
        self._method_get_paragraph_offset_4025615559 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_paragraph_offset_4025615559_name._native_ptr(), 4025615559)
        assert(RichTextLabel._method_get_paragraph_offset_4025615559 != nil)
        let _method_parse_expressions_for_values_1522900837_name = StringName(from: "parse_expressions_for_values")
        self._method_parse_expressions_for_values_1522900837 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_parse_expressions_for_values_1522900837_name._native_ptr(), 1522900837)
        assert(RichTextLabel._method_parse_expressions_for_values_1522900837 != nil)
        let _method_set_effects_381264803_name = StringName(from: "set_effects")
        self._method_set_effects_381264803 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_effects_381264803_name._native_ptr(), 381264803)
        assert(RichTextLabel._method_set_effects_381264803 != nil)
        let _method_get_effects_2915620761_name = StringName(from: "get_effects")
        self._method_get_effects_2915620761 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_effects_2915620761_name._native_ptr(), 2915620761)
        assert(RichTextLabel._method_get_effects_2915620761 != nil)
        let _method_install_effect_1114965689_name = StringName(from: "install_effect")
        self._method_install_effect_1114965689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_install_effect_1114965689_name._native_ptr(), 1114965689)
        assert(RichTextLabel._method_install_effect_1114965689 != nil)
        let _method_get_menu_229722558_name = StringName(from: "get_menu")
        self._method_get_menu_229722558 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_menu_229722558_name._native_ptr(), 229722558)
        assert(RichTextLabel._method_get_menu_229722558 != nil)
        let _method_is_menu_visible_36873697_name = StringName(from: "is_menu_visible")
        self._method_is_menu_visible_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_menu_visible_36873697_name._native_ptr(), 36873697)
        assert(RichTextLabel._method_is_menu_visible_36873697 != nil)
    }

    public func get_parsed_text() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_parsed_text_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func add_text(text: String)  {
        withUnsafePointer(to: text) { text_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(text_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_text_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
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
    public func add_image(image: Texture2D, width: Int64, height: Int64, color: Color, inline_align: InlineAlignment, region: Rect2)  {
        withUnsafePointer(to: height) { height_native in
        withUnsafePointer(to: width) { width_native in
        withUnsafePointer(to: inline_align.rawValue) { inline_align_native in
        let region_native = region._native_ptr()
        let color_native = color._native_ptr()
        let image_native = image._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(image_native), .init(width_native), .init(height_native), .init(color_native), .init(inline_align_native), .init(region_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_image_3346058748,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func newline()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_newline_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_paragraph(paragraph: Int64) -> UInt8 {
        withUnsafePointer(to: paragraph) { paragraph_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(paragraph_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_paragraph_3067735520,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func push_font(font: Font, font_size: Int64)  {
        withUnsafePointer(to: font_size) { font_size_native in
        let font_native = font._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_native), .init(font_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_push_font_3014009009,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func push_font_size(font_size: Int64)  {
        withUnsafePointer(to: font_size) { font_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_push_font_size_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func push_normal()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_push_normal_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func push_bold()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_push_bold_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func push_bold_italics()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_push_bold_italics_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func push_italics()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_push_italics_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func push_mono()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_push_mono_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func push_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_push_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func push_outline_size(outline_size: Int64)  {
        withUnsafePointer(to: outline_size) { outline_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(outline_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_push_outline_size_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func push_outline_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_push_outline_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func push_paragraph(alignment: HorizontalAlignment, base_direction: Control.TextDirection, language: String, st_parser: TextServer.StructuredTextParser)  {
        withUnsafePointer(to: language) { language_native in
        withUnsafePointer(to: st_parser.rawValue) { st_parser_native in
        withUnsafePointer(to: base_direction.rawValue) { base_direction_native in
        withUnsafePointer(to: alignment.rawValue) { alignment_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(alignment_native), .init(base_direction_native), .init(language_native), .init(st_parser_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_push_paragraph_1037160898,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
        }
    }
    public func push_indent(level: Int64)  {
        withUnsafePointer(to: level) { level_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(level_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_push_indent_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func push_list(level: Int64, `type`: RichTextLabel.ListType, capitalize: UInt8)  {
        withUnsafePointer(to: capitalize) { capitalize_native in
        withUnsafePointer(to: level) { level_native in
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(level_native), .init(type_native), .init(capitalize_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_push_list_2241060727,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func push_meta(data: Variant)  {
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(data_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_push_meta_1114965689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func push_hint(description: String)  {
        withUnsafePointer(to: description) { description_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(description_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_push_hint_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func push_underline()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_push_underline_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func push_strikethrough()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_push_strikethrough_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func push_table(columns: Int64, inline_align: InlineAlignment, align_to_row: Int64)  {
        withUnsafePointer(to: align_to_row) { align_to_row_native in
        withUnsafePointer(to: columns) { columns_native in
        withUnsafePointer(to: inline_align.rawValue) { inline_align_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(columns_native), .init(inline_align_native), .init(align_to_row_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_push_table_1125058220,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func push_dropcap(string: String, font: Font, size: Int64, dropcap_margins: Rect2, color: Color, outline_size: Int64, outline_color: Color)  {
        withUnsafePointer(to: outline_size) { outline_size_native in
        withUnsafePointer(to: size) { size_native in
        withUnsafePointer(to: string) { string_native in
        let outline_color_native = outline_color._native_ptr()
        let color_native = color._native_ptr()
        let dropcap_margins_native = dropcap_margins._native_ptr()
        let font_native = font._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 7)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(string_native), .init(font_native), .init(size_native), .init(dropcap_margins_native), .init(color_native), .init(outline_size_native), .init(outline_color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_push_dropcap_311501835,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func set_table_column_expand(column: Int64, expand: UInt8, ratio: Int64)  {
        withUnsafePointer(to: ratio) { ratio_native in
        withUnsafePointer(to: expand) { expand_native in
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(expand_native), .init(ratio_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_table_column_expand_4258957458,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func set_cell_row_background_color(odd_row_bg: Color, even_row_bg: Color)  {
        let even_row_bg_native = even_row_bg._native_ptr()
        let odd_row_bg_native = odd_row_bg._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(odd_row_bg_native), .init(even_row_bg_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cell_row_background_color_3465483165,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_cell_border_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cell_border_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_cell_size_override(min_size: Vector2, max_size: Vector2)  {
        let max_size_native = max_size._native_ptr()
        let min_size_native = min_size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(min_size_native), .init(max_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cell_size_override_3108078480,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_cell_padding(padding: Rect2)  {
        let padding_native = padding._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(padding_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cell_padding_2046264180,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func push_cell()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_push_cell_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func push_fgcolor(fgcolor: Color)  {
        let fgcolor_native = fgcolor._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(fgcolor_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_push_fgcolor_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func push_bgcolor(bgcolor: Color)  {
        let bgcolor_native = bgcolor._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bgcolor_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_push_bgcolor_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func push_customfx(effect: RichTextEffect, env: Dictionary)  {
        let env_native = env._native_ptr()
        let effect_native = effect._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(effect_native), .init(env_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_push_customfx_2337942958,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func pop()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_pop_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
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
    public func set_autowrap_mode(autowrap_mode: TextServer.AutowrapMode)  {
        withUnsafePointer(to: autowrap_mode.rawValue) { autowrap_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(autowrap_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_autowrap_mode_3289138044,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_autowrap_mode() -> TextServer.AutowrapMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_autowrap_mode_1549071663,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.AutowrapMode(from: __resPtr.pointee)
    }
    public func set_meta_underline(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_meta_underline_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_meta_underlined() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_meta_underlined_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_hint_underline(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_hint_underline_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_hint_underlined() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_hint_underlined_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_scroll_active(active: UInt8)  {
        withUnsafePointer(to: active) { active_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(active_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_scroll_active_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_scroll_active() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_scroll_active_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_scroll_follow(follow: UInt8)  {
        withUnsafePointer(to: follow) { follow_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(follow_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_scroll_follow_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_scroll_following() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_scroll_following_36873697,
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
                    Self._method_get_v_scroll_bar_2630340773,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VScrollBar(from: __resPtr.pointee)
    }
    public func scroll_to_line(line: Int64)  {
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_scroll_to_line_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func scroll_to_paragraph(paragraph: Int64)  {
        withUnsafePointer(to: paragraph) { paragraph_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(paragraph_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_scroll_to_paragraph_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func scroll_to_selection()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_scroll_to_selection_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_tab_size(spaces: Int64)  {
        withUnsafePointer(to: spaces) { spaces_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(spaces_native)
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
    public func set_fit_content(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fit_content_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_fit_content_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_fit_content_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_selection_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_selection_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_selection_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_selection_enabled_36873697,
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
    public func get_selection_from() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_selection_from_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_selection_to() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_selection_to_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
    public func get_selected_text() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_selected_text_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func deselect()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_deselect_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func parse_bbcode(bbcode: String)  {
        withUnsafePointer(to: bbcode) { bbcode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bbcode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_parse_bbcode_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func append_text(bbcode: String)  {
        withUnsafePointer(to: bbcode) { bbcode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bbcode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_append_text_83702148,
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
    public func is_ready() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_ready_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_threaded(threaded: UInt8)  {
        withUnsafePointer(to: threaded) { threaded_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(threaded_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_threaded_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_threaded() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_threaded_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_progress_bar_delay(delay_ms: Int64)  {
        withUnsafePointer(to: delay_ms) { delay_ms_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(delay_ms_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_progress_bar_delay_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_progress_bar_delay() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_progress_bar_delay_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_visible_characters(amount: Int64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_visible_characters_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_visible_characters() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_visible_characters_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_visible_characters_behavior() -> TextServer.VisibleCharactersBehavior {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_visible_characters_behavior_258789322,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.VisibleCharactersBehavior(from: __resPtr.pointee)
    }
    public func set_visible_characters_behavior(behavior: TextServer.VisibleCharactersBehavior)  {
        withUnsafePointer(to: behavior.rawValue) { behavior_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(behavior_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_visible_characters_behavior_3383839701,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_visible_ratio(ratio: Float64)  {
        withUnsafePointer(to: ratio) { ratio_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ratio_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_visible_ratio_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_visible_ratio() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_visible_ratio_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func get_character_line(character: Int64) -> Int64 {
        withUnsafePointer(to: character) { character_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(character_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_character_line_3744713108,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func get_character_paragraph(character: Int64) -> Int64 {
        withUnsafePointer(to: character) { character_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(character_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_character_paragraph_3744713108,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func get_total_character_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_total_character_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_use_bbcode(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_use_bbcode_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_using_bbcode() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_using_bbcode_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
    public func get_paragraph_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_paragraph_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_visible_paragraph_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_visible_paragraph_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_content_height() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_content_height_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_content_width() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_content_width_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_line_offset(line: Int64) -> Float64 {
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
                    Self._method_get_line_offset_4025615559,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func get_paragraph_offset(paragraph: Int64) -> Float64 {
        withUnsafePointer(to: paragraph) { paragraph_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(paragraph_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_paragraph_offset_4025615559,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func parse_expressions_for_values(expressions: PackedStringArray) -> Dictionary {
        let expressions_native = expressions._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(expressions_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_parse_expressions_for_values_1522900837,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
    }
    public func set_effects(effects: Array)  {
        let effects_native = effects._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(effects_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_effects_381264803,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_effects() -> Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_effects_2915620761,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(from: __resPtr.pointee)
    }
    public func install_effect(effect: Variant)  {
        let effect_native = effect._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(effect_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_install_effect_1114965689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
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
}