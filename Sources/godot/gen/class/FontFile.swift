import godot_native

fileprivate var __godot_name_FontFile: StringName! = nil

/// Font source data and prerendered glyph cache, imported from dynamic or bitmap font.
/// 
/// [FontFile] contains a set of glyphs to represent Unicode characters imported from a font file, as well as a cache of rasterized glyphs, and a set of fallback [Font]s to use.
///  
/// Use [FontVariation] to access specific OpenType variation of the font, create simulated bold / slanted version, and draw lines of text.
///  
/// For more complex text processing, use [FontVariation] in conjunction with [TextLine] or [TextParagraph].
///  
/// Supported font formats:
///  
/// - Dynamic font importer: TrueType (.ttf), TrueType collection (.ttc), OpenType (.otf), OpenType collection (.otc), WOFF (.woff), WOFF2 (.woff2), Type 1 (.pfb, .pfm).
///  
/// - Bitmap font importer: AngelCode BMFont (.fnt, .font), text and binary (version 3) format variants.
///  
/// - Monospace image font importer: All supported image formats.
///  
/// [b]Note:[/b] A character is a symbol that represents an item (letter, digit etc.) in an abstract way.
///  
/// [b]Note:[/b] A glyph is a bitmap or shape used to draw a one or more characters in a context-dependent manner. Glyph indices are bound to the specific font data source.
///  
/// [b]Note:[/b] If a none of the font data sources contain glyphs for a character used in a string, the character in question will be replaced with a box displaying its hexadecimal code.
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// var f = load("res://BarlowCondensed-Bold.ttf")
///  
/// $"Label".set("custom_fonts/font", f)
///  
/// $"Label".set("custom_fonts/font_size", 64)
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// var f = ResourceLoader.Load<FontFile>("res://BarlowCondensed-Bold.ttf");
///  
/// GetNode("Label").Set("custom_fonts/font", f);
///  
/// GetNode("Label").Set("custom_font_sizes/font_size", 64);
///  
/// [/csharp]
///  
/// [/codeblocks]
public class FontFile : Font {

    

    public override class var __godot_name: StringName { __godot_name_FontFile }

    static var _method_load_bitmap_font_166001499: GDExtensionMethodBindPtr! = nil
    static var _method_load_dynamic_font_166001499: GDExtensionMethodBindPtr! = nil
    static var _method_set_data_2971499966: GDExtensionMethodBindPtr! = nil
    static var _method_get_data_2362200018: GDExtensionMethodBindPtr! = nil
    static var _method_set_font_name_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_set_font_style_name_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_set_font_style_918070724: GDExtensionMethodBindPtr! = nil
    static var _method_set_font_weight_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_font_stretch_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_antialiasing_1669900: GDExtensionMethodBindPtr! = nil
    static var _method_get_antialiasing_4262718649: GDExtensionMethodBindPtr! = nil
    static var _method_set_generate_mipmaps_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_generate_mipmaps_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_multichannel_signed_distance_field_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_multichannel_signed_distance_field_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_msdf_pixel_range_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_msdf_pixel_range_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_msdf_size_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_msdf_size_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_fixed_size_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_fixed_size_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_allow_system_fallback_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_allow_system_fallback_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_force_autohinter_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_force_autohinter_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_hinting_1827459492: GDExtensionMethodBindPtr! = nil
    static var _method_get_hinting_3683214614: GDExtensionMethodBindPtr! = nil
    static var _method_set_subpixel_positioning_4225742182: GDExtensionMethodBindPtr! = nil
    static var _method_get_subpixel_positioning_1069238588: GDExtensionMethodBindPtr! = nil
    static var _method_set_oversampling_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_oversampling_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_cache_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_clear_cache_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_remove_cache_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_size_cache_list_663333327: GDExtensionMethodBindPtr! = nil
    static var _method_clear_size_cache_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_remove_size_cache_2311374912: GDExtensionMethodBindPtr! = nil
    static var _method_set_variation_coordinates_64545446: GDExtensionMethodBindPtr! = nil
    static var _method_get_variation_coordinates_3485342025: GDExtensionMethodBindPtr! = nil
    static var _method_set_embolden_1602489585: GDExtensionMethodBindPtr! = nil
    static var _method_get_embolden_2339986948: GDExtensionMethodBindPtr! = nil
    static var _method_set_transform_30160968: GDExtensionMethodBindPtr! = nil
    static var _method_get_transform_3836996910: GDExtensionMethodBindPtr! = nil
    static var _method_set_face_index_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_get_face_index_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_set_cache_ascent_3506521499: GDExtensionMethodBindPtr! = nil
    static var _method_get_cache_ascent_3085491603: GDExtensionMethodBindPtr! = nil
    static var _method_set_cache_descent_3506521499: GDExtensionMethodBindPtr! = nil
    static var _method_get_cache_descent_3085491603: GDExtensionMethodBindPtr! = nil
    static var _method_set_cache_underline_position_3506521499: GDExtensionMethodBindPtr! = nil
    static var _method_get_cache_underline_position_3085491603: GDExtensionMethodBindPtr! = nil
    static var _method_set_cache_underline_thickness_3506521499: GDExtensionMethodBindPtr! = nil
    static var _method_get_cache_underline_thickness_3085491603: GDExtensionMethodBindPtr! = nil
    static var _method_set_cache_scale_3506521499: GDExtensionMethodBindPtr! = nil
    static var _method_get_cache_scale_3085491603: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_count_1987661582: GDExtensionMethodBindPtr! = nil
    static var _method_clear_textures_2311374912: GDExtensionMethodBindPtr! = nil
    static var _method_remove_texture_2328951467: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_image_4157974066: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_image_3878418953: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_offsets_2849993437: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_offsets_3703444828: GDExtensionMethodBindPtr! = nil
    static var _method_get_glyph_list_681709689: GDExtensionMethodBindPtr! = nil
    static var _method_clear_glyphs_2311374912: GDExtensionMethodBindPtr! = nil
    static var _method_remove_glyph_2328951467: GDExtensionMethodBindPtr! = nil
    static var _method_set_glyph_advance_947991729: GDExtensionMethodBindPtr! = nil
    static var _method_get_glyph_advance_1601573536: GDExtensionMethodBindPtr! = nil
    static var _method_set_glyph_offset_921719850: GDExtensionMethodBindPtr! = nil
    static var _method_get_glyph_offset_3205412300: GDExtensionMethodBindPtr! = nil
    static var _method_set_glyph_size_921719850: GDExtensionMethodBindPtr! = nil
    static var _method_get_glyph_size_3205412300: GDExtensionMethodBindPtr! = nil
    static var _method_set_glyph_uv_rect_3821620992: GDExtensionMethodBindPtr! = nil
    static var _method_get_glyph_uv_rect_3927917900: GDExtensionMethodBindPtr! = nil
    static var _method_set_glyph_texture_idx_355564111: GDExtensionMethodBindPtr! = nil
    static var _method_get_glyph_texture_idx_1629411054: GDExtensionMethodBindPtr! = nil
    static var _method_get_kerning_list_2345056839: GDExtensionMethodBindPtr! = nil
    static var _method_clear_kerning_map_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_remove_kerning_3930204747: GDExtensionMethodBindPtr! = nil
    static var _method_set_kerning_3182200918: GDExtensionMethodBindPtr! = nil
    static var _method_get_kerning_1611912865: GDExtensionMethodBindPtr! = nil
    static var _method_render_range_355564111: GDExtensionMethodBindPtr! = nil
    static var _method_render_glyph_2328951467: GDExtensionMethodBindPtr! = nil
    static var _method_set_language_support_override_2678287736: GDExtensionMethodBindPtr! = nil
    static var _method_get_language_support_override_3927539163: GDExtensionMethodBindPtr! = nil
    static var _method_remove_language_support_override_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_language_support_overrides_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_set_script_support_override_2678287736: GDExtensionMethodBindPtr! = nil
    static var _method_get_script_support_override_3927539163: GDExtensionMethodBindPtr! = nil
    static var _method_remove_script_support_override_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_script_support_overrides_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_set_opentype_feature_overrides_4155329257: GDExtensionMethodBindPtr! = nil
    static var _method_get_opentype_feature_overrides_3102165223: GDExtensionMethodBindPtr! = nil
    static var _method_get_glyph_index_864943070: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_FontFile = StringName(from: "FontFile")

        let _method_load_bitmap_font_166001499_name = StringName(from: "load_bitmap_font")
        self._method_load_bitmap_font_166001499 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_load_bitmap_font_166001499_name._native_ptr(), 166001499)
        assert(FontFile._method_load_bitmap_font_166001499 != nil)
        let _method_load_dynamic_font_166001499_name = StringName(from: "load_dynamic_font")
        self._method_load_dynamic_font_166001499 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_load_dynamic_font_166001499_name._native_ptr(), 166001499)
        assert(FontFile._method_load_dynamic_font_166001499 != nil)
        let _method_set_data_2971499966_name = StringName(from: "set_data")
        self._method_set_data_2971499966 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_data_2971499966_name._native_ptr(), 2971499966)
        assert(FontFile._method_set_data_2971499966 != nil)
        let _method_get_data_2362200018_name = StringName(from: "get_data")
        self._method_get_data_2362200018 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_data_2362200018_name._native_ptr(), 2362200018)
        assert(FontFile._method_get_data_2362200018 != nil)
        let _method_set_font_name_83702148_name = StringName(from: "set_font_name")
        self._method_set_font_name_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_font_name_83702148_name._native_ptr(), 83702148)
        assert(FontFile._method_set_font_name_83702148 != nil)
        let _method_set_font_style_name_83702148_name = StringName(from: "set_font_style_name")
        self._method_set_font_style_name_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_font_style_name_83702148_name._native_ptr(), 83702148)
        assert(FontFile._method_set_font_style_name_83702148 != nil)
        let _method_set_font_style_918070724_name = StringName(from: "set_font_style")
        self._method_set_font_style_918070724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_font_style_918070724_name._native_ptr(), 918070724)
        assert(FontFile._method_set_font_style_918070724 != nil)
        let _method_set_font_weight_1286410249_name = StringName(from: "set_font_weight")
        self._method_set_font_weight_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_font_weight_1286410249_name._native_ptr(), 1286410249)
        assert(FontFile._method_set_font_weight_1286410249 != nil)
        let _method_set_font_stretch_1286410249_name = StringName(from: "set_font_stretch")
        self._method_set_font_stretch_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_font_stretch_1286410249_name._native_ptr(), 1286410249)
        assert(FontFile._method_set_font_stretch_1286410249 != nil)
        let _method_set_antialiasing_1669900_name = StringName(from: "set_antialiasing")
        self._method_set_antialiasing_1669900 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_antialiasing_1669900_name._native_ptr(), 1669900)
        assert(FontFile._method_set_antialiasing_1669900 != nil)
        let _method_get_antialiasing_4262718649_name = StringName(from: "get_antialiasing")
        self._method_get_antialiasing_4262718649 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_antialiasing_4262718649_name._native_ptr(), 4262718649)
        assert(FontFile._method_get_antialiasing_4262718649 != nil)
        let _method_set_generate_mipmaps_2586408642_name = StringName(from: "set_generate_mipmaps")
        self._method_set_generate_mipmaps_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_generate_mipmaps_2586408642_name._native_ptr(), 2586408642)
        assert(FontFile._method_set_generate_mipmaps_2586408642 != nil)
        let _method_get_generate_mipmaps_36873697_name = StringName(from: "get_generate_mipmaps")
        self._method_get_generate_mipmaps_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_generate_mipmaps_36873697_name._native_ptr(), 36873697)
        assert(FontFile._method_get_generate_mipmaps_36873697 != nil)
        let _method_set_multichannel_signed_distance_field_2586408642_name = StringName(from: "set_multichannel_signed_distance_field")
        self._method_set_multichannel_signed_distance_field_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_multichannel_signed_distance_field_2586408642_name._native_ptr(), 2586408642)
        assert(FontFile._method_set_multichannel_signed_distance_field_2586408642 != nil)
        let _method_is_multichannel_signed_distance_field_36873697_name = StringName(from: "is_multichannel_signed_distance_field")
        self._method_is_multichannel_signed_distance_field_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_multichannel_signed_distance_field_36873697_name._native_ptr(), 36873697)
        assert(FontFile._method_is_multichannel_signed_distance_field_36873697 != nil)
        let _method_set_msdf_pixel_range_1286410249_name = StringName(from: "set_msdf_pixel_range")
        self._method_set_msdf_pixel_range_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_msdf_pixel_range_1286410249_name._native_ptr(), 1286410249)
        assert(FontFile._method_set_msdf_pixel_range_1286410249 != nil)
        let _method_get_msdf_pixel_range_3905245786_name = StringName(from: "get_msdf_pixel_range")
        self._method_get_msdf_pixel_range_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_msdf_pixel_range_3905245786_name._native_ptr(), 3905245786)
        assert(FontFile._method_get_msdf_pixel_range_3905245786 != nil)
        let _method_set_msdf_size_1286410249_name = StringName(from: "set_msdf_size")
        self._method_set_msdf_size_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_msdf_size_1286410249_name._native_ptr(), 1286410249)
        assert(FontFile._method_set_msdf_size_1286410249 != nil)
        let _method_get_msdf_size_3905245786_name = StringName(from: "get_msdf_size")
        self._method_get_msdf_size_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_msdf_size_3905245786_name._native_ptr(), 3905245786)
        assert(FontFile._method_get_msdf_size_3905245786 != nil)
        let _method_set_fixed_size_1286410249_name = StringName(from: "set_fixed_size")
        self._method_set_fixed_size_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_fixed_size_1286410249_name._native_ptr(), 1286410249)
        assert(FontFile._method_set_fixed_size_1286410249 != nil)
        let _method_get_fixed_size_3905245786_name = StringName(from: "get_fixed_size")
        self._method_get_fixed_size_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_fixed_size_3905245786_name._native_ptr(), 3905245786)
        assert(FontFile._method_get_fixed_size_3905245786 != nil)
        let _method_set_allow_system_fallback_2586408642_name = StringName(from: "set_allow_system_fallback")
        self._method_set_allow_system_fallback_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_allow_system_fallback_2586408642_name._native_ptr(), 2586408642)
        assert(FontFile._method_set_allow_system_fallback_2586408642 != nil)
        let _method_is_allow_system_fallback_36873697_name = StringName(from: "is_allow_system_fallback")
        self._method_is_allow_system_fallback_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_allow_system_fallback_36873697_name._native_ptr(), 36873697)
        assert(FontFile._method_is_allow_system_fallback_36873697 != nil)
        let _method_set_force_autohinter_2586408642_name = StringName(from: "set_force_autohinter")
        self._method_set_force_autohinter_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_force_autohinter_2586408642_name._native_ptr(), 2586408642)
        assert(FontFile._method_set_force_autohinter_2586408642 != nil)
        let _method_is_force_autohinter_36873697_name = StringName(from: "is_force_autohinter")
        self._method_is_force_autohinter_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_force_autohinter_36873697_name._native_ptr(), 36873697)
        assert(FontFile._method_is_force_autohinter_36873697 != nil)
        let _method_set_hinting_1827459492_name = StringName(from: "set_hinting")
        self._method_set_hinting_1827459492 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_hinting_1827459492_name._native_ptr(), 1827459492)
        assert(FontFile._method_set_hinting_1827459492 != nil)
        let _method_get_hinting_3683214614_name = StringName(from: "get_hinting")
        self._method_get_hinting_3683214614 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_hinting_3683214614_name._native_ptr(), 3683214614)
        assert(FontFile._method_get_hinting_3683214614 != nil)
        let _method_set_subpixel_positioning_4225742182_name = StringName(from: "set_subpixel_positioning")
        self._method_set_subpixel_positioning_4225742182 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_subpixel_positioning_4225742182_name._native_ptr(), 4225742182)
        assert(FontFile._method_set_subpixel_positioning_4225742182 != nil)
        let _method_get_subpixel_positioning_1069238588_name = StringName(from: "get_subpixel_positioning")
        self._method_get_subpixel_positioning_1069238588 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_subpixel_positioning_1069238588_name._native_ptr(), 1069238588)
        assert(FontFile._method_get_subpixel_positioning_1069238588 != nil)
        let _method_set_oversampling_373806689_name = StringName(from: "set_oversampling")
        self._method_set_oversampling_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_oversampling_373806689_name._native_ptr(), 373806689)
        assert(FontFile._method_set_oversampling_373806689 != nil)
        let _method_get_oversampling_1740695150_name = StringName(from: "get_oversampling")
        self._method_get_oversampling_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_oversampling_1740695150_name._native_ptr(), 1740695150)
        assert(FontFile._method_get_oversampling_1740695150 != nil)
        let _method_get_cache_count_3905245786_name = StringName(from: "get_cache_count")
        self._method_get_cache_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_cache_count_3905245786_name._native_ptr(), 3905245786)
        assert(FontFile._method_get_cache_count_3905245786 != nil)
        let _method_clear_cache_3218959716_name = StringName(from: "clear_cache")
        self._method_clear_cache_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_cache_3218959716_name._native_ptr(), 3218959716)
        assert(FontFile._method_clear_cache_3218959716 != nil)
        let _method_remove_cache_1286410249_name = StringName(from: "remove_cache")
        self._method_remove_cache_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_cache_1286410249_name._native_ptr(), 1286410249)
        assert(FontFile._method_remove_cache_1286410249 != nil)
        let _method_get_size_cache_list_663333327_name = StringName(from: "get_size_cache_list")
        self._method_get_size_cache_list_663333327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_size_cache_list_663333327_name._native_ptr(), 663333327)
        assert(FontFile._method_get_size_cache_list_663333327 != nil)
        let _method_clear_size_cache_1286410249_name = StringName(from: "clear_size_cache")
        self._method_clear_size_cache_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_size_cache_1286410249_name._native_ptr(), 1286410249)
        assert(FontFile._method_clear_size_cache_1286410249 != nil)
        let _method_remove_size_cache_2311374912_name = StringName(from: "remove_size_cache")
        self._method_remove_size_cache_2311374912 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_size_cache_2311374912_name._native_ptr(), 2311374912)
        assert(FontFile._method_remove_size_cache_2311374912 != nil)
        let _method_set_variation_coordinates_64545446_name = StringName(from: "set_variation_coordinates")
        self._method_set_variation_coordinates_64545446 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_variation_coordinates_64545446_name._native_ptr(), 64545446)
        assert(FontFile._method_set_variation_coordinates_64545446 != nil)
        let _method_get_variation_coordinates_3485342025_name = StringName(from: "get_variation_coordinates")
        self._method_get_variation_coordinates_3485342025 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_variation_coordinates_3485342025_name._native_ptr(), 3485342025)
        assert(FontFile._method_get_variation_coordinates_3485342025 != nil)
        let _method_set_embolden_1602489585_name = StringName(from: "set_embolden")
        self._method_set_embolden_1602489585 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_embolden_1602489585_name._native_ptr(), 1602489585)
        assert(FontFile._method_set_embolden_1602489585 != nil)
        let _method_get_embolden_2339986948_name = StringName(from: "get_embolden")
        self._method_get_embolden_2339986948 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_embolden_2339986948_name._native_ptr(), 2339986948)
        assert(FontFile._method_get_embolden_2339986948 != nil)
        let _method_set_transform_30160968_name = StringName(from: "set_transform")
        self._method_set_transform_30160968 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_transform_30160968_name._native_ptr(), 30160968)
        assert(FontFile._method_set_transform_30160968 != nil)
        let _method_get_transform_3836996910_name = StringName(from: "get_transform")
        self._method_get_transform_3836996910 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_transform_3836996910_name._native_ptr(), 3836996910)
        assert(FontFile._method_get_transform_3836996910 != nil)
        let _method_set_face_index_3937882851_name = StringName(from: "set_face_index")
        self._method_set_face_index_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_face_index_3937882851_name._native_ptr(), 3937882851)
        assert(FontFile._method_set_face_index_3937882851 != nil)
        let _method_get_face_index_923996154_name = StringName(from: "get_face_index")
        self._method_get_face_index_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_face_index_923996154_name._native_ptr(), 923996154)
        assert(FontFile._method_get_face_index_923996154 != nil)
        let _method_set_cache_ascent_3506521499_name = StringName(from: "set_cache_ascent")
        self._method_set_cache_ascent_3506521499 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_cache_ascent_3506521499_name._native_ptr(), 3506521499)
        assert(FontFile._method_set_cache_ascent_3506521499 != nil)
        let _method_get_cache_ascent_3085491603_name = StringName(from: "get_cache_ascent")
        self._method_get_cache_ascent_3085491603 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_cache_ascent_3085491603_name._native_ptr(), 3085491603)
        assert(FontFile._method_get_cache_ascent_3085491603 != nil)
        let _method_set_cache_descent_3506521499_name = StringName(from: "set_cache_descent")
        self._method_set_cache_descent_3506521499 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_cache_descent_3506521499_name._native_ptr(), 3506521499)
        assert(FontFile._method_set_cache_descent_3506521499 != nil)
        let _method_get_cache_descent_3085491603_name = StringName(from: "get_cache_descent")
        self._method_get_cache_descent_3085491603 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_cache_descent_3085491603_name._native_ptr(), 3085491603)
        assert(FontFile._method_get_cache_descent_3085491603 != nil)
        let _method_set_cache_underline_position_3506521499_name = StringName(from: "set_cache_underline_position")
        self._method_set_cache_underline_position_3506521499 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_cache_underline_position_3506521499_name._native_ptr(), 3506521499)
        assert(FontFile._method_set_cache_underline_position_3506521499 != nil)
        let _method_get_cache_underline_position_3085491603_name = StringName(from: "get_cache_underline_position")
        self._method_get_cache_underline_position_3085491603 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_cache_underline_position_3085491603_name._native_ptr(), 3085491603)
        assert(FontFile._method_get_cache_underline_position_3085491603 != nil)
        let _method_set_cache_underline_thickness_3506521499_name = StringName(from: "set_cache_underline_thickness")
        self._method_set_cache_underline_thickness_3506521499 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_cache_underline_thickness_3506521499_name._native_ptr(), 3506521499)
        assert(FontFile._method_set_cache_underline_thickness_3506521499 != nil)
        let _method_get_cache_underline_thickness_3085491603_name = StringName(from: "get_cache_underline_thickness")
        self._method_get_cache_underline_thickness_3085491603 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_cache_underline_thickness_3085491603_name._native_ptr(), 3085491603)
        assert(FontFile._method_get_cache_underline_thickness_3085491603 != nil)
        let _method_set_cache_scale_3506521499_name = StringName(from: "set_cache_scale")
        self._method_set_cache_scale_3506521499 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_cache_scale_3506521499_name._native_ptr(), 3506521499)
        assert(FontFile._method_set_cache_scale_3506521499 != nil)
        let _method_get_cache_scale_3085491603_name = StringName(from: "get_cache_scale")
        self._method_get_cache_scale_3085491603 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_cache_scale_3085491603_name._native_ptr(), 3085491603)
        assert(FontFile._method_get_cache_scale_3085491603 != nil)
        let _method_get_texture_count_1987661582_name = StringName(from: "get_texture_count")
        self._method_get_texture_count_1987661582 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_texture_count_1987661582_name._native_ptr(), 1987661582)
        assert(FontFile._method_get_texture_count_1987661582 != nil)
        let _method_clear_textures_2311374912_name = StringName(from: "clear_textures")
        self._method_clear_textures_2311374912 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_textures_2311374912_name._native_ptr(), 2311374912)
        assert(FontFile._method_clear_textures_2311374912 != nil)
        let _method_remove_texture_2328951467_name = StringName(from: "remove_texture")
        self._method_remove_texture_2328951467 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_texture_2328951467_name._native_ptr(), 2328951467)
        assert(FontFile._method_remove_texture_2328951467 != nil)
        let _method_set_texture_image_4157974066_name = StringName(from: "set_texture_image")
        self._method_set_texture_image_4157974066 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_texture_image_4157974066_name._native_ptr(), 4157974066)
        assert(FontFile._method_set_texture_image_4157974066 != nil)
        let _method_get_texture_image_3878418953_name = StringName(from: "get_texture_image")
        self._method_get_texture_image_3878418953 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_texture_image_3878418953_name._native_ptr(), 3878418953)
        assert(FontFile._method_get_texture_image_3878418953 != nil)
        let _method_set_texture_offsets_2849993437_name = StringName(from: "set_texture_offsets")
        self._method_set_texture_offsets_2849993437 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_texture_offsets_2849993437_name._native_ptr(), 2849993437)
        assert(FontFile._method_set_texture_offsets_2849993437 != nil)
        let _method_get_texture_offsets_3703444828_name = StringName(from: "get_texture_offsets")
        self._method_get_texture_offsets_3703444828 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_texture_offsets_3703444828_name._native_ptr(), 3703444828)
        assert(FontFile._method_get_texture_offsets_3703444828 != nil)
        let _method_get_glyph_list_681709689_name = StringName(from: "get_glyph_list")
        self._method_get_glyph_list_681709689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_glyph_list_681709689_name._native_ptr(), 681709689)
        assert(FontFile._method_get_glyph_list_681709689 != nil)
        let _method_clear_glyphs_2311374912_name = StringName(from: "clear_glyphs")
        self._method_clear_glyphs_2311374912 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_glyphs_2311374912_name._native_ptr(), 2311374912)
        assert(FontFile._method_clear_glyphs_2311374912 != nil)
        let _method_remove_glyph_2328951467_name = StringName(from: "remove_glyph")
        self._method_remove_glyph_2328951467 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_glyph_2328951467_name._native_ptr(), 2328951467)
        assert(FontFile._method_remove_glyph_2328951467 != nil)
        let _method_set_glyph_advance_947991729_name = StringName(from: "set_glyph_advance")
        self._method_set_glyph_advance_947991729 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_glyph_advance_947991729_name._native_ptr(), 947991729)
        assert(FontFile._method_set_glyph_advance_947991729 != nil)
        let _method_get_glyph_advance_1601573536_name = StringName(from: "get_glyph_advance")
        self._method_get_glyph_advance_1601573536 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_glyph_advance_1601573536_name._native_ptr(), 1601573536)
        assert(FontFile._method_get_glyph_advance_1601573536 != nil)
        let _method_set_glyph_offset_921719850_name = StringName(from: "set_glyph_offset")
        self._method_set_glyph_offset_921719850 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_glyph_offset_921719850_name._native_ptr(), 921719850)
        assert(FontFile._method_set_glyph_offset_921719850 != nil)
        let _method_get_glyph_offset_3205412300_name = StringName(from: "get_glyph_offset")
        self._method_get_glyph_offset_3205412300 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_glyph_offset_3205412300_name._native_ptr(), 3205412300)
        assert(FontFile._method_get_glyph_offset_3205412300 != nil)
        let _method_set_glyph_size_921719850_name = StringName(from: "set_glyph_size")
        self._method_set_glyph_size_921719850 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_glyph_size_921719850_name._native_ptr(), 921719850)
        assert(FontFile._method_set_glyph_size_921719850 != nil)
        let _method_get_glyph_size_3205412300_name = StringName(from: "get_glyph_size")
        self._method_get_glyph_size_3205412300 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_glyph_size_3205412300_name._native_ptr(), 3205412300)
        assert(FontFile._method_get_glyph_size_3205412300 != nil)
        let _method_set_glyph_uv_rect_3821620992_name = StringName(from: "set_glyph_uv_rect")
        self._method_set_glyph_uv_rect_3821620992 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_glyph_uv_rect_3821620992_name._native_ptr(), 3821620992)
        assert(FontFile._method_set_glyph_uv_rect_3821620992 != nil)
        let _method_get_glyph_uv_rect_3927917900_name = StringName(from: "get_glyph_uv_rect")
        self._method_get_glyph_uv_rect_3927917900 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_glyph_uv_rect_3927917900_name._native_ptr(), 3927917900)
        assert(FontFile._method_get_glyph_uv_rect_3927917900 != nil)
        let _method_set_glyph_texture_idx_355564111_name = StringName(from: "set_glyph_texture_idx")
        self._method_set_glyph_texture_idx_355564111 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_glyph_texture_idx_355564111_name._native_ptr(), 355564111)
        assert(FontFile._method_set_glyph_texture_idx_355564111 != nil)
        let _method_get_glyph_texture_idx_1629411054_name = StringName(from: "get_glyph_texture_idx")
        self._method_get_glyph_texture_idx_1629411054 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_glyph_texture_idx_1629411054_name._native_ptr(), 1629411054)
        assert(FontFile._method_get_glyph_texture_idx_1629411054 != nil)
        let _method_get_kerning_list_2345056839_name = StringName(from: "get_kerning_list")
        self._method_get_kerning_list_2345056839 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_kerning_list_2345056839_name._native_ptr(), 2345056839)
        assert(FontFile._method_get_kerning_list_2345056839 != nil)
        let _method_clear_kerning_map_3937882851_name = StringName(from: "clear_kerning_map")
        self._method_clear_kerning_map_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_kerning_map_3937882851_name._native_ptr(), 3937882851)
        assert(FontFile._method_clear_kerning_map_3937882851 != nil)
        let _method_remove_kerning_3930204747_name = StringName(from: "remove_kerning")
        self._method_remove_kerning_3930204747 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_kerning_3930204747_name._native_ptr(), 3930204747)
        assert(FontFile._method_remove_kerning_3930204747 != nil)
        let _method_set_kerning_3182200918_name = StringName(from: "set_kerning")
        self._method_set_kerning_3182200918 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_kerning_3182200918_name._native_ptr(), 3182200918)
        assert(FontFile._method_set_kerning_3182200918 != nil)
        let _method_get_kerning_1611912865_name = StringName(from: "get_kerning")
        self._method_get_kerning_1611912865 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_kerning_1611912865_name._native_ptr(), 1611912865)
        assert(FontFile._method_get_kerning_1611912865 != nil)
        let _method_render_range_355564111_name = StringName(from: "render_range")
        self._method_render_range_355564111 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_render_range_355564111_name._native_ptr(), 355564111)
        assert(FontFile._method_render_range_355564111 != nil)
        let _method_render_glyph_2328951467_name = StringName(from: "render_glyph")
        self._method_render_glyph_2328951467 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_render_glyph_2328951467_name._native_ptr(), 2328951467)
        assert(FontFile._method_render_glyph_2328951467 != nil)
        let _method_set_language_support_override_2678287736_name = StringName(from: "set_language_support_override")
        self._method_set_language_support_override_2678287736 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_language_support_override_2678287736_name._native_ptr(), 2678287736)
        assert(FontFile._method_set_language_support_override_2678287736 != nil)
        let _method_get_language_support_override_3927539163_name = StringName(from: "get_language_support_override")
        self._method_get_language_support_override_3927539163 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_language_support_override_3927539163_name._native_ptr(), 3927539163)
        assert(FontFile._method_get_language_support_override_3927539163 != nil)
        let _method_remove_language_support_override_83702148_name = StringName(from: "remove_language_support_override")
        self._method_remove_language_support_override_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_language_support_override_83702148_name._native_ptr(), 83702148)
        assert(FontFile._method_remove_language_support_override_83702148 != nil)
        let _method_get_language_support_overrides_1139954409_name = StringName(from: "get_language_support_overrides")
        self._method_get_language_support_overrides_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_language_support_overrides_1139954409_name._native_ptr(), 1139954409)
        assert(FontFile._method_get_language_support_overrides_1139954409 != nil)
        let _method_set_script_support_override_2678287736_name = StringName(from: "set_script_support_override")
        self._method_set_script_support_override_2678287736 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_script_support_override_2678287736_name._native_ptr(), 2678287736)
        assert(FontFile._method_set_script_support_override_2678287736 != nil)
        let _method_get_script_support_override_3927539163_name = StringName(from: "get_script_support_override")
        self._method_get_script_support_override_3927539163 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_script_support_override_3927539163_name._native_ptr(), 3927539163)
        assert(FontFile._method_get_script_support_override_3927539163 != nil)
        let _method_remove_script_support_override_83702148_name = StringName(from: "remove_script_support_override")
        self._method_remove_script_support_override_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_script_support_override_83702148_name._native_ptr(), 83702148)
        assert(FontFile._method_remove_script_support_override_83702148 != nil)
        let _method_get_script_support_overrides_1139954409_name = StringName(from: "get_script_support_overrides")
        self._method_get_script_support_overrides_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_script_support_overrides_1139954409_name._native_ptr(), 1139954409)
        assert(FontFile._method_get_script_support_overrides_1139954409 != nil)
        let _method_set_opentype_feature_overrides_4155329257_name = StringName(from: "set_opentype_feature_overrides")
        self._method_set_opentype_feature_overrides_4155329257 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_opentype_feature_overrides_4155329257_name._native_ptr(), 4155329257)
        assert(FontFile._method_set_opentype_feature_overrides_4155329257 != nil)
        let _method_get_opentype_feature_overrides_3102165223_name = StringName(from: "get_opentype_feature_overrides")
        self._method_get_opentype_feature_overrides_3102165223 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_opentype_feature_overrides_3102165223_name._native_ptr(), 3102165223)
        assert(FontFile._method_get_opentype_feature_overrides_3102165223 != nil)
        let _method_get_glyph_index_864943070_name = StringName(from: "get_glyph_index")
        self._method_get_glyph_index_864943070 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_glyph_index_864943070_name._native_ptr(), 864943070)
        assert(FontFile._method_get_glyph_index_864943070 != nil)
    }

    public func load_bitmap_font(path: String) -> Error {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_load_bitmap_font_166001499,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
    }
    public func load_dynamic_font(path: String) -> Error {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_load_dynamic_font_166001499,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
    }
    public func set_data(data: PackedByteArray)  {
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(data_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_data_2971499966,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_data() -> PackedByteArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_data_2362200018,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(from: __resPtr.pointee)
    }
    public func set_font_name(name: String)  {
        withUnsafePointer(to: name) { name_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_font_name_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_font_style_name(name: String)  {
        withUnsafePointer(to: name) { name_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_font_style_name_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_font_style(style: TextServer.FontStyle)  {
        withUnsafePointer(to: style.rawValue) { style_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(style_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_font_style_918070724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_font_weight(weight: Int64)  {
        withUnsafePointer(to: weight) { weight_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(weight_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_font_weight_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_font_stretch(stretch: Int64)  {
        withUnsafePointer(to: stretch) { stretch_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(stretch_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_font_stretch_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_antialiasing(antialiasing: TextServer.FontAntialiasing)  {
        withUnsafePointer(to: antialiasing.rawValue) { antialiasing_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(antialiasing_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_antialiasing_1669900,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_antialiasing() -> TextServer.FontAntialiasing {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_antialiasing_4262718649,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.FontAntialiasing(from: __resPtr.pointee)
    }
    public func set_generate_mipmaps(generate_mipmaps: UInt8)  {
        withUnsafePointer(to: generate_mipmaps) { generate_mipmaps_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(generate_mipmaps_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_generate_mipmaps_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_generate_mipmaps() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_generate_mipmaps_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_multichannel_signed_distance_field(msdf: UInt8)  {
        withUnsafePointer(to: msdf) { msdf_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(msdf_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_multichannel_signed_distance_field_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_multichannel_signed_distance_field() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_multichannel_signed_distance_field_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_msdf_pixel_range(msdf_pixel_range: Int64)  {
        withUnsafePointer(to: msdf_pixel_range) { msdf_pixel_range_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(msdf_pixel_range_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_msdf_pixel_range_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_msdf_pixel_range() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_msdf_pixel_range_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_msdf_size(msdf_size: Int64)  {
        withUnsafePointer(to: msdf_size) { msdf_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(msdf_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_msdf_size_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_msdf_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_msdf_size_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_fixed_size(fixed_size: Int64)  {
        withUnsafePointer(to: fixed_size) { fixed_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(fixed_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fixed_size_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_fixed_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_fixed_size_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_allow_system_fallback(allow_system_fallback: UInt8)  {
        withUnsafePointer(to: allow_system_fallback) { allow_system_fallback_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(allow_system_fallback_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_allow_system_fallback_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_allow_system_fallback() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_allow_system_fallback_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_force_autohinter(force_autohinter: UInt8)  {
        withUnsafePointer(to: force_autohinter) { force_autohinter_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(force_autohinter_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_force_autohinter_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_force_autohinter() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_force_autohinter_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_hinting(hinting: TextServer.Hinting)  {
        withUnsafePointer(to: hinting.rawValue) { hinting_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(hinting_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_hinting_1827459492,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_hinting() -> TextServer.Hinting {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_hinting_3683214614,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.Hinting(from: __resPtr.pointee)
    }
    public func set_subpixel_positioning(subpixel_positioning: TextServer.SubpixelPositioning)  {
        withUnsafePointer(to: subpixel_positioning.rawValue) { subpixel_positioning_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(subpixel_positioning_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_subpixel_positioning_4225742182,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_subpixel_positioning() -> TextServer.SubpixelPositioning {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_subpixel_positioning_1069238588,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.SubpixelPositioning(from: __resPtr.pointee)
    }
    public func set_oversampling(oversampling: Float64)  {
        withUnsafePointer(to: oversampling) { oversampling_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(oversampling_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_oversampling_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_oversampling() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_oversampling_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func get_cache_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cache_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func clear_cache()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_cache_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_cache(cache_index: Int64)  {
        withUnsafePointer(to: cache_index) { cache_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_cache_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_size_cache_list(cache_index: Int64) -> [Vector2i] {
        withUnsafePointer(to: cache_index) { cache_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_size_cache_list_663333327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Vector2i](from: __resPtr.pointee)
        }
    }
    public func clear_size_cache(cache_index: Int64)  {
        withUnsafePointer(to: cache_index) { cache_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_size_cache_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func remove_size_cache(cache_index: Int64, size: Vector2i)  {
        withUnsafePointer(to: cache_index) { cache_index_native in
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_size_cache_2311374912,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_variation_coordinates(cache_index: Int64, variation_coordinates: Dictionary)  {
        withUnsafePointer(to: cache_index) { cache_index_native in
        let variation_coordinates_native = variation_coordinates._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(variation_coordinates_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_variation_coordinates_64545446,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_variation_coordinates(cache_index: Int64) -> Dictionary {
        withUnsafePointer(to: cache_index) { cache_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_variation_coordinates_3485342025,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
        }
    }
    public func set_embolden(cache_index: Int64, strength: Float64)  {
        withUnsafePointer(to: strength) { strength_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(strength_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_embolden_1602489585,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_embolden(cache_index: Int64) -> Float64 {
        withUnsafePointer(to: cache_index) { cache_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_embolden_2339986948,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func set_transform(cache_index: Int64, transform: Transform2D)  {
        withUnsafePointer(to: cache_index) { cache_index_native in
        let transform_native = transform._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_transform_30160968,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_transform(cache_index: Int64) -> Transform2D {
        withUnsafePointer(to: cache_index) { cache_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_transform_3836996910,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(from: __resPtr.pointee)
        }
    }
    public func set_face_index(cache_index: Int64, face_index: Int64)  {
        withUnsafePointer(to: face_index) { face_index_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(face_index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_face_index_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_face_index(cache_index: Int64) -> Int64 {
        withUnsafePointer(to: cache_index) { cache_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_face_index_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func set_cache_ascent(cache_index: Int64, size: Int64, ascent: Float64)  {
        withUnsafePointer(to: ascent) { ascent_native in
        withUnsafePointer(to: size) { size_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native), .init(ascent_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cache_ascent_3506521499,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func get_cache_ascent(cache_index: Int64, size: Int64) -> Float64 {
        withUnsafePointer(to: size) { size_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cache_ascent_3085491603,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
        }
    }
    public func set_cache_descent(cache_index: Int64, size: Int64, descent: Float64)  {
        withUnsafePointer(to: descent) { descent_native in
        withUnsafePointer(to: size) { size_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native), .init(descent_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cache_descent_3506521499,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func get_cache_descent(cache_index: Int64, size: Int64) -> Float64 {
        withUnsafePointer(to: size) { size_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cache_descent_3085491603,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
        }
    }
    public func set_cache_underline_position(cache_index: Int64, size: Int64, underline_position: Float64)  {
        withUnsafePointer(to: underline_position) { underline_position_native in
        withUnsafePointer(to: size) { size_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native), .init(underline_position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cache_underline_position_3506521499,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func get_cache_underline_position(cache_index: Int64, size: Int64) -> Float64 {
        withUnsafePointer(to: size) { size_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cache_underline_position_3085491603,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
        }
    }
    public func set_cache_underline_thickness(cache_index: Int64, size: Int64, underline_thickness: Float64)  {
        withUnsafePointer(to: underline_thickness) { underline_thickness_native in
        withUnsafePointer(to: size) { size_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native), .init(underline_thickness_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cache_underline_thickness_3506521499,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func get_cache_underline_thickness(cache_index: Int64, size: Int64) -> Float64 {
        withUnsafePointer(to: size) { size_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cache_underline_thickness_3085491603,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
        }
    }
    public func set_cache_scale(cache_index: Int64, size: Int64, scale: Float64)  {
        withUnsafePointer(to: scale) { scale_native in
        withUnsafePointer(to: size) { size_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native), .init(scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cache_scale_3506521499,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func get_cache_scale(cache_index: Int64, size: Int64) -> Float64 {
        withUnsafePointer(to: size) { size_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cache_scale_3085491603,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
        }
    }
    public func get_texture_count(cache_index: Int64, size: Vector2i) -> Int64 {
        withUnsafePointer(to: cache_index) { cache_index_native in
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_count_1987661582,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func clear_textures(cache_index: Int64, size: Vector2i)  {
        withUnsafePointer(to: cache_index) { cache_index_native in
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_textures_2311374912,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func remove_texture(cache_index: Int64, size: Vector2i, texture_index: Int64)  {
        withUnsafePointer(to: texture_index) { texture_index_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native), .init(texture_index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_texture_2328951467,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_texture_image(cache_index: Int64, size: Vector2i, texture_index: Int64, image: Image)  {
        withUnsafePointer(to: texture_index) { texture_index_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let image_native = image._native_ptr()
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native), .init(texture_index_native), .init(image_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_image_4157974066,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_texture_image(cache_index: Int64, size: Vector2i, texture_index: Int64) -> Image {
        withUnsafePointer(to: texture_index) { texture_index_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native), .init(texture_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_image_3878418953,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Image(from: __resPtr.pointee)
        }
        }
    }
    public func set_texture_offsets(cache_index: Int64, size: Vector2i, texture_index: Int64, offset: PackedInt32Array)  {
        withUnsafePointer(to: texture_index) { texture_index_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let offset_native = offset._native_ptr()
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native), .init(texture_index_native), .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_offsets_2849993437,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_texture_offsets(cache_index: Int64, size: Vector2i, texture_index: Int64) -> PackedInt32Array {
        withUnsafePointer(to: texture_index) { texture_index_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native), .init(texture_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_offsets_3703444828,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(from: __resPtr.pointee)
        }
        }
    }
    public func get_glyph_list(cache_index: Int64, size: Vector2i) -> PackedInt32Array {
        withUnsafePointer(to: cache_index) { cache_index_native in
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_glyph_list_681709689,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(from: __resPtr.pointee)
        }
    }
    public func clear_glyphs(cache_index: Int64, size: Vector2i)  {
        withUnsafePointer(to: cache_index) { cache_index_native in
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_glyphs_2311374912,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func remove_glyph(cache_index: Int64, size: Vector2i, glyph: Int64)  {
        withUnsafePointer(to: glyph) { glyph_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native), .init(glyph_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_glyph_2328951467,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_glyph_advance(cache_index: Int64, size: Int64, glyph: Int64, advance: Vector2)  {
        withUnsafePointer(to: glyph) { glyph_native in
        withUnsafePointer(to: size) { size_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let advance_native = advance._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native), .init(glyph_native), .init(advance_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_glyph_advance_947991729,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func get_glyph_advance(cache_index: Int64, size: Int64, glyph: Int64) -> Vector2 {
        withUnsafePointer(to: glyph) { glyph_native in
        withUnsafePointer(to: size) { size_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native), .init(glyph_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_glyph_advance_1601573536,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
        }
        }
        }
    }
    public func set_glyph_offset(cache_index: Int64, size: Vector2i, glyph: Int64, offset: Vector2)  {
        withUnsafePointer(to: glyph) { glyph_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let offset_native = offset._native_ptr()
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native), .init(glyph_native), .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_glyph_offset_921719850,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_glyph_offset(cache_index: Int64, size: Vector2i, glyph: Int64) -> Vector2 {
        withUnsafePointer(to: glyph) { glyph_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native), .init(glyph_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_glyph_offset_3205412300,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
        }
        }
    }
    public func set_glyph_size(cache_index: Int64, size: Vector2i, glyph: Int64, gl_size: Vector2)  {
        withUnsafePointer(to: glyph) { glyph_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let gl_size_native = gl_size._native_ptr()
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native), .init(glyph_native), .init(gl_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_glyph_size_921719850,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_glyph_size(cache_index: Int64, size: Vector2i, glyph: Int64) -> Vector2 {
        withUnsafePointer(to: glyph) { glyph_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native), .init(glyph_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_glyph_size_3205412300,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
        }
        }
    }
    public func set_glyph_uv_rect(cache_index: Int64, size: Vector2i, glyph: Int64, uv_rect: Rect2)  {
        withUnsafePointer(to: glyph) { glyph_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let uv_rect_native = uv_rect._native_ptr()
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native), .init(glyph_native), .init(uv_rect_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_glyph_uv_rect_3821620992,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_glyph_uv_rect(cache_index: Int64, size: Vector2i, glyph: Int64) -> Rect2 {
        withUnsafePointer(to: glyph) { glyph_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native), .init(glyph_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_glyph_uv_rect_3927917900,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2(from: __resPtr.pointee)
        }
        }
    }
    public func set_glyph_texture_idx(cache_index: Int64, size: Vector2i, glyph: Int64, texture_idx: Int64)  {
        withUnsafePointer(to: texture_idx) { texture_idx_native in
        withUnsafePointer(to: glyph) { glyph_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native), .init(glyph_native), .init(texture_idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_glyph_texture_idx_355564111,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func get_glyph_texture_idx(cache_index: Int64, size: Vector2i, glyph: Int64) -> Int64 {
        withUnsafePointer(to: glyph) { glyph_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native), .init(glyph_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_glyph_texture_idx_1629411054,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
    }
    public func get_kerning_list(cache_index: Int64, size: Int64) -> [Vector2i] {
        withUnsafePointer(to: size) { size_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_kerning_list_2345056839,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Vector2i](from: __resPtr.pointee)
        }
        }
    }
    public func clear_kerning_map(cache_index: Int64, size: Int64)  {
        withUnsafePointer(to: size) { size_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_kerning_map_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func remove_kerning(cache_index: Int64, size: Int64, glyph_pair: Vector2i)  {
        withUnsafePointer(to: size) { size_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let glyph_pair_native = glyph_pair._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native), .init(glyph_pair_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_kerning_3930204747,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_kerning(cache_index: Int64, size: Int64, glyph_pair: Vector2i, kerning: Vector2)  {
        withUnsafePointer(to: size) { size_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let kerning_native = kerning._native_ptr()
        let glyph_pair_native = glyph_pair._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native), .init(glyph_pair_native), .init(kerning_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_kerning_3182200918,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_kerning(cache_index: Int64, size: Int64, glyph_pair: Vector2i) -> Vector2 {
        withUnsafePointer(to: size) { size_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let glyph_pair_native = glyph_pair._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native), .init(glyph_pair_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_kerning_1611912865,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
        }
        }
    }
    public func render_range(cache_index: Int64, size: Vector2i, start: Int64, end: Int64)  {
        withUnsafePointer(to: end) { end_native in
        withUnsafePointer(to: start) { start_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native), .init(start_native), .init(end_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_render_range_355564111,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func render_glyph(cache_index: Int64, size: Vector2i, index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native), .init(index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_render_glyph_2328951467,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_language_support_override(language: String, supported: UInt8)  {
        withUnsafePointer(to: supported) { supported_native in
        withUnsafePointer(to: language) { language_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(language_native), .init(supported_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_language_support_override_2678287736,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_language_support_override(language: String) -> UInt8 {
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
                    Self._method_get_language_support_override_3927539163,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func remove_language_support_override(language: String)  {
        withUnsafePointer(to: language) { language_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(language_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_language_support_override_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_language_support_overrides() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_language_support_overrides_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func set_script_support_override(script: String, supported: UInt8)  {
        withUnsafePointer(to: supported) { supported_native in
        withUnsafePointer(to: script) { script_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(script_native), .init(supported_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_script_support_override_2678287736,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_script_support_override(script: String) -> UInt8 {
        withUnsafePointer(to: script) { script_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(script_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_script_support_override_3927539163,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func remove_script_support_override(script: String)  {
        withUnsafePointer(to: script) { script_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(script_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_script_support_override_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_script_support_overrides() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_script_support_overrides_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func set_opentype_feature_overrides(overrides: Dictionary)  {
        let overrides_native = overrides._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(overrides_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_opentype_feature_overrides_4155329257,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_opentype_feature_overrides() -> Dictionary {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_opentype_feature_overrides_3102165223,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
    }
    public func get_glyph_index(size: Int64, char: Int64, variation_selector: Int64) -> Int64 {
        withUnsafePointer(to: variation_selector) { variation_selector_native in
        withUnsafePointer(to: char) { char_native in
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native), .init(char_native), .init(variation_selector_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_glyph_index_864943070,
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