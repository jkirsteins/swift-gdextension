import godot_native

fileprivate var __godot_name_TreeItem: StringName! = nil

/// Control for a single item inside a [Tree].
/// 
/// Control for a single item inside a [Tree]. May have child [TreeItem]s and be styled as well as contain buttons.
///  
/// You can remove a [TreeItem] by using [method Object.free].
open class TreeItem : Object {

    public enum TreeCellMode : Int32 {
        case CELL_MODE_STRING = 0
        case CELL_MODE_CHECK = 1
        case CELL_MODE_RANGE = 2
        case CELL_MODE_ICON = 3
        case CELL_MODE_CUSTOM = 4
    }

    public override class var __godot_name: StringName { __godot_name_TreeItem }

    static var _method_set_cell_mode_289920701: StringName! = nil
    static var _method_get_cell_mode_3406114978: StringName! = nil
    static var _method_set_checked_300928843: StringName! = nil
    static var _method_set_indeterminate_300928843: StringName! = nil
    static var _method_is_checked_1116898809: StringName! = nil
    static var _method_is_indeterminate_1116898809: StringName! = nil
    static var _method_propagate_check_4023243586: StringName! = nil
    static var _method_set_text_501894301: StringName! = nil
    static var _method_get_text_844755477: StringName! = nil
    static var _method_set_text_direction_1707680378: StringName! = nil
    static var _method_get_text_direction_4235602388: StringName! = nil
    static var _method_set_structured_text_bidi_override_868756907: StringName! = nil
    static var _method_get_structured_text_bidi_override_3377823772: StringName! = nil
    static var _method_set_structured_text_bidi_override_options_537221740: StringName! = nil
    static var _method_get_structured_text_bidi_override_options_663333327: StringName! = nil
    static var _method_set_language_501894301: StringName! = nil
    static var _method_get_language_844755477: StringName! = nil
    static var _method_set_suffix_501894301: StringName! = nil
    static var _method_get_suffix_844755477: StringName! = nil
    static var _method_set_icon_666127730: StringName! = nil
    static var _method_get_icon_3536238170: StringName! = nil
    static var _method_set_icon_region_1356297692: StringName! = nil
    static var _method_get_icon_region_3327874267: StringName! = nil
    static var _method_set_icon_max_width_3937882851: StringName! = nil
    static var _method_get_icon_max_width_923996154: StringName! = nil
    static var _method_set_icon_modulate_2878471219: StringName! = nil
    static var _method_get_icon_modulate_3457211756: StringName! = nil
    static var _method_set_range_1602489585: StringName! = nil
    static var _method_get_range_2339986948: StringName! = nil
    static var _method_set_range_config_1547181014: StringName! = nil
    static var _method_get_range_config_3554694381: StringName! = nil
    static var _method_set_metadata_2152698145: StringName! = nil
    static var _method_get_metadata_4227898402: StringName! = nil
    static var _method_set_custom_draw_272420368: StringName! = nil
    static var _method_set_collapsed_2586408642: StringName! = nil
    static var _method_is_collapsed_2240911060: StringName! = nil
    static var _method_set_collapsed_recursive_2586408642: StringName! = nil
    static var _method_is_any_collapsed_2595650253: StringName! = nil
    static var _method_set_visible_2586408642: StringName! = nil
    static var _method_is_visible_2240911060: StringName! = nil
    static var _method_uncollapse_tree_3218959716: StringName! = nil
    static var _method_set_custom_minimum_height_1286410249: StringName! = nil
    static var _method_get_custom_minimum_height_3905245786: StringName! = nil
    static var _method_set_selectable_300928843: StringName! = nil
    static var _method_is_selectable_1116898809: StringName! = nil
    static var _method_is_selected_3067735520: StringName! = nil
    static var _method_select_1286410249: StringName! = nil
    static var _method_deselect_1286410249: StringName! = nil
    static var _method_set_editable_300928843: StringName! = nil
    static var _method_is_editable_3067735520: StringName! = nil
    static var _method_set_custom_color_2878471219: StringName! = nil
    static var _method_get_custom_color_3457211756: StringName! = nil
    static var _method_clear_custom_color_1286410249: StringName! = nil
    static var _method_set_custom_font_2637609184: StringName! = nil
    static var _method_get_custom_font_4244553094: StringName! = nil
    static var _method_set_custom_font_size_3937882851: StringName! = nil
    static var _method_get_custom_font_size_923996154: StringName! = nil
    static var _method_set_custom_bg_color_894174518: StringName! = nil
    static var _method_clear_custom_bg_color_1286410249: StringName! = nil
    static var _method_get_custom_bg_color_3457211756: StringName! = nil
    static var _method_set_custom_as_button_300928843: StringName! = nil
    static var _method_is_custom_set_as_button_1116898809: StringName! = nil
    static var _method_add_button_1507727907: StringName! = nil
    static var _method_get_button_count_923996154: StringName! = nil
    static var _method_get_button_tooltip_text_1391810591: StringName! = nil
    static var _method_get_button_id_3175239445: StringName! = nil
    static var _method_get_button_by_id_3175239445: StringName! = nil
    static var _method_get_button_2584904275: StringName! = nil
    static var _method_set_button_176101966: StringName! = nil
    static var _method_erase_button_3937882851: StringName! = nil
    static var _method_set_button_disabled_1383440665: StringName! = nil
    static var _method_set_button_color_3733378741: StringName! = nil
    static var _method_is_button_disabled_2522259332: StringName! = nil
    static var _method_set_tooltip_text_501894301: StringName! = nil
    static var _method_get_tooltip_text_844755477: StringName! = nil
    static var _method_set_text_alignment_3276431499: StringName! = nil
    static var _method_get_text_alignment_4171562184: StringName! = nil
    static var _method_set_expand_right_300928843: StringName! = nil
    static var _method_get_expand_right_1116898809: StringName! = nil
    static var _method_set_disable_folding_2586408642: StringName! = nil
    static var _method_is_folding_disabled_36873697: StringName! = nil
    static var _method_create_child_954243986: StringName! = nil
    static var _method_get_tree_2243340556: StringName! = nil
    static var _method_get_next_1514277247: StringName! = nil
    static var _method_get_prev_2768121250: StringName! = nil
    static var _method_get_parent_1514277247: StringName! = nil
    static var _method_get_first_child_1514277247: StringName! = nil
    static var _method_get_next_visible_1666920593: StringName! = nil
    static var _method_get_prev_visible_1666920593: StringName! = nil
    static var _method_get_child_306700752: StringName! = nil
    static var _method_get_child_count_2455072627: StringName! = nil
    static var _method_get_children_2915620761: StringName! = nil
    static var _method_get_index_2455072627: StringName! = nil
    static var _method_move_before_1819951137: StringName! = nil
    static var _method_move_after_1819951137: StringName! = nil
    static var _method_remove_child_1819951137: StringName! = nil
    static var _method_call_recursive_2866548813: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_TreeItem == nil)
        __godot_name_TreeItem = StringName(from: "TreeItem")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_cell_mode_289920701 = StringName(from: "set_cell_mode")
        assert(self._method_set_cell_mode_289920701 != nil)
        self._method_get_cell_mode_3406114978 = StringName(from: "get_cell_mode")
        assert(self._method_get_cell_mode_3406114978 != nil)
        self._method_set_checked_300928843 = StringName(from: "set_checked")
        assert(self._method_set_checked_300928843 != nil)
        self._method_set_indeterminate_300928843 = StringName(from: "set_indeterminate")
        assert(self._method_set_indeterminate_300928843 != nil)
        self._method_is_checked_1116898809 = StringName(from: "is_checked")
        assert(self._method_is_checked_1116898809 != nil)
        self._method_is_indeterminate_1116898809 = StringName(from: "is_indeterminate")
        assert(self._method_is_indeterminate_1116898809 != nil)
        self._method_propagate_check_4023243586 = StringName(from: "propagate_check")
        assert(self._method_propagate_check_4023243586 != nil)
        self._method_set_text_501894301 = StringName(from: "set_text")
        assert(self._method_set_text_501894301 != nil)
        self._method_get_text_844755477 = StringName(from: "get_text")
        assert(self._method_get_text_844755477 != nil)
        self._method_set_text_direction_1707680378 = StringName(from: "set_text_direction")
        assert(self._method_set_text_direction_1707680378 != nil)
        self._method_get_text_direction_4235602388 = StringName(from: "get_text_direction")
        assert(self._method_get_text_direction_4235602388 != nil)
        self._method_set_structured_text_bidi_override_868756907 = StringName(from: "set_structured_text_bidi_override")
        assert(self._method_set_structured_text_bidi_override_868756907 != nil)
        self._method_get_structured_text_bidi_override_3377823772 = StringName(from: "get_structured_text_bidi_override")
        assert(self._method_get_structured_text_bidi_override_3377823772 != nil)
        self._method_set_structured_text_bidi_override_options_537221740 = StringName(from: "set_structured_text_bidi_override_options")
        assert(self._method_set_structured_text_bidi_override_options_537221740 != nil)
        self._method_get_structured_text_bidi_override_options_663333327 = StringName(from: "get_structured_text_bidi_override_options")
        assert(self._method_get_structured_text_bidi_override_options_663333327 != nil)
        self._method_set_language_501894301 = StringName(from: "set_language")
        assert(self._method_set_language_501894301 != nil)
        self._method_get_language_844755477 = StringName(from: "get_language")
        assert(self._method_get_language_844755477 != nil)
        self._method_set_suffix_501894301 = StringName(from: "set_suffix")
        assert(self._method_set_suffix_501894301 != nil)
        self._method_get_suffix_844755477 = StringName(from: "get_suffix")
        assert(self._method_get_suffix_844755477 != nil)
        self._method_set_icon_666127730 = StringName(from: "set_icon")
        assert(self._method_set_icon_666127730 != nil)
        self._method_get_icon_3536238170 = StringName(from: "get_icon")
        assert(self._method_get_icon_3536238170 != nil)
        self._method_set_icon_region_1356297692 = StringName(from: "set_icon_region")
        assert(self._method_set_icon_region_1356297692 != nil)
        self._method_get_icon_region_3327874267 = StringName(from: "get_icon_region")
        assert(self._method_get_icon_region_3327874267 != nil)
        self._method_set_icon_max_width_3937882851 = StringName(from: "set_icon_max_width")
        assert(self._method_set_icon_max_width_3937882851 != nil)
        self._method_get_icon_max_width_923996154 = StringName(from: "get_icon_max_width")
        assert(self._method_get_icon_max_width_923996154 != nil)
        self._method_set_icon_modulate_2878471219 = StringName(from: "set_icon_modulate")
        assert(self._method_set_icon_modulate_2878471219 != nil)
        self._method_get_icon_modulate_3457211756 = StringName(from: "get_icon_modulate")
        assert(self._method_get_icon_modulate_3457211756 != nil)
        self._method_set_range_1602489585 = StringName(from: "set_range")
        assert(self._method_set_range_1602489585 != nil)
        self._method_get_range_2339986948 = StringName(from: "get_range")
        assert(self._method_get_range_2339986948 != nil)
        self._method_set_range_config_1547181014 = StringName(from: "set_range_config")
        assert(self._method_set_range_config_1547181014 != nil)
        self._method_get_range_config_3554694381 = StringName(from: "get_range_config")
        assert(self._method_get_range_config_3554694381 != nil)
        self._method_set_metadata_2152698145 = StringName(from: "set_metadata")
        assert(self._method_set_metadata_2152698145 != nil)
        self._method_get_metadata_4227898402 = StringName(from: "get_metadata")
        assert(self._method_get_metadata_4227898402 != nil)
        self._method_set_custom_draw_272420368 = StringName(from: "set_custom_draw")
        assert(self._method_set_custom_draw_272420368 != nil)
        self._method_set_collapsed_2586408642 = StringName(from: "set_collapsed")
        assert(self._method_set_collapsed_2586408642 != nil)
        self._method_is_collapsed_2240911060 = StringName(from: "is_collapsed")
        assert(self._method_is_collapsed_2240911060 != nil)
        self._method_set_collapsed_recursive_2586408642 = StringName(from: "set_collapsed_recursive")
        assert(self._method_set_collapsed_recursive_2586408642 != nil)
        self._method_is_any_collapsed_2595650253 = StringName(from: "is_any_collapsed")
        assert(self._method_is_any_collapsed_2595650253 != nil)
        self._method_set_visible_2586408642 = StringName(from: "set_visible")
        assert(self._method_set_visible_2586408642 != nil)
        self._method_is_visible_2240911060 = StringName(from: "is_visible")
        assert(self._method_is_visible_2240911060 != nil)
        self._method_uncollapse_tree_3218959716 = StringName(from: "uncollapse_tree")
        assert(self._method_uncollapse_tree_3218959716 != nil)
        self._method_set_custom_minimum_height_1286410249 = StringName(from: "set_custom_minimum_height")
        assert(self._method_set_custom_minimum_height_1286410249 != nil)
        self._method_get_custom_minimum_height_3905245786 = StringName(from: "get_custom_minimum_height")
        assert(self._method_get_custom_minimum_height_3905245786 != nil)
        self._method_set_selectable_300928843 = StringName(from: "set_selectable")
        assert(self._method_set_selectable_300928843 != nil)
        self._method_is_selectable_1116898809 = StringName(from: "is_selectable")
        assert(self._method_is_selectable_1116898809 != nil)
        self._method_is_selected_3067735520 = StringName(from: "is_selected")
        assert(self._method_is_selected_3067735520 != nil)
        self._method_select_1286410249 = StringName(from: "select")
        assert(self._method_select_1286410249 != nil)
        self._method_deselect_1286410249 = StringName(from: "deselect")
        assert(self._method_deselect_1286410249 != nil)
        self._method_set_editable_300928843 = StringName(from: "set_editable")
        assert(self._method_set_editable_300928843 != nil)
        self._method_is_editable_3067735520 = StringName(from: "is_editable")
        assert(self._method_is_editable_3067735520 != nil)
        self._method_set_custom_color_2878471219 = StringName(from: "set_custom_color")
        assert(self._method_set_custom_color_2878471219 != nil)
        self._method_get_custom_color_3457211756 = StringName(from: "get_custom_color")
        assert(self._method_get_custom_color_3457211756 != nil)
        self._method_clear_custom_color_1286410249 = StringName(from: "clear_custom_color")
        assert(self._method_clear_custom_color_1286410249 != nil)
        self._method_set_custom_font_2637609184 = StringName(from: "set_custom_font")
        assert(self._method_set_custom_font_2637609184 != nil)
        self._method_get_custom_font_4244553094 = StringName(from: "get_custom_font")
        assert(self._method_get_custom_font_4244553094 != nil)
        self._method_set_custom_font_size_3937882851 = StringName(from: "set_custom_font_size")
        assert(self._method_set_custom_font_size_3937882851 != nil)
        self._method_get_custom_font_size_923996154 = StringName(from: "get_custom_font_size")
        assert(self._method_get_custom_font_size_923996154 != nil)
        self._method_set_custom_bg_color_894174518 = StringName(from: "set_custom_bg_color")
        assert(self._method_set_custom_bg_color_894174518 != nil)
        self._method_clear_custom_bg_color_1286410249 = StringName(from: "clear_custom_bg_color")
        assert(self._method_clear_custom_bg_color_1286410249 != nil)
        self._method_get_custom_bg_color_3457211756 = StringName(from: "get_custom_bg_color")
        assert(self._method_get_custom_bg_color_3457211756 != nil)
        self._method_set_custom_as_button_300928843 = StringName(from: "set_custom_as_button")
        assert(self._method_set_custom_as_button_300928843 != nil)
        self._method_is_custom_set_as_button_1116898809 = StringName(from: "is_custom_set_as_button")
        assert(self._method_is_custom_set_as_button_1116898809 != nil)
        self._method_add_button_1507727907 = StringName(from: "add_button")
        assert(self._method_add_button_1507727907 != nil)
        self._method_get_button_count_923996154 = StringName(from: "get_button_count")
        assert(self._method_get_button_count_923996154 != nil)
        self._method_get_button_tooltip_text_1391810591 = StringName(from: "get_button_tooltip_text")
        assert(self._method_get_button_tooltip_text_1391810591 != nil)
        self._method_get_button_id_3175239445 = StringName(from: "get_button_id")
        assert(self._method_get_button_id_3175239445 != nil)
        self._method_get_button_by_id_3175239445 = StringName(from: "get_button_by_id")
        assert(self._method_get_button_by_id_3175239445 != nil)
        self._method_get_button_2584904275 = StringName(from: "get_button")
        assert(self._method_get_button_2584904275 != nil)
        self._method_set_button_176101966 = StringName(from: "set_button")
        assert(self._method_set_button_176101966 != nil)
        self._method_erase_button_3937882851 = StringName(from: "erase_button")
        assert(self._method_erase_button_3937882851 != nil)
        self._method_set_button_disabled_1383440665 = StringName(from: "set_button_disabled")
        assert(self._method_set_button_disabled_1383440665 != nil)
        self._method_set_button_color_3733378741 = StringName(from: "set_button_color")
        assert(self._method_set_button_color_3733378741 != nil)
        self._method_is_button_disabled_2522259332 = StringName(from: "is_button_disabled")
        assert(self._method_is_button_disabled_2522259332 != nil)
        self._method_set_tooltip_text_501894301 = StringName(from: "set_tooltip_text")
        assert(self._method_set_tooltip_text_501894301 != nil)
        self._method_get_tooltip_text_844755477 = StringName(from: "get_tooltip_text")
        assert(self._method_get_tooltip_text_844755477 != nil)
        self._method_set_text_alignment_3276431499 = StringName(from: "set_text_alignment")
        assert(self._method_set_text_alignment_3276431499 != nil)
        self._method_get_text_alignment_4171562184 = StringName(from: "get_text_alignment")
        assert(self._method_get_text_alignment_4171562184 != nil)
        self._method_set_expand_right_300928843 = StringName(from: "set_expand_right")
        assert(self._method_set_expand_right_300928843 != nil)
        self._method_get_expand_right_1116898809 = StringName(from: "get_expand_right")
        assert(self._method_get_expand_right_1116898809 != nil)
        self._method_set_disable_folding_2586408642 = StringName(from: "set_disable_folding")
        assert(self._method_set_disable_folding_2586408642 != nil)
        self._method_is_folding_disabled_36873697 = StringName(from: "is_folding_disabled")
        assert(self._method_is_folding_disabled_36873697 != nil)
        self._method_create_child_954243986 = StringName(from: "create_child")
        assert(self._method_create_child_954243986 != nil)
        self._method_get_tree_2243340556 = StringName(from: "get_tree")
        assert(self._method_get_tree_2243340556 != nil)
        self._method_get_next_1514277247 = StringName(from: "get_next")
        assert(self._method_get_next_1514277247 != nil)
        self._method_get_prev_2768121250 = StringName(from: "get_prev")
        assert(self._method_get_prev_2768121250 != nil)
        self._method_get_parent_1514277247 = StringName(from: "get_parent")
        assert(self._method_get_parent_1514277247 != nil)
        self._method_get_first_child_1514277247 = StringName(from: "get_first_child")
        assert(self._method_get_first_child_1514277247 != nil)
        self._method_get_next_visible_1666920593 = StringName(from: "get_next_visible")
        assert(self._method_get_next_visible_1666920593 != nil)
        self._method_get_prev_visible_1666920593 = StringName(from: "get_prev_visible")
        assert(self._method_get_prev_visible_1666920593 != nil)
        self._method_get_child_306700752 = StringName(from: "get_child")
        assert(self._method_get_child_306700752 != nil)
        self._method_get_child_count_2455072627 = StringName(from: "get_child_count")
        assert(self._method_get_child_count_2455072627 != nil)
        self._method_get_children_2915620761 = StringName(from: "get_children")
        assert(self._method_get_children_2915620761 != nil)
        self._method_get_index_2455072627 = StringName(from: "get_index")
        assert(self._method_get_index_2455072627 != nil)
        self._method_move_before_1819951137 = StringName(from: "move_before")
        assert(self._method_move_before_1819951137 != nil)
        self._method_move_after_1819951137 = StringName(from: "move_after")
        assert(self._method_move_after_1819951137 != nil)
        self._method_remove_child_1819951137 = StringName(from: "remove_child")
        assert(self._method_remove_child_1819951137 != nil)
        self._method_call_recursive_2866548813 = StringName(from: "call_recursive")
        assert(self._method_call_recursive_2866548813 != nil)
    }

    public func set_cell_mode(column: Int64, mode: TreeItem.TreeCellMode)  {
        withUnsafePointer(to: column) { column_native in
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_cell_mode_289920701._native_ptr(),
                    289920701)
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
    public func get_cell_mode(column: Int64) -> TreeItem.TreeCellMode {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_cell_mode_3406114978._native_ptr(),
                    3406114978)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TreeItem.TreeCellMode(godot: __resPtr.pointee)
        }
    }
    public func set_checked(column: Int64, checked: UInt8)  {
        withUnsafePointer(to: checked) { checked_native in
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(checked_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_checked_300928843._native_ptr(),
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
    public func set_indeterminate(column: Int64, indeterminate: UInt8)  {
        withUnsafePointer(to: indeterminate) { indeterminate_native in
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(indeterminate_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_indeterminate_300928843._native_ptr(),
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
    public func is_checked(column: Int64) -> UInt8 {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_checked_1116898809._native_ptr(),
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
    public func is_indeterminate(column: Int64) -> UInt8 {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_indeterminate_1116898809._native_ptr(),
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
    public func propagate_check(column: Int64, emit_signal: UInt8)  {
        withUnsafePointer(to: emit_signal) { emit_signal_native in
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(emit_signal_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_propagate_check_4023243586._native_ptr(),
                    4023243586)
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
    public func set_text(column: Int64, text: godot.String)  {
        withUnsafePointer(to: column) { column_native in
        let text_native = text._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(text_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_text_501894301._native_ptr(),
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
    public func get_text(column: Int64) -> godot.String {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_text_844755477._native_ptr(),
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
    public func set_text_direction(column: Int64, direction: Control.TextDirection)  {
        withUnsafePointer(to: column) { column_native in
        withUnsafePointer(to: direction.rawValue) { direction_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(direction_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_text_direction_1707680378._native_ptr(),
                    1707680378)
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
    public func get_text_direction(column: Int64) -> Control.TextDirection {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_text_direction_4235602388._native_ptr(),
                    4235602388)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Control.TextDirection(godot: __resPtr.pointee)
        }
    }
    public func set_structured_text_bidi_override(column: Int64, parser: TextServer.StructuredTextParser)  {
        withUnsafePointer(to: column) { column_native in
        withUnsafePointer(to: parser.rawValue) { parser_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(parser_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_structured_text_bidi_override_868756907._native_ptr(),
                    868756907)
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
    public func get_structured_text_bidi_override(column: Int64) -> TextServer.StructuredTextParser {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_structured_text_bidi_override_3377823772._native_ptr(),
                    3377823772)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.StructuredTextParser(godot: __resPtr.pointee)
        }
    }
    public func set_structured_text_bidi_override_options(column: Int64, args: Array)  {
        withUnsafePointer(to: column) { column_native in
        let args_native = args._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(args_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_structured_text_bidi_override_options_537221740._native_ptr(),
                    537221740)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_structured_text_bidi_override_options(column: Int64) -> Array {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_structured_text_bidi_override_options_663333327._native_ptr(),
                    663333327)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(godot: __resPtr.pointee)
        }
    }
    public func set_language(column: Int64, language: godot.String)  {
        withUnsafePointer(to: column) { column_native in
        let language_native = language._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(language_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_language_501894301._native_ptr(),
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
    public func get_language(column: Int64) -> godot.String {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_language_844755477._native_ptr(),
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
    public func set_suffix(column: Int64, text: godot.String)  {
        withUnsafePointer(to: column) { column_native in
        let text_native = text._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(text_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_suffix_501894301._native_ptr(),
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
    public func get_suffix(column: Int64) -> godot.String {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_suffix_844755477._native_ptr(),
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
    public func set_icon(column: Int64, texture: Texture2D)  {
        withUnsafePointer(to: column) { column_native in
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(texture_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_icon_666127730._native_ptr(),
                    666127730)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_icon(column: Int64) -> Texture2D {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_icon_3536238170._native_ptr(),
                    3536238170)
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
    public func set_icon_region(column: Int64, region: Rect2)  {
        withUnsafePointer(to: column) { column_native in
        let region_native = region._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(region_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_icon_region_1356297692._native_ptr(),
                    1356297692)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_icon_region(column: Int64) -> Rect2 {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_icon_region_3327874267._native_ptr(),
                    3327874267)
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
    public func set_icon_max_width(column: Int64, width: Int64)  {
        withUnsafePointer(to: width) { width_native in
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(width_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_icon_max_width_3937882851._native_ptr(),
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
    public func get_icon_max_width(column: Int64) -> Int64 {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_icon_max_width_923996154._native_ptr(),
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
    public func set_icon_modulate(column: Int64, modulate: Color)  {
        withUnsafePointer(to: column) { column_native in
        let modulate_native = modulate._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(modulate_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_icon_modulate_2878471219._native_ptr(),
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
    public func get_icon_modulate(column: Int64) -> Color {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_icon_modulate_3457211756._native_ptr(),
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
    public func set_range(column: Int64, value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(value_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_range_1602489585._native_ptr(),
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
    public func get_range(column: Int64) -> Float64 {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_range_2339986948._native_ptr(),
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
    public func set_range_config(column: Int64, min: Float64, max: Float64, step: Float64, expr: UInt8)  {
        withUnsafePointer(to: expr) { expr_native in
        withUnsafePointer(to: step) { step_native in
        withUnsafePointer(to: max) { max_native in
        withUnsafePointer(to: min) { min_native in
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(min_native), .init(max_native), .init(step_native), .init(expr_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_range_config_1547181014._native_ptr(),
                    1547181014)
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
    public func get_range_config(column: Int64) -> Dictionary {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_range_config_3554694381._native_ptr(),
                    3554694381)
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
    public func set_metadata(column: Int64, meta: Variant)  {
        withUnsafePointer(to: column) { column_native in
        let meta_native = meta._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(meta_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_metadata_2152698145._native_ptr(),
                    2152698145)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_metadata(column: Int64) -> Variant {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_metadata_4227898402._native_ptr(),
                    4227898402)
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
    public func set_custom_draw(column: Int64, object: Object, callback: StringName)  {
        withUnsafePointer(to: column) { column_native in
        let callback_native = callback._native_ptr()
        let object_native = object._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(object_native), .init(callback_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_custom_draw_272420368._native_ptr(),
                    272420368)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_collapsed(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_collapsed_2586408642._native_ptr(),
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
    public func is_collapsed() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_collapsed_2240911060._native_ptr(),
                    2240911060)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_collapsed_recursive(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_collapsed_recursive_2586408642._native_ptr(),
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
    public func is_any_collapsed(only_visible: UInt8) -> UInt8 {
        withUnsafePointer(to: only_visible) { only_visible_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(only_visible_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_any_collapsed_2595650253._native_ptr(),
                    2595650253)
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
    public func set_visible(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_visible_2586408642._native_ptr(),
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
    public func is_visible() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_visible_2240911060._native_ptr(),
                    2240911060)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func uncollapse_tree()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_uncollapse_tree_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_custom_minimum_height(height: Int64)  {
        withUnsafePointer(to: height) { height_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(height_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_custom_minimum_height_1286410249._native_ptr(),
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
    public func get_custom_minimum_height() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_custom_minimum_height_3905245786._native_ptr(),
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
    public func set_selectable(column: Int64, selectable: UInt8)  {
        withUnsafePointer(to: selectable) { selectable_native in
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(selectable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_selectable_300928843._native_ptr(),
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
    public func is_selectable(column: Int64) -> UInt8 {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_selectable_1116898809._native_ptr(),
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
    public func is_selected(column: Int64) -> UInt8 {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_selected_3067735520._native_ptr(),
                    3067735520)
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
    public func select(column: Int64)  {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_select_1286410249._native_ptr(),
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
    public func deselect(column: Int64)  {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_deselect_1286410249._native_ptr(),
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
    public func set_editable(column: Int64, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_editable_300928843._native_ptr(),
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
    public func is_editable(column: Int64) -> UInt8 {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_editable_3067735520._native_ptr(),
                    3067735520)
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
    public func set_custom_color(column: Int64, color: Color)  {
        withUnsafePointer(to: column) { column_native in
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(color_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_custom_color_2878471219._native_ptr(),
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
    public func get_custom_color(column: Int64) -> Color {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_custom_color_3457211756._native_ptr(),
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
    public func clear_custom_color(column: Int64)  {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_custom_color_1286410249._native_ptr(),
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
    public func set_custom_font(column: Int64, font: Font)  {
        withUnsafePointer(to: column) { column_native in
        let font_native = font._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(font_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_custom_font_2637609184._native_ptr(),
                    2637609184)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_custom_font(column: Int64) -> Font {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_custom_font_4244553094._native_ptr(),
                    4244553094)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Font(godot: __resPtr.pointee)
        }
    }
    public func set_custom_font_size(column: Int64, font_size: Int64)  {
        withUnsafePointer(to: font_size) { font_size_native in
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(font_size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_custom_font_size_3937882851._native_ptr(),
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
    public func get_custom_font_size(column: Int64) -> Int64 {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_custom_font_size_923996154._native_ptr(),
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
    public func set_custom_bg_color(column: Int64, color: Color, just_outline: UInt8)  {
        withUnsafePointer(to: just_outline) { just_outline_native in
        withUnsafePointer(to: column) { column_native in
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(color_native), .init(just_outline_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_custom_bg_color_894174518._native_ptr(),
                    894174518)
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
    public func clear_custom_bg_color(column: Int64)  {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_custom_bg_color_1286410249._native_ptr(),
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
    public func get_custom_bg_color(column: Int64) -> Color {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_custom_bg_color_3457211756._native_ptr(),
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
    public func set_custom_as_button(column: Int64, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_custom_as_button_300928843._native_ptr(),
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
    public func is_custom_set_as_button(column: Int64) -> UInt8 {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_custom_set_as_button_1116898809._native_ptr(),
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
    public func add_button(column: Int64, button: Texture2D, id: Int64, disabled: UInt8, tooltip_text: godot.String)  {
        withUnsafePointer(to: disabled) { disabled_native in
        withUnsafePointer(to: id) { id_native in
        withUnsafePointer(to: column) { column_native in
        let tooltip_text_native = tooltip_text._native_ptr()
        let button_native = button._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(button_native), .init(id_native), .init(disabled_native), .init(tooltip_text_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_button_1507727907._native_ptr(),
                    1507727907)
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
    public func get_button_count(column: Int64) -> Int64 {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_button_count_923996154._native_ptr(),
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
    public func get_button_tooltip_text(column: Int64, button_index: Int64) -> godot.String {
        withUnsafePointer(to: button_index) { button_index_native in
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(button_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_button_tooltip_text_1391810591._native_ptr(),
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
    public func get_button_id(column: Int64, button_index: Int64) -> Int64 {
        withUnsafePointer(to: button_index) { button_index_native in
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(button_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_button_id_3175239445._native_ptr(),
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
    public func get_button_by_id(column: Int64, id: Int64) -> Int64 {
        withUnsafePointer(to: id) { id_native in
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_button_by_id_3175239445._native_ptr(),
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
    public func get_button(column: Int64, button_index: Int64) -> Texture2D {
        withUnsafePointer(to: button_index) { button_index_native in
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(button_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_button_2584904275._native_ptr(),
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
    public func set_button(column: Int64, button_index: Int64, button: Texture2D)  {
        withUnsafePointer(to: button_index) { button_index_native in
        withUnsafePointer(to: column) { column_native in
        let button_native = button._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(button_index_native), .init(button_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_button_176101966._native_ptr(),
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
    public func erase_button(column: Int64, button_index: Int64)  {
        withUnsafePointer(to: button_index) { button_index_native in
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(button_index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_erase_button_3937882851._native_ptr(),
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
    public func set_button_disabled(column: Int64, button_index: Int64, disabled: UInt8)  {
        withUnsafePointer(to: disabled) { disabled_native in
        withUnsafePointer(to: button_index) { button_index_native in
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(button_index_native), .init(disabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_button_disabled_1383440665._native_ptr(),
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
    public func set_button_color(column: Int64, button_index: Int64, color: Color)  {
        withUnsafePointer(to: button_index) { button_index_native in
        withUnsafePointer(to: column) { column_native in
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(button_index_native), .init(color_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_button_color_3733378741._native_ptr(),
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
    public func is_button_disabled(column: Int64, button_index: Int64) -> UInt8 {
        withUnsafePointer(to: button_index) { button_index_native in
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(button_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_button_disabled_2522259332._native_ptr(),
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
    public func set_tooltip_text(column: Int64, tooltip: godot.String)  {
        withUnsafePointer(to: column) { column_native in
        let tooltip_native = tooltip._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(tooltip_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tooltip_text_501894301._native_ptr(),
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
    public func get_tooltip_text(column: Int64) -> godot.String {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tooltip_text_844755477._native_ptr(),
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
    public func set_text_alignment(column: Int64, text_alignment: HorizontalAlignment)  {
        withUnsafePointer(to: column) { column_native in
        withUnsafePointer(to: text_alignment.rawValue) { text_alignment_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(text_alignment_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_text_alignment_3276431499._native_ptr(),
                    3276431499)
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
    public func get_text_alignment(column: Int64) -> HorizontalAlignment {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_text_alignment_4171562184._native_ptr(),
                    4171562184)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return HorizontalAlignment(godot: __resPtr.pointee)
        }
    }
    public func set_expand_right(column: Int64, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_expand_right_300928843._native_ptr(),
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
    public func get_expand_right(column: Int64) -> UInt8 {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_expand_right_1116898809._native_ptr(),
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
    public func set_disable_folding(disable: UInt8)  {
        withUnsafePointer(to: disable) { disable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(disable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_disable_folding_2586408642._native_ptr(),
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
    public func is_folding_disabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_folding_disabled_36873697._native_ptr(),
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
    public func create_child(index: Int64) -> TreeItem {
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
                    Self._method_create_child_954243986._native_ptr(),
                    954243986)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TreeItem(godot: __resPtr.pointee)
        }
    }
    public func get_tree() -> Tree {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tree_2243340556._native_ptr(),
                    2243340556)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Tree(godot: __resPtr.pointee)
    }
    public func get_next() -> TreeItem {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_next_1514277247._native_ptr(),
                    1514277247)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TreeItem(godot: __resPtr.pointee)
    }
    public func get_prev() -> TreeItem {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_prev_2768121250._native_ptr(),
                    2768121250)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TreeItem(godot: __resPtr.pointee)
    }
    public func get_parent() -> TreeItem {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_parent_1514277247._native_ptr(),
                    1514277247)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TreeItem(godot: __resPtr.pointee)
    }
    public func get_first_child() -> TreeItem {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_first_child_1514277247._native_ptr(),
                    1514277247)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TreeItem(godot: __resPtr.pointee)
    }
    public func get_next_visible(wrap: UInt8) -> TreeItem {
        withUnsafePointer(to: wrap) { wrap_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(wrap_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_next_visible_1666920593._native_ptr(),
                    1666920593)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TreeItem(godot: __resPtr.pointee)
        }
    }
    public func get_prev_visible(wrap: UInt8) -> TreeItem {
        withUnsafePointer(to: wrap) { wrap_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(wrap_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_prev_visible_1666920593._native_ptr(),
                    1666920593)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TreeItem(godot: __resPtr.pointee)
        }
    }
    public func get_child(index: Int64) -> TreeItem {
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
                    Self._method_get_child_306700752._native_ptr(),
                    306700752)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TreeItem(godot: __resPtr.pointee)
        }
    }
    public func get_child_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_child_count_2455072627._native_ptr(),
                    2455072627)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_children() -> [TreeItem] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_children_2915620761._native_ptr(),
                    2915620761)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [TreeItem](godot: __resPtr.pointee)
    }
    public func get_index() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_index_2455072627._native_ptr(),
                    2455072627)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func move_before(item: TreeItem)  {
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_move_before_1819951137._native_ptr(),
                    1819951137)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func move_after(item: TreeItem)  {
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_move_after_1819951137._native_ptr(),
                    1819951137)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_child(child: TreeItem)  {
        let child_native = child._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(child_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_child_1819951137._native_ptr(),
                    1819951137)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func call_recursive(method: StringName)  {
        let method_native = method._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(method_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_call_recursive_2866548813._native_ptr(),
                    2866548813)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}