import godot_native

fileprivate var __godot_name_TextServer: StringName! = nil

/// Interface for the fonts and complex text layouts.
/// 
/// [TextServer] is the API backend for managing fonts, and rendering complex text.
public class TextServer : RefCounted {

    public enum FontAntialiasing : Int32 {
        case FONT_ANTIALIASING_NONE = 0
        case FONT_ANTIALIASING_GRAY = 1
        case FONT_ANTIALIASING_LCD = 2
    }
    public enum FontLCDSubpixelLayout : Int32 {
        case FONT_LCD_SUBPIXEL_LAYOUT_NONE = 0
        case FONT_LCD_SUBPIXEL_LAYOUT_HRGB = 1
        case FONT_LCD_SUBPIXEL_LAYOUT_HBGR = 2
        case FONT_LCD_SUBPIXEL_LAYOUT_VRGB = 3
        case FONT_LCD_SUBPIXEL_LAYOUT_VBGR = 4
        case FONT_LCD_SUBPIXEL_LAYOUT_MAX = 5
    }
    public enum Direction : Int32 {
        case DIRECTION_AUTO = 0
        case DIRECTION_LTR = 1
        case DIRECTION_RTL = 2
        case DIRECTION_INHERITED = 3
    }
    public enum Orientation : Int32 {
        case ORIENTATION_HORIZONTAL = 0
        case ORIENTATION_VERTICAL = 1
    }
    public struct JustificationFlag: OptionSet {
        public let rawValue: Int32
        public init(rawValue: Int32) {
            self.rawValue = rawValue
        }
        static let JUSTIFICATION_NONE: JustificationFlag = []
        static let JUSTIFICATION_KASHIDA = JustificationFlag(rawValue: 1)
        static let JUSTIFICATION_WORD_BOUND = JustificationFlag(rawValue: 2)
        static let JUSTIFICATION_TRIM_EDGE_SPACES = JustificationFlag(rawValue: 4)
        static let JUSTIFICATION_AFTER_LAST_TAB = JustificationFlag(rawValue: 8)
        static let JUSTIFICATION_CONSTRAIN_ELLIPSIS = JustificationFlag(rawValue: 16)
    }
    public enum AutowrapMode : Int32 {
        case AUTOWRAP_OFF = 0
        case AUTOWRAP_ARBITRARY = 1
        case AUTOWRAP_WORD = 2
        case AUTOWRAP_WORD_SMART = 3
    }
    public struct LineBreakFlag: OptionSet {
        public let rawValue: Int32
        public init(rawValue: Int32) {
            self.rawValue = rawValue
        }
        static let BREAK_NONE: LineBreakFlag = []
        static let BREAK_MANDATORY = LineBreakFlag(rawValue: 1)
        static let BREAK_WORD_BOUND = LineBreakFlag(rawValue: 2)
        static let BREAK_GRAPHEME_BOUND = LineBreakFlag(rawValue: 4)
        static let BREAK_ADAPTIVE = LineBreakFlag(rawValue: 8)
        static let BREAK_TRIM_EDGE_SPACES = LineBreakFlag(rawValue: 16)
    }
    public enum VisibleCharactersBehavior : Int32 {
        case VC_CHARS_BEFORE_SHAPING = 0
        case VC_CHARS_AFTER_SHAPING = 1
        case VC_GLYPHS_AUTO = 2
        case VC_GLYPHS_LTR = 3
        case VC_GLYPHS_RTL = 4
    }
    public enum OverrunBehavior : Int32 {
        case OVERRUN_NO_TRIMMING = 0
        case OVERRUN_TRIM_CHAR = 1
        case OVERRUN_TRIM_WORD = 2
        case OVERRUN_TRIM_ELLIPSIS = 3
        case OVERRUN_TRIM_WORD_ELLIPSIS = 4
    }
    public struct TextOverrunFlag: OptionSet {
        public let rawValue: Int32
        public init(rawValue: Int32) {
            self.rawValue = rawValue
        }
        static let OVERRUN_NO_TRIM: TextOverrunFlag = []
        static let OVERRUN_TRIM = TextOverrunFlag(rawValue: 1)
        static let OVERRUN_TRIM_WORD_ONLY = TextOverrunFlag(rawValue: 2)
        static let OVERRUN_ADD_ELLIPSIS = TextOverrunFlag(rawValue: 4)
        static let OVERRUN_ENFORCE_ELLIPSIS = TextOverrunFlag(rawValue: 8)
        static let OVERRUN_JUSTIFICATION_AWARE = TextOverrunFlag(rawValue: 16)
    }
    public struct GraphemeFlag: OptionSet {
        public let rawValue: Int32
        public init(rawValue: Int32) {
            self.rawValue = rawValue
        }
        static let GRAPHEME_IS_VALID = GraphemeFlag(rawValue: 1)
        static let GRAPHEME_IS_RTL = GraphemeFlag(rawValue: 2)
        static let GRAPHEME_IS_VIRTUAL = GraphemeFlag(rawValue: 4)
        static let GRAPHEME_IS_SPACE = GraphemeFlag(rawValue: 8)
        static let GRAPHEME_IS_BREAK_HARD = GraphemeFlag(rawValue: 16)
        static let GRAPHEME_IS_BREAK_SOFT = GraphemeFlag(rawValue: 32)
        static let GRAPHEME_IS_TAB = GraphemeFlag(rawValue: 64)
        static let GRAPHEME_IS_ELONGATION = GraphemeFlag(rawValue: 128)
        static let GRAPHEME_IS_PUNCTUATION = GraphemeFlag(rawValue: 256)
        static let GRAPHEME_IS_UNDERSCORE = GraphemeFlag(rawValue: 512)
        static let GRAPHEME_IS_CONNECTED = GraphemeFlag(rawValue: 1024)
        static let GRAPHEME_IS_SAFE_TO_INSERT_TATWEEL = GraphemeFlag(rawValue: 2048)
    }
    public enum Hinting : Int32 {
        case HINTING_NONE = 0
        case HINTING_LIGHT = 1
        case HINTING_NORMAL = 2
    }
    public enum SubpixelPositioning : Int32 {
        case SUBPIXEL_POSITIONING_DISABLED = 0
        case SUBPIXEL_POSITIONING_AUTO = 1
        case SUBPIXEL_POSITIONING_ONE_HALF = 2
        case SUBPIXEL_POSITIONING_ONE_QUARTER = 3
        case SUBPIXEL_POSITIONING_ONE_HALF_MAX_SIZE = 20
        case SUBPIXEL_POSITIONING_ONE_QUARTER_MAX_SIZE = 16
    }
    public enum Feature : Int32 {
        case FEATURE_SIMPLE_LAYOUT = 1
        case FEATURE_BIDI_LAYOUT = 2
        case FEATURE_VERTICAL_LAYOUT = 4
        case FEATURE_SHAPING = 8
        case FEATURE_KASHIDA_JUSTIFICATION = 16
        case FEATURE_BREAK_ITERATORS = 32
        case FEATURE_FONT_BITMAP = 64
        case FEATURE_FONT_DYNAMIC = 128
        case FEATURE_FONT_MSDF = 256
        case FEATURE_FONT_SYSTEM = 512
        case FEATURE_FONT_VARIABLE = 1024
        case FEATURE_CONTEXT_SENSITIVE_CASE_CONVERSION = 2048
        case FEATURE_USE_SUPPORT_DATA = 4096
        case FEATURE_UNICODE_IDENTIFIERS = 8192
        case FEATURE_UNICODE_SECURITY = 16384
    }
    public enum ContourPointTag : Int32 {
        case CONTOUR_CURVE_TAG_ON = 1
        case CONTOUR_CURVE_TAG_OFF_CONIC = 0
        case CONTOUR_CURVE_TAG_OFF_CUBIC = 2
    }
    public enum SpacingType : Int32 {
        case SPACING_GLYPH = 0
        case SPACING_SPACE = 1
        case SPACING_TOP = 2
        case SPACING_BOTTOM = 3
        case SPACING_MAX = 4
    }
    public struct FontStyle: OptionSet {
        public let rawValue: Int32
        public init(rawValue: Int32) {
            self.rawValue = rawValue
        }
        static let FONT_BOLD = FontStyle(rawValue: 1)
        static let FONT_ITALIC = FontStyle(rawValue: 2)
        static let FONT_FIXED_WIDTH = FontStyle(rawValue: 4)
    }
    public enum StructuredTextParser : Int32 {
        case STRUCTURED_TEXT_DEFAULT = 0
        case STRUCTURED_TEXT_URI = 1
        case STRUCTURED_TEXT_FILE = 2
        case STRUCTURED_TEXT_EMAIL = 3
        case STRUCTURED_TEXT_LIST = 4
        case STRUCTURED_TEXT_GDSCRIPT = 5
        case STRUCTURED_TEXT_CUSTOM = 6
    }

    public override class var __godot_name: StringName { __godot_name_TextServer }

    static var _method_has_feature_3967367083: GDExtensionMethodBindPtr! = nil
    static var _method_get_name_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_features_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_load_support_data_2323990056: GDExtensionMethodBindPtr! = nil
    static var _method_get_support_data_filename_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_support_data_info_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_save_support_data_3927539163: GDExtensionMethodBindPtr! = nil
    static var _method_is_locale_right_to_left_3927539163: GDExtensionMethodBindPtr! = nil
    static var _method_name_to_tag_1321353865: GDExtensionMethodBindPtr! = nil
    static var _method_tag_to_name_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_has_3521089500: GDExtensionMethodBindPtr! = nil
    static var _method_free_rid_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_create_font_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_data_1355495400: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_face_index_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_face_index_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_face_count_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_style_898466325: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_style_3082502592: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_name_2726140452: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_name_642473191: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_style_name_2726140452: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_style_name_642473191: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_weight_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_weight_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_stretch_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_stretch_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_antialiasing_958337235: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_antialiasing_3389420495: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_generate_mipmaps_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_generate_mipmaps_4155700596: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_multichannel_signed_distance_field_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_font_is_multichannel_signed_distance_field_4155700596: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_msdf_pixel_range_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_msdf_pixel_range_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_msdf_size_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_msdf_size_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_fixed_size_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_fixed_size_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_allow_system_fallback_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_font_is_allow_system_fallback_4155700596: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_force_autohinter_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_font_is_force_autohinter_4155700596: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_hinting_1520010864: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_hinting_3971592737: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_subpixel_positioning_3830459669: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_subpixel_positioning_2752233671: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_embolden_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_embolden_866169185: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_transform_1246044741: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_transform_213527486: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_variation_coordinates_1217542888: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_variation_coordinates_1882737106: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_oversampling_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_oversampling_866169185: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_size_cache_list_2684255073: GDExtensionMethodBindPtr! = nil
    static var _method_font_clear_size_cache_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_font_remove_size_cache_2450610377: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_ascent_1892459533: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_ascent_755457166: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_descent_1892459533: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_descent_755457166: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_underline_position_1892459533: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_underline_position_755457166: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_underline_thickness_1892459533: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_underline_thickness_755457166: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_scale_1892459533: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_scale_755457166: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_texture_count_1311001310: GDExtensionMethodBindPtr! = nil
    static var _method_font_clear_textures_2450610377: GDExtensionMethodBindPtr! = nil
    static var _method_font_remove_texture_3810512262: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_texture_image_2354485091: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_texture_image_2451761155: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_texture_offsets_3005398047: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_texture_offsets_3420028887: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_glyph_list_46086620: GDExtensionMethodBindPtr! = nil
    static var _method_font_clear_glyphs_2450610377: GDExtensionMethodBindPtr! = nil
    static var _method_font_remove_glyph_3810512262: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_glyph_advance_2555689501: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_glyph_advance_3219397315: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_glyph_offset_513728628: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_glyph_offset_1812632090: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_glyph_size_513728628: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_glyph_size_1812632090: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_glyph_uv_rect_2274268786: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_glyph_uv_rect_1973324081: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_glyph_texture_idx_4292800474: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_glyph_texture_idx_4254580980: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_glyph_texture_rid_1451696141: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_glyph_texture_size_513728628: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_glyph_contours_2903964473: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_kerning_list_1778388067: GDExtensionMethodBindPtr! = nil
    static var _method_font_clear_kerning_map_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_font_remove_kerning_2141860016: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_kerning_3630965883: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_kerning_1019980169: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_glyph_index_1765635060: GDExtensionMethodBindPtr! = nil
    static var _method_font_has_char_3120086654: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_supported_chars_642473191: GDExtensionMethodBindPtr! = nil
    static var _method_font_render_range_4254580980: GDExtensionMethodBindPtr! = nil
    static var _method_font_render_glyph_3810512262: GDExtensionMethodBindPtr! = nil
    static var _method_font_draw_glyph_1821196351: GDExtensionMethodBindPtr! = nil
    static var _method_font_draw_glyph_outline_1124898203: GDExtensionMethodBindPtr! = nil
    static var _method_font_is_language_supported_3199320846: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_language_support_override_2313957094: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_language_support_override_2829184646: GDExtensionMethodBindPtr! = nil
    static var _method_font_remove_language_support_override_2726140452: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_language_support_overrides_2801473409: GDExtensionMethodBindPtr! = nil
    static var _method_font_is_script_supported_3199320846: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_script_support_override_2313957094: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_script_support_override_2829184646: GDExtensionMethodBindPtr! = nil
    static var _method_font_remove_script_support_override_2726140452: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_script_support_overrides_2801473409: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_opentype_feature_overrides_1217542888: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_opentype_feature_overrides_1882737106: GDExtensionMethodBindPtr! = nil
    static var _method_font_supported_feature_list_1882737106: GDExtensionMethodBindPtr! = nil
    static var _method_font_supported_variation_list_1882737106: GDExtensionMethodBindPtr! = nil
    static var _method_font_get_global_oversampling_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_font_set_global_oversampling_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_hex_code_box_size_3016396712: GDExtensionMethodBindPtr! = nil
    static var _method_draw_hex_code_box_1602046441: GDExtensionMethodBindPtr! = nil
    static var _method_create_shaped_text_1231398698: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_clear_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_set_direction_2616949700: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_get_direction_3065904362: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_get_inferred_direction_3065904362: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_set_bidi_override_684822712: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_set_custom_punctuation_2726140452: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_get_custom_punctuation_642473191: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_set_orientation_104095128: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_get_orientation_3142708106: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_set_preserve_invalid_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_get_preserve_invalid_4155700596: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_set_preserve_control_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_get_preserve_control_4155700596: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_set_spacing_1307259930: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_get_spacing_1213653558: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_add_string_2621279422: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_add_object_2838446185: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_resize_object_2353789835: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_get_span_count_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_get_span_meta_4069510997: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_set_span_update_font_1578983057: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_substr_1937682086: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_get_parent_3814569979: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_fit_to_width_603718830: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_tab_align_1283669550: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_shape_3521089500: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_is_ready_4155700596: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_get_glyphs_2684255073: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_sort_logical_2670461153: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_get_glyph_count_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_get_range_733700038: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_get_line_breaks_adv_4206849830: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_get_line_breaks_303410369: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_get_word_breaks_3299477123: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_get_trim_pos_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_get_ellipsis_pos_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_get_ellipsis_glyphs_2684255073: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_get_ellipsis_glyph_count_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_overrun_trim_to_width_1572579718: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_get_objects_2684255073: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_get_object_rect_447978354: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_get_size_2440833711: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_get_ascent_866169185: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_get_descent_866169185: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_get_width_866169185: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_get_underline_position_866169185: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_get_underline_thickness_866169185: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_get_carets_1574219346: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_get_selection_3714187733: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_hit_test_grapheme_3149310417: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_hit_test_position_3149310417: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_get_grapheme_bounds_2546185844: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_next_grapheme_pos_1120910005: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_prev_grapheme_pos_1120910005: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_draw_70679950: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_draw_outline_2673671346: GDExtensionMethodBindPtr! = nil
    static var _method_shaped_text_get_dominant_direction_in_range_3326907668: GDExtensionMethodBindPtr! = nil
    static var _method_format_number_2305636099: GDExtensionMethodBindPtr! = nil
    static var _method_parse_number_2305636099: GDExtensionMethodBindPtr! = nil
    static var _method_percent_sign_993269549: GDExtensionMethodBindPtr! = nil
    static var _method_string_get_word_breaks_1398910359: GDExtensionMethodBindPtr! = nil
    static var _method_is_confusable_1433197768: GDExtensionMethodBindPtr! = nil
    static var _method_spoof_check_3927539163: GDExtensionMethodBindPtr! = nil
    static var _method_strip_diacritics_3135753539: GDExtensionMethodBindPtr! = nil
    static var _method_is_valid_identifier_3927539163: GDExtensionMethodBindPtr! = nil
    static var _method_string_to_upper_2305636099: GDExtensionMethodBindPtr! = nil
    static var _method_string_to_lower_2305636099: GDExtensionMethodBindPtr! = nil
    static var _method_parse_structured_text_3310685015: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_TextServer = StringName(from: "TextServer")

        let _method_has_feature_3967367083_name = StringName(from: "has_feature")
        self._method_has_feature_3967367083 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_feature_3967367083_name._native_ptr(), 3967367083)
        assert(TextServer._method_has_feature_3967367083 != nil)
        let _method_get_name_201670096_name = StringName(from: "get_name")
        self._method_get_name_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_name_201670096_name._native_ptr(), 201670096)
        assert(TextServer._method_get_name_201670096 != nil)
        let _method_get_features_3905245786_name = StringName(from: "get_features")
        self._method_get_features_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_features_3905245786_name._native_ptr(), 3905245786)
        assert(TextServer._method_get_features_3905245786 != nil)
        let _method_load_support_data_2323990056_name = StringName(from: "load_support_data")
        self._method_load_support_data_2323990056 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_load_support_data_2323990056_name._native_ptr(), 2323990056)
        assert(TextServer._method_load_support_data_2323990056 != nil)
        let _method_get_support_data_filename_201670096_name = StringName(from: "get_support_data_filename")
        self._method_get_support_data_filename_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_support_data_filename_201670096_name._native_ptr(), 201670096)
        assert(TextServer._method_get_support_data_filename_201670096 != nil)
        let _method_get_support_data_info_201670096_name = StringName(from: "get_support_data_info")
        self._method_get_support_data_info_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_support_data_info_201670096_name._native_ptr(), 201670096)
        assert(TextServer._method_get_support_data_info_201670096 != nil)
        let _method_save_support_data_3927539163_name = StringName(from: "save_support_data")
        self._method_save_support_data_3927539163 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_save_support_data_3927539163_name._native_ptr(), 3927539163)
        assert(TextServer._method_save_support_data_3927539163 != nil)
        let _method_is_locale_right_to_left_3927539163_name = StringName(from: "is_locale_right_to_left")
        self._method_is_locale_right_to_left_3927539163 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_locale_right_to_left_3927539163_name._native_ptr(), 3927539163)
        assert(TextServer._method_is_locale_right_to_left_3927539163 != nil)
        let _method_name_to_tag_1321353865_name = StringName(from: "name_to_tag")
        self._method_name_to_tag_1321353865 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_name_to_tag_1321353865_name._native_ptr(), 1321353865)
        assert(TextServer._method_name_to_tag_1321353865 != nil)
        let _method_tag_to_name_844755477_name = StringName(from: "tag_to_name")
        self._method_tag_to_name_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_tag_to_name_844755477_name._native_ptr(), 844755477)
        assert(TextServer._method_tag_to_name_844755477 != nil)
        let _method_has_3521089500_name = StringName(from: "has")
        self._method_has_3521089500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_3521089500_name._native_ptr(), 3521089500)
        assert(TextServer._method_has_3521089500 != nil)
        let _method_free_rid_2722037293_name = StringName(from: "free_rid")
        self._method_free_rid_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_free_rid_2722037293_name._native_ptr(), 2722037293)
        assert(TextServer._method_free_rid_2722037293 != nil)
        let _method_create_font_529393457_name = StringName(from: "create_font")
        self._method_create_font_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_font_529393457_name._native_ptr(), 529393457)
        assert(TextServer._method_create_font_529393457 != nil)
        let _method_font_set_data_1355495400_name = StringName(from: "font_set_data")
        self._method_font_set_data_1355495400 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_data_1355495400_name._native_ptr(), 1355495400)
        assert(TextServer._method_font_set_data_1355495400 != nil)
        let _method_font_set_face_index_3411492887_name = StringName(from: "font_set_face_index")
        self._method_font_set_face_index_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_face_index_3411492887_name._native_ptr(), 3411492887)
        assert(TextServer._method_font_set_face_index_3411492887 != nil)
        let _method_font_get_face_index_2198884583_name = StringName(from: "font_get_face_index")
        self._method_font_get_face_index_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_face_index_2198884583_name._native_ptr(), 2198884583)
        assert(TextServer._method_font_get_face_index_2198884583 != nil)
        let _method_font_get_face_count_2198884583_name = StringName(from: "font_get_face_count")
        self._method_font_get_face_count_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_face_count_2198884583_name._native_ptr(), 2198884583)
        assert(TextServer._method_font_get_face_count_2198884583 != nil)
        let _method_font_set_style_898466325_name = StringName(from: "font_set_style")
        self._method_font_set_style_898466325 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_style_898466325_name._native_ptr(), 898466325)
        assert(TextServer._method_font_set_style_898466325 != nil)
        let _method_font_get_style_3082502592_name = StringName(from: "font_get_style")
        self._method_font_get_style_3082502592 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_style_3082502592_name._native_ptr(), 3082502592)
        assert(TextServer._method_font_get_style_3082502592 != nil)
        let _method_font_set_name_2726140452_name = StringName(from: "font_set_name")
        self._method_font_set_name_2726140452 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_name_2726140452_name._native_ptr(), 2726140452)
        assert(TextServer._method_font_set_name_2726140452 != nil)
        let _method_font_get_name_642473191_name = StringName(from: "font_get_name")
        self._method_font_get_name_642473191 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_name_642473191_name._native_ptr(), 642473191)
        assert(TextServer._method_font_get_name_642473191 != nil)
        let _method_font_set_style_name_2726140452_name = StringName(from: "font_set_style_name")
        self._method_font_set_style_name_2726140452 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_style_name_2726140452_name._native_ptr(), 2726140452)
        assert(TextServer._method_font_set_style_name_2726140452 != nil)
        let _method_font_get_style_name_642473191_name = StringName(from: "font_get_style_name")
        self._method_font_get_style_name_642473191 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_style_name_642473191_name._native_ptr(), 642473191)
        assert(TextServer._method_font_get_style_name_642473191 != nil)
        let _method_font_set_weight_3411492887_name = StringName(from: "font_set_weight")
        self._method_font_set_weight_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_weight_3411492887_name._native_ptr(), 3411492887)
        assert(TextServer._method_font_set_weight_3411492887 != nil)
        let _method_font_get_weight_2198884583_name = StringName(from: "font_get_weight")
        self._method_font_get_weight_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_weight_2198884583_name._native_ptr(), 2198884583)
        assert(TextServer._method_font_get_weight_2198884583 != nil)
        let _method_font_set_stretch_3411492887_name = StringName(from: "font_set_stretch")
        self._method_font_set_stretch_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_stretch_3411492887_name._native_ptr(), 3411492887)
        assert(TextServer._method_font_set_stretch_3411492887 != nil)
        let _method_font_get_stretch_2198884583_name = StringName(from: "font_get_stretch")
        self._method_font_get_stretch_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_stretch_2198884583_name._native_ptr(), 2198884583)
        assert(TextServer._method_font_get_stretch_2198884583 != nil)
        let _method_font_set_antialiasing_958337235_name = StringName(from: "font_set_antialiasing")
        self._method_font_set_antialiasing_958337235 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_antialiasing_958337235_name._native_ptr(), 958337235)
        assert(TextServer._method_font_set_antialiasing_958337235 != nil)
        let _method_font_get_antialiasing_3389420495_name = StringName(from: "font_get_antialiasing")
        self._method_font_get_antialiasing_3389420495 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_antialiasing_3389420495_name._native_ptr(), 3389420495)
        assert(TextServer._method_font_get_antialiasing_3389420495 != nil)
        let _method_font_set_generate_mipmaps_1265174801_name = StringName(from: "font_set_generate_mipmaps")
        self._method_font_set_generate_mipmaps_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_generate_mipmaps_1265174801_name._native_ptr(), 1265174801)
        assert(TextServer._method_font_set_generate_mipmaps_1265174801 != nil)
        let _method_font_get_generate_mipmaps_4155700596_name = StringName(from: "font_get_generate_mipmaps")
        self._method_font_get_generate_mipmaps_4155700596 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_generate_mipmaps_4155700596_name._native_ptr(), 4155700596)
        assert(TextServer._method_font_get_generate_mipmaps_4155700596 != nil)
        let _method_font_set_multichannel_signed_distance_field_1265174801_name = StringName(from: "font_set_multichannel_signed_distance_field")
        self._method_font_set_multichannel_signed_distance_field_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_multichannel_signed_distance_field_1265174801_name._native_ptr(), 1265174801)
        assert(TextServer._method_font_set_multichannel_signed_distance_field_1265174801 != nil)
        let _method_font_is_multichannel_signed_distance_field_4155700596_name = StringName(from: "font_is_multichannel_signed_distance_field")
        self._method_font_is_multichannel_signed_distance_field_4155700596 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_is_multichannel_signed_distance_field_4155700596_name._native_ptr(), 4155700596)
        assert(TextServer._method_font_is_multichannel_signed_distance_field_4155700596 != nil)
        let _method_font_set_msdf_pixel_range_3411492887_name = StringName(from: "font_set_msdf_pixel_range")
        self._method_font_set_msdf_pixel_range_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_msdf_pixel_range_3411492887_name._native_ptr(), 3411492887)
        assert(TextServer._method_font_set_msdf_pixel_range_3411492887 != nil)
        let _method_font_get_msdf_pixel_range_2198884583_name = StringName(from: "font_get_msdf_pixel_range")
        self._method_font_get_msdf_pixel_range_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_msdf_pixel_range_2198884583_name._native_ptr(), 2198884583)
        assert(TextServer._method_font_get_msdf_pixel_range_2198884583 != nil)
        let _method_font_set_msdf_size_3411492887_name = StringName(from: "font_set_msdf_size")
        self._method_font_set_msdf_size_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_msdf_size_3411492887_name._native_ptr(), 3411492887)
        assert(TextServer._method_font_set_msdf_size_3411492887 != nil)
        let _method_font_get_msdf_size_2198884583_name = StringName(from: "font_get_msdf_size")
        self._method_font_get_msdf_size_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_msdf_size_2198884583_name._native_ptr(), 2198884583)
        assert(TextServer._method_font_get_msdf_size_2198884583 != nil)
        let _method_font_set_fixed_size_3411492887_name = StringName(from: "font_set_fixed_size")
        self._method_font_set_fixed_size_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_fixed_size_3411492887_name._native_ptr(), 3411492887)
        assert(TextServer._method_font_set_fixed_size_3411492887 != nil)
        let _method_font_get_fixed_size_2198884583_name = StringName(from: "font_get_fixed_size")
        self._method_font_get_fixed_size_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_fixed_size_2198884583_name._native_ptr(), 2198884583)
        assert(TextServer._method_font_get_fixed_size_2198884583 != nil)
        let _method_font_set_allow_system_fallback_1265174801_name = StringName(from: "font_set_allow_system_fallback")
        self._method_font_set_allow_system_fallback_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_allow_system_fallback_1265174801_name._native_ptr(), 1265174801)
        assert(TextServer._method_font_set_allow_system_fallback_1265174801 != nil)
        let _method_font_is_allow_system_fallback_4155700596_name = StringName(from: "font_is_allow_system_fallback")
        self._method_font_is_allow_system_fallback_4155700596 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_is_allow_system_fallback_4155700596_name._native_ptr(), 4155700596)
        assert(TextServer._method_font_is_allow_system_fallback_4155700596 != nil)
        let _method_font_set_force_autohinter_1265174801_name = StringName(from: "font_set_force_autohinter")
        self._method_font_set_force_autohinter_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_force_autohinter_1265174801_name._native_ptr(), 1265174801)
        assert(TextServer._method_font_set_force_autohinter_1265174801 != nil)
        let _method_font_is_force_autohinter_4155700596_name = StringName(from: "font_is_force_autohinter")
        self._method_font_is_force_autohinter_4155700596 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_is_force_autohinter_4155700596_name._native_ptr(), 4155700596)
        assert(TextServer._method_font_is_force_autohinter_4155700596 != nil)
        let _method_font_set_hinting_1520010864_name = StringName(from: "font_set_hinting")
        self._method_font_set_hinting_1520010864 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_hinting_1520010864_name._native_ptr(), 1520010864)
        assert(TextServer._method_font_set_hinting_1520010864 != nil)
        let _method_font_get_hinting_3971592737_name = StringName(from: "font_get_hinting")
        self._method_font_get_hinting_3971592737 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_hinting_3971592737_name._native_ptr(), 3971592737)
        assert(TextServer._method_font_get_hinting_3971592737 != nil)
        let _method_font_set_subpixel_positioning_3830459669_name = StringName(from: "font_set_subpixel_positioning")
        self._method_font_set_subpixel_positioning_3830459669 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_subpixel_positioning_3830459669_name._native_ptr(), 3830459669)
        assert(TextServer._method_font_set_subpixel_positioning_3830459669 != nil)
        let _method_font_get_subpixel_positioning_2752233671_name = StringName(from: "font_get_subpixel_positioning")
        self._method_font_get_subpixel_positioning_2752233671 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_subpixel_positioning_2752233671_name._native_ptr(), 2752233671)
        assert(TextServer._method_font_get_subpixel_positioning_2752233671 != nil)
        let _method_font_set_embolden_1794382983_name = StringName(from: "font_set_embolden")
        self._method_font_set_embolden_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_embolden_1794382983_name._native_ptr(), 1794382983)
        assert(TextServer._method_font_set_embolden_1794382983 != nil)
        let _method_font_get_embolden_866169185_name = StringName(from: "font_get_embolden")
        self._method_font_get_embolden_866169185 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_embolden_866169185_name._native_ptr(), 866169185)
        assert(TextServer._method_font_get_embolden_866169185 != nil)
        let _method_font_set_transform_1246044741_name = StringName(from: "font_set_transform")
        self._method_font_set_transform_1246044741 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_transform_1246044741_name._native_ptr(), 1246044741)
        assert(TextServer._method_font_set_transform_1246044741 != nil)
        let _method_font_get_transform_213527486_name = StringName(from: "font_get_transform")
        self._method_font_get_transform_213527486 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_transform_213527486_name._native_ptr(), 213527486)
        assert(TextServer._method_font_get_transform_213527486 != nil)
        let _method_font_set_variation_coordinates_1217542888_name = StringName(from: "font_set_variation_coordinates")
        self._method_font_set_variation_coordinates_1217542888 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_variation_coordinates_1217542888_name._native_ptr(), 1217542888)
        assert(TextServer._method_font_set_variation_coordinates_1217542888 != nil)
        let _method_font_get_variation_coordinates_1882737106_name = StringName(from: "font_get_variation_coordinates")
        self._method_font_get_variation_coordinates_1882737106 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_variation_coordinates_1882737106_name._native_ptr(), 1882737106)
        assert(TextServer._method_font_get_variation_coordinates_1882737106 != nil)
        let _method_font_set_oversampling_1794382983_name = StringName(from: "font_set_oversampling")
        self._method_font_set_oversampling_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_oversampling_1794382983_name._native_ptr(), 1794382983)
        assert(TextServer._method_font_set_oversampling_1794382983 != nil)
        let _method_font_get_oversampling_866169185_name = StringName(from: "font_get_oversampling")
        self._method_font_get_oversampling_866169185 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_oversampling_866169185_name._native_ptr(), 866169185)
        assert(TextServer._method_font_get_oversampling_866169185 != nil)
        let _method_font_get_size_cache_list_2684255073_name = StringName(from: "font_get_size_cache_list")
        self._method_font_get_size_cache_list_2684255073 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_size_cache_list_2684255073_name._native_ptr(), 2684255073)
        assert(TextServer._method_font_get_size_cache_list_2684255073 != nil)
        let _method_font_clear_size_cache_2722037293_name = StringName(from: "font_clear_size_cache")
        self._method_font_clear_size_cache_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_clear_size_cache_2722037293_name._native_ptr(), 2722037293)
        assert(TextServer._method_font_clear_size_cache_2722037293 != nil)
        let _method_font_remove_size_cache_2450610377_name = StringName(from: "font_remove_size_cache")
        self._method_font_remove_size_cache_2450610377 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_remove_size_cache_2450610377_name._native_ptr(), 2450610377)
        assert(TextServer._method_font_remove_size_cache_2450610377 != nil)
        let _method_font_set_ascent_1892459533_name = StringName(from: "font_set_ascent")
        self._method_font_set_ascent_1892459533 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_ascent_1892459533_name._native_ptr(), 1892459533)
        assert(TextServer._method_font_set_ascent_1892459533 != nil)
        let _method_font_get_ascent_755457166_name = StringName(from: "font_get_ascent")
        self._method_font_get_ascent_755457166 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_ascent_755457166_name._native_ptr(), 755457166)
        assert(TextServer._method_font_get_ascent_755457166 != nil)
        let _method_font_set_descent_1892459533_name = StringName(from: "font_set_descent")
        self._method_font_set_descent_1892459533 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_descent_1892459533_name._native_ptr(), 1892459533)
        assert(TextServer._method_font_set_descent_1892459533 != nil)
        let _method_font_get_descent_755457166_name = StringName(from: "font_get_descent")
        self._method_font_get_descent_755457166 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_descent_755457166_name._native_ptr(), 755457166)
        assert(TextServer._method_font_get_descent_755457166 != nil)
        let _method_font_set_underline_position_1892459533_name = StringName(from: "font_set_underline_position")
        self._method_font_set_underline_position_1892459533 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_underline_position_1892459533_name._native_ptr(), 1892459533)
        assert(TextServer._method_font_set_underline_position_1892459533 != nil)
        let _method_font_get_underline_position_755457166_name = StringName(from: "font_get_underline_position")
        self._method_font_get_underline_position_755457166 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_underline_position_755457166_name._native_ptr(), 755457166)
        assert(TextServer._method_font_get_underline_position_755457166 != nil)
        let _method_font_set_underline_thickness_1892459533_name = StringName(from: "font_set_underline_thickness")
        self._method_font_set_underline_thickness_1892459533 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_underline_thickness_1892459533_name._native_ptr(), 1892459533)
        assert(TextServer._method_font_set_underline_thickness_1892459533 != nil)
        let _method_font_get_underline_thickness_755457166_name = StringName(from: "font_get_underline_thickness")
        self._method_font_get_underline_thickness_755457166 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_underline_thickness_755457166_name._native_ptr(), 755457166)
        assert(TextServer._method_font_get_underline_thickness_755457166 != nil)
        let _method_font_set_scale_1892459533_name = StringName(from: "font_set_scale")
        self._method_font_set_scale_1892459533 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_scale_1892459533_name._native_ptr(), 1892459533)
        assert(TextServer._method_font_set_scale_1892459533 != nil)
        let _method_font_get_scale_755457166_name = StringName(from: "font_get_scale")
        self._method_font_get_scale_755457166 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_scale_755457166_name._native_ptr(), 755457166)
        assert(TextServer._method_font_get_scale_755457166 != nil)
        let _method_font_get_texture_count_1311001310_name = StringName(from: "font_get_texture_count")
        self._method_font_get_texture_count_1311001310 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_texture_count_1311001310_name._native_ptr(), 1311001310)
        assert(TextServer._method_font_get_texture_count_1311001310 != nil)
        let _method_font_clear_textures_2450610377_name = StringName(from: "font_clear_textures")
        self._method_font_clear_textures_2450610377 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_clear_textures_2450610377_name._native_ptr(), 2450610377)
        assert(TextServer._method_font_clear_textures_2450610377 != nil)
        let _method_font_remove_texture_3810512262_name = StringName(from: "font_remove_texture")
        self._method_font_remove_texture_3810512262 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_remove_texture_3810512262_name._native_ptr(), 3810512262)
        assert(TextServer._method_font_remove_texture_3810512262 != nil)
        let _method_font_set_texture_image_2354485091_name = StringName(from: "font_set_texture_image")
        self._method_font_set_texture_image_2354485091 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_texture_image_2354485091_name._native_ptr(), 2354485091)
        assert(TextServer._method_font_set_texture_image_2354485091 != nil)
        let _method_font_get_texture_image_2451761155_name = StringName(from: "font_get_texture_image")
        self._method_font_get_texture_image_2451761155 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_texture_image_2451761155_name._native_ptr(), 2451761155)
        assert(TextServer._method_font_get_texture_image_2451761155 != nil)
        let _method_font_set_texture_offsets_3005398047_name = StringName(from: "font_set_texture_offsets")
        self._method_font_set_texture_offsets_3005398047 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_texture_offsets_3005398047_name._native_ptr(), 3005398047)
        assert(TextServer._method_font_set_texture_offsets_3005398047 != nil)
        let _method_font_get_texture_offsets_3420028887_name = StringName(from: "font_get_texture_offsets")
        self._method_font_get_texture_offsets_3420028887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_texture_offsets_3420028887_name._native_ptr(), 3420028887)
        assert(TextServer._method_font_get_texture_offsets_3420028887 != nil)
        let _method_font_get_glyph_list_46086620_name = StringName(from: "font_get_glyph_list")
        self._method_font_get_glyph_list_46086620 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_glyph_list_46086620_name._native_ptr(), 46086620)
        assert(TextServer._method_font_get_glyph_list_46086620 != nil)
        let _method_font_clear_glyphs_2450610377_name = StringName(from: "font_clear_glyphs")
        self._method_font_clear_glyphs_2450610377 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_clear_glyphs_2450610377_name._native_ptr(), 2450610377)
        assert(TextServer._method_font_clear_glyphs_2450610377 != nil)
        let _method_font_remove_glyph_3810512262_name = StringName(from: "font_remove_glyph")
        self._method_font_remove_glyph_3810512262 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_remove_glyph_3810512262_name._native_ptr(), 3810512262)
        assert(TextServer._method_font_remove_glyph_3810512262 != nil)
        let _method_font_get_glyph_advance_2555689501_name = StringName(from: "font_get_glyph_advance")
        self._method_font_get_glyph_advance_2555689501 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_glyph_advance_2555689501_name._native_ptr(), 2555689501)
        assert(TextServer._method_font_get_glyph_advance_2555689501 != nil)
        let _method_font_set_glyph_advance_3219397315_name = StringName(from: "font_set_glyph_advance")
        self._method_font_set_glyph_advance_3219397315 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_glyph_advance_3219397315_name._native_ptr(), 3219397315)
        assert(TextServer._method_font_set_glyph_advance_3219397315 != nil)
        let _method_font_get_glyph_offset_513728628_name = StringName(from: "font_get_glyph_offset")
        self._method_font_get_glyph_offset_513728628 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_glyph_offset_513728628_name._native_ptr(), 513728628)
        assert(TextServer._method_font_get_glyph_offset_513728628 != nil)
        let _method_font_set_glyph_offset_1812632090_name = StringName(from: "font_set_glyph_offset")
        self._method_font_set_glyph_offset_1812632090 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_glyph_offset_1812632090_name._native_ptr(), 1812632090)
        assert(TextServer._method_font_set_glyph_offset_1812632090 != nil)
        let _method_font_get_glyph_size_513728628_name = StringName(from: "font_get_glyph_size")
        self._method_font_get_glyph_size_513728628 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_glyph_size_513728628_name._native_ptr(), 513728628)
        assert(TextServer._method_font_get_glyph_size_513728628 != nil)
        let _method_font_set_glyph_size_1812632090_name = StringName(from: "font_set_glyph_size")
        self._method_font_set_glyph_size_1812632090 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_glyph_size_1812632090_name._native_ptr(), 1812632090)
        assert(TextServer._method_font_set_glyph_size_1812632090 != nil)
        let _method_font_get_glyph_uv_rect_2274268786_name = StringName(from: "font_get_glyph_uv_rect")
        self._method_font_get_glyph_uv_rect_2274268786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_glyph_uv_rect_2274268786_name._native_ptr(), 2274268786)
        assert(TextServer._method_font_get_glyph_uv_rect_2274268786 != nil)
        let _method_font_set_glyph_uv_rect_1973324081_name = StringName(from: "font_set_glyph_uv_rect")
        self._method_font_set_glyph_uv_rect_1973324081 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_glyph_uv_rect_1973324081_name._native_ptr(), 1973324081)
        assert(TextServer._method_font_set_glyph_uv_rect_1973324081 != nil)
        let _method_font_get_glyph_texture_idx_4292800474_name = StringName(from: "font_get_glyph_texture_idx")
        self._method_font_get_glyph_texture_idx_4292800474 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_glyph_texture_idx_4292800474_name._native_ptr(), 4292800474)
        assert(TextServer._method_font_get_glyph_texture_idx_4292800474 != nil)
        let _method_font_set_glyph_texture_idx_4254580980_name = StringName(from: "font_set_glyph_texture_idx")
        self._method_font_set_glyph_texture_idx_4254580980 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_glyph_texture_idx_4254580980_name._native_ptr(), 4254580980)
        assert(TextServer._method_font_set_glyph_texture_idx_4254580980 != nil)
        let _method_font_get_glyph_texture_rid_1451696141_name = StringName(from: "font_get_glyph_texture_rid")
        self._method_font_get_glyph_texture_rid_1451696141 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_glyph_texture_rid_1451696141_name._native_ptr(), 1451696141)
        assert(TextServer._method_font_get_glyph_texture_rid_1451696141 != nil)
        let _method_font_get_glyph_texture_size_513728628_name = StringName(from: "font_get_glyph_texture_size")
        self._method_font_get_glyph_texture_size_513728628 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_glyph_texture_size_513728628_name._native_ptr(), 513728628)
        assert(TextServer._method_font_get_glyph_texture_size_513728628 != nil)
        let _method_font_get_glyph_contours_2903964473_name = StringName(from: "font_get_glyph_contours")
        self._method_font_get_glyph_contours_2903964473 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_glyph_contours_2903964473_name._native_ptr(), 2903964473)
        assert(TextServer._method_font_get_glyph_contours_2903964473 != nil)
        let _method_font_get_kerning_list_1778388067_name = StringName(from: "font_get_kerning_list")
        self._method_font_get_kerning_list_1778388067 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_kerning_list_1778388067_name._native_ptr(), 1778388067)
        assert(TextServer._method_font_get_kerning_list_1778388067 != nil)
        let _method_font_clear_kerning_map_3411492887_name = StringName(from: "font_clear_kerning_map")
        self._method_font_clear_kerning_map_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_clear_kerning_map_3411492887_name._native_ptr(), 3411492887)
        assert(TextServer._method_font_clear_kerning_map_3411492887 != nil)
        let _method_font_remove_kerning_2141860016_name = StringName(from: "font_remove_kerning")
        self._method_font_remove_kerning_2141860016 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_remove_kerning_2141860016_name._native_ptr(), 2141860016)
        assert(TextServer._method_font_remove_kerning_2141860016 != nil)
        let _method_font_set_kerning_3630965883_name = StringName(from: "font_set_kerning")
        self._method_font_set_kerning_3630965883 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_kerning_3630965883_name._native_ptr(), 3630965883)
        assert(TextServer._method_font_set_kerning_3630965883 != nil)
        let _method_font_get_kerning_1019980169_name = StringName(from: "font_get_kerning")
        self._method_font_get_kerning_1019980169 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_kerning_1019980169_name._native_ptr(), 1019980169)
        assert(TextServer._method_font_get_kerning_1019980169 != nil)
        let _method_font_get_glyph_index_1765635060_name = StringName(from: "font_get_glyph_index")
        self._method_font_get_glyph_index_1765635060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_glyph_index_1765635060_name._native_ptr(), 1765635060)
        assert(TextServer._method_font_get_glyph_index_1765635060 != nil)
        let _method_font_has_char_3120086654_name = StringName(from: "font_has_char")
        self._method_font_has_char_3120086654 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_has_char_3120086654_name._native_ptr(), 3120086654)
        assert(TextServer._method_font_has_char_3120086654 != nil)
        let _method_font_get_supported_chars_642473191_name = StringName(from: "font_get_supported_chars")
        self._method_font_get_supported_chars_642473191 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_supported_chars_642473191_name._native_ptr(), 642473191)
        assert(TextServer._method_font_get_supported_chars_642473191 != nil)
        let _method_font_render_range_4254580980_name = StringName(from: "font_render_range")
        self._method_font_render_range_4254580980 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_render_range_4254580980_name._native_ptr(), 4254580980)
        assert(TextServer._method_font_render_range_4254580980 != nil)
        let _method_font_render_glyph_3810512262_name = StringName(from: "font_render_glyph")
        self._method_font_render_glyph_3810512262 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_render_glyph_3810512262_name._native_ptr(), 3810512262)
        assert(TextServer._method_font_render_glyph_3810512262 != nil)
        let _method_font_draw_glyph_1821196351_name = StringName(from: "font_draw_glyph")
        self._method_font_draw_glyph_1821196351 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_draw_glyph_1821196351_name._native_ptr(), 1821196351)
        assert(TextServer._method_font_draw_glyph_1821196351 != nil)
        let _method_font_draw_glyph_outline_1124898203_name = StringName(from: "font_draw_glyph_outline")
        self._method_font_draw_glyph_outline_1124898203 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_draw_glyph_outline_1124898203_name._native_ptr(), 1124898203)
        assert(TextServer._method_font_draw_glyph_outline_1124898203 != nil)
        let _method_font_is_language_supported_3199320846_name = StringName(from: "font_is_language_supported")
        self._method_font_is_language_supported_3199320846 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_is_language_supported_3199320846_name._native_ptr(), 3199320846)
        assert(TextServer._method_font_is_language_supported_3199320846 != nil)
        let _method_font_set_language_support_override_2313957094_name = StringName(from: "font_set_language_support_override")
        self._method_font_set_language_support_override_2313957094 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_language_support_override_2313957094_name._native_ptr(), 2313957094)
        assert(TextServer._method_font_set_language_support_override_2313957094 != nil)
        let _method_font_get_language_support_override_2829184646_name = StringName(from: "font_get_language_support_override")
        self._method_font_get_language_support_override_2829184646 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_language_support_override_2829184646_name._native_ptr(), 2829184646)
        assert(TextServer._method_font_get_language_support_override_2829184646 != nil)
        let _method_font_remove_language_support_override_2726140452_name = StringName(from: "font_remove_language_support_override")
        self._method_font_remove_language_support_override_2726140452 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_remove_language_support_override_2726140452_name._native_ptr(), 2726140452)
        assert(TextServer._method_font_remove_language_support_override_2726140452 != nil)
        let _method_font_get_language_support_overrides_2801473409_name = StringName(from: "font_get_language_support_overrides")
        self._method_font_get_language_support_overrides_2801473409 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_language_support_overrides_2801473409_name._native_ptr(), 2801473409)
        assert(TextServer._method_font_get_language_support_overrides_2801473409 != nil)
        let _method_font_is_script_supported_3199320846_name = StringName(from: "font_is_script_supported")
        self._method_font_is_script_supported_3199320846 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_is_script_supported_3199320846_name._native_ptr(), 3199320846)
        assert(TextServer._method_font_is_script_supported_3199320846 != nil)
        let _method_font_set_script_support_override_2313957094_name = StringName(from: "font_set_script_support_override")
        self._method_font_set_script_support_override_2313957094 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_script_support_override_2313957094_name._native_ptr(), 2313957094)
        assert(TextServer._method_font_set_script_support_override_2313957094 != nil)
        let _method_font_get_script_support_override_2829184646_name = StringName(from: "font_get_script_support_override")
        self._method_font_get_script_support_override_2829184646 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_script_support_override_2829184646_name._native_ptr(), 2829184646)
        assert(TextServer._method_font_get_script_support_override_2829184646 != nil)
        let _method_font_remove_script_support_override_2726140452_name = StringName(from: "font_remove_script_support_override")
        self._method_font_remove_script_support_override_2726140452 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_remove_script_support_override_2726140452_name._native_ptr(), 2726140452)
        assert(TextServer._method_font_remove_script_support_override_2726140452 != nil)
        let _method_font_get_script_support_overrides_2801473409_name = StringName(from: "font_get_script_support_overrides")
        self._method_font_get_script_support_overrides_2801473409 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_script_support_overrides_2801473409_name._native_ptr(), 2801473409)
        assert(TextServer._method_font_get_script_support_overrides_2801473409 != nil)
        let _method_font_set_opentype_feature_overrides_1217542888_name = StringName(from: "font_set_opentype_feature_overrides")
        self._method_font_set_opentype_feature_overrides_1217542888 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_opentype_feature_overrides_1217542888_name._native_ptr(), 1217542888)
        assert(TextServer._method_font_set_opentype_feature_overrides_1217542888 != nil)
        let _method_font_get_opentype_feature_overrides_1882737106_name = StringName(from: "font_get_opentype_feature_overrides")
        self._method_font_get_opentype_feature_overrides_1882737106 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_opentype_feature_overrides_1882737106_name._native_ptr(), 1882737106)
        assert(TextServer._method_font_get_opentype_feature_overrides_1882737106 != nil)
        let _method_font_supported_feature_list_1882737106_name = StringName(from: "font_supported_feature_list")
        self._method_font_supported_feature_list_1882737106 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_supported_feature_list_1882737106_name._native_ptr(), 1882737106)
        assert(TextServer._method_font_supported_feature_list_1882737106 != nil)
        let _method_font_supported_variation_list_1882737106_name = StringName(from: "font_supported_variation_list")
        self._method_font_supported_variation_list_1882737106 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_supported_variation_list_1882737106_name._native_ptr(), 1882737106)
        assert(TextServer._method_font_supported_variation_list_1882737106 != nil)
        let _method_font_get_global_oversampling_1740695150_name = StringName(from: "font_get_global_oversampling")
        self._method_font_get_global_oversampling_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_get_global_oversampling_1740695150_name._native_ptr(), 1740695150)
        assert(TextServer._method_font_get_global_oversampling_1740695150 != nil)
        let _method_font_set_global_oversampling_373806689_name = StringName(from: "font_set_global_oversampling")
        self._method_font_set_global_oversampling_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_font_set_global_oversampling_373806689_name._native_ptr(), 373806689)
        assert(TextServer._method_font_set_global_oversampling_373806689 != nil)
        let _method_get_hex_code_box_size_3016396712_name = StringName(from: "get_hex_code_box_size")
        self._method_get_hex_code_box_size_3016396712 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_hex_code_box_size_3016396712_name._native_ptr(), 3016396712)
        assert(TextServer._method_get_hex_code_box_size_3016396712 != nil)
        let _method_draw_hex_code_box_1602046441_name = StringName(from: "draw_hex_code_box")
        self._method_draw_hex_code_box_1602046441 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_hex_code_box_1602046441_name._native_ptr(), 1602046441)
        assert(TextServer._method_draw_hex_code_box_1602046441 != nil)
        let _method_create_shaped_text_1231398698_name = StringName(from: "create_shaped_text")
        self._method_create_shaped_text_1231398698 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_shaped_text_1231398698_name._native_ptr(), 1231398698)
        assert(TextServer._method_create_shaped_text_1231398698 != nil)
        let _method_shaped_text_clear_2722037293_name = StringName(from: "shaped_text_clear")
        self._method_shaped_text_clear_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_clear_2722037293_name._native_ptr(), 2722037293)
        assert(TextServer._method_shaped_text_clear_2722037293 != nil)
        let _method_shaped_text_set_direction_2616949700_name = StringName(from: "shaped_text_set_direction")
        self._method_shaped_text_set_direction_2616949700 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_set_direction_2616949700_name._native_ptr(), 2616949700)
        assert(TextServer._method_shaped_text_set_direction_2616949700 != nil)
        let _method_shaped_text_get_direction_3065904362_name = StringName(from: "shaped_text_get_direction")
        self._method_shaped_text_get_direction_3065904362 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_get_direction_3065904362_name._native_ptr(), 3065904362)
        assert(TextServer._method_shaped_text_get_direction_3065904362 != nil)
        let _method_shaped_text_get_inferred_direction_3065904362_name = StringName(from: "shaped_text_get_inferred_direction")
        self._method_shaped_text_get_inferred_direction_3065904362 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_get_inferred_direction_3065904362_name._native_ptr(), 3065904362)
        assert(TextServer._method_shaped_text_get_inferred_direction_3065904362 != nil)
        let _method_shaped_text_set_bidi_override_684822712_name = StringName(from: "shaped_text_set_bidi_override")
        self._method_shaped_text_set_bidi_override_684822712 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_set_bidi_override_684822712_name._native_ptr(), 684822712)
        assert(TextServer._method_shaped_text_set_bidi_override_684822712 != nil)
        let _method_shaped_text_set_custom_punctuation_2726140452_name = StringName(from: "shaped_text_set_custom_punctuation")
        self._method_shaped_text_set_custom_punctuation_2726140452 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_set_custom_punctuation_2726140452_name._native_ptr(), 2726140452)
        assert(TextServer._method_shaped_text_set_custom_punctuation_2726140452 != nil)
        let _method_shaped_text_get_custom_punctuation_642473191_name = StringName(from: "shaped_text_get_custom_punctuation")
        self._method_shaped_text_get_custom_punctuation_642473191 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_get_custom_punctuation_642473191_name._native_ptr(), 642473191)
        assert(TextServer._method_shaped_text_get_custom_punctuation_642473191 != nil)
        let _method_shaped_text_set_orientation_104095128_name = StringName(from: "shaped_text_set_orientation")
        self._method_shaped_text_set_orientation_104095128 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_set_orientation_104095128_name._native_ptr(), 104095128)
        assert(TextServer._method_shaped_text_set_orientation_104095128 != nil)
        let _method_shaped_text_get_orientation_3142708106_name = StringName(from: "shaped_text_get_orientation")
        self._method_shaped_text_get_orientation_3142708106 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_get_orientation_3142708106_name._native_ptr(), 3142708106)
        assert(TextServer._method_shaped_text_get_orientation_3142708106 != nil)
        let _method_shaped_text_set_preserve_invalid_1265174801_name = StringName(from: "shaped_text_set_preserve_invalid")
        self._method_shaped_text_set_preserve_invalid_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_set_preserve_invalid_1265174801_name._native_ptr(), 1265174801)
        assert(TextServer._method_shaped_text_set_preserve_invalid_1265174801 != nil)
        let _method_shaped_text_get_preserve_invalid_4155700596_name = StringName(from: "shaped_text_get_preserve_invalid")
        self._method_shaped_text_get_preserve_invalid_4155700596 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_get_preserve_invalid_4155700596_name._native_ptr(), 4155700596)
        assert(TextServer._method_shaped_text_get_preserve_invalid_4155700596 != nil)
        let _method_shaped_text_set_preserve_control_1265174801_name = StringName(from: "shaped_text_set_preserve_control")
        self._method_shaped_text_set_preserve_control_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_set_preserve_control_1265174801_name._native_ptr(), 1265174801)
        assert(TextServer._method_shaped_text_set_preserve_control_1265174801 != nil)
        let _method_shaped_text_get_preserve_control_4155700596_name = StringName(from: "shaped_text_get_preserve_control")
        self._method_shaped_text_get_preserve_control_4155700596 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_get_preserve_control_4155700596_name._native_ptr(), 4155700596)
        assert(TextServer._method_shaped_text_get_preserve_control_4155700596 != nil)
        let _method_shaped_text_set_spacing_1307259930_name = StringName(from: "shaped_text_set_spacing")
        self._method_shaped_text_set_spacing_1307259930 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_set_spacing_1307259930_name._native_ptr(), 1307259930)
        assert(TextServer._method_shaped_text_set_spacing_1307259930 != nil)
        let _method_shaped_text_get_spacing_1213653558_name = StringName(from: "shaped_text_get_spacing")
        self._method_shaped_text_get_spacing_1213653558 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_get_spacing_1213653558_name._native_ptr(), 1213653558)
        assert(TextServer._method_shaped_text_get_spacing_1213653558 != nil)
        let _method_shaped_text_add_string_2621279422_name = StringName(from: "shaped_text_add_string")
        self._method_shaped_text_add_string_2621279422 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_add_string_2621279422_name._native_ptr(), 2621279422)
        assert(TextServer._method_shaped_text_add_string_2621279422 != nil)
        let _method_shaped_text_add_object_2838446185_name = StringName(from: "shaped_text_add_object")
        self._method_shaped_text_add_object_2838446185 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_add_object_2838446185_name._native_ptr(), 2838446185)
        assert(TextServer._method_shaped_text_add_object_2838446185 != nil)
        let _method_shaped_text_resize_object_2353789835_name = StringName(from: "shaped_text_resize_object")
        self._method_shaped_text_resize_object_2353789835 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_resize_object_2353789835_name._native_ptr(), 2353789835)
        assert(TextServer._method_shaped_text_resize_object_2353789835 != nil)
        let _method_shaped_get_span_count_2198884583_name = StringName(from: "shaped_get_span_count")
        self._method_shaped_get_span_count_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_get_span_count_2198884583_name._native_ptr(), 2198884583)
        assert(TextServer._method_shaped_get_span_count_2198884583 != nil)
        let _method_shaped_get_span_meta_4069510997_name = StringName(from: "shaped_get_span_meta")
        self._method_shaped_get_span_meta_4069510997 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_get_span_meta_4069510997_name._native_ptr(), 4069510997)
        assert(TextServer._method_shaped_get_span_meta_4069510997 != nil)
        let _method_shaped_set_span_update_font_1578983057_name = StringName(from: "shaped_set_span_update_font")
        self._method_shaped_set_span_update_font_1578983057 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_set_span_update_font_1578983057_name._native_ptr(), 1578983057)
        assert(TextServer._method_shaped_set_span_update_font_1578983057 != nil)
        let _method_shaped_text_substr_1937682086_name = StringName(from: "shaped_text_substr")
        self._method_shaped_text_substr_1937682086 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_substr_1937682086_name._native_ptr(), 1937682086)
        assert(TextServer._method_shaped_text_substr_1937682086 != nil)
        let _method_shaped_text_get_parent_3814569979_name = StringName(from: "shaped_text_get_parent")
        self._method_shaped_text_get_parent_3814569979 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_get_parent_3814569979_name._native_ptr(), 3814569979)
        assert(TextServer._method_shaped_text_get_parent_3814569979 != nil)
        let _method_shaped_text_fit_to_width_603718830_name = StringName(from: "shaped_text_fit_to_width")
        self._method_shaped_text_fit_to_width_603718830 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_fit_to_width_603718830_name._native_ptr(), 603718830)
        assert(TextServer._method_shaped_text_fit_to_width_603718830 != nil)
        let _method_shaped_text_tab_align_1283669550_name = StringName(from: "shaped_text_tab_align")
        self._method_shaped_text_tab_align_1283669550 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_tab_align_1283669550_name._native_ptr(), 1283669550)
        assert(TextServer._method_shaped_text_tab_align_1283669550 != nil)
        let _method_shaped_text_shape_3521089500_name = StringName(from: "shaped_text_shape")
        self._method_shaped_text_shape_3521089500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_shape_3521089500_name._native_ptr(), 3521089500)
        assert(TextServer._method_shaped_text_shape_3521089500 != nil)
        let _method_shaped_text_is_ready_4155700596_name = StringName(from: "shaped_text_is_ready")
        self._method_shaped_text_is_ready_4155700596 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_is_ready_4155700596_name._native_ptr(), 4155700596)
        assert(TextServer._method_shaped_text_is_ready_4155700596 != nil)
        let _method_shaped_text_get_glyphs_2684255073_name = StringName(from: "shaped_text_get_glyphs")
        self._method_shaped_text_get_glyphs_2684255073 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_get_glyphs_2684255073_name._native_ptr(), 2684255073)
        assert(TextServer._method_shaped_text_get_glyphs_2684255073 != nil)
        let _method_shaped_text_sort_logical_2670461153_name = StringName(from: "shaped_text_sort_logical")
        self._method_shaped_text_sort_logical_2670461153 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_sort_logical_2670461153_name._native_ptr(), 2670461153)
        assert(TextServer._method_shaped_text_sort_logical_2670461153 != nil)
        let _method_shaped_text_get_glyph_count_2198884583_name = StringName(from: "shaped_text_get_glyph_count")
        self._method_shaped_text_get_glyph_count_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_get_glyph_count_2198884583_name._native_ptr(), 2198884583)
        assert(TextServer._method_shaped_text_get_glyph_count_2198884583 != nil)
        let _method_shaped_text_get_range_733700038_name = StringName(from: "shaped_text_get_range")
        self._method_shaped_text_get_range_733700038 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_get_range_733700038_name._native_ptr(), 733700038)
        assert(TextServer._method_shaped_text_get_range_733700038 != nil)
        let _method_shaped_text_get_line_breaks_adv_4206849830_name = StringName(from: "shaped_text_get_line_breaks_adv")
        self._method_shaped_text_get_line_breaks_adv_4206849830 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_get_line_breaks_adv_4206849830_name._native_ptr(), 4206849830)
        assert(TextServer._method_shaped_text_get_line_breaks_adv_4206849830 != nil)
        let _method_shaped_text_get_line_breaks_303410369_name = StringName(from: "shaped_text_get_line_breaks")
        self._method_shaped_text_get_line_breaks_303410369 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_get_line_breaks_303410369_name._native_ptr(), 303410369)
        assert(TextServer._method_shaped_text_get_line_breaks_303410369 != nil)
        let _method_shaped_text_get_word_breaks_3299477123_name = StringName(from: "shaped_text_get_word_breaks")
        self._method_shaped_text_get_word_breaks_3299477123 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_get_word_breaks_3299477123_name._native_ptr(), 3299477123)
        assert(TextServer._method_shaped_text_get_word_breaks_3299477123 != nil)
        let _method_shaped_text_get_trim_pos_2198884583_name = StringName(from: "shaped_text_get_trim_pos")
        self._method_shaped_text_get_trim_pos_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_get_trim_pos_2198884583_name._native_ptr(), 2198884583)
        assert(TextServer._method_shaped_text_get_trim_pos_2198884583 != nil)
        let _method_shaped_text_get_ellipsis_pos_2198884583_name = StringName(from: "shaped_text_get_ellipsis_pos")
        self._method_shaped_text_get_ellipsis_pos_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_get_ellipsis_pos_2198884583_name._native_ptr(), 2198884583)
        assert(TextServer._method_shaped_text_get_ellipsis_pos_2198884583 != nil)
        let _method_shaped_text_get_ellipsis_glyphs_2684255073_name = StringName(from: "shaped_text_get_ellipsis_glyphs")
        self._method_shaped_text_get_ellipsis_glyphs_2684255073 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_get_ellipsis_glyphs_2684255073_name._native_ptr(), 2684255073)
        assert(TextServer._method_shaped_text_get_ellipsis_glyphs_2684255073 != nil)
        let _method_shaped_text_get_ellipsis_glyph_count_2198884583_name = StringName(from: "shaped_text_get_ellipsis_glyph_count")
        self._method_shaped_text_get_ellipsis_glyph_count_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_get_ellipsis_glyph_count_2198884583_name._native_ptr(), 2198884583)
        assert(TextServer._method_shaped_text_get_ellipsis_glyph_count_2198884583 != nil)
        let _method_shaped_text_overrun_trim_to_width_1572579718_name = StringName(from: "shaped_text_overrun_trim_to_width")
        self._method_shaped_text_overrun_trim_to_width_1572579718 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_overrun_trim_to_width_1572579718_name._native_ptr(), 1572579718)
        assert(TextServer._method_shaped_text_overrun_trim_to_width_1572579718 != nil)
        let _method_shaped_text_get_objects_2684255073_name = StringName(from: "shaped_text_get_objects")
        self._method_shaped_text_get_objects_2684255073 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_get_objects_2684255073_name._native_ptr(), 2684255073)
        assert(TextServer._method_shaped_text_get_objects_2684255073 != nil)
        let _method_shaped_text_get_object_rect_447978354_name = StringName(from: "shaped_text_get_object_rect")
        self._method_shaped_text_get_object_rect_447978354 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_get_object_rect_447978354_name._native_ptr(), 447978354)
        assert(TextServer._method_shaped_text_get_object_rect_447978354 != nil)
        let _method_shaped_text_get_size_2440833711_name = StringName(from: "shaped_text_get_size")
        self._method_shaped_text_get_size_2440833711 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_get_size_2440833711_name._native_ptr(), 2440833711)
        assert(TextServer._method_shaped_text_get_size_2440833711 != nil)
        let _method_shaped_text_get_ascent_866169185_name = StringName(from: "shaped_text_get_ascent")
        self._method_shaped_text_get_ascent_866169185 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_get_ascent_866169185_name._native_ptr(), 866169185)
        assert(TextServer._method_shaped_text_get_ascent_866169185 != nil)
        let _method_shaped_text_get_descent_866169185_name = StringName(from: "shaped_text_get_descent")
        self._method_shaped_text_get_descent_866169185 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_get_descent_866169185_name._native_ptr(), 866169185)
        assert(TextServer._method_shaped_text_get_descent_866169185 != nil)
        let _method_shaped_text_get_width_866169185_name = StringName(from: "shaped_text_get_width")
        self._method_shaped_text_get_width_866169185 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_get_width_866169185_name._native_ptr(), 866169185)
        assert(TextServer._method_shaped_text_get_width_866169185 != nil)
        let _method_shaped_text_get_underline_position_866169185_name = StringName(from: "shaped_text_get_underline_position")
        self._method_shaped_text_get_underline_position_866169185 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_get_underline_position_866169185_name._native_ptr(), 866169185)
        assert(TextServer._method_shaped_text_get_underline_position_866169185 != nil)
        let _method_shaped_text_get_underline_thickness_866169185_name = StringName(from: "shaped_text_get_underline_thickness")
        self._method_shaped_text_get_underline_thickness_866169185 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_get_underline_thickness_866169185_name._native_ptr(), 866169185)
        assert(TextServer._method_shaped_text_get_underline_thickness_866169185 != nil)
        let _method_shaped_text_get_carets_1574219346_name = StringName(from: "shaped_text_get_carets")
        self._method_shaped_text_get_carets_1574219346 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_get_carets_1574219346_name._native_ptr(), 1574219346)
        assert(TextServer._method_shaped_text_get_carets_1574219346 != nil)
        let _method_shaped_text_get_selection_3714187733_name = StringName(from: "shaped_text_get_selection")
        self._method_shaped_text_get_selection_3714187733 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_get_selection_3714187733_name._native_ptr(), 3714187733)
        assert(TextServer._method_shaped_text_get_selection_3714187733 != nil)
        let _method_shaped_text_hit_test_grapheme_3149310417_name = StringName(from: "shaped_text_hit_test_grapheme")
        self._method_shaped_text_hit_test_grapheme_3149310417 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_hit_test_grapheme_3149310417_name._native_ptr(), 3149310417)
        assert(TextServer._method_shaped_text_hit_test_grapheme_3149310417 != nil)
        let _method_shaped_text_hit_test_position_3149310417_name = StringName(from: "shaped_text_hit_test_position")
        self._method_shaped_text_hit_test_position_3149310417 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_hit_test_position_3149310417_name._native_ptr(), 3149310417)
        assert(TextServer._method_shaped_text_hit_test_position_3149310417 != nil)
        let _method_shaped_text_get_grapheme_bounds_2546185844_name = StringName(from: "shaped_text_get_grapheme_bounds")
        self._method_shaped_text_get_grapheme_bounds_2546185844 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_get_grapheme_bounds_2546185844_name._native_ptr(), 2546185844)
        assert(TextServer._method_shaped_text_get_grapheme_bounds_2546185844 != nil)
        let _method_shaped_text_next_grapheme_pos_1120910005_name = StringName(from: "shaped_text_next_grapheme_pos")
        self._method_shaped_text_next_grapheme_pos_1120910005 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_next_grapheme_pos_1120910005_name._native_ptr(), 1120910005)
        assert(TextServer._method_shaped_text_next_grapheme_pos_1120910005 != nil)
        let _method_shaped_text_prev_grapheme_pos_1120910005_name = StringName(from: "shaped_text_prev_grapheme_pos")
        self._method_shaped_text_prev_grapheme_pos_1120910005 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_prev_grapheme_pos_1120910005_name._native_ptr(), 1120910005)
        assert(TextServer._method_shaped_text_prev_grapheme_pos_1120910005 != nil)
        let _method_shaped_text_draw_70679950_name = StringName(from: "shaped_text_draw")
        self._method_shaped_text_draw_70679950 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_draw_70679950_name._native_ptr(), 70679950)
        assert(TextServer._method_shaped_text_draw_70679950 != nil)
        let _method_shaped_text_draw_outline_2673671346_name = StringName(from: "shaped_text_draw_outline")
        self._method_shaped_text_draw_outline_2673671346 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_draw_outline_2673671346_name._native_ptr(), 2673671346)
        assert(TextServer._method_shaped_text_draw_outline_2673671346 != nil)
        let _method_shaped_text_get_dominant_direction_in_range_3326907668_name = StringName(from: "shaped_text_get_dominant_direction_in_range")
        self._method_shaped_text_get_dominant_direction_in_range_3326907668 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shaped_text_get_dominant_direction_in_range_3326907668_name._native_ptr(), 3326907668)
        assert(TextServer._method_shaped_text_get_dominant_direction_in_range_3326907668 != nil)
        let _method_format_number_2305636099_name = StringName(from: "format_number")
        self._method_format_number_2305636099 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_format_number_2305636099_name._native_ptr(), 2305636099)
        assert(TextServer._method_format_number_2305636099 != nil)
        let _method_parse_number_2305636099_name = StringName(from: "parse_number")
        self._method_parse_number_2305636099 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_parse_number_2305636099_name._native_ptr(), 2305636099)
        assert(TextServer._method_parse_number_2305636099 != nil)
        let _method_percent_sign_993269549_name = StringName(from: "percent_sign")
        self._method_percent_sign_993269549 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_percent_sign_993269549_name._native_ptr(), 993269549)
        assert(TextServer._method_percent_sign_993269549 != nil)
        let _method_string_get_word_breaks_1398910359_name = StringName(from: "string_get_word_breaks")
        self._method_string_get_word_breaks_1398910359 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_string_get_word_breaks_1398910359_name._native_ptr(), 1398910359)
        assert(TextServer._method_string_get_word_breaks_1398910359 != nil)
        let _method_is_confusable_1433197768_name = StringName(from: "is_confusable")
        self._method_is_confusable_1433197768 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_confusable_1433197768_name._native_ptr(), 1433197768)
        assert(TextServer._method_is_confusable_1433197768 != nil)
        let _method_spoof_check_3927539163_name = StringName(from: "spoof_check")
        self._method_spoof_check_3927539163 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_spoof_check_3927539163_name._native_ptr(), 3927539163)
        assert(TextServer._method_spoof_check_3927539163 != nil)
        let _method_strip_diacritics_3135753539_name = StringName(from: "strip_diacritics")
        self._method_strip_diacritics_3135753539 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_strip_diacritics_3135753539_name._native_ptr(), 3135753539)
        assert(TextServer._method_strip_diacritics_3135753539 != nil)
        let _method_is_valid_identifier_3927539163_name = StringName(from: "is_valid_identifier")
        self._method_is_valid_identifier_3927539163 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_valid_identifier_3927539163_name._native_ptr(), 3927539163)
        assert(TextServer._method_is_valid_identifier_3927539163 != nil)
        let _method_string_to_upper_2305636099_name = StringName(from: "string_to_upper")
        self._method_string_to_upper_2305636099 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_string_to_upper_2305636099_name._native_ptr(), 2305636099)
        assert(TextServer._method_string_to_upper_2305636099 != nil)
        let _method_string_to_lower_2305636099_name = StringName(from: "string_to_lower")
        self._method_string_to_lower_2305636099 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_string_to_lower_2305636099_name._native_ptr(), 2305636099)
        assert(TextServer._method_string_to_lower_2305636099 != nil)
        let _method_parse_structured_text_3310685015_name = StringName(from: "parse_structured_text")
        self._method_parse_structured_text_3310685015 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_parse_structured_text_3310685015_name._native_ptr(), 3310685015)
        assert(TextServer._method_parse_structured_text_3310685015 != nil)
    }

    public func has_feature(feature: TextServer.Feature) -> UInt8 {
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
                    Self._method_has_feature_3967367083,
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
    public func get_features() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_features_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func load_support_data(filename: String) -> UInt8 {
        withUnsafePointer(to: filename) { filename_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(filename_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_load_support_data_2323990056,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func get_support_data_filename() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_support_data_filename_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func get_support_data_info() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_support_data_info_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func save_support_data(filename: String) -> UInt8 {
        withUnsafePointer(to: filename) { filename_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(filename_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_save_support_data_3927539163,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func is_locale_right_to_left(locale: String) -> UInt8 {
        withUnsafePointer(to: locale) { locale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(locale_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_locale_right_to_left_3927539163,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func name_to_tag(name: String) -> Int64 {
        withUnsafePointer(to: name) { name_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_name_to_tag_1321353865,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func tag_to_name(tag: Int64) -> String {
        withUnsafePointer(to: tag) { tag_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tag_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_tag_to_name_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
    public func has(rid: RID) -> UInt8 {
        let rid_native = rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_3521089500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func free_rid(rid: RID)  {
        let rid_native = rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rid_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_free_rid_2722037293,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func create_font() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_font_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func font_set_data(font_rid: RID, data: PackedByteArray)  {
        let data_native = data._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(data_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_data_1355495400,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func font_set_face_index(font_rid: RID, face_index: Int64)  {
        withUnsafePointer(to: face_index) { face_index_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(face_index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_face_index_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func font_get_face_index(font_rid: RID) -> Int64 {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_face_index_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func font_get_face_count(font_rid: RID) -> Int64 {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_face_count_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func font_set_style(font_rid: RID, style: TextServer.FontStyle)  {
        withUnsafePointer(to: style.rawValue) { style_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(style_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_style_898466325,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func font_get_style(font_rid: RID) -> TextServer.FontStyle {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_style_3082502592,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.FontStyle(from: __resPtr.pointee)
    }
    public func font_set_name(font_rid: RID, name: String)  {
        withUnsafePointer(to: name) { name_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_name_2726140452,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func font_get_name(font_rid: RID) -> String {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_name_642473191,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func font_set_style_name(font_rid: RID, name: String)  {
        withUnsafePointer(to: name) { name_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_style_name_2726140452,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func font_get_style_name(font_rid: RID) -> String {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_style_name_642473191,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func font_set_weight(font_rid: RID, weight: Int64)  {
        withUnsafePointer(to: weight) { weight_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(weight_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_weight_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func font_get_weight(font_rid: RID) -> Int64 {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_weight_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func font_set_stretch(font_rid: RID, weight: Int64)  {
        withUnsafePointer(to: weight) { weight_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(weight_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_stretch_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func font_get_stretch(font_rid: RID) -> Int64 {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_stretch_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func font_set_antialiasing(font_rid: RID, antialiasing: TextServer.FontAntialiasing)  {
        withUnsafePointer(to: antialiasing.rawValue) { antialiasing_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(antialiasing_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_antialiasing_958337235,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func font_get_antialiasing(font_rid: RID) -> TextServer.FontAntialiasing {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_antialiasing_3389420495,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.FontAntialiasing(from: __resPtr.pointee)
    }
    public func font_set_generate_mipmaps(font_rid: RID, generate_mipmaps: UInt8)  {
        withUnsafePointer(to: generate_mipmaps) { generate_mipmaps_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(generate_mipmaps_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_generate_mipmaps_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func font_get_generate_mipmaps(font_rid: RID) -> UInt8 {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_generate_mipmaps_4155700596,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func font_set_multichannel_signed_distance_field(font_rid: RID, msdf: UInt8)  {
        withUnsafePointer(to: msdf) { msdf_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(msdf_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_multichannel_signed_distance_field_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func font_is_multichannel_signed_distance_field(font_rid: RID) -> UInt8 {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_is_multichannel_signed_distance_field_4155700596,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func font_set_msdf_pixel_range(font_rid: RID, msdf_pixel_range: Int64)  {
        withUnsafePointer(to: msdf_pixel_range) { msdf_pixel_range_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(msdf_pixel_range_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_msdf_pixel_range_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func font_get_msdf_pixel_range(font_rid: RID) -> Int64 {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_msdf_pixel_range_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func font_set_msdf_size(font_rid: RID, msdf_size: Int64)  {
        withUnsafePointer(to: msdf_size) { msdf_size_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(msdf_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_msdf_size_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func font_get_msdf_size(font_rid: RID) -> Int64 {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_msdf_size_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func font_set_fixed_size(font_rid: RID, fixed_size: Int64)  {
        withUnsafePointer(to: fixed_size) { fixed_size_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(fixed_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_fixed_size_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func font_get_fixed_size(font_rid: RID) -> Int64 {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_fixed_size_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func font_set_allow_system_fallback(font_rid: RID, allow_system_fallback: UInt8)  {
        withUnsafePointer(to: allow_system_fallback) { allow_system_fallback_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(allow_system_fallback_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_allow_system_fallback_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func font_is_allow_system_fallback(font_rid: RID) -> UInt8 {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_is_allow_system_fallback_4155700596,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func font_set_force_autohinter(font_rid: RID, force_autohinter: UInt8)  {
        withUnsafePointer(to: force_autohinter) { force_autohinter_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(force_autohinter_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_force_autohinter_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func font_is_force_autohinter(font_rid: RID) -> UInt8 {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_is_force_autohinter_4155700596,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func font_set_hinting(font_rid: RID, hinting: TextServer.Hinting)  {
        withUnsafePointer(to: hinting.rawValue) { hinting_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(hinting_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_hinting_1520010864,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func font_get_hinting(font_rid: RID) -> TextServer.Hinting {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_hinting_3971592737,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.Hinting(from: __resPtr.pointee)
    }
    public func font_set_subpixel_positioning(font_rid: RID, subpixel_positioning: TextServer.SubpixelPositioning)  {
        withUnsafePointer(to: subpixel_positioning.rawValue) { subpixel_positioning_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(subpixel_positioning_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_subpixel_positioning_3830459669,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func font_get_subpixel_positioning(font_rid: RID) -> TextServer.SubpixelPositioning {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_subpixel_positioning_2752233671,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.SubpixelPositioning(from: __resPtr.pointee)
    }
    public func font_set_embolden(font_rid: RID, strength: Float64)  {
        withUnsafePointer(to: strength) { strength_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(strength_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_embolden_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func font_get_embolden(font_rid: RID) -> Float64 {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_embolden_866169185,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func font_set_transform(font_rid: RID, transform: Transform2D)  {
        let transform_native = transform._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_transform_1246044741,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func font_get_transform(font_rid: RID) -> Transform2D {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_transform_213527486,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(from: __resPtr.pointee)
    }
    public func font_set_variation_coordinates(font_rid: RID, variation_coordinates: Dictionary)  {
        let variation_coordinates_native = variation_coordinates._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(variation_coordinates_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_variation_coordinates_1217542888,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func font_get_variation_coordinates(font_rid: RID) -> Dictionary {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_variation_coordinates_1882737106,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
    }
    public func font_set_oversampling(font_rid: RID, oversampling: Float64)  {
        withUnsafePointer(to: oversampling) { oversampling_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(oversampling_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_oversampling_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func font_get_oversampling(font_rid: RID) -> Float64 {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_oversampling_866169185,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func font_get_size_cache_list(font_rid: RID) -> [Vector2i] {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_size_cache_list_2684255073,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Vector2i](from: __resPtr.pointee)
    }
    public func font_clear_size_cache(font_rid: RID)  {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_clear_size_cache_2722037293,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func font_remove_size_cache(font_rid: RID, size: Vector2i)  {
        let size_native = size._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_remove_size_cache_2450610377,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func font_set_ascent(font_rid: RID, size: Int64, ascent: Float64)  {
        withUnsafePointer(to: ascent) { ascent_native in
        withUnsafePointer(to: size) { size_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native), .init(ascent_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_ascent_1892459533,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func font_get_ascent(font_rid: RID, size: Int64) -> Float64 {
        withUnsafePointer(to: size) { size_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_ascent_755457166,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func font_set_descent(font_rid: RID, size: Int64, descent: Float64)  {
        withUnsafePointer(to: descent) { descent_native in
        withUnsafePointer(to: size) { size_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native), .init(descent_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_descent_1892459533,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func font_get_descent(font_rid: RID, size: Int64) -> Float64 {
        withUnsafePointer(to: size) { size_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_descent_755457166,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func font_set_underline_position(font_rid: RID, size: Int64, underline_position: Float64)  {
        withUnsafePointer(to: underline_position) { underline_position_native in
        withUnsafePointer(to: size) { size_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native), .init(underline_position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_underline_position_1892459533,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func font_get_underline_position(font_rid: RID, size: Int64) -> Float64 {
        withUnsafePointer(to: size) { size_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_underline_position_755457166,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func font_set_underline_thickness(font_rid: RID, size: Int64, underline_thickness: Float64)  {
        withUnsafePointer(to: underline_thickness) { underline_thickness_native in
        withUnsafePointer(to: size) { size_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native), .init(underline_thickness_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_underline_thickness_1892459533,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func font_get_underline_thickness(font_rid: RID, size: Int64) -> Float64 {
        withUnsafePointer(to: size) { size_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_underline_thickness_755457166,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func font_set_scale(font_rid: RID, size: Int64, scale: Float64)  {
        withUnsafePointer(to: scale) { scale_native in
        withUnsafePointer(to: size) { size_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native), .init(scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_scale_1892459533,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func font_get_scale(font_rid: RID, size: Int64) -> Float64 {
        withUnsafePointer(to: size) { size_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_scale_755457166,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func font_get_texture_count(font_rid: RID, size: Vector2i) -> Int64 {
        let size_native = size._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_texture_count_1311001310,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func font_clear_textures(font_rid: RID, size: Vector2i)  {
        let size_native = size._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_clear_textures_2450610377,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func font_remove_texture(font_rid: RID, size: Vector2i, texture_index: Int64)  {
        withUnsafePointer(to: texture_index) { texture_index_native in
        let size_native = size._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native), .init(texture_index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_remove_texture_3810512262,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func font_set_texture_image(font_rid: RID, size: Vector2i, texture_index: Int64, image: Image)  {
        withUnsafePointer(to: texture_index) { texture_index_native in
        let image_native = image._native_ptr()
        let size_native = size._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native), .init(texture_index_native), .init(image_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_texture_image_2354485091,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func font_get_texture_image(font_rid: RID, size: Vector2i, texture_index: Int64) -> Image {
        withUnsafePointer(to: texture_index) { texture_index_native in
        let size_native = size._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native), .init(texture_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_texture_image_2451761155,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Image(from: __resPtr.pointee)
        }
    }
    public func font_set_texture_offsets(font_rid: RID, size: Vector2i, texture_index: Int64, offset: PackedInt32Array)  {
        withUnsafePointer(to: texture_index) { texture_index_native in
        let offset_native = offset._native_ptr()
        let size_native = size._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native), .init(texture_index_native), .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_texture_offsets_3005398047,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func font_get_texture_offsets(font_rid: RID, size: Vector2i, texture_index: Int64) -> PackedInt32Array {
        withUnsafePointer(to: texture_index) { texture_index_native in
        let size_native = size._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native), .init(texture_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_texture_offsets_3420028887,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(from: __resPtr.pointee)
        }
    }
    public func font_get_glyph_list(font_rid: RID, size: Vector2i) -> PackedInt32Array {
        let size_native = size._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_glyph_list_46086620,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(from: __resPtr.pointee)
    }
    public func font_clear_glyphs(font_rid: RID, size: Vector2i)  {
        let size_native = size._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_clear_glyphs_2450610377,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func font_remove_glyph(font_rid: RID, size: Vector2i, glyph: Int64)  {
        withUnsafePointer(to: glyph) { glyph_native in
        let size_native = size._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native), .init(glyph_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_remove_glyph_3810512262,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func font_get_glyph_advance(font_rid: RID, size: Int64, glyph: Int64) -> Vector2 {
        withUnsafePointer(to: glyph) { glyph_native in
        withUnsafePointer(to: size) { size_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native), .init(glyph_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_glyph_advance_2555689501,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
        }
        }
    }
    public func font_set_glyph_advance(font_rid: RID, size: Int64, glyph: Int64, advance: Vector2)  {
        withUnsafePointer(to: glyph) { glyph_native in
        withUnsafePointer(to: size) { size_native in
        let advance_native = advance._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native), .init(glyph_native), .init(advance_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_glyph_advance_3219397315,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func font_get_glyph_offset(font_rid: RID, size: Vector2i, glyph: Int64) -> Vector2 {
        withUnsafePointer(to: glyph) { glyph_native in
        let size_native = size._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native), .init(glyph_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_glyph_offset_513728628,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
        }
    }
    public func font_set_glyph_offset(font_rid: RID, size: Vector2i, glyph: Int64, offset: Vector2)  {
        withUnsafePointer(to: glyph) { glyph_native in
        let offset_native = offset._native_ptr()
        let size_native = size._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native), .init(glyph_native), .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_glyph_offset_1812632090,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func font_get_glyph_size(font_rid: RID, size: Vector2i, glyph: Int64) -> Vector2 {
        withUnsafePointer(to: glyph) { glyph_native in
        let size_native = size._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native), .init(glyph_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_glyph_size_513728628,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
        }
    }
    public func font_set_glyph_size(font_rid: RID, size: Vector2i, glyph: Int64, gl_size: Vector2)  {
        withUnsafePointer(to: glyph) { glyph_native in
        let gl_size_native = gl_size._native_ptr()
        let size_native = size._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native), .init(glyph_native), .init(gl_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_glyph_size_1812632090,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func font_get_glyph_uv_rect(font_rid: RID, size: Vector2i, glyph: Int64) -> Rect2 {
        withUnsafePointer(to: glyph) { glyph_native in
        let size_native = size._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native), .init(glyph_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_glyph_uv_rect_2274268786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2(from: __resPtr.pointee)
        }
    }
    public func font_set_glyph_uv_rect(font_rid: RID, size: Vector2i, glyph: Int64, uv_rect: Rect2)  {
        withUnsafePointer(to: glyph) { glyph_native in
        let uv_rect_native = uv_rect._native_ptr()
        let size_native = size._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native), .init(glyph_native), .init(uv_rect_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_glyph_uv_rect_1973324081,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func font_get_glyph_texture_idx(font_rid: RID, size: Vector2i, glyph: Int64) -> Int64 {
        withUnsafePointer(to: glyph) { glyph_native in
        let size_native = size._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native), .init(glyph_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_glyph_texture_idx_4292800474,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func font_set_glyph_texture_idx(font_rid: RID, size: Vector2i, glyph: Int64, texture_idx: Int64)  {
        withUnsafePointer(to: texture_idx) { texture_idx_native in
        withUnsafePointer(to: glyph) { glyph_native in
        let size_native = size._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native), .init(glyph_native), .init(texture_idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_glyph_texture_idx_4254580980,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func font_get_glyph_texture_rid(font_rid: RID, size: Vector2i, glyph: Int64) -> RID {
        withUnsafePointer(to: glyph) { glyph_native in
        let size_native = size._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native), .init(glyph_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_glyph_texture_rid_1451696141,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
        }
    }
    public func font_get_glyph_texture_size(font_rid: RID, size: Vector2i, glyph: Int64) -> Vector2 {
        withUnsafePointer(to: glyph) { glyph_native in
        let size_native = size._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native), .init(glyph_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_glyph_texture_size_513728628,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
        }
    }
    public func font_get_glyph_contours(font: RID, size: Int64, index: Int64) -> Dictionary {
        withUnsafePointer(to: index) { index_native in
        withUnsafePointer(to: size) { size_native in
        let font_native = font._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_native), .init(size_native), .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_glyph_contours_2903964473,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
        }
        }
    }
    public func font_get_kerning_list(font_rid: RID, size: Int64) -> [Vector2i] {
        withUnsafePointer(to: size) { size_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_kerning_list_1778388067,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Vector2i](from: __resPtr.pointee)
        }
    }
    public func font_clear_kerning_map(font_rid: RID, size: Int64)  {
        withUnsafePointer(to: size) { size_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_clear_kerning_map_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func font_remove_kerning(font_rid: RID, size: Int64, glyph_pair: Vector2i)  {
        withUnsafePointer(to: size) { size_native in
        let glyph_pair_native = glyph_pair._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native), .init(glyph_pair_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_remove_kerning_2141860016,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func font_set_kerning(font_rid: RID, size: Int64, glyph_pair: Vector2i, kerning: Vector2)  {
        withUnsafePointer(to: size) { size_native in
        let kerning_native = kerning._native_ptr()
        let glyph_pair_native = glyph_pair._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native), .init(glyph_pair_native), .init(kerning_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_kerning_3630965883,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func font_get_kerning(font_rid: RID, size: Int64, glyph_pair: Vector2i) -> Vector2 {
        withUnsafePointer(to: size) { size_native in
        let glyph_pair_native = glyph_pair._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native), .init(glyph_pair_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_kerning_1019980169,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
        }
    }
    public func font_get_glyph_index(font_rid: RID, size: Int64, char: Int64, variation_selector: Int64) -> Int64 {
        withUnsafePointer(to: variation_selector) { variation_selector_native in
        withUnsafePointer(to: char) { char_native in
        withUnsafePointer(to: size) { size_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native), .init(char_native), .init(variation_selector_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_glyph_index_1765635060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
        }
    }
    public func font_has_char(font_rid: RID, char: Int64) -> UInt8 {
        withUnsafePointer(to: char) { char_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(char_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_has_char_3120086654,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func font_get_supported_chars(font_rid: RID) -> String {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_supported_chars_642473191,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func font_render_range(font_rid: RID, size: Vector2i, start: Int64, end: Int64)  {
        withUnsafePointer(to: end) { end_native in
        withUnsafePointer(to: start) { start_native in
        let size_native = size._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native), .init(start_native), .init(end_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_render_range_4254580980,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func font_render_glyph(font_rid: RID, size: Vector2i, index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        let size_native = size._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native), .init(index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_render_glyph_3810512262,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func font_draw_glyph(font_rid: RID, canvas: RID, size: Int64, pos: Vector2, index: Int64, color: Color)  {
        withUnsafePointer(to: index) { index_native in
        withUnsafePointer(to: size) { size_native in
        let color_native = color._native_ptr()
        let pos_native = pos._native_ptr()
        let canvas_native = canvas._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(canvas_native), .init(size_native), .init(pos_native), .init(index_native), .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_draw_glyph_1821196351,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func font_draw_glyph_outline(font_rid: RID, canvas: RID, size: Int64, outline_size: Int64, pos: Vector2, index: Int64, color: Color)  {
        withUnsafePointer(to: index) { index_native in
        withUnsafePointer(to: outline_size) { outline_size_native in
        withUnsafePointer(to: size) { size_native in
        let color_native = color._native_ptr()
        let pos_native = pos._native_ptr()
        let canvas_native = canvas._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 7)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(canvas_native), .init(size_native), .init(outline_size_native), .init(pos_native), .init(index_native), .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_draw_glyph_outline_1124898203,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func font_is_language_supported(font_rid: RID, language: String) -> UInt8 {
        withUnsafePointer(to: language) { language_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(language_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_is_language_supported_3199320846,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func font_set_language_support_override(font_rid: RID, language: String, supported: UInt8)  {
        withUnsafePointer(to: supported) { supported_native in
        withUnsafePointer(to: language) { language_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(language_native), .init(supported_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_language_support_override_2313957094,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func font_get_language_support_override(font_rid: RID, language: String) -> UInt8 {
        withUnsafePointer(to: language) { language_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(language_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_language_support_override_2829184646,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func font_remove_language_support_override(font_rid: RID, language: String)  {
        withUnsafePointer(to: language) { language_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(language_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_remove_language_support_override_2726140452,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func font_get_language_support_overrides(font_rid: RID) -> PackedStringArray {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_language_support_overrides_2801473409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func font_is_script_supported(font_rid: RID, script: String) -> UInt8 {
        withUnsafePointer(to: script) { script_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(script_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_is_script_supported_3199320846,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func font_set_script_support_override(font_rid: RID, script: String, supported: UInt8)  {
        withUnsafePointer(to: supported) { supported_native in
        withUnsafePointer(to: script) { script_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(script_native), .init(supported_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_script_support_override_2313957094,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func font_get_script_support_override(font_rid: RID, script: String) -> UInt8 {
        withUnsafePointer(to: script) { script_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(script_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_script_support_override_2829184646,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func font_remove_script_support_override(font_rid: RID, script: String)  {
        withUnsafePointer(to: script) { script_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(script_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_remove_script_support_override_2726140452,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func font_get_script_support_overrides(font_rid: RID) -> PackedStringArray {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_script_support_overrides_2801473409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func font_set_opentype_feature_overrides(font_rid: RID, overrides: Dictionary)  {
        let overrides_native = overrides._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(overrides_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_opentype_feature_overrides_1217542888,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func font_get_opentype_feature_overrides(font_rid: RID) -> Dictionary {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_opentype_feature_overrides_1882737106,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
    }
    public func font_supported_feature_list(font_rid: RID) -> Dictionary {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_supported_feature_list_1882737106,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
    }
    public func font_supported_variation_list(font_rid: RID) -> Dictionary {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_supported_variation_list_1882737106,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
    }
    public func font_get_global_oversampling() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_get_global_oversampling_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func font_set_global_oversampling(oversampling: Float64)  {
        withUnsafePointer(to: oversampling) { oversampling_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(oversampling_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_font_set_global_oversampling_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_hex_code_box_size(size: Int64, index: Int64) -> Vector2 {
        withUnsafePointer(to: index) { index_native in
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native), .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_hex_code_box_size_3016396712,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
        }
        }
    }
    public func draw_hex_code_box(canvas: RID, size: Int64, pos: Vector2, index: Int64, color: Color)  {
        withUnsafePointer(to: index) { index_native in
        withUnsafePointer(to: size) { size_native in
        let color_native = color._native_ptr()
        let pos_native = pos._native_ptr()
        let canvas_native = canvas._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(canvas_native), .init(size_native), .init(pos_native), .init(index_native), .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_draw_hex_code_box_1602046441,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func create_shaped_text(direction: TextServer.Direction, orientation: TextServer.Orientation) -> RID {
        withUnsafePointer(to: orientation.rawValue) { orientation_native in
        withUnsafePointer(to: direction.rawValue) { direction_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(direction_native), .init(orientation_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_shaped_text_1231398698,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
        }
        }
    }
    public func shaped_text_clear(rid: RID)  {
        let rid_native = rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rid_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_clear_2722037293,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func shaped_text_set_direction(shaped: RID, direction: TextServer.Direction)  {
        withUnsafePointer(to: direction.rawValue) { direction_native in
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(direction_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_set_direction_2616949700,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func shaped_text_get_direction(shaped: RID) -> TextServer.Direction {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_get_direction_3065904362,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.Direction(from: __resPtr.pointee)
    }
    public func shaped_text_get_inferred_direction(shaped: RID) -> TextServer.Direction {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_get_inferred_direction_3065904362,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.Direction(from: __resPtr.pointee)
    }
    public func shaped_text_set_bidi_override(shaped: RID, override: Array)  {
        let override_native = override._native_ptr()
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(override_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_set_bidi_override_684822712,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func shaped_text_set_custom_punctuation(shaped: RID, punct: String)  {
        withUnsafePointer(to: punct) { punct_native in
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(punct_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_set_custom_punctuation_2726140452,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func shaped_text_get_custom_punctuation(shaped: RID) -> String {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_get_custom_punctuation_642473191,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func shaped_text_set_orientation(shaped: RID, orientation: TextServer.Orientation)  {
        withUnsafePointer(to: orientation.rawValue) { orientation_native in
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(orientation_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_set_orientation_104095128,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func shaped_text_get_orientation(shaped: RID) -> TextServer.Orientation {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_get_orientation_3142708106,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.Orientation(from: __resPtr.pointee)
    }
    public func shaped_text_set_preserve_invalid(shaped: RID, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_set_preserve_invalid_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func shaped_text_get_preserve_invalid(shaped: RID) -> UInt8 {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_get_preserve_invalid_4155700596,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func shaped_text_set_preserve_control(shaped: RID, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_set_preserve_control_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func shaped_text_get_preserve_control(shaped: RID) -> UInt8 {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_get_preserve_control_4155700596,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func shaped_text_set_spacing(shaped: RID, spacing: TextServer.SpacingType, value: Int64)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: spacing.rawValue) { spacing_native in
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(spacing_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_set_spacing_1307259930,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func shaped_text_get_spacing(shaped: RID, spacing: TextServer.SpacingType) -> Int64 {
        withUnsafePointer(to: spacing.rawValue) { spacing_native in
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(spacing_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_get_spacing_1213653558,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func shaped_text_add_string(shaped: RID, text: String, fonts: [RID], size: Int64, opentype_features: Dictionary, language: String, meta: Variant) -> UInt8 {
        withUnsafePointer(to: language) { language_native in
        withUnsafePointer(to: size) { size_native in
        withUnsafePointer(to: text) { text_native in
        let meta_native = meta._native_ptr()
        let opentype_features_native = opentype_features._native_ptr()
        let fonts_native = fonts._native_ptr()
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 7)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(text_native), .init(fonts_native), .init(size_native), .init(opentype_features_native), .init(language_native), .init(meta_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_add_string_2621279422,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
        }
        }
    }
    public func shaped_text_add_object(shaped: RID, key: Variant, size: Vector2, inline_align: InlineAlignment, length: Int64, baseline: Float64) -> UInt8 {
        withUnsafePointer(to: baseline) { baseline_native in
        withUnsafePointer(to: length) { length_native in
        withUnsafePointer(to: inline_align.rawValue) { inline_align_native in
        let size_native = size._native_ptr()
        let key_native = key._native_ptr()
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(key_native), .init(size_native), .init(inline_align_native), .init(length_native), .init(baseline_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_add_object_2838446185,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
        }
        }
    }
    public func shaped_text_resize_object(shaped: RID, key: Variant, size: Vector2, inline_align: InlineAlignment, baseline: Float64) -> UInt8 {
        withUnsafePointer(to: baseline) { baseline_native in
        withUnsafePointer(to: inline_align.rawValue) { inline_align_native in
        let size_native = size._native_ptr()
        let key_native = key._native_ptr()
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(key_native), .init(size_native), .init(inline_align_native), .init(baseline_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_resize_object_2353789835,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
        }
    }
    public func shaped_get_span_count(shaped: RID) -> Int64 {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_get_span_count_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func shaped_get_span_meta(shaped: RID, index: Int64) -> Variant {
        withUnsafePointer(to: index) { index_native in
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_get_span_meta_4069510997,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
        }
    }
    public func shaped_set_span_update_font(shaped: RID, index: Int64, fonts: [RID], size: Int64, opentype_features: Dictionary)  {
        withUnsafePointer(to: size) { size_native in
        withUnsafePointer(to: index) { index_native in
        let opentype_features_native = opentype_features._native_ptr()
        let fonts_native = fonts._native_ptr()
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(index_native), .init(fonts_native), .init(size_native), .init(opentype_features_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_set_span_update_font_1578983057,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func shaped_text_substr(shaped: RID, start: Int64, length: Int64) -> RID {
        withUnsafePointer(to: length) { length_native in
        withUnsafePointer(to: start) { start_native in
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(start_native), .init(length_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_substr_1937682086,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
        }
        }
    }
    public func shaped_text_get_parent(shaped: RID) -> RID {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_get_parent_3814569979,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func shaped_text_fit_to_width(shaped: RID, width: Float64, jst_flags: TextServer.JustificationFlag) -> Float64 {
        withUnsafePointer(to: width) { width_native in
        withUnsafePointer(to: jst_flags.rawValue) { jst_flags_native in
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(width_native), .init(jst_flags_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_fit_to_width_603718830,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
        }
    }
    public func shaped_text_tab_align(shaped: RID, tab_stops: PackedFloat32Array) -> Float64 {
        let tab_stops_native = tab_stops._native_ptr()
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(tab_stops_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_tab_align_1283669550,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func shaped_text_shape(shaped: RID) -> UInt8 {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_shape_3521089500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func shaped_text_is_ready(shaped: RID) -> UInt8 {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_is_ready_4155700596,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func shaped_text_get_glyphs(shaped: RID) -> [Dictionary] {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_get_glyphs_2684255073,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](from: __resPtr.pointee)
    }
    public func shaped_text_sort_logical(shaped: RID) -> [Dictionary] {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_sort_logical_2670461153,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](from: __resPtr.pointee)
    }
    public func shaped_text_get_glyph_count(shaped: RID) -> Int64 {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_get_glyph_count_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func shaped_text_get_range(shaped: RID) -> Vector2i {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_get_range_733700038,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(from: __resPtr.pointee)
    }
    public func shaped_text_get_line_breaks_adv(shaped: RID, width: PackedFloat32Array, start: Int64, once: UInt8, break_flags: TextServer.LineBreakFlag) -> PackedInt32Array {
        withUnsafePointer(to: once) { once_native in
        withUnsafePointer(to: start) { start_native in
        withUnsafePointer(to: break_flags.rawValue) { break_flags_native in
        let width_native = width._native_ptr()
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(width_native), .init(start_native), .init(once_native), .init(break_flags_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_get_line_breaks_adv_4206849830,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(from: __resPtr.pointee)
        }
        }
        }
    }
    public func shaped_text_get_line_breaks(shaped: RID, width: Float64, start: Int64, break_flags: TextServer.LineBreakFlag) -> PackedInt32Array {
        withUnsafePointer(to: start) { start_native in
        withUnsafePointer(to: width) { width_native in
        withUnsafePointer(to: break_flags.rawValue) { break_flags_native in
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(width_native), .init(start_native), .init(break_flags_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_get_line_breaks_303410369,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(from: __resPtr.pointee)
        }
        }
        }
    }
    public func shaped_text_get_word_breaks(shaped: RID, grapheme_flags: TextServer.GraphemeFlag) -> PackedInt32Array {
        withUnsafePointer(to: grapheme_flags.rawValue) { grapheme_flags_native in
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(grapheme_flags_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_get_word_breaks_3299477123,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(from: __resPtr.pointee)
        }
    }
    public func shaped_text_get_trim_pos(shaped: RID) -> Int64 {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_get_trim_pos_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func shaped_text_get_ellipsis_pos(shaped: RID) -> Int64 {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_get_ellipsis_pos_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func shaped_text_get_ellipsis_glyphs(shaped: RID) -> [Dictionary] {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_get_ellipsis_glyphs_2684255073,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](from: __resPtr.pointee)
    }
    public func shaped_text_get_ellipsis_glyph_count(shaped: RID) -> Int64 {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_get_ellipsis_glyph_count_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func shaped_text_overrun_trim_to_width(shaped: RID, width: Float64, overrun_trim_flags: TextServer.TextOverrunFlag)  {
        withUnsafePointer(to: width) { width_native in
        withUnsafePointer(to: overrun_trim_flags.rawValue) { overrun_trim_flags_native in
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(width_native), .init(overrun_trim_flags_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_overrun_trim_to_width_1572579718,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func shaped_text_get_objects(shaped: RID) -> Array {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_get_objects_2684255073,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(from: __resPtr.pointee)
    }
    public func shaped_text_get_object_rect(shaped: RID, key: Variant) -> Rect2 {
        let key_native = key._native_ptr()
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(key_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_get_object_rect_447978354,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2(from: __resPtr.pointee)
    }
    public func shaped_text_get_size(shaped: RID) -> Vector2 {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_get_size_2440833711,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func shaped_text_get_ascent(shaped: RID) -> Float64 {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_get_ascent_866169185,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func shaped_text_get_descent(shaped: RID) -> Float64 {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_get_descent_866169185,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func shaped_text_get_width(shaped: RID) -> Float64 {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_get_width_866169185,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func shaped_text_get_underline_position(shaped: RID) -> Float64 {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_get_underline_position_866169185,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func shaped_text_get_underline_thickness(shaped: RID) -> Float64 {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_get_underline_thickness_866169185,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func shaped_text_get_carets(shaped: RID, position: Int64) -> Dictionary {
        withUnsafePointer(to: position) { position_native in
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(position_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_get_carets_1574219346,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
        }
    }
    public func shaped_text_get_selection(shaped: RID, start: Int64, end: Int64) -> PackedVector2Array {
        withUnsafePointer(to: end) { end_native in
        withUnsafePointer(to: start) { start_native in
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(start_native), .init(end_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_get_selection_3714187733,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(from: __resPtr.pointee)
        }
        }
    }
    public func shaped_text_hit_test_grapheme(shaped: RID, coords: Float64) -> Int64 {
        withUnsafePointer(to: coords) { coords_native in
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(coords_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_hit_test_grapheme_3149310417,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func shaped_text_hit_test_position(shaped: RID, coords: Float64) -> Int64 {
        withUnsafePointer(to: coords) { coords_native in
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(coords_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_hit_test_position_3149310417,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func shaped_text_get_grapheme_bounds(shaped: RID, pos: Int64) -> Vector2 {
        withUnsafePointer(to: pos) { pos_native in
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(pos_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_get_grapheme_bounds_2546185844,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
        }
    }
    public func shaped_text_next_grapheme_pos(shaped: RID, pos: Int64) -> Int64 {
        withUnsafePointer(to: pos) { pos_native in
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(pos_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_next_grapheme_pos_1120910005,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func shaped_text_prev_grapheme_pos(shaped: RID, pos: Int64) -> Int64 {
        withUnsafePointer(to: pos) { pos_native in
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(pos_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_prev_grapheme_pos_1120910005,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func shaped_text_draw(shaped: RID, canvas: RID, pos: Vector2, clip_l: Float64, clip_r: Float64, color: Color)  {
        withUnsafePointer(to: clip_r) { clip_r_native in
        withUnsafePointer(to: clip_l) { clip_l_native in
        let color_native = color._native_ptr()
        let pos_native = pos._native_ptr()
        let canvas_native = canvas._native_ptr()
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(canvas_native), .init(pos_native), .init(clip_l_native), .init(clip_r_native), .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_draw_70679950,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func shaped_text_draw_outline(shaped: RID, canvas: RID, pos: Vector2, clip_l: Float64, clip_r: Float64, outline_size: Int64, color: Color)  {
        withUnsafePointer(to: outline_size) { outline_size_native in
        withUnsafePointer(to: clip_r) { clip_r_native in
        withUnsafePointer(to: clip_l) { clip_l_native in
        let color_native = color._native_ptr()
        let pos_native = pos._native_ptr()
        let canvas_native = canvas._native_ptr()
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 7)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(canvas_native), .init(pos_native), .init(clip_l_native), .init(clip_r_native), .init(outline_size_native), .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_draw_outline_2673671346,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func shaped_text_get_dominant_direction_in_range(shaped: RID, start: Int64, end: Int64) -> TextServer.Direction {
        withUnsafePointer(to: end) { end_native in
        withUnsafePointer(to: start) { start_native in
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(start_native), .init(end_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shaped_text_get_dominant_direction_in_range_3326907668,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.Direction(from: __resPtr.pointee)
        }
        }
    }
    public func format_number(number: String, language: String) -> String {
        withUnsafePointer(to: language) { language_native in
        withUnsafePointer(to: number) { number_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(number_native), .init(language_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_format_number_2305636099,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
        }
    }
    public func parse_number(number: String, language: String) -> String {
        withUnsafePointer(to: language) { language_native in
        withUnsafePointer(to: number) { number_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(number_native), .init(language_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_parse_number_2305636099,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
        }
    }
    public func percent_sign(language: String) -> String {
        withUnsafePointer(to: language) { language_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(language_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_percent_sign_993269549,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
    public func string_get_word_breaks(string: String, language: String, chars_per_line: Int64) -> PackedInt32Array {
        withUnsafePointer(to: chars_per_line) { chars_per_line_native in
        withUnsafePointer(to: language) { language_native in
        withUnsafePointer(to: string) { string_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(string_native), .init(language_native), .init(chars_per_line_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_string_get_word_breaks_1398910359,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(from: __resPtr.pointee)
        }
        }
        }
    }
    public func is_confusable(string: String, dict: PackedStringArray) -> Int64 {
        withUnsafePointer(to: string) { string_native in
        let dict_native = dict._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(string_native), .init(dict_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_confusable_1433197768,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func spoof_check(string: String) -> UInt8 {
        withUnsafePointer(to: string) { string_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(string_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_spoof_check_3927539163,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func strip_diacritics(string: String) -> String {
        withUnsafePointer(to: string) { string_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(string_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_strip_diacritics_3135753539,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
    public func is_valid_identifier(string: String) -> UInt8 {
        withUnsafePointer(to: string) { string_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(string_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_valid_identifier_3927539163,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func string_to_upper(string: String, language: String) -> String {
        withUnsafePointer(to: language) { language_native in
        withUnsafePointer(to: string) { string_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(string_native), .init(language_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_string_to_upper_2305636099,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
        }
    }
    public func string_to_lower(string: String, language: String) -> String {
        withUnsafePointer(to: language) { language_native in
        withUnsafePointer(to: string) { string_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(string_native), .init(language_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_string_to_lower_2305636099,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
        }
    }
    public func parse_structured_text(parser_type: TextServer.StructuredTextParser, args: Array, text: String) -> [Vector3i] {
        withUnsafePointer(to: text) { text_native in
        withUnsafePointer(to: parser_type.rawValue) { parser_type_native in
        let args_native = args._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(parser_type_native), .init(args_native), .init(text_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_parse_structured_text_3310685015,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Vector3i](from: __resPtr.pointee)
        }
        }
    }
}