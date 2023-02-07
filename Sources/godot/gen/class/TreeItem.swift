import godot_native

fileprivate var __godot_name_TreeItem: StringName! = nil

/// Control for a single item inside a [Tree].
/// 
/// Control for a single item inside a [Tree]. May have child [TreeItem]s and be styled as well as contain buttons.
///  
/// You can remove a [TreeItem] by using [method Object.free].
public class TreeItem : Object {

    public enum TreeCellMode : Int32 {
        case CELL_MODE_STRING = 0
        case CELL_MODE_CHECK = 1
        case CELL_MODE_RANGE = 2
        case CELL_MODE_ICON = 3
        case CELL_MODE_CUSTOM = 4
    }

    public override class var __godot_name: StringName { __godot_name_TreeItem }

    static var _method_set_cell_mode_289920701: GDExtensionMethodBindPtr! = nil
    static var _method_get_cell_mode_3406114978: GDExtensionMethodBindPtr! = nil
    static var _method_set_checked_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_set_indeterminate_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_is_checked_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_is_indeterminate_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_propagate_check_4023243586: GDExtensionMethodBindPtr! = nil
    static var _method_set_text_501894301: GDExtensionMethodBindPtr! = nil
    static var _method_get_text_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_set_text_direction_1707680378: GDExtensionMethodBindPtr! = nil
    static var _method_get_text_direction_4235602388: GDExtensionMethodBindPtr! = nil
    static var _method_set_structured_text_bidi_override_868756907: GDExtensionMethodBindPtr! = nil
    static var _method_get_structured_text_bidi_override_3377823772: GDExtensionMethodBindPtr! = nil
    static var _method_set_structured_text_bidi_override_options_537221740: GDExtensionMethodBindPtr! = nil
    static var _method_get_structured_text_bidi_override_options_663333327: GDExtensionMethodBindPtr! = nil
    static var _method_set_language_501894301: GDExtensionMethodBindPtr! = nil
    static var _method_get_language_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_set_suffix_501894301: GDExtensionMethodBindPtr! = nil
    static var _method_get_suffix_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_set_icon_666127730: GDExtensionMethodBindPtr! = nil
    static var _method_get_icon_3536238170: GDExtensionMethodBindPtr! = nil
    static var _method_set_icon_region_1356297692: GDExtensionMethodBindPtr! = nil
    static var _method_get_icon_region_3327874267: GDExtensionMethodBindPtr! = nil
    static var _method_set_icon_max_width_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_get_icon_max_width_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_set_icon_modulate_2878471219: GDExtensionMethodBindPtr! = nil
    static var _method_get_icon_modulate_3457211756: GDExtensionMethodBindPtr! = nil
    static var _method_set_range_1602489585: GDExtensionMethodBindPtr! = nil
    static var _method_get_range_2339986948: GDExtensionMethodBindPtr! = nil
    static var _method_set_range_config_1547181014: GDExtensionMethodBindPtr! = nil
    static var _method_get_range_config_3554694381: GDExtensionMethodBindPtr! = nil
    static var _method_set_metadata_2152698145: GDExtensionMethodBindPtr! = nil
    static var _method_get_metadata_4227898402: GDExtensionMethodBindPtr! = nil
    static var _method_set_custom_draw_272420368: GDExtensionMethodBindPtr! = nil
    static var _method_set_collapsed_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_collapsed_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_set_collapsed_recursive_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_any_collapsed_2595650253: GDExtensionMethodBindPtr! = nil
    static var _method_set_visible_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_visible_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_uncollapse_tree_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_custom_minimum_height_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_custom_minimum_height_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_selectable_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_is_selectable_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_is_selected_3067735520: GDExtensionMethodBindPtr! = nil
    static var _method_select_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_deselect_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_editable_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_is_editable_3067735520: GDExtensionMethodBindPtr! = nil
    static var _method_set_custom_color_2878471219: GDExtensionMethodBindPtr! = nil
    static var _method_get_custom_color_3457211756: GDExtensionMethodBindPtr! = nil
    static var _method_clear_custom_color_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_custom_font_2637609184: GDExtensionMethodBindPtr! = nil
    static var _method_get_custom_font_4244553094: GDExtensionMethodBindPtr! = nil
    static var _method_set_custom_font_size_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_get_custom_font_size_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_set_custom_bg_color_894174518: GDExtensionMethodBindPtr! = nil
    static var _method_clear_custom_bg_color_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_custom_bg_color_3457211756: GDExtensionMethodBindPtr! = nil
    static var _method_set_custom_as_button_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_is_custom_set_as_button_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_add_button_1507727907: GDExtensionMethodBindPtr! = nil
    static var _method_get_button_count_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_get_button_tooltip_text_1391810591: GDExtensionMethodBindPtr! = nil
    static var _method_get_button_id_3175239445: GDExtensionMethodBindPtr! = nil
    static var _method_get_button_by_id_3175239445: GDExtensionMethodBindPtr! = nil
    static var _method_get_button_2584904275: GDExtensionMethodBindPtr! = nil
    static var _method_set_button_176101966: GDExtensionMethodBindPtr! = nil
    static var _method_erase_button_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_set_button_disabled_1383440665: GDExtensionMethodBindPtr! = nil
    static var _method_set_button_color_3733378741: GDExtensionMethodBindPtr! = nil
    static var _method_is_button_disabled_2522259332: GDExtensionMethodBindPtr! = nil
    static var _method_set_tooltip_text_501894301: GDExtensionMethodBindPtr! = nil
    static var _method_get_tooltip_text_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_set_text_alignment_3276431499: GDExtensionMethodBindPtr! = nil
    static var _method_get_text_alignment_4171562184: GDExtensionMethodBindPtr! = nil
    static var _method_set_expand_right_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_get_expand_right_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_disable_folding_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_folding_disabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_create_child_954243986: GDExtensionMethodBindPtr! = nil
    static var _method_get_tree_2243340556: GDExtensionMethodBindPtr! = nil
    static var _method_get_next_1514277247: GDExtensionMethodBindPtr! = nil
    static var _method_get_prev_2768121250: GDExtensionMethodBindPtr! = nil
    static var _method_get_parent_1514277247: GDExtensionMethodBindPtr! = nil
    static var _method_get_first_child_1514277247: GDExtensionMethodBindPtr! = nil
    static var _method_get_next_visible_1666920593: GDExtensionMethodBindPtr! = nil
    static var _method_get_prev_visible_1666920593: GDExtensionMethodBindPtr! = nil
    static var _method_get_child_306700752: GDExtensionMethodBindPtr! = nil
    static var _method_get_child_count_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_get_children_2915620761: GDExtensionMethodBindPtr! = nil
    static var _method_get_index_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_move_before_1819951137: GDExtensionMethodBindPtr! = nil
    static var _method_move_after_1819951137: GDExtensionMethodBindPtr! = nil
    static var _method_remove_child_1819951137: GDExtensionMethodBindPtr! = nil
    static var _method_call_recursive_2866548813: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_TreeItem = StringName(from: "TreeItem")

        let _method_set_cell_mode_289920701_name = StringName(from: "set_cell_mode")
        self._method_set_cell_mode_289920701 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_cell_mode_289920701_name._native_ptr(), 289920701)
        assert(TreeItem._method_set_cell_mode_289920701 != nil)
        let _method_get_cell_mode_3406114978_name = StringName(from: "get_cell_mode")
        self._method_get_cell_mode_3406114978 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_cell_mode_3406114978_name._native_ptr(), 3406114978)
        assert(TreeItem._method_get_cell_mode_3406114978 != nil)
        let _method_set_checked_300928843_name = StringName(from: "set_checked")
        self._method_set_checked_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_checked_300928843_name._native_ptr(), 300928843)
        assert(TreeItem._method_set_checked_300928843 != nil)
        let _method_set_indeterminate_300928843_name = StringName(from: "set_indeterminate")
        self._method_set_indeterminate_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_indeterminate_300928843_name._native_ptr(), 300928843)
        assert(TreeItem._method_set_indeterminate_300928843 != nil)
        let _method_is_checked_1116898809_name = StringName(from: "is_checked")
        self._method_is_checked_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_checked_1116898809_name._native_ptr(), 1116898809)
        assert(TreeItem._method_is_checked_1116898809 != nil)
        let _method_is_indeterminate_1116898809_name = StringName(from: "is_indeterminate")
        self._method_is_indeterminate_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_indeterminate_1116898809_name._native_ptr(), 1116898809)
        assert(TreeItem._method_is_indeterminate_1116898809 != nil)
        let _method_propagate_check_4023243586_name = StringName(from: "propagate_check")
        self._method_propagate_check_4023243586 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_propagate_check_4023243586_name._native_ptr(), 4023243586)
        assert(TreeItem._method_propagate_check_4023243586 != nil)
        let _method_set_text_501894301_name = StringName(from: "set_text")
        self._method_set_text_501894301 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_text_501894301_name._native_ptr(), 501894301)
        assert(TreeItem._method_set_text_501894301 != nil)
        let _method_get_text_844755477_name = StringName(from: "get_text")
        self._method_get_text_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_text_844755477_name._native_ptr(), 844755477)
        assert(TreeItem._method_get_text_844755477 != nil)
        let _method_set_text_direction_1707680378_name = StringName(from: "set_text_direction")
        self._method_set_text_direction_1707680378 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_text_direction_1707680378_name._native_ptr(), 1707680378)
        assert(TreeItem._method_set_text_direction_1707680378 != nil)
        let _method_get_text_direction_4235602388_name = StringName(from: "get_text_direction")
        self._method_get_text_direction_4235602388 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_text_direction_4235602388_name._native_ptr(), 4235602388)
        assert(TreeItem._method_get_text_direction_4235602388 != nil)
        let _method_set_structured_text_bidi_override_868756907_name = StringName(from: "set_structured_text_bidi_override")
        self._method_set_structured_text_bidi_override_868756907 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_structured_text_bidi_override_868756907_name._native_ptr(), 868756907)
        assert(TreeItem._method_set_structured_text_bidi_override_868756907 != nil)
        let _method_get_structured_text_bidi_override_3377823772_name = StringName(from: "get_structured_text_bidi_override")
        self._method_get_structured_text_bidi_override_3377823772 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_structured_text_bidi_override_3377823772_name._native_ptr(), 3377823772)
        assert(TreeItem._method_get_structured_text_bidi_override_3377823772 != nil)
        let _method_set_structured_text_bidi_override_options_537221740_name = StringName(from: "set_structured_text_bidi_override_options")
        self._method_set_structured_text_bidi_override_options_537221740 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_structured_text_bidi_override_options_537221740_name._native_ptr(), 537221740)
        assert(TreeItem._method_set_structured_text_bidi_override_options_537221740 != nil)
        let _method_get_structured_text_bidi_override_options_663333327_name = StringName(from: "get_structured_text_bidi_override_options")
        self._method_get_structured_text_bidi_override_options_663333327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_structured_text_bidi_override_options_663333327_name._native_ptr(), 663333327)
        assert(TreeItem._method_get_structured_text_bidi_override_options_663333327 != nil)
        let _method_set_language_501894301_name = StringName(from: "set_language")
        self._method_set_language_501894301 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_language_501894301_name._native_ptr(), 501894301)
        assert(TreeItem._method_set_language_501894301 != nil)
        let _method_get_language_844755477_name = StringName(from: "get_language")
        self._method_get_language_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_language_844755477_name._native_ptr(), 844755477)
        assert(TreeItem._method_get_language_844755477 != nil)
        let _method_set_suffix_501894301_name = StringName(from: "set_suffix")
        self._method_set_suffix_501894301 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_suffix_501894301_name._native_ptr(), 501894301)
        assert(TreeItem._method_set_suffix_501894301 != nil)
        let _method_get_suffix_844755477_name = StringName(from: "get_suffix")
        self._method_get_suffix_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_suffix_844755477_name._native_ptr(), 844755477)
        assert(TreeItem._method_get_suffix_844755477 != nil)
        let _method_set_icon_666127730_name = StringName(from: "set_icon")
        self._method_set_icon_666127730 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_icon_666127730_name._native_ptr(), 666127730)
        assert(TreeItem._method_set_icon_666127730 != nil)
        let _method_get_icon_3536238170_name = StringName(from: "get_icon")
        self._method_get_icon_3536238170 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_icon_3536238170_name._native_ptr(), 3536238170)
        assert(TreeItem._method_get_icon_3536238170 != nil)
        let _method_set_icon_region_1356297692_name = StringName(from: "set_icon_region")
        self._method_set_icon_region_1356297692 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_icon_region_1356297692_name._native_ptr(), 1356297692)
        assert(TreeItem._method_set_icon_region_1356297692 != nil)
        let _method_get_icon_region_3327874267_name = StringName(from: "get_icon_region")
        self._method_get_icon_region_3327874267 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_icon_region_3327874267_name._native_ptr(), 3327874267)
        assert(TreeItem._method_get_icon_region_3327874267 != nil)
        let _method_set_icon_max_width_3937882851_name = StringName(from: "set_icon_max_width")
        self._method_set_icon_max_width_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_icon_max_width_3937882851_name._native_ptr(), 3937882851)
        assert(TreeItem._method_set_icon_max_width_3937882851 != nil)
        let _method_get_icon_max_width_923996154_name = StringName(from: "get_icon_max_width")
        self._method_get_icon_max_width_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_icon_max_width_923996154_name._native_ptr(), 923996154)
        assert(TreeItem._method_get_icon_max_width_923996154 != nil)
        let _method_set_icon_modulate_2878471219_name = StringName(from: "set_icon_modulate")
        self._method_set_icon_modulate_2878471219 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_icon_modulate_2878471219_name._native_ptr(), 2878471219)
        assert(TreeItem._method_set_icon_modulate_2878471219 != nil)
        let _method_get_icon_modulate_3457211756_name = StringName(from: "get_icon_modulate")
        self._method_get_icon_modulate_3457211756 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_icon_modulate_3457211756_name._native_ptr(), 3457211756)
        assert(TreeItem._method_get_icon_modulate_3457211756 != nil)
        let _method_set_range_1602489585_name = StringName(from: "set_range")
        self._method_set_range_1602489585 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_range_1602489585_name._native_ptr(), 1602489585)
        assert(TreeItem._method_set_range_1602489585 != nil)
        let _method_get_range_2339986948_name = StringName(from: "get_range")
        self._method_get_range_2339986948 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_range_2339986948_name._native_ptr(), 2339986948)
        assert(TreeItem._method_get_range_2339986948 != nil)
        let _method_set_range_config_1547181014_name = StringName(from: "set_range_config")
        self._method_set_range_config_1547181014 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_range_config_1547181014_name._native_ptr(), 1547181014)
        assert(TreeItem._method_set_range_config_1547181014 != nil)
        let _method_get_range_config_3554694381_name = StringName(from: "get_range_config")
        self._method_get_range_config_3554694381 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_range_config_3554694381_name._native_ptr(), 3554694381)
        assert(TreeItem._method_get_range_config_3554694381 != nil)
        let _method_set_metadata_2152698145_name = StringName(from: "set_metadata")
        self._method_set_metadata_2152698145 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_metadata_2152698145_name._native_ptr(), 2152698145)
        assert(TreeItem._method_set_metadata_2152698145 != nil)
        let _method_get_metadata_4227898402_name = StringName(from: "get_metadata")
        self._method_get_metadata_4227898402 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_metadata_4227898402_name._native_ptr(), 4227898402)
        assert(TreeItem._method_get_metadata_4227898402 != nil)
        let _method_set_custom_draw_272420368_name = StringName(from: "set_custom_draw")
        self._method_set_custom_draw_272420368 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_custom_draw_272420368_name._native_ptr(), 272420368)
        assert(TreeItem._method_set_custom_draw_272420368 != nil)
        let _method_set_collapsed_2586408642_name = StringName(from: "set_collapsed")
        self._method_set_collapsed_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collapsed_2586408642_name._native_ptr(), 2586408642)
        assert(TreeItem._method_set_collapsed_2586408642 != nil)
        let _method_is_collapsed_2240911060_name = StringName(from: "is_collapsed")
        self._method_is_collapsed_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_collapsed_2240911060_name._native_ptr(), 2240911060)
        assert(TreeItem._method_is_collapsed_2240911060 != nil)
        let _method_set_collapsed_recursive_2586408642_name = StringName(from: "set_collapsed_recursive")
        self._method_set_collapsed_recursive_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collapsed_recursive_2586408642_name._native_ptr(), 2586408642)
        assert(TreeItem._method_set_collapsed_recursive_2586408642 != nil)
        let _method_is_any_collapsed_2595650253_name = StringName(from: "is_any_collapsed")
        self._method_is_any_collapsed_2595650253 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_any_collapsed_2595650253_name._native_ptr(), 2595650253)
        assert(TreeItem._method_is_any_collapsed_2595650253 != nil)
        let _method_set_visible_2586408642_name = StringName(from: "set_visible")
        self._method_set_visible_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_visible_2586408642_name._native_ptr(), 2586408642)
        assert(TreeItem._method_set_visible_2586408642 != nil)
        let _method_is_visible_2240911060_name = StringName(from: "is_visible")
        self._method_is_visible_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_visible_2240911060_name._native_ptr(), 2240911060)
        assert(TreeItem._method_is_visible_2240911060 != nil)
        let _method_uncollapse_tree_3218959716_name = StringName(from: "uncollapse_tree")
        self._method_uncollapse_tree_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_uncollapse_tree_3218959716_name._native_ptr(), 3218959716)
        assert(TreeItem._method_uncollapse_tree_3218959716 != nil)
        let _method_set_custom_minimum_height_1286410249_name = StringName(from: "set_custom_minimum_height")
        self._method_set_custom_minimum_height_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_custom_minimum_height_1286410249_name._native_ptr(), 1286410249)
        assert(TreeItem._method_set_custom_minimum_height_1286410249 != nil)
        let _method_get_custom_minimum_height_3905245786_name = StringName(from: "get_custom_minimum_height")
        self._method_get_custom_minimum_height_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_custom_minimum_height_3905245786_name._native_ptr(), 3905245786)
        assert(TreeItem._method_get_custom_minimum_height_3905245786 != nil)
        let _method_set_selectable_300928843_name = StringName(from: "set_selectable")
        self._method_set_selectable_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_selectable_300928843_name._native_ptr(), 300928843)
        assert(TreeItem._method_set_selectable_300928843 != nil)
        let _method_is_selectable_1116898809_name = StringName(from: "is_selectable")
        self._method_is_selectable_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_selectable_1116898809_name._native_ptr(), 1116898809)
        assert(TreeItem._method_is_selectable_1116898809 != nil)
        let _method_is_selected_3067735520_name = StringName(from: "is_selected")
        self._method_is_selected_3067735520 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_selected_3067735520_name._native_ptr(), 3067735520)
        assert(TreeItem._method_is_selected_3067735520 != nil)
        let _method_select_1286410249_name = StringName(from: "select")
        self._method_select_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_select_1286410249_name._native_ptr(), 1286410249)
        assert(TreeItem._method_select_1286410249 != nil)
        let _method_deselect_1286410249_name = StringName(from: "deselect")
        self._method_deselect_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_deselect_1286410249_name._native_ptr(), 1286410249)
        assert(TreeItem._method_deselect_1286410249 != nil)
        let _method_set_editable_300928843_name = StringName(from: "set_editable")
        self._method_set_editable_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_editable_300928843_name._native_ptr(), 300928843)
        assert(TreeItem._method_set_editable_300928843 != nil)
        let _method_is_editable_3067735520_name = StringName(from: "is_editable")
        self._method_is_editable_3067735520 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_editable_3067735520_name._native_ptr(), 3067735520)
        assert(TreeItem._method_is_editable_3067735520 != nil)
        let _method_set_custom_color_2878471219_name = StringName(from: "set_custom_color")
        self._method_set_custom_color_2878471219 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_custom_color_2878471219_name._native_ptr(), 2878471219)
        assert(TreeItem._method_set_custom_color_2878471219 != nil)
        let _method_get_custom_color_3457211756_name = StringName(from: "get_custom_color")
        self._method_get_custom_color_3457211756 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_custom_color_3457211756_name._native_ptr(), 3457211756)
        assert(TreeItem._method_get_custom_color_3457211756 != nil)
        let _method_clear_custom_color_1286410249_name = StringName(from: "clear_custom_color")
        self._method_clear_custom_color_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_custom_color_1286410249_name._native_ptr(), 1286410249)
        assert(TreeItem._method_clear_custom_color_1286410249 != nil)
        let _method_set_custom_font_2637609184_name = StringName(from: "set_custom_font")
        self._method_set_custom_font_2637609184 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_custom_font_2637609184_name._native_ptr(), 2637609184)
        assert(TreeItem._method_set_custom_font_2637609184 != nil)
        let _method_get_custom_font_4244553094_name = StringName(from: "get_custom_font")
        self._method_get_custom_font_4244553094 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_custom_font_4244553094_name._native_ptr(), 4244553094)
        assert(TreeItem._method_get_custom_font_4244553094 != nil)
        let _method_set_custom_font_size_3937882851_name = StringName(from: "set_custom_font_size")
        self._method_set_custom_font_size_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_custom_font_size_3937882851_name._native_ptr(), 3937882851)
        assert(TreeItem._method_set_custom_font_size_3937882851 != nil)
        let _method_get_custom_font_size_923996154_name = StringName(from: "get_custom_font_size")
        self._method_get_custom_font_size_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_custom_font_size_923996154_name._native_ptr(), 923996154)
        assert(TreeItem._method_get_custom_font_size_923996154 != nil)
        let _method_set_custom_bg_color_894174518_name = StringName(from: "set_custom_bg_color")
        self._method_set_custom_bg_color_894174518 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_custom_bg_color_894174518_name._native_ptr(), 894174518)
        assert(TreeItem._method_set_custom_bg_color_894174518 != nil)
        let _method_clear_custom_bg_color_1286410249_name = StringName(from: "clear_custom_bg_color")
        self._method_clear_custom_bg_color_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_custom_bg_color_1286410249_name._native_ptr(), 1286410249)
        assert(TreeItem._method_clear_custom_bg_color_1286410249 != nil)
        let _method_get_custom_bg_color_3457211756_name = StringName(from: "get_custom_bg_color")
        self._method_get_custom_bg_color_3457211756 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_custom_bg_color_3457211756_name._native_ptr(), 3457211756)
        assert(TreeItem._method_get_custom_bg_color_3457211756 != nil)
        let _method_set_custom_as_button_300928843_name = StringName(from: "set_custom_as_button")
        self._method_set_custom_as_button_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_custom_as_button_300928843_name._native_ptr(), 300928843)
        assert(TreeItem._method_set_custom_as_button_300928843 != nil)
        let _method_is_custom_set_as_button_1116898809_name = StringName(from: "is_custom_set_as_button")
        self._method_is_custom_set_as_button_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_custom_set_as_button_1116898809_name._native_ptr(), 1116898809)
        assert(TreeItem._method_is_custom_set_as_button_1116898809 != nil)
        let _method_add_button_1507727907_name = StringName(from: "add_button")
        self._method_add_button_1507727907 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_button_1507727907_name._native_ptr(), 1507727907)
        assert(TreeItem._method_add_button_1507727907 != nil)
        let _method_get_button_count_923996154_name = StringName(from: "get_button_count")
        self._method_get_button_count_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_button_count_923996154_name._native_ptr(), 923996154)
        assert(TreeItem._method_get_button_count_923996154 != nil)
        let _method_get_button_tooltip_text_1391810591_name = StringName(from: "get_button_tooltip_text")
        self._method_get_button_tooltip_text_1391810591 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_button_tooltip_text_1391810591_name._native_ptr(), 1391810591)
        assert(TreeItem._method_get_button_tooltip_text_1391810591 != nil)
        let _method_get_button_id_3175239445_name = StringName(from: "get_button_id")
        self._method_get_button_id_3175239445 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_button_id_3175239445_name._native_ptr(), 3175239445)
        assert(TreeItem._method_get_button_id_3175239445 != nil)
        let _method_get_button_by_id_3175239445_name = StringName(from: "get_button_by_id")
        self._method_get_button_by_id_3175239445 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_button_by_id_3175239445_name._native_ptr(), 3175239445)
        assert(TreeItem._method_get_button_by_id_3175239445 != nil)
        let _method_get_button_2584904275_name = StringName(from: "get_button")
        self._method_get_button_2584904275 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_button_2584904275_name._native_ptr(), 2584904275)
        assert(TreeItem._method_get_button_2584904275 != nil)
        let _method_set_button_176101966_name = StringName(from: "set_button")
        self._method_set_button_176101966 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_button_176101966_name._native_ptr(), 176101966)
        assert(TreeItem._method_set_button_176101966 != nil)
        let _method_erase_button_3937882851_name = StringName(from: "erase_button")
        self._method_erase_button_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_erase_button_3937882851_name._native_ptr(), 3937882851)
        assert(TreeItem._method_erase_button_3937882851 != nil)
        let _method_set_button_disabled_1383440665_name = StringName(from: "set_button_disabled")
        self._method_set_button_disabled_1383440665 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_button_disabled_1383440665_name._native_ptr(), 1383440665)
        assert(TreeItem._method_set_button_disabled_1383440665 != nil)
        let _method_set_button_color_3733378741_name = StringName(from: "set_button_color")
        self._method_set_button_color_3733378741 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_button_color_3733378741_name._native_ptr(), 3733378741)
        assert(TreeItem._method_set_button_color_3733378741 != nil)
        let _method_is_button_disabled_2522259332_name = StringName(from: "is_button_disabled")
        self._method_is_button_disabled_2522259332 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_button_disabled_2522259332_name._native_ptr(), 2522259332)
        assert(TreeItem._method_is_button_disabled_2522259332 != nil)
        let _method_set_tooltip_text_501894301_name = StringName(from: "set_tooltip_text")
        self._method_set_tooltip_text_501894301 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tooltip_text_501894301_name._native_ptr(), 501894301)
        assert(TreeItem._method_set_tooltip_text_501894301 != nil)
        let _method_get_tooltip_text_844755477_name = StringName(from: "get_tooltip_text")
        self._method_get_tooltip_text_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tooltip_text_844755477_name._native_ptr(), 844755477)
        assert(TreeItem._method_get_tooltip_text_844755477 != nil)
        let _method_set_text_alignment_3276431499_name = StringName(from: "set_text_alignment")
        self._method_set_text_alignment_3276431499 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_text_alignment_3276431499_name._native_ptr(), 3276431499)
        assert(TreeItem._method_set_text_alignment_3276431499 != nil)
        let _method_get_text_alignment_4171562184_name = StringName(from: "get_text_alignment")
        self._method_get_text_alignment_4171562184 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_text_alignment_4171562184_name._native_ptr(), 4171562184)
        assert(TreeItem._method_get_text_alignment_4171562184 != nil)
        let _method_set_expand_right_300928843_name = StringName(from: "set_expand_right")
        self._method_set_expand_right_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_expand_right_300928843_name._native_ptr(), 300928843)
        assert(TreeItem._method_set_expand_right_300928843 != nil)
        let _method_get_expand_right_1116898809_name = StringName(from: "get_expand_right")
        self._method_get_expand_right_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_expand_right_1116898809_name._native_ptr(), 1116898809)
        assert(TreeItem._method_get_expand_right_1116898809 != nil)
        let _method_set_disable_folding_2586408642_name = StringName(from: "set_disable_folding")
        self._method_set_disable_folding_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_disable_folding_2586408642_name._native_ptr(), 2586408642)
        assert(TreeItem._method_set_disable_folding_2586408642 != nil)
        let _method_is_folding_disabled_36873697_name = StringName(from: "is_folding_disabled")
        self._method_is_folding_disabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_folding_disabled_36873697_name._native_ptr(), 36873697)
        assert(TreeItem._method_is_folding_disabled_36873697 != nil)
        let _method_create_child_954243986_name = StringName(from: "create_child")
        self._method_create_child_954243986 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_child_954243986_name._native_ptr(), 954243986)
        assert(TreeItem._method_create_child_954243986 != nil)
        let _method_get_tree_2243340556_name = StringName(from: "get_tree")
        self._method_get_tree_2243340556 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tree_2243340556_name._native_ptr(), 2243340556)
        assert(TreeItem._method_get_tree_2243340556 != nil)
        let _method_get_next_1514277247_name = StringName(from: "get_next")
        self._method_get_next_1514277247 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_next_1514277247_name._native_ptr(), 1514277247)
        assert(TreeItem._method_get_next_1514277247 != nil)
        let _method_get_prev_2768121250_name = StringName(from: "get_prev")
        self._method_get_prev_2768121250 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_prev_2768121250_name._native_ptr(), 2768121250)
        assert(TreeItem._method_get_prev_2768121250 != nil)
        let _method_get_parent_1514277247_name = StringName(from: "get_parent")
        self._method_get_parent_1514277247 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_parent_1514277247_name._native_ptr(), 1514277247)
        assert(TreeItem._method_get_parent_1514277247 != nil)
        let _method_get_first_child_1514277247_name = StringName(from: "get_first_child")
        self._method_get_first_child_1514277247 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_first_child_1514277247_name._native_ptr(), 1514277247)
        assert(TreeItem._method_get_first_child_1514277247 != nil)
        let _method_get_next_visible_1666920593_name = StringName(from: "get_next_visible")
        self._method_get_next_visible_1666920593 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_next_visible_1666920593_name._native_ptr(), 1666920593)
        assert(TreeItem._method_get_next_visible_1666920593 != nil)
        let _method_get_prev_visible_1666920593_name = StringName(from: "get_prev_visible")
        self._method_get_prev_visible_1666920593 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_prev_visible_1666920593_name._native_ptr(), 1666920593)
        assert(TreeItem._method_get_prev_visible_1666920593 != nil)
        let _method_get_child_306700752_name = StringName(from: "get_child")
        self._method_get_child_306700752 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_child_306700752_name._native_ptr(), 306700752)
        assert(TreeItem._method_get_child_306700752 != nil)
        let _method_get_child_count_2455072627_name = StringName(from: "get_child_count")
        self._method_get_child_count_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_child_count_2455072627_name._native_ptr(), 2455072627)
        assert(TreeItem._method_get_child_count_2455072627 != nil)
        let _method_get_children_2915620761_name = StringName(from: "get_children")
        self._method_get_children_2915620761 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_children_2915620761_name._native_ptr(), 2915620761)
        assert(TreeItem._method_get_children_2915620761 != nil)
        let _method_get_index_2455072627_name = StringName(from: "get_index")
        self._method_get_index_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_index_2455072627_name._native_ptr(), 2455072627)
        assert(TreeItem._method_get_index_2455072627 != nil)
        let _method_move_before_1819951137_name = StringName(from: "move_before")
        self._method_move_before_1819951137 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_move_before_1819951137_name._native_ptr(), 1819951137)
        assert(TreeItem._method_move_before_1819951137 != nil)
        let _method_move_after_1819951137_name = StringName(from: "move_after")
        self._method_move_after_1819951137 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_move_after_1819951137_name._native_ptr(), 1819951137)
        assert(TreeItem._method_move_after_1819951137 != nil)
        let _method_remove_child_1819951137_name = StringName(from: "remove_child")
        self._method_remove_child_1819951137 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_child_1819951137_name._native_ptr(), 1819951137)
        assert(TreeItem._method_remove_child_1819951137 != nil)
        let _method_call_recursive_2866548813_name = StringName(from: "call_recursive")
        self._method_call_recursive_2866548813 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_call_recursive_2866548813_name._native_ptr(), 2866548813)
        assert(TreeItem._method_call_recursive_2866548813 != nil)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cell_mode_289920701,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cell_mode_3406114978,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TreeItem.TreeCellMode(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_checked_300928843,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_indeterminate_300928843,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_checked_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_indeterminate_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_propagate_check_4023243586,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_text(column: Int64, text: String)  {
        withUnsafePointer(to: text) { text_native in
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(text_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_text_501894301,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_text(column: Int64) -> String {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_text_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_text_direction_1707680378,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_text_direction_4235602388,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Control.TextDirection(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_structured_text_bidi_override_868756907,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_structured_text_bidi_override_3377823772,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.StructuredTextParser(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_structured_text_bidi_override_options_537221740,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_structured_text_bidi_override_options_663333327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(from: __resPtr.pointee)
        }
    }
    public func set_language(column: Int64, language: String)  {
        withUnsafePointer(to: language) { language_native in
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(language_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_language_501894301,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_language(column: Int64) -> String {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_language_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
    public func set_suffix(column: Int64, text: String)  {
        withUnsafePointer(to: text) { text_native in
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(text_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_suffix_501894301,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_suffix(column: Int64) -> String {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_suffix_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_icon_666127730,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_icon_3536238170,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_icon_region_1356297692,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_icon_region_3327874267,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_icon_max_width_3937882851,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_icon_max_width_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_icon_modulate_2878471219,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_icon_modulate_3457211756,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_range_1602489585,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_range_2339986948,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_range_config_1547181014,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_range_config_3554694381,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_metadata_2152698145,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_metadata_4227898402,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_custom_draw_272420368,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_collapsed_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_collapsed_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_collapsed_recursive(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_collapsed_recursive_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_any_collapsed_2595650253,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_visible_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_visible_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func uncollapse_tree()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_uncollapse_tree_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_custom_minimum_height_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_custom_minimum_height_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_selectable_300928843,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_selectable_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_selected_3067735520,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_select_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_deselect_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_editable_300928843,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_editable_3067735520,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_custom_color_2878471219,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_custom_color_3457211756,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_custom_color_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_custom_font_2637609184,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_custom_font_4244553094,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Font(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_custom_font_size_3937882851,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_custom_font_size_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_custom_bg_color_894174518,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_custom_bg_color_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_custom_bg_color_3457211756,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_custom_as_button_300928843,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_custom_set_as_button_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func add_button(column: Int64, button: Texture2D, id: Int64, disabled: UInt8, tooltip_text: String)  {
        withUnsafePointer(to: tooltip_text) { tooltip_text_native in
        withUnsafePointer(to: disabled) { disabled_native in
        withUnsafePointer(to: id) { id_native in
        withUnsafePointer(to: column) { column_native in
        let button_native = button._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(button_native), .init(id_native), .init(disabled_native), .init(tooltip_text_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_button_1507727907,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_button_count_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func get_button_tooltip_text(column: Int64, button_index: Int64) -> String {
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_button_tooltip_text_1391810591,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_button_id_3175239445,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_button_by_id_3175239445,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_button_2584904275,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_button_176101966,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_erase_button_3937882851,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_button_disabled_1383440665,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_button_color_3733378741,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_button_disabled_2522259332,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
        }
    }
    public func set_tooltip_text(column: Int64, tooltip: String)  {
        withUnsafePointer(to: tooltip) { tooltip_native in
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(tooltip_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tooltip_text_501894301,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_tooltip_text(column: Int64) -> String {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tooltip_text_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_text_alignment_3276431499,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_text_alignment_4171562184,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return HorizontalAlignment(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_expand_right_300928843,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_expand_right_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_disable_folding_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_folding_disabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_child_954243986,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TreeItem(from: __resPtr.pointee)
        }
    }
    public func get_tree() -> Tree {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tree_2243340556,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Tree(from: __resPtr.pointee)
    }
    public func get_next() -> TreeItem {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_next_1514277247,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TreeItem(from: __resPtr.pointee)
    }
    public func get_prev() -> TreeItem {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_prev_2768121250,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TreeItem(from: __resPtr.pointee)
    }
    public func get_parent() -> TreeItem {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_parent_1514277247,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TreeItem(from: __resPtr.pointee)
    }
    public func get_first_child() -> TreeItem {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_first_child_1514277247,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TreeItem(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_next_visible_1666920593,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TreeItem(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_prev_visible_1666920593,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TreeItem(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_child_306700752,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TreeItem(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_child_count_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_children() -> [TreeItem] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_children_2915620761,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [TreeItem](from: __resPtr.pointee)
    }
    public func get_index() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_index_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func move_before(item: TreeItem)  {
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_move_before_1819951137,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_move_after_1819951137,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_child_1819951137,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_call_recursive_2866548813,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}