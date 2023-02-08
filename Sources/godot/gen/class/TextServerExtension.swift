import godot_native

fileprivate var __godot_name_TextServerExtension: StringName! = nil

/// Base class for TextServer custom implementations (plugins).
/// 
/// External TextServer implementations should inherit from this class.
open class TextServerExtension : TextServer {

    

    public override class var __godot_name: StringName { __godot_name_TextServerExtension }

    static var _method__has_feature_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_name_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_features_0: GDExtensionMethodBindPtr! = nil
    static var _method__free_rid_0: GDExtensionMethodBindPtr! = nil
    static var _method__has_0: GDExtensionMethodBindPtr! = nil
    static var _method__load_support_data_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_support_data_filename_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_support_data_info_0: GDExtensionMethodBindPtr! = nil
    static var _method__save_support_data_0: GDExtensionMethodBindPtr! = nil
    static var _method__is_locale_right_to_left_0: GDExtensionMethodBindPtr! = nil
    static var _method__name_to_tag_0: GDExtensionMethodBindPtr! = nil
    static var _method__tag_to_name_0: GDExtensionMethodBindPtr! = nil
    static var _method__create_font_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_data_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_data_ptr_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_face_index_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_face_index_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_face_count_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_style_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_style_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_name_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_name_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_style_name_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_style_name_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_weight_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_weight_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_stretch_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_stretch_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_antialiasing_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_antialiasing_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_generate_mipmaps_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_generate_mipmaps_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_multichannel_signed_distance_field_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_is_multichannel_signed_distance_field_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_msdf_pixel_range_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_msdf_pixel_range_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_msdf_size_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_msdf_size_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_fixed_size_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_fixed_size_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_allow_system_fallback_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_is_allow_system_fallback_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_force_autohinter_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_is_force_autohinter_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_hinting_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_hinting_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_subpixel_positioning_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_subpixel_positioning_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_embolden_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_embolden_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_transform_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_transform_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_variation_coordinates_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_variation_coordinates_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_oversampling_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_oversampling_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_size_cache_list_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_clear_size_cache_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_remove_size_cache_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_ascent_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_ascent_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_descent_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_descent_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_underline_position_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_underline_position_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_underline_thickness_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_underline_thickness_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_scale_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_scale_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_texture_count_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_clear_textures_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_remove_texture_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_texture_image_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_texture_image_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_texture_offsets_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_texture_offsets_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_glyph_list_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_clear_glyphs_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_remove_glyph_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_glyph_advance_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_glyph_advance_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_glyph_offset_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_glyph_offset_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_glyph_size_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_glyph_size_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_glyph_uv_rect_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_glyph_uv_rect_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_glyph_texture_idx_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_glyph_texture_idx_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_glyph_texture_rid_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_glyph_texture_size_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_glyph_contours_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_kerning_list_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_clear_kerning_map_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_remove_kerning_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_kerning_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_kerning_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_glyph_index_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_has_char_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_supported_chars_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_render_range_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_render_glyph_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_draw_glyph_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_draw_glyph_outline_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_is_language_supported_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_language_support_override_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_language_support_override_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_remove_language_support_override_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_language_support_overrides_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_is_script_supported_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_script_support_override_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_script_support_override_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_remove_script_support_override_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_script_support_overrides_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_opentype_feature_overrides_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_opentype_feature_overrides_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_supported_feature_list_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_supported_variation_list_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_get_global_oversampling_0: GDExtensionMethodBindPtr! = nil
    static var _method__font_set_global_oversampling_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_hex_code_box_size_0: GDExtensionMethodBindPtr! = nil
    static var _method__draw_hex_code_box_0: GDExtensionMethodBindPtr! = nil
    static var _method__create_shaped_text_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_clear_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_set_direction_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_get_direction_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_get_inferred_direction_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_set_bidi_override_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_set_custom_punctuation_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_get_custom_punctuation_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_set_orientation_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_get_orientation_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_set_preserve_invalid_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_get_preserve_invalid_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_set_preserve_control_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_get_preserve_control_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_set_spacing_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_get_spacing_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_add_string_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_add_object_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_resize_object_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_get_span_count_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_get_span_meta_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_set_span_update_font_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_substr_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_get_parent_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_fit_to_width_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_tab_align_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_shape_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_update_breaks_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_update_justification_ops_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_is_ready_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_get_glyphs_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_sort_logical_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_get_glyph_count_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_get_range_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_get_line_breaks_adv_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_get_line_breaks_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_get_word_breaks_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_get_trim_pos_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_get_ellipsis_pos_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_get_ellipsis_glyph_count_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_get_ellipsis_glyphs_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_overrun_trim_to_width_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_get_objects_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_get_object_rect_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_get_size_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_get_ascent_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_get_descent_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_get_width_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_get_underline_position_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_get_underline_thickness_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_get_dominant_direction_in_range_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_get_carets_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_get_selection_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_hit_test_grapheme_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_hit_test_position_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_draw_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_draw_outline_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_get_grapheme_bounds_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_next_grapheme_pos_0: GDExtensionMethodBindPtr! = nil
    static var _method__shaped_text_prev_grapheme_pos_0: GDExtensionMethodBindPtr! = nil
    static var _method__format_number_0: GDExtensionMethodBindPtr! = nil
    static var _method__parse_number_0: GDExtensionMethodBindPtr! = nil
    static var _method__percent_sign_0: GDExtensionMethodBindPtr! = nil
    static var _method__strip_diacritics_0: GDExtensionMethodBindPtr! = nil
    static var _method__is_valid_identifier_0: GDExtensionMethodBindPtr! = nil
    static var _method__string_get_word_breaks_0: GDExtensionMethodBindPtr! = nil
    static var _method__is_confusable_0: GDExtensionMethodBindPtr! = nil
    static var _method__spoof_check_0: GDExtensionMethodBindPtr! = nil
    static var _method__string_to_upper_0: GDExtensionMethodBindPtr! = nil
    static var _method__string_to_lower_0: GDExtensionMethodBindPtr! = nil
    static var _method__parse_structured_text_0: GDExtensionMethodBindPtr! = nil
    static var _method__cleanup_0: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_TextServerExtension = StringName(from: "TextServerExtension")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    public func _has_feature(feature: TextServer.Feature) -> UInt8 {
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
                    Self._method__has_feature_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func _get_name() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_name_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func _get_features() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_features_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func _free_rid(rid: RID)  {
        let rid_native = rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rid_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__free_rid_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _has(rid: RID) -> UInt8 {
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
                    Self._method__has_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func _load_support_data(filename: godot.String) -> UInt8 {
        let filename_native = filename._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(filename_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__load_support_data_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func _get_support_data_filename() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_support_data_filename_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func _get_support_data_info() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_support_data_info_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func _save_support_data(filename: godot.String) -> UInt8 {
        let filename_native = filename._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(filename_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__save_support_data_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func _is_locale_right_to_left(locale: godot.String) -> UInt8 {
        let locale_native = locale._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(locale_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__is_locale_right_to_left_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func _name_to_tag(name: godot.String) -> Int64 {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__name_to_tag_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func _tag_to_name(tag: Int64) -> godot.String {
        withUnsafePointer(to: tag) { tag_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tag_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__tag_to_name_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func _create_font() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__create_font_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
    }
    public func _font_set_data(font_rid: RID, data: PackedByteArray)  {
        let data_native = data._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(data_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_set_data_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _font_set_data_ptr(font_rid: RID, data_ptr: UnsafePointer<UInt8>, data_size: Int64)  {
        withUnsafePointer(to: data_size) { data_size_native in
        withUnsafePointer(to: data_ptr) { data_ptr_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(data_ptr_native), .init(data_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_set_data_ptr_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _font_set_face_index(font_rid: RID, face_index: Int64)  {
        withUnsafePointer(to: face_index) { face_index_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(face_index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_set_face_index_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _font_get_face_index(font_rid: RID) -> Int64 {
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
                    Self._method__font_get_face_index_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func _font_get_face_count(font_rid: RID) -> Int64 {
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
                    Self._method__font_get_face_count_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func _font_set_style(font_rid: RID, style: TextServer.FontStyle)  {
        withUnsafePointer(to: style.rawValue) { style_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(style_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_set_style_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _font_get_style(font_rid: RID) -> TextServer.FontStyle {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_get_style_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.FontStyle(godot: __resPtr.pointee)
    }
    public func _font_set_name(font_rid: RID, name: godot.String)  {
        let name_native = name._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_set_name_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _font_get_name(font_rid: RID) -> godot.String {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_get_name_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func _font_set_style_name(font_rid: RID, name_style: godot.String)  {
        let name_style_native = name_style._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(name_style_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_set_style_name_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _font_get_style_name(font_rid: RID) -> godot.String {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_get_style_name_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func _font_set_weight(font_rid: RID, weight: Int64)  {
        withUnsafePointer(to: weight) { weight_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(weight_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_set_weight_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _font_get_weight(font_rid: RID) -> Int64 {
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
                    Self._method__font_get_weight_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func _font_set_stretch(font_rid: RID, stretch: Int64)  {
        withUnsafePointer(to: stretch) { stretch_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(stretch_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_set_stretch_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _font_get_stretch(font_rid: RID) -> Int64 {
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
                    Self._method__font_get_stretch_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func _font_set_antialiasing(font_rid: RID, antialiasing: TextServer.FontAntialiasing)  {
        withUnsafePointer(to: antialiasing.rawValue) { antialiasing_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(antialiasing_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_set_antialiasing_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _font_get_antialiasing(font_rid: RID) -> TextServer.FontAntialiasing {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_get_antialiasing_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.FontAntialiasing(godot: __resPtr.pointee)
    }
    public func _font_set_generate_mipmaps(font_rid: RID, generate_mipmaps: UInt8)  {
        withUnsafePointer(to: generate_mipmaps) { generate_mipmaps_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(generate_mipmaps_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_set_generate_mipmaps_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _font_get_generate_mipmaps(font_rid: RID) -> UInt8 {
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
                    Self._method__font_get_generate_mipmaps_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func _font_set_multichannel_signed_distance_field(font_rid: RID, msdf: UInt8)  {
        withUnsafePointer(to: msdf) { msdf_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(msdf_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_set_multichannel_signed_distance_field_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _font_is_multichannel_signed_distance_field(font_rid: RID) -> UInt8 {
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
                    Self._method__font_is_multichannel_signed_distance_field_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func _font_set_msdf_pixel_range(font_rid: RID, msdf_pixel_range: Int64)  {
        withUnsafePointer(to: msdf_pixel_range) { msdf_pixel_range_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(msdf_pixel_range_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_set_msdf_pixel_range_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _font_get_msdf_pixel_range(font_rid: RID) -> Int64 {
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
                    Self._method__font_get_msdf_pixel_range_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func _font_set_msdf_size(font_rid: RID, msdf_size: Int64)  {
        withUnsafePointer(to: msdf_size) { msdf_size_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(msdf_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_set_msdf_size_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _font_get_msdf_size(font_rid: RID) -> Int64 {
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
                    Self._method__font_get_msdf_size_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func _font_set_fixed_size(font_rid: RID, fixed_size: Int64)  {
        withUnsafePointer(to: fixed_size) { fixed_size_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(fixed_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_set_fixed_size_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _font_get_fixed_size(font_rid: RID) -> Int64 {
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
                    Self._method__font_get_fixed_size_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func _font_set_allow_system_fallback(font_rid: RID, allow_system_fallback: UInt8)  {
        withUnsafePointer(to: allow_system_fallback) { allow_system_fallback_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(allow_system_fallback_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_set_allow_system_fallback_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _font_is_allow_system_fallback(font_rid: RID) -> UInt8 {
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
                    Self._method__font_is_allow_system_fallback_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func _font_set_force_autohinter(font_rid: RID, force_autohinter: UInt8)  {
        withUnsafePointer(to: force_autohinter) { force_autohinter_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(force_autohinter_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_set_force_autohinter_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _font_is_force_autohinter(font_rid: RID) -> UInt8 {
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
                    Self._method__font_is_force_autohinter_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func _font_set_hinting(font_rid: RID, hinting: TextServer.Hinting)  {
        withUnsafePointer(to: hinting.rawValue) { hinting_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(hinting_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_set_hinting_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _font_get_hinting(font_rid: RID) -> TextServer.Hinting {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_get_hinting_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.Hinting(godot: __resPtr.pointee)
    }
    public func _font_set_subpixel_positioning(font_rid: RID, subpixel_positioning: TextServer.SubpixelPositioning)  {
        withUnsafePointer(to: subpixel_positioning.rawValue) { subpixel_positioning_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(subpixel_positioning_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_set_subpixel_positioning_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _font_get_subpixel_positioning(font_rid: RID) -> TextServer.SubpixelPositioning {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_get_subpixel_positioning_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.SubpixelPositioning(godot: __resPtr.pointee)
    }
    public func _font_set_embolden(font_rid: RID, strength: Float64)  {
        withUnsafePointer(to: strength) { strength_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(strength_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_set_embolden_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _font_get_embolden(font_rid: RID) -> Float64 {
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
                    Self._method__font_get_embolden_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func _font_set_transform(font_rid: RID, transform: Transform2D)  {
        let transform_native = transform._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_set_transform_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _font_get_transform(font_rid: RID) -> Transform2D {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_get_transform_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(godot: __resPtr.pointee)
    }
    public func _font_set_variation_coordinates(font_rid: RID, variation_coordinates: Dictionary)  {
        let variation_coordinates_native = variation_coordinates._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(variation_coordinates_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_set_variation_coordinates_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _font_get_variation_coordinates(font_rid: RID) -> Dictionary {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_get_variation_coordinates_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
    }
    public func _font_set_oversampling(font_rid: RID, oversampling: Float64)  {
        withUnsafePointer(to: oversampling) { oversampling_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(oversampling_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_set_oversampling_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _font_get_oversampling(font_rid: RID) -> Float64 {
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
                    Self._method__font_get_oversampling_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func _font_get_size_cache_list(font_rid: RID) -> [Vector2i] {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_get_size_cache_list_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Vector2i](godot: __resPtr.pointee)
    }
    public func _font_clear_size_cache(font_rid: RID)  {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_clear_size_cache_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _font_remove_size_cache(font_rid: RID, size: Vector2i)  {
        let size_native = size._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_remove_size_cache_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _font_set_ascent(font_rid: RID, size: Int64, ascent: Float64)  {
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
                    Self._method__font_set_ascent_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _font_get_ascent(font_rid: RID, size: Int64) -> Float64 {
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
                    Self._method__font_get_ascent_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func _font_set_descent(font_rid: RID, size: Int64, descent: Float64)  {
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
                    Self._method__font_set_descent_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _font_get_descent(font_rid: RID, size: Int64) -> Float64 {
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
                    Self._method__font_get_descent_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func _font_set_underline_position(font_rid: RID, size: Int64, underline_position: Float64)  {
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
                    Self._method__font_set_underline_position_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _font_get_underline_position(font_rid: RID, size: Int64) -> Float64 {
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
                    Self._method__font_get_underline_position_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func _font_set_underline_thickness(font_rid: RID, size: Int64, underline_thickness: Float64)  {
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
                    Self._method__font_set_underline_thickness_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _font_get_underline_thickness(font_rid: RID, size: Int64) -> Float64 {
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
                    Self._method__font_get_underline_thickness_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func _font_set_scale(font_rid: RID, size: Int64, scale: Float64)  {
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
                    Self._method__font_set_scale_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _font_get_scale(font_rid: RID, size: Int64) -> Float64 {
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
                    Self._method__font_get_scale_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func _font_get_texture_count(font_rid: RID, size: Vector2i) -> Int64 {
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
                    Self._method__font_get_texture_count_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func _font_clear_textures(font_rid: RID, size: Vector2i)  {
        let size_native = size._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_clear_textures_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _font_remove_texture(font_rid: RID, size: Vector2i, texture_index: Int64)  {
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
                    Self._method__font_remove_texture_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _font_set_texture_image(font_rid: RID, size: Vector2i, texture_index: Int64, image: Image)  {
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
                    Self._method__font_set_texture_image_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _font_get_texture_image(font_rid: RID, size: Vector2i, texture_index: Int64) -> Image {
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
                    Self._method__font_get_texture_image_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Image(godot: __resPtr.pointee)
        }
    }
    public func _font_set_texture_offsets(font_rid: RID, size: Vector2i, texture_index: Int64, offset: PackedInt32Array)  {
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
                    Self._method__font_set_texture_offsets_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _font_get_texture_offsets(font_rid: RID, size: Vector2i, texture_index: Int64) -> PackedInt32Array {
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
                    Self._method__font_get_texture_offsets_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
        }
    }
    public func _font_get_glyph_list(font_rid: RID, size: Vector2i) -> PackedInt32Array {
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
                    Self._method__font_get_glyph_list_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
    }
    public func _font_clear_glyphs(font_rid: RID, size: Vector2i)  {
        let size_native = size._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_clear_glyphs_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _font_remove_glyph(font_rid: RID, size: Vector2i, glyph: Int64)  {
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
                    Self._method__font_remove_glyph_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _font_get_glyph_advance(font_rid: RID, size: Int64, glyph: Int64) -> Vector2 {
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
                    Self._method__font_get_glyph_advance_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
        }
        }
    }
    public func _font_set_glyph_advance(font_rid: RID, size: Int64, glyph: Int64, advance: Vector2)  {
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
                    Self._method__font_set_glyph_advance_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _font_get_glyph_offset(font_rid: RID, size: Vector2i, glyph: Int64) -> Vector2 {
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
                    Self._method__font_get_glyph_offset_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
        }
    }
    public func _font_set_glyph_offset(font_rid: RID, size: Vector2i, glyph: Int64, offset: Vector2)  {
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
                    Self._method__font_set_glyph_offset_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _font_get_glyph_size(font_rid: RID, size: Vector2i, glyph: Int64) -> Vector2 {
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
                    Self._method__font_get_glyph_size_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
        }
    }
    public func _font_set_glyph_size(font_rid: RID, size: Vector2i, glyph: Int64, gl_size: Vector2)  {
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
                    Self._method__font_set_glyph_size_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _font_get_glyph_uv_rect(font_rid: RID, size: Vector2i, glyph: Int64) -> Rect2 {
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
                    Self._method__font_get_glyph_uv_rect_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2(godot: __resPtr.pointee)
        }
    }
    public func _font_set_glyph_uv_rect(font_rid: RID, size: Vector2i, glyph: Int64, uv_rect: Rect2)  {
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
                    Self._method__font_set_glyph_uv_rect_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _font_get_glyph_texture_idx(font_rid: RID, size: Vector2i, glyph: Int64) -> Int64 {
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
                    Self._method__font_get_glyph_texture_idx_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func _font_set_glyph_texture_idx(font_rid: RID, size: Vector2i, glyph: Int64, texture_idx: Int64)  {
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
                    Self._method__font_set_glyph_texture_idx_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _font_get_glyph_texture_rid(font_rid: RID, size: Vector2i, glyph: Int64) -> RID {
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
                    Self._method__font_get_glyph_texture_rid_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
        }
    }
    public func _font_get_glyph_texture_size(font_rid: RID, size: Vector2i, glyph: Int64) -> Vector2 {
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
                    Self._method__font_get_glyph_texture_size_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
        }
    }
    public func _font_get_glyph_contours(font_rid: RID, size: Int64, index: Int64) -> Dictionary {
        withUnsafePointer(to: index) { index_native in
        withUnsafePointer(to: size) { size_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native), .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_get_glyph_contours_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
        }
        }
    }
    public func _font_get_kerning_list(font_rid: RID, size: Int64) -> [Vector2i] {
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
                    Self._method__font_get_kerning_list_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Vector2i](godot: __resPtr.pointee)
        }
    }
    public func _font_clear_kerning_map(font_rid: RID, size: Int64)  {
        withUnsafePointer(to: size) { size_native in
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_clear_kerning_map_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _font_remove_kerning(font_rid: RID, size: Int64, glyph_pair: Vector2i)  {
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
                    Self._method__font_remove_kerning_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _font_set_kerning(font_rid: RID, size: Int64, glyph_pair: Vector2i, kerning: Vector2)  {
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
                    Self._method__font_set_kerning_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _font_get_kerning(font_rid: RID, size: Int64, glyph_pair: Vector2i) -> Vector2 {
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
                    Self._method__font_get_kerning_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
        }
    }
    public func _font_get_glyph_index(font_rid: RID, size: Int64, char: Int64, variation_selector: Int64) -> Int64 {
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
                    Self._method__font_get_glyph_index_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
        }
        }
    }
    public func _font_has_char(font_rid: RID, char: Int64) -> UInt8 {
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
                    Self._method__font_has_char_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func _font_get_supported_chars(font_rid: RID) -> godot.String {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_get_supported_chars_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func _font_render_range(font_rid: RID, size: Vector2i, start: Int64, end: Int64)  {
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
                    Self._method__font_render_range_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _font_render_glyph(font_rid: RID, size: Vector2i, index: Int64)  {
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
                    Self._method__font_render_glyph_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _font_draw_glyph(font_rid: RID, canvas: RID, size: Int64, pos: Vector2, index: Int64, color: Color)  {
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
                    Self._method__font_draw_glyph_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _font_draw_glyph_outline(font_rid: RID, canvas: RID, size: Int64, outline_size: Int64, pos: Vector2, index: Int64, color: Color)  {
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
                    Self._method__font_draw_glyph_outline_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func _font_is_language_supported(font_rid: RID, language: godot.String) -> UInt8 {
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_is_language_supported_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func _font_set_language_support_override(font_rid: RID, language: godot.String, supported: UInt8)  {
        withUnsafePointer(to: supported) { supported_native in
        let language_native = language._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(language_native), .init(supported_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_set_language_support_override_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _font_get_language_support_override(font_rid: RID, language: godot.String) -> UInt8 {
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_get_language_support_override_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func _font_remove_language_support_override(font_rid: RID, language: godot.String)  {
        let language_native = language._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(language_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_remove_language_support_override_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _font_get_language_support_overrides(font_rid: RID) -> PackedStringArray {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_get_language_support_overrides_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func _font_is_script_supported(font_rid: RID, script: godot.String) -> UInt8 {
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_is_script_supported_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func _font_set_script_support_override(font_rid: RID, script: godot.String, supported: UInt8)  {
        withUnsafePointer(to: supported) { supported_native in
        let script_native = script._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(script_native), .init(supported_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_set_script_support_override_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _font_get_script_support_override(font_rid: RID, script: godot.String) -> UInt8 {
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_get_script_support_override_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func _font_remove_script_support_override(font_rid: RID, script: godot.String)  {
        let script_native = script._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(script_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_remove_script_support_override_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _font_get_script_support_overrides(font_rid: RID) -> PackedStringArray {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_get_script_support_overrides_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func _font_set_opentype_feature_overrides(font_rid: RID, overrides: Dictionary)  {
        let overrides_native = overrides._native_ptr()
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native), .init(overrides_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_set_opentype_feature_overrides_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _font_get_opentype_feature_overrides(font_rid: RID) -> Dictionary {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_get_opentype_feature_overrides_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
    }
    public func _font_supported_feature_list(font_rid: RID) -> Dictionary {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_supported_feature_list_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
    }
    public func _font_supported_variation_list(font_rid: RID) -> Dictionary {
        let font_rid_native = font_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_rid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_supported_variation_list_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
    }
    public func _font_get_global_oversampling() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_get_global_oversampling_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func _font_set_global_oversampling(oversampling: Float64)  {
        withUnsafePointer(to: oversampling) { oversampling_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(oversampling_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__font_set_global_oversampling_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _get_hex_code_box_size(size: Int64, index: Int64) -> Vector2 {
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
                    Self._method__get_hex_code_box_size_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
        }
        }
    }
    public func _draw_hex_code_box(canvas: RID, size: Int64, pos: Vector2, index: Int64, color: Color)  {
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
                    Self._method__draw_hex_code_box_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _create_shaped_text(direction: TextServer.Direction, orientation: TextServer.Orientation) -> RID {
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
                    Self._method__create_shaped_text_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
        }
        }
    }
    public func _shaped_text_clear(shaped: RID)  {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shaped_text_clear_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _shaped_text_set_direction(shaped: RID, direction: TextServer.Direction)  {
        withUnsafePointer(to: direction.rawValue) { direction_native in
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(direction_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shaped_text_set_direction_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _shaped_text_get_direction(shaped: RID) -> TextServer.Direction {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shaped_text_get_direction_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.Direction(godot: __resPtr.pointee)
    }
    public func _shaped_text_get_inferred_direction(shaped: RID) -> TextServer.Direction {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shaped_text_get_inferred_direction_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.Direction(godot: __resPtr.pointee)
    }
    public func _shaped_text_set_bidi_override(shaped: RID, override: Array)  {
        let override_native = override._native_ptr()
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(override_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shaped_text_set_bidi_override_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _shaped_text_set_custom_punctuation(shaped: RID, punct: godot.String)  {
        let punct_native = punct._native_ptr()
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(punct_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shaped_text_set_custom_punctuation_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _shaped_text_get_custom_punctuation(shaped: RID) -> godot.String {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shaped_text_get_custom_punctuation_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func _shaped_text_set_orientation(shaped: RID, orientation: TextServer.Orientation)  {
        withUnsafePointer(to: orientation.rawValue) { orientation_native in
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(orientation_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shaped_text_set_orientation_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _shaped_text_get_orientation(shaped: RID) -> TextServer.Orientation {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shaped_text_get_orientation_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.Orientation(godot: __resPtr.pointee)
    }
    public func _shaped_text_set_preserve_invalid(shaped: RID, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shaped_text_set_preserve_invalid_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _shaped_text_get_preserve_invalid(shaped: RID) -> UInt8 {
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
                    Self._method__shaped_text_get_preserve_invalid_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func _shaped_text_set_preserve_control(shaped: RID, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shaped_text_set_preserve_control_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _shaped_text_get_preserve_control(shaped: RID) -> UInt8 {
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
                    Self._method__shaped_text_get_preserve_control_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func _shaped_text_set_spacing(shaped: RID, spacing: TextServer.SpacingType, value: Int64)  {
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
                    Self._method__shaped_text_set_spacing_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _shaped_text_get_spacing(shaped: RID, spacing: TextServer.SpacingType) -> Int64 {
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
                    Self._method__shaped_text_get_spacing_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func _shaped_text_add_string(shaped: RID, text: godot.String, fonts: [RID], size: Int64, opentype_features: Dictionary, language: godot.String, meta: Variant) -> UInt8 {
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shaped_text_add_string_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func _shaped_text_add_object(shaped: RID, key: Variant, size: Vector2, inline_align: InlineAlignment, length: Int64, baseline: Float64) -> UInt8 {
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
                    Self._method__shaped_text_add_object_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
        }
        }
    }
    public func _shaped_text_resize_object(shaped: RID, key: Variant, size: Vector2, inline_align: InlineAlignment, baseline: Float64) -> UInt8 {
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
                    Self._method__shaped_text_resize_object_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
        }
    }
    public func _shaped_get_span_count(shaped: RID) -> Int64 {
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
                    Self._method__shaped_get_span_count_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func _shaped_get_span_meta(shaped: RID, index: Int64) -> Variant {
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
                    Self._method__shaped_get_span_meta_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
        }
    }
    public func _shaped_set_span_update_font(shaped: RID, index: Int64, fonts: [RID], size: Int64, opentype_features: Dictionary)  {
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
                    Self._method__shaped_set_span_update_font_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _shaped_text_substr(shaped: RID, start: Int64, length: Int64) -> RID {
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
                    Self._method__shaped_text_substr_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
        }
        }
    }
    public func _shaped_text_get_parent(shaped: RID) -> RID {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shaped_text_get_parent_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
    }
    public func _shaped_text_fit_to_width(shaped: RID, width: Float64, jst_flags: TextServer.JustificationFlag) -> Float64 {
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
                    Self._method__shaped_text_fit_to_width_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
        }
    }
    public func _shaped_text_tab_align(shaped: RID, tab_stops: PackedFloat32Array) -> Float64 {
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
                    Self._method__shaped_text_tab_align_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func _shaped_text_shape(shaped: RID) -> UInt8 {
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
                    Self._method__shaped_text_shape_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func _shaped_text_update_breaks(shaped: RID) -> UInt8 {
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
                    Self._method__shaped_text_update_breaks_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func _shaped_text_update_justification_ops(shaped: RID) -> UInt8 {
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
                    Self._method__shaped_text_update_justification_ops_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func _shaped_text_is_ready(shaped: RID) -> UInt8 {
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
                    Self._method__shaped_text_is_ready_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func _shaped_text_get_glyphs(shaped: RID) -> UnsafePointer<Glyph> {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shaped_text_get_glyphs_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UnsafePointer<Glyph>(godot: __resPtr.pointee)
    }
    public func _shaped_text_sort_logical(shaped: RID) -> UnsafePointer<Glyph> {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shaped_text_sort_logical_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UnsafePointer<Glyph>(godot: __resPtr.pointee)
    }
    public func _shaped_text_get_glyph_count(shaped: RID) -> Int64 {
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
                    Self._method__shaped_text_get_glyph_count_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func _shaped_text_get_range(shaped: RID) -> Vector2i {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shaped_text_get_range_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(godot: __resPtr.pointee)
    }
    public func _shaped_text_get_line_breaks_adv(shaped: RID, width: PackedFloat32Array, start: Int64, once: UInt8, break_flags: TextServer.LineBreakFlag) -> PackedInt32Array {
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
                    Self._method__shaped_text_get_line_breaks_adv_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
        }
        }
        }
    }
    public func _shaped_text_get_line_breaks(shaped: RID, width: Float64, start: Int64, break_flags: TextServer.LineBreakFlag) -> PackedInt32Array {
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
                    Self._method__shaped_text_get_line_breaks_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
        }
        }
        }
    }
    public func _shaped_text_get_word_breaks(shaped: RID, grapheme_flags: TextServer.GraphemeFlag) -> PackedInt32Array {
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
                    Self._method__shaped_text_get_word_breaks_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
        }
    }
    public func _shaped_text_get_trim_pos(shaped: RID) -> Int64 {
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
                    Self._method__shaped_text_get_trim_pos_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func _shaped_text_get_ellipsis_pos(shaped: RID) -> Int64 {
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
                    Self._method__shaped_text_get_ellipsis_pos_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func _shaped_text_get_ellipsis_glyph_count(shaped: RID) -> Int64 {
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
                    Self._method__shaped_text_get_ellipsis_glyph_count_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func _shaped_text_get_ellipsis_glyphs(shaped: RID) -> UnsafePointer<Glyph> {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shaped_text_get_ellipsis_glyphs_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UnsafePointer<Glyph>(godot: __resPtr.pointee)
    }
    public func _shaped_text_overrun_trim_to_width(shaped: RID, width: Float64, trim_flags: TextServer.TextOverrunFlag)  {
        withUnsafePointer(to: width) { width_native in
        withUnsafePointer(to: trim_flags.rawValue) { trim_flags_native in
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(width_native), .init(trim_flags_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shaped_text_overrun_trim_to_width_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _shaped_text_get_objects(shaped: RID) -> Array {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shaped_text_get_objects_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(godot: __resPtr.pointee)
    }
    public func _shaped_text_get_object_rect(shaped: RID, key: Variant) -> Rect2 {
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
                    Self._method__shaped_text_get_object_rect_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2(godot: __resPtr.pointee)
    }
    public func _shaped_text_get_size(shaped: RID) -> Vector2 {
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shaped_text_get_size_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func _shaped_text_get_ascent(shaped: RID) -> Float64 {
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
                    Self._method__shaped_text_get_ascent_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func _shaped_text_get_descent(shaped: RID) -> Float64 {
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
                    Self._method__shaped_text_get_descent_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func _shaped_text_get_width(shaped: RID) -> Float64 {
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
                    Self._method__shaped_text_get_width_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func _shaped_text_get_underline_position(shaped: RID) -> Float64 {
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
                    Self._method__shaped_text_get_underline_position_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func _shaped_text_get_underline_thickness(shaped: RID) -> Float64 {
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
                    Self._method__shaped_text_get_underline_thickness_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func _shaped_text_get_dominant_direction_in_range(shaped: RID, start: Int64, end: Int64) -> Int64 {
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
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shaped_text_get_dominant_direction_in_range_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
        }
    }
    public func _shaped_text_get_carets(shaped: RID, position: Int64, caret: UnsafeMutablePointer<CaretInfo>)  {
        withUnsafePointer(to: caret) { caret_native in
        withUnsafePointer(to: position) { position_native in
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(position_native), .init(caret_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shaped_text_get_carets_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _shaped_text_get_selection(shaped: RID, start: Int64, end: Int64) -> PackedVector2Array {
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
                    Self._method__shaped_text_get_selection_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(godot: __resPtr.pointee)
        }
        }
    }
    public func _shaped_text_hit_test_grapheme(shaped: RID, coord: Float64) -> Int64 {
        withUnsafePointer(to: coord) { coord_native in
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(coord_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shaped_text_hit_test_grapheme_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func _shaped_text_hit_test_position(shaped: RID, coord: Float64) -> Int64 {
        withUnsafePointer(to: coord) { coord_native in
        let shaped_native = shaped._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shaped_native), .init(coord_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shaped_text_hit_test_position_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func _shaped_text_draw(shaped: RID, canvas: RID, pos: Vector2, clip_l: Float64, clip_r: Float64, color: Color)  {
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
                    Self._method__shaped_text_draw_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _shaped_text_draw_outline(shaped: RID, canvas: RID, pos: Vector2, clip_l: Float64, clip_r: Float64, outline_size: Int64, color: Color)  {
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
                    Self._method__shaped_text_draw_outline_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func _shaped_text_get_grapheme_bounds(shaped: RID, pos: Int64) -> Vector2 {
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
                    Self._method__shaped_text_get_grapheme_bounds_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
        }
    }
    public func _shaped_text_next_grapheme_pos(shaped: RID, pos: Int64) -> Int64 {
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
                    Self._method__shaped_text_next_grapheme_pos_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func _shaped_text_prev_grapheme_pos(shaped: RID, pos: Int64) -> Int64 {
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
                    Self._method__shaped_text_prev_grapheme_pos_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func _format_number(string: godot.String, language: godot.String) -> godot.String {
        let language_native = language._native_ptr()
        let string_native = string._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(string_native), .init(language_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__format_number_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func _parse_number(string: godot.String, language: godot.String) -> godot.String {
        let language_native = language._native_ptr()
        let string_native = string._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(string_native), .init(language_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__parse_number_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func _percent_sign(language: godot.String) -> godot.String {
        let language_native = language._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(language_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__percent_sign_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func _strip_diacritics(string: godot.String) -> godot.String {
        let string_native = string._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(string_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__strip_diacritics_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func _is_valid_identifier(string: godot.String) -> UInt8 {
        let string_native = string._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(string_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__is_valid_identifier_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func _string_get_word_breaks(string: godot.String, language: godot.String, chars_per_line: Int64) -> PackedInt32Array {
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__string_get_word_breaks_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
        }
    }
    public func _is_confusable(string: godot.String, dict: PackedStringArray) -> Int64 {
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__is_confusable_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func _spoof_check(string: godot.String) -> UInt8 {
        let string_native = string._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(string_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__spoof_check_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func _string_to_upper(string: godot.String, language: godot.String) -> godot.String {
        let language_native = language._native_ptr()
        let string_native = string._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(string_native), .init(language_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__string_to_upper_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func _string_to_lower(string: godot.String, language: godot.String) -> godot.String {
        let language_native = language._native_ptr()
        let string_native = string._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(string_native), .init(language_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__string_to_lower_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func _parse_structured_text(parser_type: TextServer.StructuredTextParser, args: Array, text: godot.String) -> [Vector3i] {
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__parse_structured_text_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Vector3i](godot: __resPtr.pointee)
        }
    }
    public func _cleanup()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__cleanup_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}