import godot_native

fileprivate var __godot_name_TextServer: StringName! = nil

/// Interface for the fonts and complex text layouts.
/// 
/// [TextServer] is the API backend for managing fonts, and rendering complex text.
open class TextServer : RefCounted {

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

    static var _method_has_feature_3967367083: StringName! = nil
    static var _method_get_name_201670096: StringName! = nil
    static var _method_get_features_3905245786: StringName! = nil
    static var _method_load_support_data_2323990056: StringName! = nil
    static var _method_get_support_data_filename_201670096: StringName! = nil
    static var _method_get_support_data_info_201670096: StringName! = nil
    static var _method_save_support_data_3927539163: StringName! = nil
    static var _method_is_locale_right_to_left_3927539163: StringName! = nil
    static var _method_name_to_tag_1321353865: StringName! = nil
    static var _method_tag_to_name_844755477: StringName! = nil
    static var _method_has_3521089500: StringName! = nil
    static var _method_free_rid_2722037293: StringName! = nil
    static var _method_create_font_529393457: StringName! = nil
    static var _method_font_set_data_1355495400: StringName! = nil
    static var _method_font_set_face_index_3411492887: StringName! = nil
    static var _method_font_get_face_index_2198884583: StringName! = nil
    static var _method_font_get_face_count_2198884583: StringName! = nil
    static var _method_font_set_style_898466325: StringName! = nil
    static var _method_font_get_style_3082502592: StringName! = nil
    static var _method_font_set_name_2726140452: StringName! = nil
    static var _method_font_get_name_642473191: StringName! = nil
    static var _method_font_set_style_name_2726140452: StringName! = nil
    static var _method_font_get_style_name_642473191: StringName! = nil
    static var _method_font_set_weight_3411492887: StringName! = nil
    static var _method_font_get_weight_2198884583: StringName! = nil
    static var _method_font_set_stretch_3411492887: StringName! = nil
    static var _method_font_get_stretch_2198884583: StringName! = nil
    static var _method_font_set_antialiasing_958337235: StringName! = nil
    static var _method_font_get_antialiasing_3389420495: StringName! = nil
    static var _method_font_set_generate_mipmaps_1265174801: StringName! = nil
    static var _method_font_get_generate_mipmaps_4155700596: StringName! = nil
    static var _method_font_set_multichannel_signed_distance_field_1265174801: StringName! = nil
    static var _method_font_is_multichannel_signed_distance_field_4155700596: StringName! = nil
    static var _method_font_set_msdf_pixel_range_3411492887: StringName! = nil
    static var _method_font_get_msdf_pixel_range_2198884583: StringName! = nil
    static var _method_font_set_msdf_size_3411492887: StringName! = nil
    static var _method_font_get_msdf_size_2198884583: StringName! = nil
    static var _method_font_set_fixed_size_3411492887: StringName! = nil
    static var _method_font_get_fixed_size_2198884583: StringName! = nil
    static var _method_font_set_allow_system_fallback_1265174801: StringName! = nil
    static var _method_font_is_allow_system_fallback_4155700596: StringName! = nil
    static var _method_font_set_force_autohinter_1265174801: StringName! = nil
    static var _method_font_is_force_autohinter_4155700596: StringName! = nil
    static var _method_font_set_hinting_1520010864: StringName! = nil
    static var _method_font_get_hinting_3971592737: StringName! = nil
    static var _method_font_set_subpixel_positioning_3830459669: StringName! = nil
    static var _method_font_get_subpixel_positioning_2752233671: StringName! = nil
    static var _method_font_set_embolden_1794382983: StringName! = nil
    static var _method_font_get_embolden_866169185: StringName! = nil
    static var _method_font_set_transform_1246044741: StringName! = nil
    static var _method_font_get_transform_213527486: StringName! = nil
    static var _method_font_set_variation_coordinates_1217542888: StringName! = nil
    static var _method_font_get_variation_coordinates_1882737106: StringName! = nil
    static var _method_font_set_oversampling_1794382983: StringName! = nil
    static var _method_font_get_oversampling_866169185: StringName! = nil
    static var _method_font_get_size_cache_list_2684255073: StringName! = nil
    static var _method_font_clear_size_cache_2722037293: StringName! = nil
    static var _method_font_remove_size_cache_2450610377: StringName! = nil
    static var _method_font_set_ascent_1892459533: StringName! = nil
    static var _method_font_get_ascent_755457166: StringName! = nil
    static var _method_font_set_descent_1892459533: StringName! = nil
    static var _method_font_get_descent_755457166: StringName! = nil
    static var _method_font_set_underline_position_1892459533: StringName! = nil
    static var _method_font_get_underline_position_755457166: StringName! = nil
    static var _method_font_set_underline_thickness_1892459533: StringName! = nil
    static var _method_font_get_underline_thickness_755457166: StringName! = nil
    static var _method_font_set_scale_1892459533: StringName! = nil
    static var _method_font_get_scale_755457166: StringName! = nil
    static var _method_font_get_texture_count_1311001310: StringName! = nil
    static var _method_font_clear_textures_2450610377: StringName! = nil
    static var _method_font_remove_texture_3810512262: StringName! = nil
    static var _method_font_set_texture_image_2354485091: StringName! = nil
    static var _method_font_get_texture_image_2451761155: StringName! = nil
    static var _method_font_set_texture_offsets_3005398047: StringName! = nil
    static var _method_font_get_texture_offsets_3420028887: StringName! = nil
    static var _method_font_get_glyph_list_46086620: StringName! = nil
    static var _method_font_clear_glyphs_2450610377: StringName! = nil
    static var _method_font_remove_glyph_3810512262: StringName! = nil
    static var _method_font_get_glyph_advance_2555689501: StringName! = nil
    static var _method_font_set_glyph_advance_3219397315: StringName! = nil
    static var _method_font_get_glyph_offset_513728628: StringName! = nil
    static var _method_font_set_glyph_offset_1812632090: StringName! = nil
    static var _method_font_get_glyph_size_513728628: StringName! = nil
    static var _method_font_set_glyph_size_1812632090: StringName! = nil
    static var _method_font_get_glyph_uv_rect_2274268786: StringName! = nil
    static var _method_font_set_glyph_uv_rect_1973324081: StringName! = nil
    static var _method_font_get_glyph_texture_idx_4292800474: StringName! = nil
    static var _method_font_set_glyph_texture_idx_4254580980: StringName! = nil
    static var _method_font_get_glyph_texture_rid_1451696141: StringName! = nil
    static var _method_font_get_glyph_texture_size_513728628: StringName! = nil
    static var _method_font_get_glyph_contours_2903964473: StringName! = nil
    static var _method_font_get_kerning_list_1778388067: StringName! = nil
    static var _method_font_clear_kerning_map_3411492887: StringName! = nil
    static var _method_font_remove_kerning_2141860016: StringName! = nil
    static var _method_font_set_kerning_3630965883: StringName! = nil
    static var _method_font_get_kerning_1019980169: StringName! = nil
    static var _method_font_get_glyph_index_1765635060: StringName! = nil
    static var _method_font_has_char_3120086654: StringName! = nil
    static var _method_font_get_supported_chars_642473191: StringName! = nil
    static var _method_font_render_range_4254580980: StringName! = nil
    static var _method_font_render_glyph_3810512262: StringName! = nil
    static var _method_font_draw_glyph_1821196351: StringName! = nil
    static var _method_font_draw_glyph_outline_1124898203: StringName! = nil
    static var _method_font_is_language_supported_3199320846: StringName! = nil
    static var _method_font_set_language_support_override_2313957094: StringName! = nil
    static var _method_font_get_language_support_override_2829184646: StringName! = nil
    static var _method_font_remove_language_support_override_2726140452: StringName! = nil
    static var _method_font_get_language_support_overrides_2801473409: StringName! = nil
    static var _method_font_is_script_supported_3199320846: StringName! = nil
    static var _method_font_set_script_support_override_2313957094: StringName! = nil
    static var _method_font_get_script_support_override_2829184646: StringName! = nil
    static var _method_font_remove_script_support_override_2726140452: StringName! = nil
    static var _method_font_get_script_support_overrides_2801473409: StringName! = nil
    static var _method_font_set_opentype_feature_overrides_1217542888: StringName! = nil
    static var _method_font_get_opentype_feature_overrides_1882737106: StringName! = nil
    static var _method_font_supported_feature_list_1882737106: StringName! = nil
    static var _method_font_supported_variation_list_1882737106: StringName! = nil
    static var _method_font_get_global_oversampling_1740695150: StringName! = nil
    static var _method_font_set_global_oversampling_373806689: StringName! = nil
    static var _method_get_hex_code_box_size_3016396712: StringName! = nil
    static var _method_draw_hex_code_box_1602046441: StringName! = nil
    static var _method_create_shaped_text_1231398698: StringName! = nil
    static var _method_shaped_text_clear_2722037293: StringName! = nil
    static var _method_shaped_text_set_direction_2616949700: StringName! = nil
    static var _method_shaped_text_get_direction_3065904362: StringName! = nil
    static var _method_shaped_text_get_inferred_direction_3065904362: StringName! = nil
    static var _method_shaped_text_set_bidi_override_684822712: StringName! = nil
    static var _method_shaped_text_set_custom_punctuation_2726140452: StringName! = nil
    static var _method_shaped_text_get_custom_punctuation_642473191: StringName! = nil
    static var _method_shaped_text_set_orientation_104095128: StringName! = nil
    static var _method_shaped_text_get_orientation_3142708106: StringName! = nil
    static var _method_shaped_text_set_preserve_invalid_1265174801: StringName! = nil
    static var _method_shaped_text_get_preserve_invalid_4155700596: StringName! = nil
    static var _method_shaped_text_set_preserve_control_1265174801: StringName! = nil
    static var _method_shaped_text_get_preserve_control_4155700596: StringName! = nil
    static var _method_shaped_text_set_spacing_1307259930: StringName! = nil
    static var _method_shaped_text_get_spacing_1213653558: StringName! = nil
    static var _method_shaped_text_add_string_2621279422: StringName! = nil
    static var _method_shaped_text_add_object_2838446185: StringName! = nil
    static var _method_shaped_text_resize_object_2353789835: StringName! = nil
    static var _method_shaped_get_span_count_2198884583: StringName! = nil
    static var _method_shaped_get_span_meta_4069510997: StringName! = nil
    static var _method_shaped_set_span_update_font_1578983057: StringName! = nil
    static var _method_shaped_text_substr_1937682086: StringName! = nil
    static var _method_shaped_text_get_parent_3814569979: StringName! = nil
    static var _method_shaped_text_fit_to_width_603718830: StringName! = nil
    static var _method_shaped_text_tab_align_1283669550: StringName! = nil
    static var _method_shaped_text_shape_3521089500: StringName! = nil
    static var _method_shaped_text_is_ready_4155700596: StringName! = nil
    static var _method_shaped_text_get_glyphs_2684255073: StringName! = nil
    static var _method_shaped_text_sort_logical_2670461153: StringName! = nil
    static var _method_shaped_text_get_glyph_count_2198884583: StringName! = nil
    static var _method_shaped_text_get_range_733700038: StringName! = nil
    static var _method_shaped_text_get_line_breaks_adv_4206849830: StringName! = nil
    static var _method_shaped_text_get_line_breaks_303410369: StringName! = nil
    static var _method_shaped_text_get_word_breaks_3299477123: StringName! = nil
    static var _method_shaped_text_get_trim_pos_2198884583: StringName! = nil
    static var _method_shaped_text_get_ellipsis_pos_2198884583: StringName! = nil
    static var _method_shaped_text_get_ellipsis_glyphs_2684255073: StringName! = nil
    static var _method_shaped_text_get_ellipsis_glyph_count_2198884583: StringName! = nil
    static var _method_shaped_text_overrun_trim_to_width_1572579718: StringName! = nil
    static var _method_shaped_text_get_objects_2684255073: StringName! = nil
    static var _method_shaped_text_get_object_rect_447978354: StringName! = nil
    static var _method_shaped_text_get_size_2440833711: StringName! = nil
    static var _method_shaped_text_get_ascent_866169185: StringName! = nil
    static var _method_shaped_text_get_descent_866169185: StringName! = nil
    static var _method_shaped_text_get_width_866169185: StringName! = nil
    static var _method_shaped_text_get_underline_position_866169185: StringName! = nil
    static var _method_shaped_text_get_underline_thickness_866169185: StringName! = nil
    static var _method_shaped_text_get_carets_1574219346: StringName! = nil
    static var _method_shaped_text_get_selection_3714187733: StringName! = nil
    static var _method_shaped_text_hit_test_grapheme_3149310417: StringName! = nil
    static var _method_shaped_text_hit_test_position_3149310417: StringName! = nil
    static var _method_shaped_text_get_grapheme_bounds_2546185844: StringName! = nil
    static var _method_shaped_text_next_grapheme_pos_1120910005: StringName! = nil
    static var _method_shaped_text_prev_grapheme_pos_1120910005: StringName! = nil
    static var _method_shaped_text_draw_70679950: StringName! = nil
    static var _method_shaped_text_draw_outline_2673671346: StringName! = nil
    static var _method_shaped_text_get_dominant_direction_in_range_3326907668: StringName! = nil
    static var _method_format_number_2305636099: StringName! = nil
    static var _method_parse_number_2305636099: StringName! = nil
    static var _method_percent_sign_993269549: StringName! = nil
    static var _method_string_get_word_breaks_1398910359: StringName! = nil
    static var _method_is_confusable_1433197768: StringName! = nil
    static var _method_spoof_check_3927539163: StringName! = nil
    static var _method_strip_diacritics_3135753539: StringName! = nil
    static var _method_is_valid_identifier_3927539163: StringName! = nil
    static var _method_string_to_upper_2305636099: StringName! = nil
    static var _method_string_to_lower_2305636099: StringName! = nil
    static var _method_parse_structured_text_3310685015: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_TextServer == nil)
        __godot_name_TextServer = StringName(from: "TextServer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_has_feature_3967367083 = StringName(from: "has_feature")
        assert(self._method_has_feature_3967367083 != nil)
        self._method_get_name_201670096 = StringName(from: "get_name")
        assert(self._method_get_name_201670096 != nil)
        self._method_get_features_3905245786 = StringName(from: "get_features")
        assert(self._method_get_features_3905245786 != nil)
        self._method_load_support_data_2323990056 = StringName(from: "load_support_data")
        assert(self._method_load_support_data_2323990056 != nil)
        self._method_get_support_data_filename_201670096 = StringName(from: "get_support_data_filename")
        assert(self._method_get_support_data_filename_201670096 != nil)
        self._method_get_support_data_info_201670096 = StringName(from: "get_support_data_info")
        assert(self._method_get_support_data_info_201670096 != nil)
        self._method_save_support_data_3927539163 = StringName(from: "save_support_data")
        assert(self._method_save_support_data_3927539163 != nil)
        self._method_is_locale_right_to_left_3927539163 = StringName(from: "is_locale_right_to_left")
        assert(self._method_is_locale_right_to_left_3927539163 != nil)
        self._method_name_to_tag_1321353865 = StringName(from: "name_to_tag")
        assert(self._method_name_to_tag_1321353865 != nil)
        self._method_tag_to_name_844755477 = StringName(from: "tag_to_name")
        assert(self._method_tag_to_name_844755477 != nil)
        self._method_has_3521089500 = StringName(from: "has")
        assert(self._method_has_3521089500 != nil)
        self._method_free_rid_2722037293 = StringName(from: "free_rid")
        assert(self._method_free_rid_2722037293 != nil)
        self._method_create_font_529393457 = StringName(from: "create_font")
        assert(self._method_create_font_529393457 != nil)
        self._method_font_set_data_1355495400 = StringName(from: "font_set_data")
        assert(self._method_font_set_data_1355495400 != nil)
        self._method_font_set_face_index_3411492887 = StringName(from: "font_set_face_index")
        assert(self._method_font_set_face_index_3411492887 != nil)
        self._method_font_get_face_index_2198884583 = StringName(from: "font_get_face_index")
        assert(self._method_font_get_face_index_2198884583 != nil)
        self._method_font_get_face_count_2198884583 = StringName(from: "font_get_face_count")
        assert(self._method_font_get_face_count_2198884583 != nil)
        self._method_font_set_style_898466325 = StringName(from: "font_set_style")
        assert(self._method_font_set_style_898466325 != nil)
        self._method_font_get_style_3082502592 = StringName(from: "font_get_style")
        assert(self._method_font_get_style_3082502592 != nil)
        self._method_font_set_name_2726140452 = StringName(from: "font_set_name")
        assert(self._method_font_set_name_2726140452 != nil)
        self._method_font_get_name_642473191 = StringName(from: "font_get_name")
        assert(self._method_font_get_name_642473191 != nil)
        self._method_font_set_style_name_2726140452 = StringName(from: "font_set_style_name")
        assert(self._method_font_set_style_name_2726140452 != nil)
        self._method_font_get_style_name_642473191 = StringName(from: "font_get_style_name")
        assert(self._method_font_get_style_name_642473191 != nil)
        self._method_font_set_weight_3411492887 = StringName(from: "font_set_weight")
        assert(self._method_font_set_weight_3411492887 != nil)
        self._method_font_get_weight_2198884583 = StringName(from: "font_get_weight")
        assert(self._method_font_get_weight_2198884583 != nil)
        self._method_font_set_stretch_3411492887 = StringName(from: "font_set_stretch")
        assert(self._method_font_set_stretch_3411492887 != nil)
        self._method_font_get_stretch_2198884583 = StringName(from: "font_get_stretch")
        assert(self._method_font_get_stretch_2198884583 != nil)
        self._method_font_set_antialiasing_958337235 = StringName(from: "font_set_antialiasing")
        assert(self._method_font_set_antialiasing_958337235 != nil)
        self._method_font_get_antialiasing_3389420495 = StringName(from: "font_get_antialiasing")
        assert(self._method_font_get_antialiasing_3389420495 != nil)
        self._method_font_set_generate_mipmaps_1265174801 = StringName(from: "font_set_generate_mipmaps")
        assert(self._method_font_set_generate_mipmaps_1265174801 != nil)
        self._method_font_get_generate_mipmaps_4155700596 = StringName(from: "font_get_generate_mipmaps")
        assert(self._method_font_get_generate_mipmaps_4155700596 != nil)
        self._method_font_set_multichannel_signed_distance_field_1265174801 = StringName(from: "font_set_multichannel_signed_distance_field")
        assert(self._method_font_set_multichannel_signed_distance_field_1265174801 != nil)
        self._method_font_is_multichannel_signed_distance_field_4155700596 = StringName(from: "font_is_multichannel_signed_distance_field")
        assert(self._method_font_is_multichannel_signed_distance_field_4155700596 != nil)
        self._method_font_set_msdf_pixel_range_3411492887 = StringName(from: "font_set_msdf_pixel_range")
        assert(self._method_font_set_msdf_pixel_range_3411492887 != nil)
        self._method_font_get_msdf_pixel_range_2198884583 = StringName(from: "font_get_msdf_pixel_range")
        assert(self._method_font_get_msdf_pixel_range_2198884583 != nil)
        self._method_font_set_msdf_size_3411492887 = StringName(from: "font_set_msdf_size")
        assert(self._method_font_set_msdf_size_3411492887 != nil)
        self._method_font_get_msdf_size_2198884583 = StringName(from: "font_get_msdf_size")
        assert(self._method_font_get_msdf_size_2198884583 != nil)
        self._method_font_set_fixed_size_3411492887 = StringName(from: "font_set_fixed_size")
        assert(self._method_font_set_fixed_size_3411492887 != nil)
        self._method_font_get_fixed_size_2198884583 = StringName(from: "font_get_fixed_size")
        assert(self._method_font_get_fixed_size_2198884583 != nil)
        self._method_font_set_allow_system_fallback_1265174801 = StringName(from: "font_set_allow_system_fallback")
        assert(self._method_font_set_allow_system_fallback_1265174801 != nil)
        self._method_font_is_allow_system_fallback_4155700596 = StringName(from: "font_is_allow_system_fallback")
        assert(self._method_font_is_allow_system_fallback_4155700596 != nil)
        self._method_font_set_force_autohinter_1265174801 = StringName(from: "font_set_force_autohinter")
        assert(self._method_font_set_force_autohinter_1265174801 != nil)
        self._method_font_is_force_autohinter_4155700596 = StringName(from: "font_is_force_autohinter")
        assert(self._method_font_is_force_autohinter_4155700596 != nil)
        self._method_font_set_hinting_1520010864 = StringName(from: "font_set_hinting")
        assert(self._method_font_set_hinting_1520010864 != nil)
        self._method_font_get_hinting_3971592737 = StringName(from: "font_get_hinting")
        assert(self._method_font_get_hinting_3971592737 != nil)
        self._method_font_set_subpixel_positioning_3830459669 = StringName(from: "font_set_subpixel_positioning")
        assert(self._method_font_set_subpixel_positioning_3830459669 != nil)
        self._method_font_get_subpixel_positioning_2752233671 = StringName(from: "font_get_subpixel_positioning")
        assert(self._method_font_get_subpixel_positioning_2752233671 != nil)
        self._method_font_set_embolden_1794382983 = StringName(from: "font_set_embolden")
        assert(self._method_font_set_embolden_1794382983 != nil)
        self._method_font_get_embolden_866169185 = StringName(from: "font_get_embolden")
        assert(self._method_font_get_embolden_866169185 != nil)
        self._method_font_set_transform_1246044741 = StringName(from: "font_set_transform")
        assert(self._method_font_set_transform_1246044741 != nil)
        self._method_font_get_transform_213527486 = StringName(from: "font_get_transform")
        assert(self._method_font_get_transform_213527486 != nil)
        self._method_font_set_variation_coordinates_1217542888 = StringName(from: "font_set_variation_coordinates")
        assert(self._method_font_set_variation_coordinates_1217542888 != nil)
        self._method_font_get_variation_coordinates_1882737106 = StringName(from: "font_get_variation_coordinates")
        assert(self._method_font_get_variation_coordinates_1882737106 != nil)
        self._method_font_set_oversampling_1794382983 = StringName(from: "font_set_oversampling")
        assert(self._method_font_set_oversampling_1794382983 != nil)
        self._method_font_get_oversampling_866169185 = StringName(from: "font_get_oversampling")
        assert(self._method_font_get_oversampling_866169185 != nil)
        self._method_font_get_size_cache_list_2684255073 = StringName(from: "font_get_size_cache_list")
        assert(self._method_font_get_size_cache_list_2684255073 != nil)
        self._method_font_clear_size_cache_2722037293 = StringName(from: "font_clear_size_cache")
        assert(self._method_font_clear_size_cache_2722037293 != nil)
        self._method_font_remove_size_cache_2450610377 = StringName(from: "font_remove_size_cache")
        assert(self._method_font_remove_size_cache_2450610377 != nil)
        self._method_font_set_ascent_1892459533 = StringName(from: "font_set_ascent")
        assert(self._method_font_set_ascent_1892459533 != nil)
        self._method_font_get_ascent_755457166 = StringName(from: "font_get_ascent")
        assert(self._method_font_get_ascent_755457166 != nil)
        self._method_font_set_descent_1892459533 = StringName(from: "font_set_descent")
        assert(self._method_font_set_descent_1892459533 != nil)
        self._method_font_get_descent_755457166 = StringName(from: "font_get_descent")
        assert(self._method_font_get_descent_755457166 != nil)
        self._method_font_set_underline_position_1892459533 = StringName(from: "font_set_underline_position")
        assert(self._method_font_set_underline_position_1892459533 != nil)
        self._method_font_get_underline_position_755457166 = StringName(from: "font_get_underline_position")
        assert(self._method_font_get_underline_position_755457166 != nil)
        self._method_font_set_underline_thickness_1892459533 = StringName(from: "font_set_underline_thickness")
        assert(self._method_font_set_underline_thickness_1892459533 != nil)
        self._method_font_get_underline_thickness_755457166 = StringName(from: "font_get_underline_thickness")
        assert(self._method_font_get_underline_thickness_755457166 != nil)
        self._method_font_set_scale_1892459533 = StringName(from: "font_set_scale")
        assert(self._method_font_set_scale_1892459533 != nil)
        self._method_font_get_scale_755457166 = StringName(from: "font_get_scale")
        assert(self._method_font_get_scale_755457166 != nil)
        self._method_font_get_texture_count_1311001310 = StringName(from: "font_get_texture_count")
        assert(self._method_font_get_texture_count_1311001310 != nil)
        self._method_font_clear_textures_2450610377 = StringName(from: "font_clear_textures")
        assert(self._method_font_clear_textures_2450610377 != nil)
        self._method_font_remove_texture_3810512262 = StringName(from: "font_remove_texture")
        assert(self._method_font_remove_texture_3810512262 != nil)
        self._method_font_set_texture_image_2354485091 = StringName(from: "font_set_texture_image")
        assert(self._method_font_set_texture_image_2354485091 != nil)
        self._method_font_get_texture_image_2451761155 = StringName(from: "font_get_texture_image")
        assert(self._method_font_get_texture_image_2451761155 != nil)
        self._method_font_set_texture_offsets_3005398047 = StringName(from: "font_set_texture_offsets")
        assert(self._method_font_set_texture_offsets_3005398047 != nil)
        self._method_font_get_texture_offsets_3420028887 = StringName(from: "font_get_texture_offsets")
        assert(self._method_font_get_texture_offsets_3420028887 != nil)
        self._method_font_get_glyph_list_46086620 = StringName(from: "font_get_glyph_list")
        assert(self._method_font_get_glyph_list_46086620 != nil)
        self._method_font_clear_glyphs_2450610377 = StringName(from: "font_clear_glyphs")
        assert(self._method_font_clear_glyphs_2450610377 != nil)
        self._method_font_remove_glyph_3810512262 = StringName(from: "font_remove_glyph")
        assert(self._method_font_remove_glyph_3810512262 != nil)
        self._method_font_get_glyph_advance_2555689501 = StringName(from: "font_get_glyph_advance")
        assert(self._method_font_get_glyph_advance_2555689501 != nil)
        self._method_font_set_glyph_advance_3219397315 = StringName(from: "font_set_glyph_advance")
        assert(self._method_font_set_glyph_advance_3219397315 != nil)
        self._method_font_get_glyph_offset_513728628 = StringName(from: "font_get_glyph_offset")
        assert(self._method_font_get_glyph_offset_513728628 != nil)
        self._method_font_set_glyph_offset_1812632090 = StringName(from: "font_set_glyph_offset")
        assert(self._method_font_set_glyph_offset_1812632090 != nil)
        self._method_font_get_glyph_size_513728628 = StringName(from: "font_get_glyph_size")
        assert(self._method_font_get_glyph_size_513728628 != nil)
        self._method_font_set_glyph_size_1812632090 = StringName(from: "font_set_glyph_size")
        assert(self._method_font_set_glyph_size_1812632090 != nil)
        self._method_font_get_glyph_uv_rect_2274268786 = StringName(from: "font_get_glyph_uv_rect")
        assert(self._method_font_get_glyph_uv_rect_2274268786 != nil)
        self._method_font_set_glyph_uv_rect_1973324081 = StringName(from: "font_set_glyph_uv_rect")
        assert(self._method_font_set_glyph_uv_rect_1973324081 != nil)
        self._method_font_get_glyph_texture_idx_4292800474 = StringName(from: "font_get_glyph_texture_idx")
        assert(self._method_font_get_glyph_texture_idx_4292800474 != nil)
        self._method_font_set_glyph_texture_idx_4254580980 = StringName(from: "font_set_glyph_texture_idx")
        assert(self._method_font_set_glyph_texture_idx_4254580980 != nil)
        self._method_font_get_glyph_texture_rid_1451696141 = StringName(from: "font_get_glyph_texture_rid")
        assert(self._method_font_get_glyph_texture_rid_1451696141 != nil)
        self._method_font_get_glyph_texture_size_513728628 = StringName(from: "font_get_glyph_texture_size")
        assert(self._method_font_get_glyph_texture_size_513728628 != nil)
        self._method_font_get_glyph_contours_2903964473 = StringName(from: "font_get_glyph_contours")
        assert(self._method_font_get_glyph_contours_2903964473 != nil)
        self._method_font_get_kerning_list_1778388067 = StringName(from: "font_get_kerning_list")
        assert(self._method_font_get_kerning_list_1778388067 != nil)
        self._method_font_clear_kerning_map_3411492887 = StringName(from: "font_clear_kerning_map")
        assert(self._method_font_clear_kerning_map_3411492887 != nil)
        self._method_font_remove_kerning_2141860016 = StringName(from: "font_remove_kerning")
        assert(self._method_font_remove_kerning_2141860016 != nil)
        self._method_font_set_kerning_3630965883 = StringName(from: "font_set_kerning")
        assert(self._method_font_set_kerning_3630965883 != nil)
        self._method_font_get_kerning_1019980169 = StringName(from: "font_get_kerning")
        assert(self._method_font_get_kerning_1019980169 != nil)
        self._method_font_get_glyph_index_1765635060 = StringName(from: "font_get_glyph_index")
        assert(self._method_font_get_glyph_index_1765635060 != nil)
        self._method_font_has_char_3120086654 = StringName(from: "font_has_char")
        assert(self._method_font_has_char_3120086654 != nil)
        self._method_font_get_supported_chars_642473191 = StringName(from: "font_get_supported_chars")
        assert(self._method_font_get_supported_chars_642473191 != nil)
        self._method_font_render_range_4254580980 = StringName(from: "font_render_range")
        assert(self._method_font_render_range_4254580980 != nil)
        self._method_font_render_glyph_3810512262 = StringName(from: "font_render_glyph")
        assert(self._method_font_render_glyph_3810512262 != nil)
        self._method_font_draw_glyph_1821196351 = StringName(from: "font_draw_glyph")
        assert(self._method_font_draw_glyph_1821196351 != nil)
        self._method_font_draw_glyph_outline_1124898203 = StringName(from: "font_draw_glyph_outline")
        assert(self._method_font_draw_glyph_outline_1124898203 != nil)
        self._method_font_is_language_supported_3199320846 = StringName(from: "font_is_language_supported")
        assert(self._method_font_is_language_supported_3199320846 != nil)
        self._method_font_set_language_support_override_2313957094 = StringName(from: "font_set_language_support_override")
        assert(self._method_font_set_language_support_override_2313957094 != nil)
        self._method_font_get_language_support_override_2829184646 = StringName(from: "font_get_language_support_override")
        assert(self._method_font_get_language_support_override_2829184646 != nil)
        self._method_font_remove_language_support_override_2726140452 = StringName(from: "font_remove_language_support_override")
        assert(self._method_font_remove_language_support_override_2726140452 != nil)
        self._method_font_get_language_support_overrides_2801473409 = StringName(from: "font_get_language_support_overrides")
        assert(self._method_font_get_language_support_overrides_2801473409 != nil)
        self._method_font_is_script_supported_3199320846 = StringName(from: "font_is_script_supported")
        assert(self._method_font_is_script_supported_3199320846 != nil)
        self._method_font_set_script_support_override_2313957094 = StringName(from: "font_set_script_support_override")
        assert(self._method_font_set_script_support_override_2313957094 != nil)
        self._method_font_get_script_support_override_2829184646 = StringName(from: "font_get_script_support_override")
        assert(self._method_font_get_script_support_override_2829184646 != nil)
        self._method_font_remove_script_support_override_2726140452 = StringName(from: "font_remove_script_support_override")
        assert(self._method_font_remove_script_support_override_2726140452 != nil)
        self._method_font_get_script_support_overrides_2801473409 = StringName(from: "font_get_script_support_overrides")
        assert(self._method_font_get_script_support_overrides_2801473409 != nil)
        self._method_font_set_opentype_feature_overrides_1217542888 = StringName(from: "font_set_opentype_feature_overrides")
        assert(self._method_font_set_opentype_feature_overrides_1217542888 != nil)
        self._method_font_get_opentype_feature_overrides_1882737106 = StringName(from: "font_get_opentype_feature_overrides")
        assert(self._method_font_get_opentype_feature_overrides_1882737106 != nil)
        self._method_font_supported_feature_list_1882737106 = StringName(from: "font_supported_feature_list")
        assert(self._method_font_supported_feature_list_1882737106 != nil)
        self._method_font_supported_variation_list_1882737106 = StringName(from: "font_supported_variation_list")
        assert(self._method_font_supported_variation_list_1882737106 != nil)
        self._method_font_get_global_oversampling_1740695150 = StringName(from: "font_get_global_oversampling")
        assert(self._method_font_get_global_oversampling_1740695150 != nil)
        self._method_font_set_global_oversampling_373806689 = StringName(from: "font_set_global_oversampling")
        assert(self._method_font_set_global_oversampling_373806689 != nil)
        self._method_get_hex_code_box_size_3016396712 = StringName(from: "get_hex_code_box_size")
        assert(self._method_get_hex_code_box_size_3016396712 != nil)
        self._method_draw_hex_code_box_1602046441 = StringName(from: "draw_hex_code_box")
        assert(self._method_draw_hex_code_box_1602046441 != nil)
        self._method_create_shaped_text_1231398698 = StringName(from: "create_shaped_text")
        assert(self._method_create_shaped_text_1231398698 != nil)
        self._method_shaped_text_clear_2722037293 = StringName(from: "shaped_text_clear")
        assert(self._method_shaped_text_clear_2722037293 != nil)
        self._method_shaped_text_set_direction_2616949700 = StringName(from: "shaped_text_set_direction")
        assert(self._method_shaped_text_set_direction_2616949700 != nil)
        self._method_shaped_text_get_direction_3065904362 = StringName(from: "shaped_text_get_direction")
        assert(self._method_shaped_text_get_direction_3065904362 != nil)
        self._method_shaped_text_get_inferred_direction_3065904362 = StringName(from: "shaped_text_get_inferred_direction")
        assert(self._method_shaped_text_get_inferred_direction_3065904362 != nil)
        self._method_shaped_text_set_bidi_override_684822712 = StringName(from: "shaped_text_set_bidi_override")
        assert(self._method_shaped_text_set_bidi_override_684822712 != nil)
        self._method_shaped_text_set_custom_punctuation_2726140452 = StringName(from: "shaped_text_set_custom_punctuation")
        assert(self._method_shaped_text_set_custom_punctuation_2726140452 != nil)
        self._method_shaped_text_get_custom_punctuation_642473191 = StringName(from: "shaped_text_get_custom_punctuation")
        assert(self._method_shaped_text_get_custom_punctuation_642473191 != nil)
        self._method_shaped_text_set_orientation_104095128 = StringName(from: "shaped_text_set_orientation")
        assert(self._method_shaped_text_set_orientation_104095128 != nil)
        self._method_shaped_text_get_orientation_3142708106 = StringName(from: "shaped_text_get_orientation")
        assert(self._method_shaped_text_get_orientation_3142708106 != nil)
        self._method_shaped_text_set_preserve_invalid_1265174801 = StringName(from: "shaped_text_set_preserve_invalid")
        assert(self._method_shaped_text_set_preserve_invalid_1265174801 != nil)
        self._method_shaped_text_get_preserve_invalid_4155700596 = StringName(from: "shaped_text_get_preserve_invalid")
        assert(self._method_shaped_text_get_preserve_invalid_4155700596 != nil)
        self._method_shaped_text_set_preserve_control_1265174801 = StringName(from: "shaped_text_set_preserve_control")
        assert(self._method_shaped_text_set_preserve_control_1265174801 != nil)
        self._method_shaped_text_get_preserve_control_4155700596 = StringName(from: "shaped_text_get_preserve_control")
        assert(self._method_shaped_text_get_preserve_control_4155700596 != nil)
        self._method_shaped_text_set_spacing_1307259930 = StringName(from: "shaped_text_set_spacing")
        assert(self._method_shaped_text_set_spacing_1307259930 != nil)
        self._method_shaped_text_get_spacing_1213653558 = StringName(from: "shaped_text_get_spacing")
        assert(self._method_shaped_text_get_spacing_1213653558 != nil)
        self._method_shaped_text_add_string_2621279422 = StringName(from: "shaped_text_add_string")
        assert(self._method_shaped_text_add_string_2621279422 != nil)
        self._method_shaped_text_add_object_2838446185 = StringName(from: "shaped_text_add_object")
        assert(self._method_shaped_text_add_object_2838446185 != nil)
        self._method_shaped_text_resize_object_2353789835 = StringName(from: "shaped_text_resize_object")
        assert(self._method_shaped_text_resize_object_2353789835 != nil)
        self._method_shaped_get_span_count_2198884583 = StringName(from: "shaped_get_span_count")
        assert(self._method_shaped_get_span_count_2198884583 != nil)
        self._method_shaped_get_span_meta_4069510997 = StringName(from: "shaped_get_span_meta")
        assert(self._method_shaped_get_span_meta_4069510997 != nil)
        self._method_shaped_set_span_update_font_1578983057 = StringName(from: "shaped_set_span_update_font")
        assert(self._method_shaped_set_span_update_font_1578983057 != nil)
        self._method_shaped_text_substr_1937682086 = StringName(from: "shaped_text_substr")
        assert(self._method_shaped_text_substr_1937682086 != nil)
        self._method_shaped_text_get_parent_3814569979 = StringName(from: "shaped_text_get_parent")
        assert(self._method_shaped_text_get_parent_3814569979 != nil)
        self._method_shaped_text_fit_to_width_603718830 = StringName(from: "shaped_text_fit_to_width")
        assert(self._method_shaped_text_fit_to_width_603718830 != nil)
        self._method_shaped_text_tab_align_1283669550 = StringName(from: "shaped_text_tab_align")
        assert(self._method_shaped_text_tab_align_1283669550 != nil)
        self._method_shaped_text_shape_3521089500 = StringName(from: "shaped_text_shape")
        assert(self._method_shaped_text_shape_3521089500 != nil)
        self._method_shaped_text_is_ready_4155700596 = StringName(from: "shaped_text_is_ready")
        assert(self._method_shaped_text_is_ready_4155700596 != nil)
        self._method_shaped_text_get_glyphs_2684255073 = StringName(from: "shaped_text_get_glyphs")
        assert(self._method_shaped_text_get_glyphs_2684255073 != nil)
        self._method_shaped_text_sort_logical_2670461153 = StringName(from: "shaped_text_sort_logical")
        assert(self._method_shaped_text_sort_logical_2670461153 != nil)
        self._method_shaped_text_get_glyph_count_2198884583 = StringName(from: "shaped_text_get_glyph_count")
        assert(self._method_shaped_text_get_glyph_count_2198884583 != nil)
        self._method_shaped_text_get_range_733700038 = StringName(from: "shaped_text_get_range")
        assert(self._method_shaped_text_get_range_733700038 != nil)
        self._method_shaped_text_get_line_breaks_adv_4206849830 = StringName(from: "shaped_text_get_line_breaks_adv")
        assert(self._method_shaped_text_get_line_breaks_adv_4206849830 != nil)
        self._method_shaped_text_get_line_breaks_303410369 = StringName(from: "shaped_text_get_line_breaks")
        assert(self._method_shaped_text_get_line_breaks_303410369 != nil)
        self._method_shaped_text_get_word_breaks_3299477123 = StringName(from: "shaped_text_get_word_breaks")
        assert(self._method_shaped_text_get_word_breaks_3299477123 != nil)
        self._method_shaped_text_get_trim_pos_2198884583 = StringName(from: "shaped_text_get_trim_pos")
        assert(self._method_shaped_text_get_trim_pos_2198884583 != nil)
        self._method_shaped_text_get_ellipsis_pos_2198884583 = StringName(from: "shaped_text_get_ellipsis_pos")
        assert(self._method_shaped_text_get_ellipsis_pos_2198884583 != nil)
        self._method_shaped_text_get_ellipsis_glyphs_2684255073 = StringName(from: "shaped_text_get_ellipsis_glyphs")
        assert(self._method_shaped_text_get_ellipsis_glyphs_2684255073 != nil)
        self._method_shaped_text_get_ellipsis_glyph_count_2198884583 = StringName(from: "shaped_text_get_ellipsis_glyph_count")
        assert(self._method_shaped_text_get_ellipsis_glyph_count_2198884583 != nil)
        self._method_shaped_text_overrun_trim_to_width_1572579718 = StringName(from: "shaped_text_overrun_trim_to_width")
        assert(self._method_shaped_text_overrun_trim_to_width_1572579718 != nil)
        self._method_shaped_text_get_objects_2684255073 = StringName(from: "shaped_text_get_objects")
        assert(self._method_shaped_text_get_objects_2684255073 != nil)
        self._method_shaped_text_get_object_rect_447978354 = StringName(from: "shaped_text_get_object_rect")
        assert(self._method_shaped_text_get_object_rect_447978354 != nil)
        self._method_shaped_text_get_size_2440833711 = StringName(from: "shaped_text_get_size")
        assert(self._method_shaped_text_get_size_2440833711 != nil)
        self._method_shaped_text_get_ascent_866169185 = StringName(from: "shaped_text_get_ascent")
        assert(self._method_shaped_text_get_ascent_866169185 != nil)
        self._method_shaped_text_get_descent_866169185 = StringName(from: "shaped_text_get_descent")
        assert(self._method_shaped_text_get_descent_866169185 != nil)
        self._method_shaped_text_get_width_866169185 = StringName(from: "shaped_text_get_width")
        assert(self._method_shaped_text_get_width_866169185 != nil)
        self._method_shaped_text_get_underline_position_866169185 = StringName(from: "shaped_text_get_underline_position")
        assert(self._method_shaped_text_get_underline_position_866169185 != nil)
        self._method_shaped_text_get_underline_thickness_866169185 = StringName(from: "shaped_text_get_underline_thickness")
        assert(self._method_shaped_text_get_underline_thickness_866169185 != nil)
        self._method_shaped_text_get_carets_1574219346 = StringName(from: "shaped_text_get_carets")
        assert(self._method_shaped_text_get_carets_1574219346 != nil)
        self._method_shaped_text_get_selection_3714187733 = StringName(from: "shaped_text_get_selection")
        assert(self._method_shaped_text_get_selection_3714187733 != nil)
        self._method_shaped_text_hit_test_grapheme_3149310417 = StringName(from: "shaped_text_hit_test_grapheme")
        assert(self._method_shaped_text_hit_test_grapheme_3149310417 != nil)
        self._method_shaped_text_hit_test_position_3149310417 = StringName(from: "shaped_text_hit_test_position")
        assert(self._method_shaped_text_hit_test_position_3149310417 != nil)
        self._method_shaped_text_get_grapheme_bounds_2546185844 = StringName(from: "shaped_text_get_grapheme_bounds")
        assert(self._method_shaped_text_get_grapheme_bounds_2546185844 != nil)
        self._method_shaped_text_next_grapheme_pos_1120910005 = StringName(from: "shaped_text_next_grapheme_pos")
        assert(self._method_shaped_text_next_grapheme_pos_1120910005 != nil)
        self._method_shaped_text_prev_grapheme_pos_1120910005 = StringName(from: "shaped_text_prev_grapheme_pos")
        assert(self._method_shaped_text_prev_grapheme_pos_1120910005 != nil)
        self._method_shaped_text_draw_70679950 = StringName(from: "shaped_text_draw")
        assert(self._method_shaped_text_draw_70679950 != nil)
        self._method_shaped_text_draw_outline_2673671346 = StringName(from: "shaped_text_draw_outline")
        assert(self._method_shaped_text_draw_outline_2673671346 != nil)
        self._method_shaped_text_get_dominant_direction_in_range_3326907668 = StringName(from: "shaped_text_get_dominant_direction_in_range")
        assert(self._method_shaped_text_get_dominant_direction_in_range_3326907668 != nil)
        self._method_format_number_2305636099 = StringName(from: "format_number")
        assert(self._method_format_number_2305636099 != nil)
        self._method_parse_number_2305636099 = StringName(from: "parse_number")
        assert(self._method_parse_number_2305636099 != nil)
        self._method_percent_sign_993269549 = StringName(from: "percent_sign")
        assert(self._method_percent_sign_993269549 != nil)
        self._method_string_get_word_breaks_1398910359 = StringName(from: "string_get_word_breaks")
        assert(self._method_string_get_word_breaks_1398910359 != nil)
        self._method_is_confusable_1433197768 = StringName(from: "is_confusable")
        assert(self._method_is_confusable_1433197768 != nil)
        self._method_spoof_check_3927539163 = StringName(from: "spoof_check")
        assert(self._method_spoof_check_3927539163 != nil)
        self._method_strip_diacritics_3135753539 = StringName(from: "strip_diacritics")
        assert(self._method_strip_diacritics_3135753539 != nil)
        self._method_is_valid_identifier_3927539163 = StringName(from: "is_valid_identifier")
        assert(self._method_is_valid_identifier_3927539163 != nil)
        self._method_string_to_upper_2305636099 = StringName(from: "string_to_upper")
        assert(self._method_string_to_upper_2305636099 != nil)
        self._method_string_to_lower_2305636099 = StringName(from: "string_to_lower")
        assert(self._method_string_to_lower_2305636099 != nil)
        self._method_parse_structured_text_3310685015 = StringName(from: "parse_structured_text")
        assert(self._method_parse_structured_text_3310685015 != nil)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_feature_3967367083._native_ptr(),
                    3967367083)
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
    public func get_name() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_name_201670096._native_ptr(),
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
    public func get_features() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_features_3905245786._native_ptr(),
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
    public func load_support_data(filename: godot.String) -> UInt8 {
        let filename_native = filename._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(filename_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_load_support_data_2323990056._native_ptr(),
                    2323990056)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_support_data_filename() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_support_data_filename_201670096._native_ptr(),
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
    public func get_support_data_info() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_support_data_info_201670096._native_ptr(),
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
    public func save_support_data(filename: godot.String) -> UInt8 {
        let filename_native = filename._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(filename_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_save_support_data_3927539163._native_ptr(),
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
    public func is_locale_right_to_left(locale: godot.String) -> UInt8 {
        let locale_native = locale._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(locale_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_locale_right_to_left_3927539163._native_ptr(),
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
    public func name_to_tag(name: godot.String) -> Int64 {
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
                    Self._method_name_to_tag_1321353865._native_ptr(),
                    1321353865)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func tag_to_name(tag: Int64) -> godot.String {
        withUnsafePointer(to: tag) { tag_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tag_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_tag_to_name_844755477._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_3521089500._native_ptr(),
                    3521089500)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func free_rid(rid: RID)  {
        let rid_native = rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rid_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_free_rid_2722037293._native_ptr(),
                    2722037293)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_font_529393457._native_ptr(),
                    529393457)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_data_1355495400._native_ptr(),
                    1355495400)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_face_index_3411492887._native_ptr(),
                    3411492887)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_face_index_2198884583._native_ptr(),
                    2198884583)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_face_count_2198884583._native_ptr(),
                    2198884583)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_style_898466325._native_ptr(),
                    898466325)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_style_3082502592._native_ptr(),
                    3082502592)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.FontStyle(godot: __resPtr.pointee)
    }
    public func font_set_name(font_rid: RID, name: godot.String)  {
        let name_native = name._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_name_2726140452._native_ptr(),
                    2726140452)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func font_get_name(font_rid: RID) -> godot.String {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_name_642473191._native_ptr(),
                    642473191)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func font_set_style_name(font_rid: RID, name: godot.String)  {
        let name_native = name._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_style_name_2726140452._native_ptr(),
                    2726140452)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func font_get_style_name(font_rid: RID) -> godot.String {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_style_name_642473191._native_ptr(),
                    642473191)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_weight_3411492887._native_ptr(),
                    3411492887)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_weight_2198884583._native_ptr(),
                    2198884583)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_stretch_3411492887._native_ptr(),
                    3411492887)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_stretch_2198884583._native_ptr(),
                    2198884583)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_antialiasing_958337235._native_ptr(),
                    958337235)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_antialiasing_3389420495._native_ptr(),
                    3389420495)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.FontAntialiasing(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_generate_mipmaps_1265174801._native_ptr(),
                    1265174801)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_generate_mipmaps_4155700596._native_ptr(),
                    4155700596)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_multichannel_signed_distance_field_1265174801._native_ptr(),
                    1265174801)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_is_multichannel_signed_distance_field_4155700596._native_ptr(),
                    4155700596)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_msdf_pixel_range_3411492887._native_ptr(),
                    3411492887)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_msdf_pixel_range_2198884583._native_ptr(),
                    2198884583)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_msdf_size_3411492887._native_ptr(),
                    3411492887)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_msdf_size_2198884583._native_ptr(),
                    2198884583)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_fixed_size_3411492887._native_ptr(),
                    3411492887)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_fixed_size_2198884583._native_ptr(),
                    2198884583)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_allow_system_fallback_1265174801._native_ptr(),
                    1265174801)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_is_allow_system_fallback_4155700596._native_ptr(),
                    4155700596)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_force_autohinter_1265174801._native_ptr(),
                    1265174801)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_is_force_autohinter_4155700596._native_ptr(),
                    4155700596)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_hinting_1520010864._native_ptr(),
                    1520010864)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_hinting_3971592737._native_ptr(),
                    3971592737)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.Hinting(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_subpixel_positioning_3830459669._native_ptr(),
                    3830459669)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_subpixel_positioning_2752233671._native_ptr(),
                    2752233671)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.SubpixelPositioning(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_embolden_1794382983._native_ptr(),
                    1794382983)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_embolden_866169185._native_ptr(),
                    866169185)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_transform_1246044741._native_ptr(),
                    1246044741)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_transform_213527486._native_ptr(),
                    213527486)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_variation_coordinates_1217542888._native_ptr(),
                    1217542888)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_variation_coordinates_1882737106._native_ptr(),
                    1882737106)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_oversampling_1794382983._native_ptr(),
                    1794382983)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_oversampling_866169185._native_ptr(),
                    866169185)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_size_cache_list_2684255073._native_ptr(),
                    2684255073)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Vector2i](godot: __resPtr.pointee)
    }
    public func font_clear_size_cache(font_rid: RID)  {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_clear_size_cache_2722037293._native_ptr(),
                    2722037293)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_remove_size_cache_2450610377._native_ptr(),
                    2450610377)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_ascent_1892459533._native_ptr(),
                    1892459533)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_ascent_755457166._native_ptr(),
                    755457166)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_descent_1892459533._native_ptr(),
                    1892459533)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_descent_755457166._native_ptr(),
                    755457166)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_underline_position_1892459533._native_ptr(),
                    1892459533)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_underline_position_755457166._native_ptr(),
                    755457166)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_underline_thickness_1892459533._native_ptr(),
                    1892459533)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_underline_thickness_755457166._native_ptr(),
                    755457166)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_scale_1892459533._native_ptr(),
                    1892459533)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_scale_755457166._native_ptr(),
                    755457166)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_texture_count_1311001310._native_ptr(),
                    1311001310)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_clear_textures_2450610377._native_ptr(),
                    2450610377)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_remove_texture_3810512262._native_ptr(),
                    3810512262)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_texture_image_2354485091._native_ptr(),
                    2354485091)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_texture_image_2451761155._native_ptr(),
                    2451761155)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Image(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_texture_offsets_3005398047._native_ptr(),
                    3005398047)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_texture_offsets_3420028887._native_ptr(),
                    3420028887)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_glyph_list_46086620._native_ptr(),
                    46086620)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_clear_glyphs_2450610377._native_ptr(),
                    2450610377)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_remove_glyph_3810512262._native_ptr(),
                    3810512262)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_glyph_advance_2555689501._native_ptr(),
                    2555689501)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_glyph_advance_3219397315._native_ptr(),
                    3219397315)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_glyph_offset_513728628._native_ptr(),
                    513728628)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_glyph_offset_1812632090._native_ptr(),
                    1812632090)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_glyph_size_513728628._native_ptr(),
                    513728628)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_glyph_size_1812632090._native_ptr(),
                    1812632090)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_glyph_uv_rect_2274268786._native_ptr(),
                    2274268786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_glyph_uv_rect_1973324081._native_ptr(),
                    1973324081)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_glyph_texture_idx_4292800474._native_ptr(),
                    4292800474)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_glyph_texture_idx_4254580980._native_ptr(),
                    4254580980)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_glyph_texture_rid_1451696141._native_ptr(),
                    1451696141)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_glyph_texture_size_513728628._native_ptr(),
                    513728628)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_glyph_contours_2903964473._native_ptr(),
                    2903964473)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_kerning_list_1778388067._native_ptr(),
                    1778388067)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Vector2i](godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_clear_kerning_map_3411492887._native_ptr(),
                    3411492887)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_remove_kerning_2141860016._native_ptr(),
                    2141860016)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_kerning_3630965883._native_ptr(),
                    3630965883)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_kerning_1019980169._native_ptr(),
                    1019980169)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_glyph_index_1765635060._native_ptr(),
                    1765635060)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_has_char_3120086654._native_ptr(),
                    3120086654)
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
    public func font_get_supported_chars(font_rid: RID) -> godot.String {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_supported_chars_642473191._native_ptr(),
                    642473191)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_render_range_4254580980._native_ptr(),
                    4254580980)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_render_glyph_3810512262._native_ptr(),
                    3810512262)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_draw_glyph_1821196351._native_ptr(),
                    1821196351)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_draw_glyph_outline_1124898203._native_ptr(),
                    1124898203)
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
    public func font_is_language_supported(font_rid: RID, language: godot.String) -> UInt8 {
        let language_native = language._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(language_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_is_language_supported_3199320846._native_ptr(),
                    3199320846)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func font_set_language_support_override(font_rid: RID, language: godot.String, supported: UInt8)  {
        withUnsafePointer(to: supported) { supported_native in
        let language_native = language._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(language_native), .init(supported_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_language_support_override_2313957094._native_ptr(),
                    2313957094)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func font_get_language_support_override(font_rid: RID, language: godot.String) -> UInt8 {
        let language_native = language._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(language_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_language_support_override_2829184646._native_ptr(),
                    2829184646)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func font_remove_language_support_override(font_rid: RID, language: godot.String)  {
        let language_native = language._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(language_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_remove_language_support_override_2726140452._native_ptr(),
                    2726140452)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_language_support_overrides_2801473409._native_ptr(),
                    2801473409)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func font_is_script_supported(font_rid: RID, script: godot.String) -> UInt8 {
        let script_native = script._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(script_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_is_script_supported_3199320846._native_ptr(),
                    3199320846)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func font_set_script_support_override(font_rid: RID, script: godot.String, supported: UInt8)  {
        withUnsafePointer(to: supported) { supported_native in
        let script_native = script._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(script_native), .init(supported_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_script_support_override_2313957094._native_ptr(),
                    2313957094)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func font_get_script_support_override(font_rid: RID, script: godot.String) -> UInt8 {
        let script_native = script._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(script_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_script_support_override_2829184646._native_ptr(),
                    2829184646)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func font_remove_script_support_override(font_rid: RID, script: godot.String)  {
        let script_native = script._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(script_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_remove_script_support_override_2726140452._native_ptr(),
                    2726140452)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_script_support_overrides_2801473409._native_ptr(),
                    2801473409)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_opentype_feature_overrides_1217542888._native_ptr(),
                    1217542888)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_opentype_feature_overrides_1882737106._native_ptr(),
                    1882737106)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_supported_feature_list_1882737106._native_ptr(),
                    1882737106)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_supported_variation_list_1882737106._native_ptr(),
                    1882737106)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
    }
    public func font_get_global_oversampling() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_get_global_oversampling_1740695150._native_ptr(),
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
    public func font_set_global_oversampling(oversampling: Float64)  {
        withUnsafePointer(to: oversampling) { oversampling_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(oversampling_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_font_set_global_oversampling_373806689._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_hex_code_box_size_3016396712._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_hex_code_box_1602046441._native_ptr(),
                    1602046441)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_shaped_text_1231398698._native_ptr(),
                    1231398698)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_clear_2722037293._native_ptr(),
                    2722037293)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_set_direction_2616949700._native_ptr(),
                    2616949700)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_get_direction_3065904362._native_ptr(),
                    3065904362)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.Direction(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_get_inferred_direction_3065904362._native_ptr(),
                    3065904362)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.Direction(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_set_bidi_override_684822712._native_ptr(),
                    684822712)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func shaped_text_set_custom_punctuation(shaped: RID, punct: godot.String)  {
        let punct_native = punct._native_ptr()
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(punct_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_set_custom_punctuation_2726140452._native_ptr(),
                    2726140452)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func shaped_text_get_custom_punctuation(shaped: RID) -> godot.String {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_get_custom_punctuation_642473191._native_ptr(),
                    642473191)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_set_orientation_104095128._native_ptr(),
                    104095128)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_get_orientation_3142708106._native_ptr(),
                    3142708106)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.Orientation(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_set_preserve_invalid_1265174801._native_ptr(),
                    1265174801)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_get_preserve_invalid_4155700596._native_ptr(),
                    4155700596)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_set_preserve_control_1265174801._native_ptr(),
                    1265174801)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_get_preserve_control_4155700596._native_ptr(),
                    4155700596)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_set_spacing_1307259930._native_ptr(),
                    1307259930)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_get_spacing_1213653558._native_ptr(),
                    1213653558)
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
    public func shaped_text_add_string(shaped: RID, text: godot.String, fonts: [RID], size: Int64, opentype_features: Dictionary, language: godot.String, meta: Variant) -> UInt8 {
        withUnsafePointer(to: size) { size_native in
        let meta_native = meta._native_ptr()
        let language_native = language._native_ptr()
        let opentype_features_native = opentype_features._native_ptr()
        let fonts_native = fonts._native_ptr()
        let text_native = text._native_ptr()
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 7)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(text_native), .init(fonts_native), .init(size_native), .init(opentype_features_native), .init(language_native), .init(meta_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_add_string_2621279422._native_ptr(),
                    2621279422)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_add_object_2838446185._native_ptr(),
                    2838446185)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_resize_object_2353789835._native_ptr(),
                    2353789835)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_get_span_count_2198884583._native_ptr(),
                    2198884583)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_get_span_meta_4069510997._native_ptr(),
                    4069510997)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_set_span_update_font_1578983057._native_ptr(),
                    1578983057)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_substr_1937682086._native_ptr(),
                    1937682086)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_get_parent_3814569979._native_ptr(),
                    3814569979)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_fit_to_width_603718830._native_ptr(),
                    603718830)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_tab_align_1283669550._native_ptr(),
                    1283669550)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_shape_3521089500._native_ptr(),
                    3521089500)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_is_ready_4155700596._native_ptr(),
                    4155700596)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_get_glyphs_2684255073._native_ptr(),
                    2684255073)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_sort_logical_2670461153._native_ptr(),
                    2670461153)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_get_glyph_count_2198884583._native_ptr(),
                    2198884583)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_get_range_733700038._native_ptr(),
                    733700038)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_get_line_breaks_adv_4206849830._native_ptr(),
                    4206849830)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_get_line_breaks_303410369._native_ptr(),
                    303410369)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_get_word_breaks_3299477123._native_ptr(),
                    3299477123)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_get_trim_pos_2198884583._native_ptr(),
                    2198884583)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_get_ellipsis_pos_2198884583._native_ptr(),
                    2198884583)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_get_ellipsis_glyphs_2684255073._native_ptr(),
                    2684255073)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_get_ellipsis_glyph_count_2198884583._native_ptr(),
                    2198884583)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_overrun_trim_to_width_1572579718._native_ptr(),
                    1572579718)
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
    public func shaped_text_get_objects(shaped: RID) -> Array {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_get_objects_2684255073._native_ptr(),
                    2684255073)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_get_object_rect_447978354._native_ptr(),
                    447978354)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_get_size_2440833711._native_ptr(),
                    2440833711)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_get_ascent_866169185._native_ptr(),
                    866169185)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_get_descent_866169185._native_ptr(),
                    866169185)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_get_width_866169185._native_ptr(),
                    866169185)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_get_underline_position_866169185._native_ptr(),
                    866169185)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_get_underline_thickness_866169185._native_ptr(),
                    866169185)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_get_carets_1574219346._native_ptr(),
                    1574219346)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_get_selection_3714187733._native_ptr(),
                    3714187733)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_hit_test_grapheme_3149310417._native_ptr(),
                    3149310417)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_hit_test_position_3149310417._native_ptr(),
                    3149310417)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_get_grapheme_bounds_2546185844._native_ptr(),
                    2546185844)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_next_grapheme_pos_1120910005._native_ptr(),
                    1120910005)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_prev_grapheme_pos_1120910005._native_ptr(),
                    1120910005)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_draw_70679950._native_ptr(),
                    70679950)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_draw_outline_2673671346._native_ptr(),
                    2673671346)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shaped_text_get_dominant_direction_in_range_3326907668._native_ptr(),
                    3326907668)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.Direction(godot: __resPtr.pointee)
        }
        }
    }
    public func format_number(number: godot.String, language: godot.String) -> godot.String {
        let language_native = language._native_ptr()
        let number_native = number._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(number_native), .init(language_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_format_number_2305636099._native_ptr(),
                    2305636099)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func parse_number(number: godot.String, language: godot.String) -> godot.String {
        let language_native = language._native_ptr()
        let number_native = number._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(number_native), .init(language_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_parse_number_2305636099._native_ptr(),
                    2305636099)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func percent_sign(language: godot.String) -> godot.String {
        let language_native = language._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(language_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_percent_sign_993269549._native_ptr(),
                    993269549)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func string_get_word_breaks(string: godot.String, language: godot.String, chars_per_line: Int64) -> PackedInt32Array {
        withUnsafePointer(to: chars_per_line) { chars_per_line_native in
        let language_native = language._native_ptr()
        let string_native = string._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(string_native), .init(language_native), .init(chars_per_line_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_string_get_word_breaks_1398910359._native_ptr(),
                    1398910359)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
        }
    }
    public func is_confusable(string: godot.String, dict: PackedStringArray) -> Int64 {
        let dict_native = dict._native_ptr()
        let string_native = string._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(string_native), .init(dict_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_confusable_1433197768._native_ptr(),
                    1433197768)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func spoof_check(string: godot.String) -> UInt8 {
        let string_native = string._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(string_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_spoof_check_3927539163._native_ptr(),
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
    public func strip_diacritics(string: godot.String) -> godot.String {
        let string_native = string._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(string_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_strip_diacritics_3135753539._native_ptr(),
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
    public func is_valid_identifier(string: godot.String) -> UInt8 {
        let string_native = string._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(string_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_valid_identifier_3927539163._native_ptr(),
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
    public func string_to_upper(string: godot.String, language: godot.String) -> godot.String {
        let language_native = language._native_ptr()
        let string_native = string._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(string_native), .init(language_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_string_to_upper_2305636099._native_ptr(),
                    2305636099)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func string_to_lower(string: godot.String, language: godot.String) -> godot.String {
        let language_native = language._native_ptr()
        let string_native = string._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(string_native), .init(language_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_string_to_lower_2305636099._native_ptr(),
                    2305636099)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func parse_structured_text(parser_type: TextServer.StructuredTextParser, args: Array, text: godot.String) -> [Vector3i] {
        withUnsafePointer(to: parser_type.rawValue) { parser_type_native in
        let text_native = text._native_ptr()
        let args_native = args._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(parser_type_native), .init(args_native), .init(text_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_parse_structured_text_3310685015._native_ptr(),
                    3310685015)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Vector3i](godot: __resPtr.pointee)
        }
    }
}