import godot_native

fileprivate var __godot_name_LineEdit: StringName! = nil

/// Control that provides single-line string editing.
/// 
/// LineEdit provides a single-line string editor, used for text fields.
///  
/// It features many built-in shortcuts which will always be available ([kbd]Ctrl[/kbd] here maps to [kbd]Cmd[/kbd] on macOS):
///  
/// - [kbd]Ctrl + C[/kbd]: Copy
///  
/// - [kbd]Ctrl + X[/kbd]: Cut
///  
/// - [kbd]Ctrl + V[/kbd] or [kbd]Ctrl + Y[/kbd]: Paste/"yank"
///  
/// - [kbd]Ctrl + Z[/kbd]: Undo
///  
/// - [kbd]Ctrl + ~[/kbd]: Swap input direction.
///  
/// - [kbd]Ctrl + Shift + Z[/kbd]: Redo
///  
/// - [kbd]Ctrl + U[/kbd]: Delete text from the caret position to the beginning of the line
///  
/// - [kbd]Ctrl + K[/kbd]: Delete text from the caret position to the end of the line
///  
/// - [kbd]Ctrl + A[/kbd]: Select all text
///  
/// - [kbd]Up Arrow[/kbd]/[kbd]Down Arrow[/kbd]: Move the caret to the beginning/end of the line
///  
/// On macOS, some extra keyboard shortcuts are available:
///  
/// - [kbd]Ctrl + F[/kbd]: Same as [kbd]Right Arrow[/kbd], move the caret one character right
///  
/// - [kbd]Ctrl + B[/kbd]: Same as [kbd]Left Arrow[/kbd], move the caret one character left
///  
/// - [kbd]Ctrl + P[/kbd]: Same as [kbd]Up Arrow[/kbd], move the caret to the previous line
///  
/// - [kbd]Ctrl + N[/kbd]: Same as [kbd]Down Arrow[/kbd], move the caret to the next line
///  
/// - [kbd]Ctrl + D[/kbd]: Same as [kbd]Delete[/kbd], delete the character on the right side of caret
///  
/// - [kbd]Ctrl + H[/kbd]: Same as [kbd]Backspace[/kbd], delete the character on the left side of the caret
///  
/// - [kbd]Ctrl + A[/kbd]: Same as [kbd]Home[/kbd], move the caret to the beginning of the line
///  
/// - [kbd]Ctrl + E[/kbd]: Same as [kbd]End[/kbd], move the caret to the end of the line
///  
/// - [kbd]Cmd + Left Arrow[/kbd]: Same as [kbd]Home[/kbd], move the caret to the beginning of the line
///  
/// - [kbd]Cmd + Right Arrow[/kbd]: Same as [kbd]End[/kbd], move the caret to the end of the line
public class LineEdit : Control {

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

    public override class var __godot_name: StringName { __godot_name_LineEdit }

    static var _method_set_horizontal_alignment_2312603777: GDExtensionMethodBindPtr! = nil
    static var _method_get_horizontal_alignment_341400642: GDExtensionMethodBindPtr! = nil
    static var _method_clear_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_select_1328111411: GDExtensionMethodBindPtr! = nil
    static var _method_select_all_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_deselect_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_has_selection_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_selection_from_column_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_selection_to_column_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_text_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_text_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_draw_control_chars_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_draw_control_chars_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_set_text_direction_119160795: GDExtensionMethodBindPtr! = nil
    static var _method_get_text_direction_797257663: GDExtensionMethodBindPtr! = nil
    static var _method_set_language_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_language_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_structured_text_bidi_override_55961453: GDExtensionMethodBindPtr! = nil
    static var _method_get_structured_text_bidi_override_3385126229: GDExtensionMethodBindPtr! = nil
    static var _method_set_structured_text_bidi_override_options_381264803: GDExtensionMethodBindPtr! = nil
    static var _method_get_structured_text_bidi_override_options_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_set_placeholder_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_placeholder_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_caret_column_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_caret_column_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_scroll_offset_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_expand_to_text_length_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_expand_to_text_length_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_caret_blink_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_caret_blink_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_caret_mid_grapheme_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_caret_mid_grapheme_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_caret_force_displayed_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_caret_force_displayed_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_caret_blink_interval_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_caret_blink_interval_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_max_length_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_length_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_insert_text_at_caret_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_delete_char_at_caret_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_delete_text_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_set_editable_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_editable_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_secret_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_secret_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_secret_character_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_secret_character_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_menu_option_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_menu_229722558: GDExtensionMethodBindPtr! = nil
    static var _method_is_menu_visible_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_context_menu_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_context_menu_enabled_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_set_virtual_keyboard_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_virtual_keyboard_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_virtual_keyboard_type_2696893573: GDExtensionMethodBindPtr! = nil
    static var _method_get_virtual_keyboard_type_1928699316: GDExtensionMethodBindPtr! = nil
    static var _method_set_clear_button_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_clear_button_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_shortcut_keys_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_shortcut_keys_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_middle_mouse_paste_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_middle_mouse_paste_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_selecting_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_selecting_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_deselect_on_focus_loss_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_deselect_on_focus_loss_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_right_icon_4051416890: GDExtensionMethodBindPtr! = nil
    static var _method_get_right_icon_255860311: GDExtensionMethodBindPtr! = nil
    static var _method_set_flat_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_flat_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_select_all_on_focus_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_select_all_on_focus_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_LineEdit = StringName(from: "LineEdit")

        let _method_set_horizontal_alignment_2312603777_name = StringName(from: "set_horizontal_alignment")
        self._method_set_horizontal_alignment_2312603777 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_horizontal_alignment_2312603777_name._native_ptr(), 2312603777)
        assert(LineEdit._method_set_horizontal_alignment_2312603777 != nil)
        let _method_get_horizontal_alignment_341400642_name = StringName(from: "get_horizontal_alignment")
        self._method_get_horizontal_alignment_341400642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_horizontal_alignment_341400642_name._native_ptr(), 341400642)
        assert(LineEdit._method_get_horizontal_alignment_341400642 != nil)
        let _method_clear_3218959716_name = StringName(from: "clear")
        self._method_clear_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_3218959716_name._native_ptr(), 3218959716)
        assert(LineEdit._method_clear_3218959716 != nil)
        let _method_select_1328111411_name = StringName(from: "select")
        self._method_select_1328111411 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_select_1328111411_name._native_ptr(), 1328111411)
        assert(LineEdit._method_select_1328111411 != nil)
        let _method_select_all_3218959716_name = StringName(from: "select_all")
        self._method_select_all_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_select_all_3218959716_name._native_ptr(), 3218959716)
        assert(LineEdit._method_select_all_3218959716 != nil)
        let _method_deselect_3218959716_name = StringName(from: "deselect")
        self._method_deselect_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_deselect_3218959716_name._native_ptr(), 3218959716)
        assert(LineEdit._method_deselect_3218959716 != nil)
        let _method_has_selection_36873697_name = StringName(from: "has_selection")
        self._method_has_selection_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_selection_36873697_name._native_ptr(), 36873697)
        assert(LineEdit._method_has_selection_36873697 != nil)
        let _method_get_selection_from_column_3905245786_name = StringName(from: "get_selection_from_column")
        self._method_get_selection_from_column_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_selection_from_column_3905245786_name._native_ptr(), 3905245786)
        assert(LineEdit._method_get_selection_from_column_3905245786 != nil)
        let _method_get_selection_to_column_3905245786_name = StringName(from: "get_selection_to_column")
        self._method_get_selection_to_column_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_selection_to_column_3905245786_name._native_ptr(), 3905245786)
        assert(LineEdit._method_get_selection_to_column_3905245786 != nil)
        let _method_set_text_83702148_name = StringName(from: "set_text")
        self._method_set_text_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_text_83702148_name._native_ptr(), 83702148)
        assert(LineEdit._method_set_text_83702148 != nil)
        let _method_get_text_201670096_name = StringName(from: "get_text")
        self._method_get_text_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_text_201670096_name._native_ptr(), 201670096)
        assert(LineEdit._method_get_text_201670096 != nil)
        let _method_get_draw_control_chars_36873697_name = StringName(from: "get_draw_control_chars")
        self._method_get_draw_control_chars_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_draw_control_chars_36873697_name._native_ptr(), 36873697)
        assert(LineEdit._method_get_draw_control_chars_36873697 != nil)
        let _method_set_draw_control_chars_2586408642_name = StringName(from: "set_draw_control_chars")
        self._method_set_draw_control_chars_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_draw_control_chars_2586408642_name._native_ptr(), 2586408642)
        assert(LineEdit._method_set_draw_control_chars_2586408642 != nil)
        let _method_set_text_direction_119160795_name = StringName(from: "set_text_direction")
        self._method_set_text_direction_119160795 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_text_direction_119160795_name._native_ptr(), 119160795)
        assert(LineEdit._method_set_text_direction_119160795 != nil)
        let _method_get_text_direction_797257663_name = StringName(from: "get_text_direction")
        self._method_get_text_direction_797257663 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_text_direction_797257663_name._native_ptr(), 797257663)
        assert(LineEdit._method_get_text_direction_797257663 != nil)
        let _method_set_language_83702148_name = StringName(from: "set_language")
        self._method_set_language_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_language_83702148_name._native_ptr(), 83702148)
        assert(LineEdit._method_set_language_83702148 != nil)
        let _method_get_language_201670096_name = StringName(from: "get_language")
        self._method_get_language_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_language_201670096_name._native_ptr(), 201670096)
        assert(LineEdit._method_get_language_201670096 != nil)
        let _method_set_structured_text_bidi_override_55961453_name = StringName(from: "set_structured_text_bidi_override")
        self._method_set_structured_text_bidi_override_55961453 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_structured_text_bidi_override_55961453_name._native_ptr(), 55961453)
        assert(LineEdit._method_set_structured_text_bidi_override_55961453 != nil)
        let _method_get_structured_text_bidi_override_3385126229_name = StringName(from: "get_structured_text_bidi_override")
        self._method_get_structured_text_bidi_override_3385126229 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_structured_text_bidi_override_3385126229_name._native_ptr(), 3385126229)
        assert(LineEdit._method_get_structured_text_bidi_override_3385126229 != nil)
        let _method_set_structured_text_bidi_override_options_381264803_name = StringName(from: "set_structured_text_bidi_override_options")
        self._method_set_structured_text_bidi_override_options_381264803 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_structured_text_bidi_override_options_381264803_name._native_ptr(), 381264803)
        assert(LineEdit._method_set_structured_text_bidi_override_options_381264803 != nil)
        let _method_get_structured_text_bidi_override_options_3995934104_name = StringName(from: "get_structured_text_bidi_override_options")
        self._method_get_structured_text_bidi_override_options_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_structured_text_bidi_override_options_3995934104_name._native_ptr(), 3995934104)
        assert(LineEdit._method_get_structured_text_bidi_override_options_3995934104 != nil)
        let _method_set_placeholder_83702148_name = StringName(from: "set_placeholder")
        self._method_set_placeholder_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_placeholder_83702148_name._native_ptr(), 83702148)
        assert(LineEdit._method_set_placeholder_83702148 != nil)
        let _method_get_placeholder_201670096_name = StringName(from: "get_placeholder")
        self._method_get_placeholder_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_placeholder_201670096_name._native_ptr(), 201670096)
        assert(LineEdit._method_get_placeholder_201670096 != nil)
        let _method_set_caret_column_1286410249_name = StringName(from: "set_caret_column")
        self._method_set_caret_column_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_caret_column_1286410249_name._native_ptr(), 1286410249)
        assert(LineEdit._method_set_caret_column_1286410249 != nil)
        let _method_get_caret_column_3905245786_name = StringName(from: "get_caret_column")
        self._method_get_caret_column_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_caret_column_3905245786_name._native_ptr(), 3905245786)
        assert(LineEdit._method_get_caret_column_3905245786 != nil)
        let _method_get_scroll_offset_1740695150_name = StringName(from: "get_scroll_offset")
        self._method_get_scroll_offset_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_scroll_offset_1740695150_name._native_ptr(), 1740695150)
        assert(LineEdit._method_get_scroll_offset_1740695150 != nil)
        let _method_set_expand_to_text_length_enabled_2586408642_name = StringName(from: "set_expand_to_text_length_enabled")
        self._method_set_expand_to_text_length_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_expand_to_text_length_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(LineEdit._method_set_expand_to_text_length_enabled_2586408642 != nil)
        let _method_is_expand_to_text_length_enabled_36873697_name = StringName(from: "is_expand_to_text_length_enabled")
        self._method_is_expand_to_text_length_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_expand_to_text_length_enabled_36873697_name._native_ptr(), 36873697)
        assert(LineEdit._method_is_expand_to_text_length_enabled_36873697 != nil)
        let _method_set_caret_blink_enabled_2586408642_name = StringName(from: "set_caret_blink_enabled")
        self._method_set_caret_blink_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_caret_blink_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(LineEdit._method_set_caret_blink_enabled_2586408642 != nil)
        let _method_is_caret_blink_enabled_36873697_name = StringName(from: "is_caret_blink_enabled")
        self._method_is_caret_blink_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_caret_blink_enabled_36873697_name._native_ptr(), 36873697)
        assert(LineEdit._method_is_caret_blink_enabled_36873697 != nil)
        let _method_set_caret_mid_grapheme_enabled_2586408642_name = StringName(from: "set_caret_mid_grapheme_enabled")
        self._method_set_caret_mid_grapheme_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_caret_mid_grapheme_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(LineEdit._method_set_caret_mid_grapheme_enabled_2586408642 != nil)
        let _method_is_caret_mid_grapheme_enabled_36873697_name = StringName(from: "is_caret_mid_grapheme_enabled")
        self._method_is_caret_mid_grapheme_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_caret_mid_grapheme_enabled_36873697_name._native_ptr(), 36873697)
        assert(LineEdit._method_is_caret_mid_grapheme_enabled_36873697 != nil)
        let _method_set_caret_force_displayed_2586408642_name = StringName(from: "set_caret_force_displayed")
        self._method_set_caret_force_displayed_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_caret_force_displayed_2586408642_name._native_ptr(), 2586408642)
        assert(LineEdit._method_set_caret_force_displayed_2586408642 != nil)
        let _method_is_caret_force_displayed_36873697_name = StringName(from: "is_caret_force_displayed")
        self._method_is_caret_force_displayed_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_caret_force_displayed_36873697_name._native_ptr(), 36873697)
        assert(LineEdit._method_is_caret_force_displayed_36873697 != nil)
        let _method_set_caret_blink_interval_373806689_name = StringName(from: "set_caret_blink_interval")
        self._method_set_caret_blink_interval_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_caret_blink_interval_373806689_name._native_ptr(), 373806689)
        assert(LineEdit._method_set_caret_blink_interval_373806689 != nil)
        let _method_get_caret_blink_interval_1740695150_name = StringName(from: "get_caret_blink_interval")
        self._method_get_caret_blink_interval_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_caret_blink_interval_1740695150_name._native_ptr(), 1740695150)
        assert(LineEdit._method_get_caret_blink_interval_1740695150 != nil)
        let _method_set_max_length_1286410249_name = StringName(from: "set_max_length")
        self._method_set_max_length_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_max_length_1286410249_name._native_ptr(), 1286410249)
        assert(LineEdit._method_set_max_length_1286410249 != nil)
        let _method_get_max_length_3905245786_name = StringName(from: "get_max_length")
        self._method_get_max_length_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_max_length_3905245786_name._native_ptr(), 3905245786)
        assert(LineEdit._method_get_max_length_3905245786 != nil)
        let _method_insert_text_at_caret_83702148_name = StringName(from: "insert_text_at_caret")
        self._method_insert_text_at_caret_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_insert_text_at_caret_83702148_name._native_ptr(), 83702148)
        assert(LineEdit._method_insert_text_at_caret_83702148 != nil)
        let _method_delete_char_at_caret_3218959716_name = StringName(from: "delete_char_at_caret")
        self._method_delete_char_at_caret_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_delete_char_at_caret_3218959716_name._native_ptr(), 3218959716)
        assert(LineEdit._method_delete_char_at_caret_3218959716 != nil)
        let _method_delete_text_3937882851_name = StringName(from: "delete_text")
        self._method_delete_text_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_delete_text_3937882851_name._native_ptr(), 3937882851)
        assert(LineEdit._method_delete_text_3937882851 != nil)
        let _method_set_editable_2586408642_name = StringName(from: "set_editable")
        self._method_set_editable_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_editable_2586408642_name._native_ptr(), 2586408642)
        assert(LineEdit._method_set_editable_2586408642 != nil)
        let _method_is_editable_36873697_name = StringName(from: "is_editable")
        self._method_is_editable_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_editable_36873697_name._native_ptr(), 36873697)
        assert(LineEdit._method_is_editable_36873697 != nil)
        let _method_set_secret_2586408642_name = StringName(from: "set_secret")
        self._method_set_secret_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_secret_2586408642_name._native_ptr(), 2586408642)
        assert(LineEdit._method_set_secret_2586408642 != nil)
        let _method_is_secret_36873697_name = StringName(from: "is_secret")
        self._method_is_secret_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_secret_36873697_name._native_ptr(), 36873697)
        assert(LineEdit._method_is_secret_36873697 != nil)
        let _method_set_secret_character_83702148_name = StringName(from: "set_secret_character")
        self._method_set_secret_character_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_secret_character_83702148_name._native_ptr(), 83702148)
        assert(LineEdit._method_set_secret_character_83702148 != nil)
        let _method_get_secret_character_201670096_name = StringName(from: "get_secret_character")
        self._method_get_secret_character_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_secret_character_201670096_name._native_ptr(), 201670096)
        assert(LineEdit._method_get_secret_character_201670096 != nil)
        let _method_menu_option_1286410249_name = StringName(from: "menu_option")
        self._method_menu_option_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_menu_option_1286410249_name._native_ptr(), 1286410249)
        assert(LineEdit._method_menu_option_1286410249 != nil)
        let _method_get_menu_229722558_name = StringName(from: "get_menu")
        self._method_get_menu_229722558 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_menu_229722558_name._native_ptr(), 229722558)
        assert(LineEdit._method_get_menu_229722558 != nil)
        let _method_is_menu_visible_36873697_name = StringName(from: "is_menu_visible")
        self._method_is_menu_visible_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_menu_visible_36873697_name._native_ptr(), 36873697)
        assert(LineEdit._method_is_menu_visible_36873697 != nil)
        let _method_set_context_menu_enabled_2586408642_name = StringName(from: "set_context_menu_enabled")
        self._method_set_context_menu_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_context_menu_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(LineEdit._method_set_context_menu_enabled_2586408642 != nil)
        let _method_is_context_menu_enabled_2240911060_name = StringName(from: "is_context_menu_enabled")
        self._method_is_context_menu_enabled_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_context_menu_enabled_2240911060_name._native_ptr(), 2240911060)
        assert(LineEdit._method_is_context_menu_enabled_2240911060 != nil)
        let _method_set_virtual_keyboard_enabled_2586408642_name = StringName(from: "set_virtual_keyboard_enabled")
        self._method_set_virtual_keyboard_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_virtual_keyboard_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(LineEdit._method_set_virtual_keyboard_enabled_2586408642 != nil)
        let _method_is_virtual_keyboard_enabled_36873697_name = StringName(from: "is_virtual_keyboard_enabled")
        self._method_is_virtual_keyboard_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_virtual_keyboard_enabled_36873697_name._native_ptr(), 36873697)
        assert(LineEdit._method_is_virtual_keyboard_enabled_36873697 != nil)
        let _method_set_virtual_keyboard_type_2696893573_name = StringName(from: "set_virtual_keyboard_type")
        self._method_set_virtual_keyboard_type_2696893573 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_virtual_keyboard_type_2696893573_name._native_ptr(), 2696893573)
        assert(LineEdit._method_set_virtual_keyboard_type_2696893573 != nil)
        let _method_get_virtual_keyboard_type_1928699316_name = StringName(from: "get_virtual_keyboard_type")
        self._method_get_virtual_keyboard_type_1928699316 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_virtual_keyboard_type_1928699316_name._native_ptr(), 1928699316)
        assert(LineEdit._method_get_virtual_keyboard_type_1928699316 != nil)
        let _method_set_clear_button_enabled_2586408642_name = StringName(from: "set_clear_button_enabled")
        self._method_set_clear_button_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_clear_button_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(LineEdit._method_set_clear_button_enabled_2586408642 != nil)
        let _method_is_clear_button_enabled_36873697_name = StringName(from: "is_clear_button_enabled")
        self._method_is_clear_button_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_clear_button_enabled_36873697_name._native_ptr(), 36873697)
        assert(LineEdit._method_is_clear_button_enabled_36873697 != nil)
        let _method_set_shortcut_keys_enabled_2586408642_name = StringName(from: "set_shortcut_keys_enabled")
        self._method_set_shortcut_keys_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_shortcut_keys_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(LineEdit._method_set_shortcut_keys_enabled_2586408642 != nil)
        let _method_is_shortcut_keys_enabled_36873697_name = StringName(from: "is_shortcut_keys_enabled")
        self._method_is_shortcut_keys_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_shortcut_keys_enabled_36873697_name._native_ptr(), 36873697)
        assert(LineEdit._method_is_shortcut_keys_enabled_36873697 != nil)
        let _method_set_middle_mouse_paste_enabled_2586408642_name = StringName(from: "set_middle_mouse_paste_enabled")
        self._method_set_middle_mouse_paste_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_middle_mouse_paste_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(LineEdit._method_set_middle_mouse_paste_enabled_2586408642 != nil)
        let _method_is_middle_mouse_paste_enabled_36873697_name = StringName(from: "is_middle_mouse_paste_enabled")
        self._method_is_middle_mouse_paste_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_middle_mouse_paste_enabled_36873697_name._native_ptr(), 36873697)
        assert(LineEdit._method_is_middle_mouse_paste_enabled_36873697 != nil)
        let _method_set_selecting_enabled_2586408642_name = StringName(from: "set_selecting_enabled")
        self._method_set_selecting_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_selecting_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(LineEdit._method_set_selecting_enabled_2586408642 != nil)
        let _method_is_selecting_enabled_36873697_name = StringName(from: "is_selecting_enabled")
        self._method_is_selecting_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_selecting_enabled_36873697_name._native_ptr(), 36873697)
        assert(LineEdit._method_is_selecting_enabled_36873697 != nil)
        let _method_set_deselect_on_focus_loss_enabled_2586408642_name = StringName(from: "set_deselect_on_focus_loss_enabled")
        self._method_set_deselect_on_focus_loss_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_deselect_on_focus_loss_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(LineEdit._method_set_deselect_on_focus_loss_enabled_2586408642 != nil)
        let _method_is_deselect_on_focus_loss_enabled_36873697_name = StringName(from: "is_deselect_on_focus_loss_enabled")
        self._method_is_deselect_on_focus_loss_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_deselect_on_focus_loss_enabled_36873697_name._native_ptr(), 36873697)
        assert(LineEdit._method_is_deselect_on_focus_loss_enabled_36873697 != nil)
        let _method_set_right_icon_4051416890_name = StringName(from: "set_right_icon")
        self._method_set_right_icon_4051416890 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_right_icon_4051416890_name._native_ptr(), 4051416890)
        assert(LineEdit._method_set_right_icon_4051416890 != nil)
        let _method_get_right_icon_255860311_name = StringName(from: "get_right_icon")
        self._method_get_right_icon_255860311 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_right_icon_255860311_name._native_ptr(), 255860311)
        assert(LineEdit._method_get_right_icon_255860311 != nil)
        let _method_set_flat_2586408642_name = StringName(from: "set_flat")
        self._method_set_flat_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_flat_2586408642_name._native_ptr(), 2586408642)
        assert(LineEdit._method_set_flat_2586408642 != nil)
        let _method_is_flat_36873697_name = StringName(from: "is_flat")
        self._method_is_flat_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_flat_36873697_name._native_ptr(), 36873697)
        assert(LineEdit._method_is_flat_36873697 != nil)
        let _method_set_select_all_on_focus_2586408642_name = StringName(from: "set_select_all_on_focus")
        self._method_set_select_all_on_focus_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_select_all_on_focus_2586408642_name._native_ptr(), 2586408642)
        assert(LineEdit._method_set_select_all_on_focus_2586408642 != nil)
        let _method_is_select_all_on_focus_36873697_name = StringName(from: "is_select_all_on_focus")
        self._method_is_select_all_on_focus_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_select_all_on_focus_36873697_name._native_ptr(), 36873697)
        assert(LineEdit._method_is_select_all_on_focus_36873697 != nil)
    }

    public func set_horizontal_alignment(alignment: HorizontalAlignment)  {
        withUnsafePointer(to: alignment.rawValue) { alignment_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(alignment_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_horizontal_alignment_2312603777,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_horizontal_alignment() -> HorizontalAlignment {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_horizontal_alignment_341400642,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return HorizontalAlignment(from: __resPtr.pointee)
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
    public func select(from: Int64, to: Int64)  {
        withUnsafePointer(to: to) { to_native in
        withUnsafePointer(to: from) { from_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native), .init(to_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_select_1328111411,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
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
    public func has_selection() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_selection_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_selection_from_column() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_selection_from_column_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_selection_to_column() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_selection_to_column_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
    public func set_draw_control_chars(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
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
    public func set_caret_column(position: Int64)  {
        withUnsafePointer(to: position) { position_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_caret_column_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_caret_column() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_caret_column_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_scroll_offset() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_scroll_offset_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_expand_to_text_length_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_expand_to_text_length_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_expand_to_text_length_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_expand_to_text_length_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_caret_blink_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
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
    public func set_caret_force_displayed(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_caret_force_displayed_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_caret_force_displayed() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_caret_force_displayed_36873697,
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
    public func set_max_length(chars: Int64)  {
        withUnsafePointer(to: chars) { chars_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(chars_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_max_length_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_max_length() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_max_length_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func insert_text_at_caret(text: String)  {
        withUnsafePointer(to: text) { text_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(text_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_insert_text_at_caret_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func delete_char_at_caret()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_delete_char_at_caret_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func delete_text(from_column: Int64, to_column: Int64)  {
        withUnsafePointer(to: to_column) { to_column_native in
        withUnsafePointer(to: from_column) { from_column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_column_native), .init(to_column_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_delete_text_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
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
    public func set_secret(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_secret_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_secret() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_secret_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_secret_character(character: String)  {
        withUnsafePointer(to: character) { character_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(character_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_secret_character_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_secret_character() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_secret_character_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
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
    public func set_context_menu_enabled(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
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
                    Self._method_is_context_menu_enabled_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_virtual_keyboard_enabled(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
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
    public func set_virtual_keyboard_type(`type`: LineEdit.VirtualKeyboardType)  {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_virtual_keyboard_type_2696893573,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_virtual_keyboard_type() -> LineEdit.VirtualKeyboardType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_virtual_keyboard_type_1928699316,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return LineEdit.VirtualKeyboardType(from: __resPtr.pointee)
    }
    public func set_clear_button_enabled(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_clear_button_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_clear_button_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_clear_button_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_shortcut_keys_enabled(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
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
    public func set_middle_mouse_paste_enabled(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
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
    public func set_right_icon(icon: Texture2D)  {
        let icon_native = icon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(icon_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_right_icon_4051416890,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_right_icon() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_right_icon_255860311,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(from: __resPtr.pointee)
    }
    public func set_flat(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_flat_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_flat() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_flat_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_select_all_on_focus(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_select_all_on_focus_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_select_all_on_focus() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_select_all_on_focus_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}