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
open class FontFile : Font {

    

    public override class var __godot_name: StringName { __godot_name_FontFile }

    static var _method_load_bitmap_font_166001499: StringName! = nil
    static var _method_load_dynamic_font_166001499: StringName! = nil
    static var _method_set_data_2971499966: StringName! = nil
    static var _method_get_data_2362200018: StringName! = nil
    static var _method_set_font_name_83702148: StringName! = nil
    static var _method_set_font_style_name_83702148: StringName! = nil
    static var _method_set_font_style_918070724: StringName! = nil
    static var _method_set_font_weight_1286410249: StringName! = nil
    static var _method_set_font_stretch_1286410249: StringName! = nil
    static var _method_set_antialiasing_1669900: StringName! = nil
    static var _method_get_antialiasing_4262718649: StringName! = nil
    static var _method_set_generate_mipmaps_2586408642: StringName! = nil
    static var _method_get_generate_mipmaps_36873697: StringName! = nil
    static var _method_set_multichannel_signed_distance_field_2586408642: StringName! = nil
    static var _method_is_multichannel_signed_distance_field_36873697: StringName! = nil
    static var _method_set_msdf_pixel_range_1286410249: StringName! = nil
    static var _method_get_msdf_pixel_range_3905245786: StringName! = nil
    static var _method_set_msdf_size_1286410249: StringName! = nil
    static var _method_get_msdf_size_3905245786: StringName! = nil
    static var _method_set_fixed_size_1286410249: StringName! = nil
    static var _method_get_fixed_size_3905245786: StringName! = nil
    static var _method_set_allow_system_fallback_2586408642: StringName! = nil
    static var _method_is_allow_system_fallback_36873697: StringName! = nil
    static var _method_set_force_autohinter_2586408642: StringName! = nil
    static var _method_is_force_autohinter_36873697: StringName! = nil
    static var _method_set_hinting_1827459492: StringName! = nil
    static var _method_get_hinting_3683214614: StringName! = nil
    static var _method_set_subpixel_positioning_4225742182: StringName! = nil
    static var _method_get_subpixel_positioning_1069238588: StringName! = nil
    static var _method_set_oversampling_373806689: StringName! = nil
    static var _method_get_oversampling_1740695150: StringName! = nil
    static var _method_get_cache_count_3905245786: StringName! = nil
    static var _method_clear_cache_3218959716: StringName! = nil
    static var _method_remove_cache_1286410249: StringName! = nil
    static var _method_get_size_cache_list_663333327: StringName! = nil
    static var _method_clear_size_cache_1286410249: StringName! = nil
    static var _method_remove_size_cache_2311374912: StringName! = nil
    static var _method_set_variation_coordinates_64545446: StringName! = nil
    static var _method_get_variation_coordinates_3485342025: StringName! = nil
    static var _method_set_embolden_1602489585: StringName! = nil
    static var _method_get_embolden_2339986948: StringName! = nil
    static var _method_set_transform_30160968: StringName! = nil
    static var _method_get_transform_3836996910: StringName! = nil
    static var _method_set_face_index_3937882851: StringName! = nil
    static var _method_get_face_index_923996154: StringName! = nil
    static var _method_set_cache_ascent_3506521499: StringName! = nil
    static var _method_get_cache_ascent_3085491603: StringName! = nil
    static var _method_set_cache_descent_3506521499: StringName! = nil
    static var _method_get_cache_descent_3085491603: StringName! = nil
    static var _method_set_cache_underline_position_3506521499: StringName! = nil
    static var _method_get_cache_underline_position_3085491603: StringName! = nil
    static var _method_set_cache_underline_thickness_3506521499: StringName! = nil
    static var _method_get_cache_underline_thickness_3085491603: StringName! = nil
    static var _method_set_cache_scale_3506521499: StringName! = nil
    static var _method_get_cache_scale_3085491603: StringName! = nil
    static var _method_get_texture_count_1987661582: StringName! = nil
    static var _method_clear_textures_2311374912: StringName! = nil
    static var _method_remove_texture_2328951467: StringName! = nil
    static var _method_set_texture_image_4157974066: StringName! = nil
    static var _method_get_texture_image_3878418953: StringName! = nil
    static var _method_set_texture_offsets_2849993437: StringName! = nil
    static var _method_get_texture_offsets_3703444828: StringName! = nil
    static var _method_get_glyph_list_681709689: StringName! = nil
    static var _method_clear_glyphs_2311374912: StringName! = nil
    static var _method_remove_glyph_2328951467: StringName! = nil
    static var _method_set_glyph_advance_947991729: StringName! = nil
    static var _method_get_glyph_advance_1601573536: StringName! = nil
    static var _method_set_glyph_offset_921719850: StringName! = nil
    static var _method_get_glyph_offset_3205412300: StringName! = nil
    static var _method_set_glyph_size_921719850: StringName! = nil
    static var _method_get_glyph_size_3205412300: StringName! = nil
    static var _method_set_glyph_uv_rect_3821620992: StringName! = nil
    static var _method_get_glyph_uv_rect_3927917900: StringName! = nil
    static var _method_set_glyph_texture_idx_355564111: StringName! = nil
    static var _method_get_glyph_texture_idx_1629411054: StringName! = nil
    static var _method_get_kerning_list_2345056839: StringName! = nil
    static var _method_clear_kerning_map_3937882851: StringName! = nil
    static var _method_remove_kerning_3930204747: StringName! = nil
    static var _method_set_kerning_3182200918: StringName! = nil
    static var _method_get_kerning_1611912865: StringName! = nil
    static var _method_render_range_355564111: StringName! = nil
    static var _method_render_glyph_2328951467: StringName! = nil
    static var _method_set_language_support_override_2678287736: StringName! = nil
    static var _method_get_language_support_override_3927539163: StringName! = nil
    static var _method_remove_language_support_override_83702148: StringName! = nil
    static var _method_get_language_support_overrides_1139954409: StringName! = nil
    static var _method_set_script_support_override_2678287736: StringName! = nil
    static var _method_get_script_support_override_3927539163: StringName! = nil
    static var _method_remove_script_support_override_83702148: StringName! = nil
    static var _method_get_script_support_overrides_1139954409: StringName! = nil
    static var _method_set_opentype_feature_overrides_4155329257: StringName! = nil
    static var _method_get_opentype_feature_overrides_3102165223: StringName! = nil
    static var _method_get_glyph_index_864943070: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_FontFile == nil)
        __godot_name_FontFile = StringName(from: "FontFile")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_load_bitmap_font_166001499 = StringName(from: "load_bitmap_font")
        assert(self._method_load_bitmap_font_166001499 != nil)
        self._method_load_dynamic_font_166001499 = StringName(from: "load_dynamic_font")
        assert(self._method_load_dynamic_font_166001499 != nil)
        self._method_set_data_2971499966 = StringName(from: "set_data")
        assert(self._method_set_data_2971499966 != nil)
        self._method_get_data_2362200018 = StringName(from: "get_data")
        assert(self._method_get_data_2362200018 != nil)
        self._method_set_font_name_83702148 = StringName(from: "set_font_name")
        assert(self._method_set_font_name_83702148 != nil)
        self._method_set_font_style_name_83702148 = StringName(from: "set_font_style_name")
        assert(self._method_set_font_style_name_83702148 != nil)
        self._method_set_font_style_918070724 = StringName(from: "set_font_style")
        assert(self._method_set_font_style_918070724 != nil)
        self._method_set_font_weight_1286410249 = StringName(from: "set_font_weight")
        assert(self._method_set_font_weight_1286410249 != nil)
        self._method_set_font_stretch_1286410249 = StringName(from: "set_font_stretch")
        assert(self._method_set_font_stretch_1286410249 != nil)
        self._method_set_antialiasing_1669900 = StringName(from: "set_antialiasing")
        assert(self._method_set_antialiasing_1669900 != nil)
        self._method_get_antialiasing_4262718649 = StringName(from: "get_antialiasing")
        assert(self._method_get_antialiasing_4262718649 != nil)
        self._method_set_generate_mipmaps_2586408642 = StringName(from: "set_generate_mipmaps")
        assert(self._method_set_generate_mipmaps_2586408642 != nil)
        self._method_get_generate_mipmaps_36873697 = StringName(from: "get_generate_mipmaps")
        assert(self._method_get_generate_mipmaps_36873697 != nil)
        self._method_set_multichannel_signed_distance_field_2586408642 = StringName(from: "set_multichannel_signed_distance_field")
        assert(self._method_set_multichannel_signed_distance_field_2586408642 != nil)
        self._method_is_multichannel_signed_distance_field_36873697 = StringName(from: "is_multichannel_signed_distance_field")
        assert(self._method_is_multichannel_signed_distance_field_36873697 != nil)
        self._method_set_msdf_pixel_range_1286410249 = StringName(from: "set_msdf_pixel_range")
        assert(self._method_set_msdf_pixel_range_1286410249 != nil)
        self._method_get_msdf_pixel_range_3905245786 = StringName(from: "get_msdf_pixel_range")
        assert(self._method_get_msdf_pixel_range_3905245786 != nil)
        self._method_set_msdf_size_1286410249 = StringName(from: "set_msdf_size")
        assert(self._method_set_msdf_size_1286410249 != nil)
        self._method_get_msdf_size_3905245786 = StringName(from: "get_msdf_size")
        assert(self._method_get_msdf_size_3905245786 != nil)
        self._method_set_fixed_size_1286410249 = StringName(from: "set_fixed_size")
        assert(self._method_set_fixed_size_1286410249 != nil)
        self._method_get_fixed_size_3905245786 = StringName(from: "get_fixed_size")
        assert(self._method_get_fixed_size_3905245786 != nil)
        self._method_set_allow_system_fallback_2586408642 = StringName(from: "set_allow_system_fallback")
        assert(self._method_set_allow_system_fallback_2586408642 != nil)
        self._method_is_allow_system_fallback_36873697 = StringName(from: "is_allow_system_fallback")
        assert(self._method_is_allow_system_fallback_36873697 != nil)
        self._method_set_force_autohinter_2586408642 = StringName(from: "set_force_autohinter")
        assert(self._method_set_force_autohinter_2586408642 != nil)
        self._method_is_force_autohinter_36873697 = StringName(from: "is_force_autohinter")
        assert(self._method_is_force_autohinter_36873697 != nil)
        self._method_set_hinting_1827459492 = StringName(from: "set_hinting")
        assert(self._method_set_hinting_1827459492 != nil)
        self._method_get_hinting_3683214614 = StringName(from: "get_hinting")
        assert(self._method_get_hinting_3683214614 != nil)
        self._method_set_subpixel_positioning_4225742182 = StringName(from: "set_subpixel_positioning")
        assert(self._method_set_subpixel_positioning_4225742182 != nil)
        self._method_get_subpixel_positioning_1069238588 = StringName(from: "get_subpixel_positioning")
        assert(self._method_get_subpixel_positioning_1069238588 != nil)
        self._method_set_oversampling_373806689 = StringName(from: "set_oversampling")
        assert(self._method_set_oversampling_373806689 != nil)
        self._method_get_oversampling_1740695150 = StringName(from: "get_oversampling")
        assert(self._method_get_oversampling_1740695150 != nil)
        self._method_get_cache_count_3905245786 = StringName(from: "get_cache_count")
        assert(self._method_get_cache_count_3905245786 != nil)
        self._method_clear_cache_3218959716 = StringName(from: "clear_cache")
        assert(self._method_clear_cache_3218959716 != nil)
        self._method_remove_cache_1286410249 = StringName(from: "remove_cache")
        assert(self._method_remove_cache_1286410249 != nil)
        self._method_get_size_cache_list_663333327 = StringName(from: "get_size_cache_list")
        assert(self._method_get_size_cache_list_663333327 != nil)
        self._method_clear_size_cache_1286410249 = StringName(from: "clear_size_cache")
        assert(self._method_clear_size_cache_1286410249 != nil)
        self._method_remove_size_cache_2311374912 = StringName(from: "remove_size_cache")
        assert(self._method_remove_size_cache_2311374912 != nil)
        self._method_set_variation_coordinates_64545446 = StringName(from: "set_variation_coordinates")
        assert(self._method_set_variation_coordinates_64545446 != nil)
        self._method_get_variation_coordinates_3485342025 = StringName(from: "get_variation_coordinates")
        assert(self._method_get_variation_coordinates_3485342025 != nil)
        self._method_set_embolden_1602489585 = StringName(from: "set_embolden")
        assert(self._method_set_embolden_1602489585 != nil)
        self._method_get_embolden_2339986948 = StringName(from: "get_embolden")
        assert(self._method_get_embolden_2339986948 != nil)
        self._method_set_transform_30160968 = StringName(from: "set_transform")
        assert(self._method_set_transform_30160968 != nil)
        self._method_get_transform_3836996910 = StringName(from: "get_transform")
        assert(self._method_get_transform_3836996910 != nil)
        self._method_set_face_index_3937882851 = StringName(from: "set_face_index")
        assert(self._method_set_face_index_3937882851 != nil)
        self._method_get_face_index_923996154 = StringName(from: "get_face_index")
        assert(self._method_get_face_index_923996154 != nil)
        self._method_set_cache_ascent_3506521499 = StringName(from: "set_cache_ascent")
        assert(self._method_set_cache_ascent_3506521499 != nil)
        self._method_get_cache_ascent_3085491603 = StringName(from: "get_cache_ascent")
        assert(self._method_get_cache_ascent_3085491603 != nil)
        self._method_set_cache_descent_3506521499 = StringName(from: "set_cache_descent")
        assert(self._method_set_cache_descent_3506521499 != nil)
        self._method_get_cache_descent_3085491603 = StringName(from: "get_cache_descent")
        assert(self._method_get_cache_descent_3085491603 != nil)
        self._method_set_cache_underline_position_3506521499 = StringName(from: "set_cache_underline_position")
        assert(self._method_set_cache_underline_position_3506521499 != nil)
        self._method_get_cache_underline_position_3085491603 = StringName(from: "get_cache_underline_position")
        assert(self._method_get_cache_underline_position_3085491603 != nil)
        self._method_set_cache_underline_thickness_3506521499 = StringName(from: "set_cache_underline_thickness")
        assert(self._method_set_cache_underline_thickness_3506521499 != nil)
        self._method_get_cache_underline_thickness_3085491603 = StringName(from: "get_cache_underline_thickness")
        assert(self._method_get_cache_underline_thickness_3085491603 != nil)
        self._method_set_cache_scale_3506521499 = StringName(from: "set_cache_scale")
        assert(self._method_set_cache_scale_3506521499 != nil)
        self._method_get_cache_scale_3085491603 = StringName(from: "get_cache_scale")
        assert(self._method_get_cache_scale_3085491603 != nil)
        self._method_get_texture_count_1987661582 = StringName(from: "get_texture_count")
        assert(self._method_get_texture_count_1987661582 != nil)
        self._method_clear_textures_2311374912 = StringName(from: "clear_textures")
        assert(self._method_clear_textures_2311374912 != nil)
        self._method_remove_texture_2328951467 = StringName(from: "remove_texture")
        assert(self._method_remove_texture_2328951467 != nil)
        self._method_set_texture_image_4157974066 = StringName(from: "set_texture_image")
        assert(self._method_set_texture_image_4157974066 != nil)
        self._method_get_texture_image_3878418953 = StringName(from: "get_texture_image")
        assert(self._method_get_texture_image_3878418953 != nil)
        self._method_set_texture_offsets_2849993437 = StringName(from: "set_texture_offsets")
        assert(self._method_set_texture_offsets_2849993437 != nil)
        self._method_get_texture_offsets_3703444828 = StringName(from: "get_texture_offsets")
        assert(self._method_get_texture_offsets_3703444828 != nil)
        self._method_get_glyph_list_681709689 = StringName(from: "get_glyph_list")
        assert(self._method_get_glyph_list_681709689 != nil)
        self._method_clear_glyphs_2311374912 = StringName(from: "clear_glyphs")
        assert(self._method_clear_glyphs_2311374912 != nil)
        self._method_remove_glyph_2328951467 = StringName(from: "remove_glyph")
        assert(self._method_remove_glyph_2328951467 != nil)
        self._method_set_glyph_advance_947991729 = StringName(from: "set_glyph_advance")
        assert(self._method_set_glyph_advance_947991729 != nil)
        self._method_get_glyph_advance_1601573536 = StringName(from: "get_glyph_advance")
        assert(self._method_get_glyph_advance_1601573536 != nil)
        self._method_set_glyph_offset_921719850 = StringName(from: "set_glyph_offset")
        assert(self._method_set_glyph_offset_921719850 != nil)
        self._method_get_glyph_offset_3205412300 = StringName(from: "get_glyph_offset")
        assert(self._method_get_glyph_offset_3205412300 != nil)
        self._method_set_glyph_size_921719850 = StringName(from: "set_glyph_size")
        assert(self._method_set_glyph_size_921719850 != nil)
        self._method_get_glyph_size_3205412300 = StringName(from: "get_glyph_size")
        assert(self._method_get_glyph_size_3205412300 != nil)
        self._method_set_glyph_uv_rect_3821620992 = StringName(from: "set_glyph_uv_rect")
        assert(self._method_set_glyph_uv_rect_3821620992 != nil)
        self._method_get_glyph_uv_rect_3927917900 = StringName(from: "get_glyph_uv_rect")
        assert(self._method_get_glyph_uv_rect_3927917900 != nil)
        self._method_set_glyph_texture_idx_355564111 = StringName(from: "set_glyph_texture_idx")
        assert(self._method_set_glyph_texture_idx_355564111 != nil)
        self._method_get_glyph_texture_idx_1629411054 = StringName(from: "get_glyph_texture_idx")
        assert(self._method_get_glyph_texture_idx_1629411054 != nil)
        self._method_get_kerning_list_2345056839 = StringName(from: "get_kerning_list")
        assert(self._method_get_kerning_list_2345056839 != nil)
        self._method_clear_kerning_map_3937882851 = StringName(from: "clear_kerning_map")
        assert(self._method_clear_kerning_map_3937882851 != nil)
        self._method_remove_kerning_3930204747 = StringName(from: "remove_kerning")
        assert(self._method_remove_kerning_3930204747 != nil)
        self._method_set_kerning_3182200918 = StringName(from: "set_kerning")
        assert(self._method_set_kerning_3182200918 != nil)
        self._method_get_kerning_1611912865 = StringName(from: "get_kerning")
        assert(self._method_get_kerning_1611912865 != nil)
        self._method_render_range_355564111 = StringName(from: "render_range")
        assert(self._method_render_range_355564111 != nil)
        self._method_render_glyph_2328951467 = StringName(from: "render_glyph")
        assert(self._method_render_glyph_2328951467 != nil)
        self._method_set_language_support_override_2678287736 = StringName(from: "set_language_support_override")
        assert(self._method_set_language_support_override_2678287736 != nil)
        self._method_get_language_support_override_3927539163 = StringName(from: "get_language_support_override")
        assert(self._method_get_language_support_override_3927539163 != nil)
        self._method_remove_language_support_override_83702148 = StringName(from: "remove_language_support_override")
        assert(self._method_remove_language_support_override_83702148 != nil)
        self._method_get_language_support_overrides_1139954409 = StringName(from: "get_language_support_overrides")
        assert(self._method_get_language_support_overrides_1139954409 != nil)
        self._method_set_script_support_override_2678287736 = StringName(from: "set_script_support_override")
        assert(self._method_set_script_support_override_2678287736 != nil)
        self._method_get_script_support_override_3927539163 = StringName(from: "get_script_support_override")
        assert(self._method_get_script_support_override_3927539163 != nil)
        self._method_remove_script_support_override_83702148 = StringName(from: "remove_script_support_override")
        assert(self._method_remove_script_support_override_83702148 != nil)
        self._method_get_script_support_overrides_1139954409 = StringName(from: "get_script_support_overrides")
        assert(self._method_get_script_support_overrides_1139954409 != nil)
        self._method_set_opentype_feature_overrides_4155329257 = StringName(from: "set_opentype_feature_overrides")
        assert(self._method_set_opentype_feature_overrides_4155329257 != nil)
        self._method_get_opentype_feature_overrides_3102165223 = StringName(from: "get_opentype_feature_overrides")
        assert(self._method_get_opentype_feature_overrides_3102165223 != nil)
        self._method_get_glyph_index_864943070 = StringName(from: "get_glyph_index")
        assert(self._method_get_glyph_index_864943070 != nil)
    }

    public func load_bitmap_font(path: godot.String) -> Error {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_load_bitmap_font_166001499._native_ptr(),
                    166001499)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func load_dynamic_font(path: godot.String) -> Error {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_load_dynamic_font_166001499._native_ptr(),
                    166001499)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func set_data(data: PackedByteArray)  {
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(data_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_data_2971499966._native_ptr(),
                    2971499966)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_data_2362200018._native_ptr(),
                    2362200018)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(godot: __resPtr.pointee)
    }
    public func set_font_name(name: godot.String)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_font_name_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_font_style_name(name: godot.String)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_font_style_name_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_font_style(style: TextServer.FontStyle)  {
        withUnsafePointer(to: style.rawValue) { style_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(style_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_font_style_918070724._native_ptr(),
                    918070724)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_font_weight_1286410249._native_ptr(),
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
    public func set_font_stretch(stretch: Int64)  {
        withUnsafePointer(to: stretch) { stretch_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(stretch_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_font_stretch_1286410249._native_ptr(),
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
    public func set_antialiasing(antialiasing: TextServer.FontAntialiasing)  {
        withUnsafePointer(to: antialiasing.rawValue) { antialiasing_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(antialiasing_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_antialiasing_1669900._native_ptr(),
                    1669900)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_antialiasing_4262718649._native_ptr(),
                    4262718649)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.FontAntialiasing(godot: __resPtr.pointee)
    }
    public func set_generate_mipmaps(generate_mipmaps: UInt8)  {
        withUnsafePointer(to: generate_mipmaps) { generate_mipmaps_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(generate_mipmaps_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_generate_mipmaps_2586408642._native_ptr(),
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
    public func get_generate_mipmaps() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_generate_mipmaps_36873697._native_ptr(),
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
    public func set_multichannel_signed_distance_field(msdf: UInt8)  {
        withUnsafePointer(to: msdf) { msdf_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(msdf_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_multichannel_signed_distance_field_2586408642._native_ptr(),
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
    public func is_multichannel_signed_distance_field() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_multichannel_signed_distance_field_36873697._native_ptr(),
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
    public func set_msdf_pixel_range(msdf_pixel_range: Int64)  {
        withUnsafePointer(to: msdf_pixel_range) { msdf_pixel_range_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(msdf_pixel_range_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_msdf_pixel_range_1286410249._native_ptr(),
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
    public func get_msdf_pixel_range() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_msdf_pixel_range_3905245786._native_ptr(),
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
    public func set_msdf_size(msdf_size: Int64)  {
        withUnsafePointer(to: msdf_size) { msdf_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(msdf_size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_msdf_size_1286410249._native_ptr(),
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
    public func get_msdf_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_msdf_size_3905245786._native_ptr(),
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
    public func set_fixed_size(fixed_size: Int64)  {
        withUnsafePointer(to: fixed_size) { fixed_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(fixed_size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fixed_size_1286410249._native_ptr(),
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
    public func get_fixed_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fixed_size_3905245786._native_ptr(),
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
    public func set_allow_system_fallback(allow_system_fallback: UInt8)  {
        withUnsafePointer(to: allow_system_fallback) { allow_system_fallback_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(allow_system_fallback_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_allow_system_fallback_2586408642._native_ptr(),
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
    public func is_allow_system_fallback() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_allow_system_fallback_36873697._native_ptr(),
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
    public func set_force_autohinter(force_autohinter: UInt8)  {
        withUnsafePointer(to: force_autohinter) { force_autohinter_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(force_autohinter_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_force_autohinter_2586408642._native_ptr(),
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
    public func is_force_autohinter() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_force_autohinter_36873697._native_ptr(),
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
    public func set_hinting(hinting: TextServer.Hinting)  {
        withUnsafePointer(to: hinting.rawValue) { hinting_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(hinting_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_hinting_1827459492._native_ptr(),
                    1827459492)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_hinting_3683214614._native_ptr(),
                    3683214614)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.Hinting(godot: __resPtr.pointee)
    }
    public func set_subpixel_positioning(subpixel_positioning: TextServer.SubpixelPositioning)  {
        withUnsafePointer(to: subpixel_positioning.rawValue) { subpixel_positioning_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(subpixel_positioning_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_subpixel_positioning_4225742182._native_ptr(),
                    4225742182)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_subpixel_positioning_1069238588._native_ptr(),
                    1069238588)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.SubpixelPositioning(godot: __resPtr.pointee)
    }
    public func set_oversampling(oversampling: Float64)  {
        withUnsafePointer(to: oversampling) { oversampling_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(oversampling_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_oversampling_373806689._native_ptr(),
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
    public func get_oversampling() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_oversampling_1740695150._native_ptr(),
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
    public func get_cache_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_cache_count_3905245786._native_ptr(),
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
    public func clear_cache()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_cache_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_cache_1286410249._native_ptr(),
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
    public func get_size_cache_list(cache_index: Int64) -> [Vector2i] {
        withUnsafePointer(to: cache_index) { cache_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_size_cache_list_663333327._native_ptr(),
                    663333327)
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
    public func clear_size_cache(cache_index: Int64)  {
        withUnsafePointer(to: cache_index) { cache_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_size_cache_1286410249._native_ptr(),
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
    public func remove_size_cache(cache_index: Int64, size: Vector2i)  {
        withUnsafePointer(to: cache_index) { cache_index_native in
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_size_cache_2311374912._native_ptr(),
                    2311374912)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_variation_coordinates_64545446._native_ptr(),
                    64545446)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_variation_coordinates_3485342025._native_ptr(),
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
    public func set_embolden(cache_index: Int64, strength: Float64)  {
        withUnsafePointer(to: strength) { strength_native in
        withUnsafePointer(to: cache_index) { cache_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(strength_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_embolden_1602489585._native_ptr(),
                    1602489585)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_embolden_2339986948._native_ptr(),
                    2339986948)
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
    public func set_transform(cache_index: Int64, transform: Transform2D)  {
        withUnsafePointer(to: cache_index) { cache_index_native in
        let transform_native = transform._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(transform_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_transform_30160968._native_ptr(),
                    30160968)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_transform_3836996910._native_ptr(),
                    3836996910)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_face_index_3937882851._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_face_index_923996154._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_cache_ascent_3506521499._native_ptr(),
                    3506521499)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_cache_ascent_3085491603._native_ptr(),
                    3085491603)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_cache_descent_3506521499._native_ptr(),
                    3506521499)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_cache_descent_3085491603._native_ptr(),
                    3085491603)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_cache_underline_position_3506521499._native_ptr(),
                    3506521499)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_cache_underline_position_3085491603._native_ptr(),
                    3085491603)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_cache_underline_thickness_3506521499._native_ptr(),
                    3506521499)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_cache_underline_thickness_3085491603._native_ptr(),
                    3085491603)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_cache_scale_3506521499._native_ptr(),
                    3506521499)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_cache_scale_3085491603._native_ptr(),
                    3085491603)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_texture_count_1987661582._native_ptr(),
                    1987661582)
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
    public func clear_textures(cache_index: Int64, size: Vector2i)  {
        withUnsafePointer(to: cache_index) { cache_index_native in
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_textures_2311374912._native_ptr(),
                    2311374912)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_texture_2328951467._native_ptr(),
                    2328951467)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_texture_image_4157974066._native_ptr(),
                    4157974066)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_texture_image_3878418953._native_ptr(),
                    3878418953)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_texture_offsets_2849993437._native_ptr(),
                    2849993437)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_texture_offsets_3703444828._native_ptr(),
                    3703444828)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_glyph_list_681709689._native_ptr(),
                    681709689)
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
    public func clear_glyphs(cache_index: Int64, size: Vector2i)  {
        withUnsafePointer(to: cache_index) { cache_index_native in
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cache_index_native), .init(size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_glyphs_2311374912._native_ptr(),
                    2311374912)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_glyph_2328951467._native_ptr(),
                    2328951467)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_glyph_advance_947991729._native_ptr(),
                    947991729)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_glyph_advance_1601573536._native_ptr(),
                    1601573536)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_glyph_offset_921719850._native_ptr(),
                    921719850)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_glyph_offset_3205412300._native_ptr(),
                    3205412300)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_glyph_size_921719850._native_ptr(),
                    921719850)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_glyph_size_3205412300._native_ptr(),
                    3205412300)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_glyph_uv_rect_3821620992._native_ptr(),
                    3821620992)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_glyph_uv_rect_3927917900._native_ptr(),
                    3927917900)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_glyph_texture_idx_355564111._native_ptr(),
                    355564111)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_glyph_texture_idx_1629411054._native_ptr(),
                    1629411054)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_kerning_list_2345056839._native_ptr(),
                    2345056839)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_kerning_map_3937882851._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_kerning_3930204747._native_ptr(),
                    3930204747)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_kerning_3182200918._native_ptr(),
                    3182200918)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_kerning_1611912865._native_ptr(),
                    1611912865)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_render_range_355564111._native_ptr(),
                    355564111)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_render_glyph_2328951467._native_ptr(),
                    2328951467)
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
    public func set_language_support_override(language: godot.String, supported: UInt8)  {
        withUnsafePointer(to: supported) { supported_native in
        let language_native = language._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(language_native), .init(supported_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_language_support_override_2678287736._native_ptr(),
                    2678287736)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_language_support_override(language: godot.String) -> UInt8 {
        let language_native = language._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(language_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_language_support_override_3927539163._native_ptr(),
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
    public func remove_language_support_override(language: godot.String)  {
        let language_native = language._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(language_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_language_support_override_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_language_support_overrides() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_language_support_overrides_1139954409._native_ptr(),
                    1139954409)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func set_script_support_override(script: godot.String, supported: UInt8)  {
        withUnsafePointer(to: supported) { supported_native in
        let script_native = script._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(script_native), .init(supported_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_script_support_override_2678287736._native_ptr(),
                    2678287736)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_script_support_override(script: godot.String) -> UInt8 {
        let script_native = script._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(script_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_script_support_override_3927539163._native_ptr(),
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
    public func remove_script_support_override(script: godot.String)  {
        let script_native = script._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(script_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_script_support_override_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_script_support_overrides() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_script_support_overrides_1139954409._native_ptr(),
                    1139954409)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func set_opentype_feature_overrides(overrides: Dictionary)  {
        let overrides_native = overrides._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(overrides_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_opentype_feature_overrides_4155329257._native_ptr(),
                    4155329257)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_opentype_feature_overrides_3102165223._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_glyph_index_864943070._native_ptr(),
                    864943070)
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
}