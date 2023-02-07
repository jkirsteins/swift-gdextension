import godot_native

fileprivate var __godot_name_ItemList: StringName! = nil

/// Control that provides a list of selectable items (and/or icons) in a single column, or optionally in multiple columns.
/// 
/// This control provides a selectable list of items that may be in a single (or multiple columns) with option of text, icons, or both text and icon. Tooltips are supported and may be different for every item in the list.
///  
/// Selectable items in the list may be selected or deselected and multiple selection may be enabled. Selection with right mouse button may also be enabled to allow use of popup context menus. Items may also be "activated" by double-clicking them or by pressing [kbd]Enter[/kbd].
///  
/// Item text only supports single-line strings, newline characters (e.g. [code]\n[/code]) in the string won't produce a newline. Text wrapping is enabled in [constant ICON_MODE_TOP] mode, but column's width is adjusted to fully fit its content by default. You need to set [member fixed_column_width] greater than zero to wrap the text.
///  
/// All [code]set_*[/code] methods allow negative item index, which makes the item accessed from the last one.
///  
/// [b]Incremental search:[/b] Like [PopupMenu] and [Tree], [ItemList] supports searching within the list while the control is focused. Press a key that matches the first letter of an item's name to select the first item starting with the given letter. After that point, there are two ways to perform incremental search: 1) Press the same key again before the timeout duration to select the next item starting with the same letter. 2) Press letter keys that match the rest of the word before the timeout duration to match to select the item in question directly. Both of these actions will be reset to the beginning of the list if the timeout duration has passed since the last keystroke was registered. You can adjust the timeout duration by changing [member ProjectSettings.gui/timers/incremental_search_max_interval_msec].
public class ItemList : Control {

    public enum IconMode : Int32 {
        case ICON_MODE_TOP = 0
        case ICON_MODE_LEFT = 1
    }
    public enum SelectMode : Int32 {
        case SELECT_SINGLE = 0
        case SELECT_MULTI = 1
    }

    public override class var __godot_name: StringName { __godot_name_ItemList }

    static var _method_add_item_4086250691: GDExtensionMethodBindPtr! = nil
    static var _method_add_icon_item_3332687421: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_text_501894301: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_text_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_icon_666127730: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_icon_3536238170: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_text_direction_1707680378: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_text_direction_4235602388: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_language_501894301: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_language_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_icon_transposed_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_is_item_icon_transposed_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_icon_region_1356297692: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_icon_region_3327874267: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_icon_modulate_2878471219: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_icon_modulate_3457211756: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_selectable_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_is_item_selectable_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_disabled_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_is_item_disabled_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_metadata_2152698145: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_metadata_4227898402: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_custom_bg_color_2878471219: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_custom_bg_color_3457211756: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_custom_fg_color_2878471219: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_custom_fg_color_3457211756: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_tooltip_enabled_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_is_item_tooltip_enabled_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_tooltip_501894301: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_tooltip_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_select_4023243586: GDExtensionMethodBindPtr! = nil
    static var _method_deselect_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_deselect_all_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_is_selected_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_get_selected_items_969006518: GDExtensionMethodBindPtr! = nil
    static var _method_move_item_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_count_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_remove_item_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_clear_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_sort_items_by_text_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_fixed_column_width_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_fixed_column_width_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_same_column_width_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_same_column_width_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_max_text_lines_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_text_lines_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_max_columns_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_columns_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_select_mode_928267388: GDExtensionMethodBindPtr! = nil
    static var _method_get_select_mode_1191945842: GDExtensionMethodBindPtr! = nil
    static var _method_set_icon_mode_2025053633: GDExtensionMethodBindPtr! = nil
    static var _method_get_icon_mode_3353929232: GDExtensionMethodBindPtr! = nil
    static var _method_set_fixed_icon_size_1130785943: GDExtensionMethodBindPtr! = nil
    static var _method_get_fixed_icon_size_3690982128: GDExtensionMethodBindPtr! = nil
    static var _method_set_icon_scale_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_icon_scale_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_allow_rmb_select_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_allow_rmb_select_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_allow_reselect_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_allow_reselect_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_auto_height_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_has_auto_height_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_is_anything_selected_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_at_position_2300324924: GDExtensionMethodBindPtr! = nil
    static var _method_ensure_current_is_visible_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_v_scroll_bar_2630340773: GDExtensionMethodBindPtr! = nil
    static var _method_set_text_overrun_behavior_1008890932: GDExtensionMethodBindPtr! = nil
    static var _method_get_text_overrun_behavior_3779142101: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_ItemList = StringName(from: "ItemList")

        let _method_add_item_4086250691_name = StringName(from: "add_item")
        self._method_add_item_4086250691 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_item_4086250691_name._native_ptr(), 4086250691)
        assert(ItemList._method_add_item_4086250691 != nil)
        let _method_add_icon_item_3332687421_name = StringName(from: "add_icon_item")
        self._method_add_icon_item_3332687421 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_icon_item_3332687421_name._native_ptr(), 3332687421)
        assert(ItemList._method_add_icon_item_3332687421 != nil)
        let _method_set_item_text_501894301_name = StringName(from: "set_item_text")
        self._method_set_item_text_501894301 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_text_501894301_name._native_ptr(), 501894301)
        assert(ItemList._method_set_item_text_501894301 != nil)
        let _method_get_item_text_844755477_name = StringName(from: "get_item_text")
        self._method_get_item_text_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_item_text_844755477_name._native_ptr(), 844755477)
        assert(ItemList._method_get_item_text_844755477 != nil)
        let _method_set_item_icon_666127730_name = StringName(from: "set_item_icon")
        self._method_set_item_icon_666127730 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_icon_666127730_name._native_ptr(), 666127730)
        assert(ItemList._method_set_item_icon_666127730 != nil)
        let _method_get_item_icon_3536238170_name = StringName(from: "get_item_icon")
        self._method_get_item_icon_3536238170 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_item_icon_3536238170_name._native_ptr(), 3536238170)
        assert(ItemList._method_get_item_icon_3536238170 != nil)
        let _method_set_item_text_direction_1707680378_name = StringName(from: "set_item_text_direction")
        self._method_set_item_text_direction_1707680378 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_text_direction_1707680378_name._native_ptr(), 1707680378)
        assert(ItemList._method_set_item_text_direction_1707680378 != nil)
        let _method_get_item_text_direction_4235602388_name = StringName(from: "get_item_text_direction")
        self._method_get_item_text_direction_4235602388 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_item_text_direction_4235602388_name._native_ptr(), 4235602388)
        assert(ItemList._method_get_item_text_direction_4235602388 != nil)
        let _method_set_item_language_501894301_name = StringName(from: "set_item_language")
        self._method_set_item_language_501894301 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_language_501894301_name._native_ptr(), 501894301)
        assert(ItemList._method_set_item_language_501894301 != nil)
        let _method_get_item_language_844755477_name = StringName(from: "get_item_language")
        self._method_get_item_language_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_item_language_844755477_name._native_ptr(), 844755477)
        assert(ItemList._method_get_item_language_844755477 != nil)
        let _method_set_item_icon_transposed_300928843_name = StringName(from: "set_item_icon_transposed")
        self._method_set_item_icon_transposed_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_icon_transposed_300928843_name._native_ptr(), 300928843)
        assert(ItemList._method_set_item_icon_transposed_300928843 != nil)
        let _method_is_item_icon_transposed_1116898809_name = StringName(from: "is_item_icon_transposed")
        self._method_is_item_icon_transposed_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_item_icon_transposed_1116898809_name._native_ptr(), 1116898809)
        assert(ItemList._method_is_item_icon_transposed_1116898809 != nil)
        let _method_set_item_icon_region_1356297692_name = StringName(from: "set_item_icon_region")
        self._method_set_item_icon_region_1356297692 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_icon_region_1356297692_name._native_ptr(), 1356297692)
        assert(ItemList._method_set_item_icon_region_1356297692 != nil)
        let _method_get_item_icon_region_3327874267_name = StringName(from: "get_item_icon_region")
        self._method_get_item_icon_region_3327874267 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_item_icon_region_3327874267_name._native_ptr(), 3327874267)
        assert(ItemList._method_get_item_icon_region_3327874267 != nil)
        let _method_set_item_icon_modulate_2878471219_name = StringName(from: "set_item_icon_modulate")
        self._method_set_item_icon_modulate_2878471219 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_icon_modulate_2878471219_name._native_ptr(), 2878471219)
        assert(ItemList._method_set_item_icon_modulate_2878471219 != nil)
        let _method_get_item_icon_modulate_3457211756_name = StringName(from: "get_item_icon_modulate")
        self._method_get_item_icon_modulate_3457211756 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_item_icon_modulate_3457211756_name._native_ptr(), 3457211756)
        assert(ItemList._method_get_item_icon_modulate_3457211756 != nil)
        let _method_set_item_selectable_300928843_name = StringName(from: "set_item_selectable")
        self._method_set_item_selectable_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_selectable_300928843_name._native_ptr(), 300928843)
        assert(ItemList._method_set_item_selectable_300928843 != nil)
        let _method_is_item_selectable_1116898809_name = StringName(from: "is_item_selectable")
        self._method_is_item_selectable_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_item_selectable_1116898809_name._native_ptr(), 1116898809)
        assert(ItemList._method_is_item_selectable_1116898809 != nil)
        let _method_set_item_disabled_300928843_name = StringName(from: "set_item_disabled")
        self._method_set_item_disabled_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_disabled_300928843_name._native_ptr(), 300928843)
        assert(ItemList._method_set_item_disabled_300928843 != nil)
        let _method_is_item_disabled_1116898809_name = StringName(from: "is_item_disabled")
        self._method_is_item_disabled_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_item_disabled_1116898809_name._native_ptr(), 1116898809)
        assert(ItemList._method_is_item_disabled_1116898809 != nil)
        let _method_set_item_metadata_2152698145_name = StringName(from: "set_item_metadata")
        self._method_set_item_metadata_2152698145 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_metadata_2152698145_name._native_ptr(), 2152698145)
        assert(ItemList._method_set_item_metadata_2152698145 != nil)
        let _method_get_item_metadata_4227898402_name = StringName(from: "get_item_metadata")
        self._method_get_item_metadata_4227898402 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_item_metadata_4227898402_name._native_ptr(), 4227898402)
        assert(ItemList._method_get_item_metadata_4227898402 != nil)
        let _method_set_item_custom_bg_color_2878471219_name = StringName(from: "set_item_custom_bg_color")
        self._method_set_item_custom_bg_color_2878471219 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_custom_bg_color_2878471219_name._native_ptr(), 2878471219)
        assert(ItemList._method_set_item_custom_bg_color_2878471219 != nil)
        let _method_get_item_custom_bg_color_3457211756_name = StringName(from: "get_item_custom_bg_color")
        self._method_get_item_custom_bg_color_3457211756 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_item_custom_bg_color_3457211756_name._native_ptr(), 3457211756)
        assert(ItemList._method_get_item_custom_bg_color_3457211756 != nil)
        let _method_set_item_custom_fg_color_2878471219_name = StringName(from: "set_item_custom_fg_color")
        self._method_set_item_custom_fg_color_2878471219 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_custom_fg_color_2878471219_name._native_ptr(), 2878471219)
        assert(ItemList._method_set_item_custom_fg_color_2878471219 != nil)
        let _method_get_item_custom_fg_color_3457211756_name = StringName(from: "get_item_custom_fg_color")
        self._method_get_item_custom_fg_color_3457211756 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_item_custom_fg_color_3457211756_name._native_ptr(), 3457211756)
        assert(ItemList._method_get_item_custom_fg_color_3457211756 != nil)
        let _method_set_item_tooltip_enabled_300928843_name = StringName(from: "set_item_tooltip_enabled")
        self._method_set_item_tooltip_enabled_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_tooltip_enabled_300928843_name._native_ptr(), 300928843)
        assert(ItemList._method_set_item_tooltip_enabled_300928843 != nil)
        let _method_is_item_tooltip_enabled_1116898809_name = StringName(from: "is_item_tooltip_enabled")
        self._method_is_item_tooltip_enabled_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_item_tooltip_enabled_1116898809_name._native_ptr(), 1116898809)
        assert(ItemList._method_is_item_tooltip_enabled_1116898809 != nil)
        let _method_set_item_tooltip_501894301_name = StringName(from: "set_item_tooltip")
        self._method_set_item_tooltip_501894301 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_tooltip_501894301_name._native_ptr(), 501894301)
        assert(ItemList._method_set_item_tooltip_501894301 != nil)
        let _method_get_item_tooltip_844755477_name = StringName(from: "get_item_tooltip")
        self._method_get_item_tooltip_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_item_tooltip_844755477_name._native_ptr(), 844755477)
        assert(ItemList._method_get_item_tooltip_844755477 != nil)
        let _method_select_4023243586_name = StringName(from: "select")
        self._method_select_4023243586 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_select_4023243586_name._native_ptr(), 4023243586)
        assert(ItemList._method_select_4023243586 != nil)
        let _method_deselect_1286410249_name = StringName(from: "deselect")
        self._method_deselect_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_deselect_1286410249_name._native_ptr(), 1286410249)
        assert(ItemList._method_deselect_1286410249 != nil)
        let _method_deselect_all_3218959716_name = StringName(from: "deselect_all")
        self._method_deselect_all_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_deselect_all_3218959716_name._native_ptr(), 3218959716)
        assert(ItemList._method_deselect_all_3218959716 != nil)
        let _method_is_selected_1116898809_name = StringName(from: "is_selected")
        self._method_is_selected_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_selected_1116898809_name._native_ptr(), 1116898809)
        assert(ItemList._method_is_selected_1116898809 != nil)
        let _method_get_selected_items_969006518_name = StringName(from: "get_selected_items")
        self._method_get_selected_items_969006518 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_selected_items_969006518_name._native_ptr(), 969006518)
        assert(ItemList._method_get_selected_items_969006518 != nil)
        let _method_move_item_3937882851_name = StringName(from: "move_item")
        self._method_move_item_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_move_item_3937882851_name._native_ptr(), 3937882851)
        assert(ItemList._method_move_item_3937882851 != nil)
        let _method_set_item_count_1286410249_name = StringName(from: "set_item_count")
        self._method_set_item_count_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_count_1286410249_name._native_ptr(), 1286410249)
        assert(ItemList._method_set_item_count_1286410249 != nil)
        let _method_get_item_count_3905245786_name = StringName(from: "get_item_count")
        self._method_get_item_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_item_count_3905245786_name._native_ptr(), 3905245786)
        assert(ItemList._method_get_item_count_3905245786 != nil)
        let _method_remove_item_1286410249_name = StringName(from: "remove_item")
        self._method_remove_item_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_item_1286410249_name._native_ptr(), 1286410249)
        assert(ItemList._method_remove_item_1286410249 != nil)
        let _method_clear_3218959716_name = StringName(from: "clear")
        self._method_clear_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_3218959716_name._native_ptr(), 3218959716)
        assert(ItemList._method_clear_3218959716 != nil)
        let _method_sort_items_by_text_3218959716_name = StringName(from: "sort_items_by_text")
        self._method_sort_items_by_text_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_sort_items_by_text_3218959716_name._native_ptr(), 3218959716)
        assert(ItemList._method_sort_items_by_text_3218959716 != nil)
        let _method_set_fixed_column_width_1286410249_name = StringName(from: "set_fixed_column_width")
        self._method_set_fixed_column_width_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_fixed_column_width_1286410249_name._native_ptr(), 1286410249)
        assert(ItemList._method_set_fixed_column_width_1286410249 != nil)
        let _method_get_fixed_column_width_3905245786_name = StringName(from: "get_fixed_column_width")
        self._method_get_fixed_column_width_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_fixed_column_width_3905245786_name._native_ptr(), 3905245786)
        assert(ItemList._method_get_fixed_column_width_3905245786 != nil)
        let _method_set_same_column_width_2586408642_name = StringName(from: "set_same_column_width")
        self._method_set_same_column_width_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_same_column_width_2586408642_name._native_ptr(), 2586408642)
        assert(ItemList._method_set_same_column_width_2586408642 != nil)
        let _method_is_same_column_width_36873697_name = StringName(from: "is_same_column_width")
        self._method_is_same_column_width_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_same_column_width_36873697_name._native_ptr(), 36873697)
        assert(ItemList._method_is_same_column_width_36873697 != nil)
        let _method_set_max_text_lines_1286410249_name = StringName(from: "set_max_text_lines")
        self._method_set_max_text_lines_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_max_text_lines_1286410249_name._native_ptr(), 1286410249)
        assert(ItemList._method_set_max_text_lines_1286410249 != nil)
        let _method_get_max_text_lines_3905245786_name = StringName(from: "get_max_text_lines")
        self._method_get_max_text_lines_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_max_text_lines_3905245786_name._native_ptr(), 3905245786)
        assert(ItemList._method_get_max_text_lines_3905245786 != nil)
        let _method_set_max_columns_1286410249_name = StringName(from: "set_max_columns")
        self._method_set_max_columns_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_max_columns_1286410249_name._native_ptr(), 1286410249)
        assert(ItemList._method_set_max_columns_1286410249 != nil)
        let _method_get_max_columns_3905245786_name = StringName(from: "get_max_columns")
        self._method_get_max_columns_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_max_columns_3905245786_name._native_ptr(), 3905245786)
        assert(ItemList._method_get_max_columns_3905245786 != nil)
        let _method_set_select_mode_928267388_name = StringName(from: "set_select_mode")
        self._method_set_select_mode_928267388 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_select_mode_928267388_name._native_ptr(), 928267388)
        assert(ItemList._method_set_select_mode_928267388 != nil)
        let _method_get_select_mode_1191945842_name = StringName(from: "get_select_mode")
        self._method_get_select_mode_1191945842 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_select_mode_1191945842_name._native_ptr(), 1191945842)
        assert(ItemList._method_get_select_mode_1191945842 != nil)
        let _method_set_icon_mode_2025053633_name = StringName(from: "set_icon_mode")
        self._method_set_icon_mode_2025053633 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_icon_mode_2025053633_name._native_ptr(), 2025053633)
        assert(ItemList._method_set_icon_mode_2025053633 != nil)
        let _method_get_icon_mode_3353929232_name = StringName(from: "get_icon_mode")
        self._method_get_icon_mode_3353929232 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_icon_mode_3353929232_name._native_ptr(), 3353929232)
        assert(ItemList._method_get_icon_mode_3353929232 != nil)
        let _method_set_fixed_icon_size_1130785943_name = StringName(from: "set_fixed_icon_size")
        self._method_set_fixed_icon_size_1130785943 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_fixed_icon_size_1130785943_name._native_ptr(), 1130785943)
        assert(ItemList._method_set_fixed_icon_size_1130785943 != nil)
        let _method_get_fixed_icon_size_3690982128_name = StringName(from: "get_fixed_icon_size")
        self._method_get_fixed_icon_size_3690982128 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_fixed_icon_size_3690982128_name._native_ptr(), 3690982128)
        assert(ItemList._method_get_fixed_icon_size_3690982128 != nil)
        let _method_set_icon_scale_373806689_name = StringName(from: "set_icon_scale")
        self._method_set_icon_scale_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_icon_scale_373806689_name._native_ptr(), 373806689)
        assert(ItemList._method_set_icon_scale_373806689 != nil)
        let _method_get_icon_scale_1740695150_name = StringName(from: "get_icon_scale")
        self._method_get_icon_scale_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_icon_scale_1740695150_name._native_ptr(), 1740695150)
        assert(ItemList._method_get_icon_scale_1740695150 != nil)
        let _method_set_allow_rmb_select_2586408642_name = StringName(from: "set_allow_rmb_select")
        self._method_set_allow_rmb_select_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_allow_rmb_select_2586408642_name._native_ptr(), 2586408642)
        assert(ItemList._method_set_allow_rmb_select_2586408642 != nil)
        let _method_get_allow_rmb_select_36873697_name = StringName(from: "get_allow_rmb_select")
        self._method_get_allow_rmb_select_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_allow_rmb_select_36873697_name._native_ptr(), 36873697)
        assert(ItemList._method_get_allow_rmb_select_36873697 != nil)
        let _method_set_allow_reselect_2586408642_name = StringName(from: "set_allow_reselect")
        self._method_set_allow_reselect_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_allow_reselect_2586408642_name._native_ptr(), 2586408642)
        assert(ItemList._method_set_allow_reselect_2586408642 != nil)
        let _method_get_allow_reselect_36873697_name = StringName(from: "get_allow_reselect")
        self._method_get_allow_reselect_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_allow_reselect_36873697_name._native_ptr(), 36873697)
        assert(ItemList._method_get_allow_reselect_36873697 != nil)
        let _method_set_auto_height_2586408642_name = StringName(from: "set_auto_height")
        self._method_set_auto_height_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_auto_height_2586408642_name._native_ptr(), 2586408642)
        assert(ItemList._method_set_auto_height_2586408642 != nil)
        let _method_has_auto_height_36873697_name = StringName(from: "has_auto_height")
        self._method_has_auto_height_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_auto_height_36873697_name._native_ptr(), 36873697)
        assert(ItemList._method_has_auto_height_36873697 != nil)
        let _method_is_anything_selected_2240911060_name = StringName(from: "is_anything_selected")
        self._method_is_anything_selected_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_anything_selected_2240911060_name._native_ptr(), 2240911060)
        assert(ItemList._method_is_anything_selected_2240911060 != nil)
        let _method_get_item_at_position_2300324924_name = StringName(from: "get_item_at_position")
        self._method_get_item_at_position_2300324924 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_item_at_position_2300324924_name._native_ptr(), 2300324924)
        assert(ItemList._method_get_item_at_position_2300324924 != nil)
        let _method_ensure_current_is_visible_3218959716_name = StringName(from: "ensure_current_is_visible")
        self._method_ensure_current_is_visible_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_ensure_current_is_visible_3218959716_name._native_ptr(), 3218959716)
        assert(ItemList._method_ensure_current_is_visible_3218959716 != nil)
        let _method_get_v_scroll_bar_2630340773_name = StringName(from: "get_v_scroll_bar")
        self._method_get_v_scroll_bar_2630340773 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_v_scroll_bar_2630340773_name._native_ptr(), 2630340773)
        assert(ItemList._method_get_v_scroll_bar_2630340773 != nil)
        let _method_set_text_overrun_behavior_1008890932_name = StringName(from: "set_text_overrun_behavior")
        self._method_set_text_overrun_behavior_1008890932 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_text_overrun_behavior_1008890932_name._native_ptr(), 1008890932)
        assert(ItemList._method_set_text_overrun_behavior_1008890932 != nil)
        let _method_get_text_overrun_behavior_3779142101_name = StringName(from: "get_text_overrun_behavior")
        self._method_get_text_overrun_behavior_3779142101 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_text_overrun_behavior_3779142101_name._native_ptr(), 3779142101)
        assert(ItemList._method_get_text_overrun_behavior_3779142101 != nil)
    }

    public func add_item(text: String, icon: Texture2D, selectable: UInt8) -> Int64 {
        withUnsafePointer(to: selectable) { selectable_native in
        withUnsafePointer(to: text) { text_native in
        let icon_native = icon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(text_native), .init(icon_native), .init(selectable_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_item_4086250691,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
    }
    public func add_icon_item(icon: Texture2D, selectable: UInt8) -> Int64 {
        withUnsafePointer(to: selectable) { selectable_native in
        let icon_native = icon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(icon_native), .init(selectable_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_icon_item_3332687421,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func set_item_text(idx: Int64, text: String)  {
        withUnsafePointer(to: text) { text_native in
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(text_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_text_501894301,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_item_text(idx: Int64) -> String {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_text_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
    public func set_item_icon(idx: Int64, icon: Texture2D)  {
        withUnsafePointer(to: idx) { idx_native in
        let icon_native = icon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(icon_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_icon_666127730,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_item_icon(idx: Int64) -> Texture2D {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_icon_3536238170,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(from: __resPtr.pointee)
        }
    }
    public func set_item_text_direction(idx: Int64, direction: Control.TextDirection)  {
        withUnsafePointer(to: idx) { idx_native in
        withUnsafePointer(to: direction.rawValue) { direction_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(direction_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_text_direction_1707680378,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_item_text_direction(idx: Int64) -> Control.TextDirection {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_text_direction_4235602388,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Control.TextDirection(from: __resPtr.pointee)
        }
    }
    public func set_item_language(idx: Int64, language: String)  {
        withUnsafePointer(to: language) { language_native in
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(language_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_language_501894301,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_item_language(idx: Int64) -> String {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_language_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
    public func set_item_icon_transposed(idx: Int64, transposed: UInt8)  {
        withUnsafePointer(to: transposed) { transposed_native in
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(transposed_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_icon_transposed_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func is_item_icon_transposed(idx: Int64) -> UInt8 {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_item_icon_transposed_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func set_item_icon_region(idx: Int64, rect: Rect2)  {
        withUnsafePointer(to: idx) { idx_native in
        let rect_native = rect._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(rect_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_icon_region_1356297692,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_item_icon_region(idx: Int64) -> Rect2 {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_icon_region_3327874267,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2(from: __resPtr.pointee)
        }
    }
    public func set_item_icon_modulate(idx: Int64, modulate: Color)  {
        withUnsafePointer(to: idx) { idx_native in
        let modulate_native = modulate._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(modulate_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_icon_modulate_2878471219,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_item_icon_modulate(idx: Int64) -> Color {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_icon_modulate_3457211756,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
        }
    }
    public func set_item_selectable(idx: Int64, selectable: UInt8)  {
        withUnsafePointer(to: selectable) { selectable_native in
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(selectable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_selectable_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func is_item_selectable(idx: Int64) -> UInt8 {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_item_selectable_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func set_item_disabled(idx: Int64, disabled: UInt8)  {
        withUnsafePointer(to: disabled) { disabled_native in
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(disabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_disabled_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func is_item_disabled(idx: Int64) -> UInt8 {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_item_disabled_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func set_item_metadata(idx: Int64, metadata: Variant)  {
        withUnsafePointer(to: idx) { idx_native in
        let metadata_native = metadata._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(metadata_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_metadata_2152698145,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_item_metadata(idx: Int64) -> Variant {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_metadata_4227898402,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
        }
    }
    public func set_item_custom_bg_color(idx: Int64, custom_bg_color: Color)  {
        withUnsafePointer(to: idx) { idx_native in
        let custom_bg_color_native = custom_bg_color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(custom_bg_color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_custom_bg_color_2878471219,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_item_custom_bg_color(idx: Int64) -> Color {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_custom_bg_color_3457211756,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
        }
    }
    public func set_item_custom_fg_color(idx: Int64, custom_fg_color: Color)  {
        withUnsafePointer(to: idx) { idx_native in
        let custom_fg_color_native = custom_fg_color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(custom_fg_color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_custom_fg_color_2878471219,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_item_custom_fg_color(idx: Int64) -> Color {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_custom_fg_color_3457211756,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
        }
    }
    public func set_item_tooltip_enabled(idx: Int64, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_tooltip_enabled_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func is_item_tooltip_enabled(idx: Int64) -> UInt8 {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_item_tooltip_enabled_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func set_item_tooltip(idx: Int64, tooltip: String)  {
        withUnsafePointer(to: tooltip) { tooltip_native in
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(tooltip_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_tooltip_501894301,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_item_tooltip(idx: Int64) -> String {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_tooltip_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
    public func select(idx: Int64, single: UInt8)  {
        withUnsafePointer(to: single) { single_native in
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(single_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_select_4023243586,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func deselect(idx: Int64)  {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
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
    public func deselect_all()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_deselect_all_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func is_selected(idx: Int64) -> UInt8 {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_selected_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func get_selected_items() -> PackedInt32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_selected_items_969006518,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(from: __resPtr.pointee)
    }
    public func move_item(from_idx: Int64, to_idx: Int64)  {
        withUnsafePointer(to: to_idx) { to_idx_native in
        withUnsafePointer(to: from_idx) { from_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_idx_native), .init(to_idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_move_item_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_item_count(count: Int64)  {
        withUnsafePointer(to: count) { count_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(count_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_count_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_item_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func remove_item(idx: Int64)  {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_item_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
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
    public func sort_items_by_text()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_sort_items_by_text_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_fixed_column_width(width: Int64)  {
        withUnsafePointer(to: width) { width_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(width_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fixed_column_width_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_fixed_column_width() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_fixed_column_width_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_same_column_width(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_same_column_width_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_same_column_width() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_same_column_width_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_max_text_lines(lines: Int64)  {
        withUnsafePointer(to: lines) { lines_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(lines_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_max_text_lines_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_max_text_lines() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_max_text_lines_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_max_columns(amount: Int64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_max_columns_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_max_columns() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_max_columns_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_select_mode(mode: ItemList.SelectMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_select_mode_928267388,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_select_mode() -> ItemList.SelectMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_select_mode_1191945842,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ItemList.SelectMode(from: __resPtr.pointee)
    }
    public func set_icon_mode(mode: ItemList.IconMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_icon_mode_2025053633,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_icon_mode() -> ItemList.IconMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_icon_mode_3353929232,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ItemList.IconMode(from: __resPtr.pointee)
    }
    public func set_fixed_icon_size(size: Vector2i)  {
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fixed_icon_size_1130785943,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_fixed_icon_size() -> Vector2i {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_fixed_icon_size_3690982128,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(from: __resPtr.pointee)
    }
    public func set_icon_scale(scale: Float64)  {
        withUnsafePointer(to: scale) { scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_icon_scale_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_icon_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_icon_scale_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_allow_rmb_select(allow: UInt8)  {
        withUnsafePointer(to: allow) { allow_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(allow_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_allow_rmb_select_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_allow_rmb_select() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_allow_rmb_select_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_allow_reselect(allow: UInt8)  {
        withUnsafePointer(to: allow) { allow_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(allow_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_allow_reselect_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_allow_reselect() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_allow_reselect_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_auto_height(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_auto_height_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func has_auto_height() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_auto_height_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func is_anything_selected() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_anything_selected_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_item_at_position(position: Vector2, exact: UInt8) -> Int64 {
        withUnsafePointer(to: exact) { exact_native in
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native), .init(exact_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_at_position_2300324924,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func ensure_current_is_visible()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_ensure_current_is_visible_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
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
    public func set_text_overrun_behavior(overrun_behavior: TextServer.OverrunBehavior)  {
        withUnsafePointer(to: overrun_behavior.rawValue) { overrun_behavior_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(overrun_behavior_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_text_overrun_behavior_1008890932,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_text_overrun_behavior() -> TextServer.OverrunBehavior {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_text_overrun_behavior_3779142101,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.OverrunBehavior(from: __resPtr.pointee)
    }
}