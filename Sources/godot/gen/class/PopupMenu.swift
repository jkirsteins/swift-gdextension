import godot_native

fileprivate var __godot_name_PopupMenu: StringName! = nil

/// PopupMenu displays a list of options.
/// 
/// [PopupMenu] is a modal window used to display a list of options. They are popular in toolbars or context menus.
///  
/// The size of a [PopupMenu] can be limited by using [member Window.max_size]. If the height of the list of items is larger than the maximum height of the [PopupMenu], a [ScrollContainer] within the popup will allow the user to scroll the contents.
///  
/// If no maximum size is set, or if it is set to 0, the [PopupMenu] height will be limited by its parent rect.
///  
/// All [code]set_*[/code] methods allow negative item index, which makes the item accessed from the last one.
///  
/// [b]Incremental search:[/b] Like [ItemList] and [Tree], [PopupMenu] supports searching within the list while the control is focused. Press a key that matches the first letter of an item's name to select the first item starting with the given letter. After that point, there are two ways to perform incremental search: 1) Press the same key again before the timeout duration to select the next item starting with the same letter. 2) Press letter keys that match the rest of the word before the timeout duration to match to select the item in question directly. Both of these actions will be reset to the beginning of the list if the timeout duration has passed since the last keystroke was registered. You can adjust the timeout duration by changing [member ProjectSettings.gui/timers/incremental_search_max_interval_msec].
public class PopupMenu : Popup {

    

    public override class var __godot_name: StringName { __godot_name_PopupMenu }

    static var _method_add_item_3224536192: GDExtensionMethodBindPtr! = nil
    static var _method_add_icon_item_1200674553: GDExtensionMethodBindPtr! = nil
    static var _method_add_check_item_3224536192: GDExtensionMethodBindPtr! = nil
    static var _method_add_icon_check_item_1200674553: GDExtensionMethodBindPtr! = nil
    static var _method_add_radio_check_item_3224536192: GDExtensionMethodBindPtr! = nil
    static var _method_add_icon_radio_check_item_1200674553: GDExtensionMethodBindPtr! = nil
    static var _method_add_multistate_item_1585218420: GDExtensionMethodBindPtr! = nil
    static var _method_add_shortcut_2168272394: GDExtensionMethodBindPtr! = nil
    static var _method_add_icon_shortcut_68101841: GDExtensionMethodBindPtr! = nil
    static var _method_add_check_shortcut_2168272394: GDExtensionMethodBindPtr! = nil
    static var _method_add_icon_check_shortcut_68101841: GDExtensionMethodBindPtr! = nil
    static var _method_add_radio_check_shortcut_2168272394: GDExtensionMethodBindPtr! = nil
    static var _method_add_icon_radio_check_shortcut_68101841: GDExtensionMethodBindPtr! = nil
    static var _method_add_submenu_item_3728518296: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_text_501894301: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_text_direction_1707680378: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_language_501894301: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_icon_666127730: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_checked_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_id_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_accelerator_2992817551: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_metadata_2152698145: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_disabled_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_submenu_501894301: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_as_separator_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_as_checkable_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_as_radio_checkable_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_tooltip_501894301: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_shortcut_825127832: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_indent_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_multistate_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_shortcut_disabled_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_toggle_item_checked_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_toggle_item_multistate_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_text_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_text_direction_4235602388: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_language_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_icon_3536238170: GDExtensionMethodBindPtr! = nil
    static var _method_is_item_checked_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_id_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_index_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_accelerator_253789942: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_metadata_4227898402: GDExtensionMethodBindPtr! = nil
    static var _method_is_item_disabled_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_submenu_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_is_item_separator_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_is_item_checkable_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_is_item_radio_checkable_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_is_item_shortcut_disabled_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_tooltip_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_shortcut_1449483325: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_indent_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_set_focused_item_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_focused_item_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_count_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_scroll_to_item_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_remove_item_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_add_separator_2266703459: GDExtensionMethodBindPtr! = nil
    static var _method_clear_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_hide_on_item_selection_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_hide_on_item_selection_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_hide_on_checkable_item_selection_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_hide_on_checkable_item_selection_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_hide_on_state_item_selection_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_hide_on_state_item_selection_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_submenu_popup_delay_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_submenu_popup_delay_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_allow_search_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_allow_search_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_PopupMenu = StringName(from: "PopupMenu")

        let _method_add_item_3224536192_name = StringName(from: "add_item")
        self._method_add_item_3224536192 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_item_3224536192_name._native_ptr(), 3224536192)
        assert(PopupMenu._method_add_item_3224536192 != nil)
        let _method_add_icon_item_1200674553_name = StringName(from: "add_icon_item")
        self._method_add_icon_item_1200674553 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_icon_item_1200674553_name._native_ptr(), 1200674553)
        assert(PopupMenu._method_add_icon_item_1200674553 != nil)
        let _method_add_check_item_3224536192_name = StringName(from: "add_check_item")
        self._method_add_check_item_3224536192 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_check_item_3224536192_name._native_ptr(), 3224536192)
        assert(PopupMenu._method_add_check_item_3224536192 != nil)
        let _method_add_icon_check_item_1200674553_name = StringName(from: "add_icon_check_item")
        self._method_add_icon_check_item_1200674553 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_icon_check_item_1200674553_name._native_ptr(), 1200674553)
        assert(PopupMenu._method_add_icon_check_item_1200674553 != nil)
        let _method_add_radio_check_item_3224536192_name = StringName(from: "add_radio_check_item")
        self._method_add_radio_check_item_3224536192 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_radio_check_item_3224536192_name._native_ptr(), 3224536192)
        assert(PopupMenu._method_add_radio_check_item_3224536192 != nil)
        let _method_add_icon_radio_check_item_1200674553_name = StringName(from: "add_icon_radio_check_item")
        self._method_add_icon_radio_check_item_1200674553 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_icon_radio_check_item_1200674553_name._native_ptr(), 1200674553)
        assert(PopupMenu._method_add_icon_radio_check_item_1200674553 != nil)
        let _method_add_multistate_item_1585218420_name = StringName(from: "add_multistate_item")
        self._method_add_multistate_item_1585218420 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_multistate_item_1585218420_name._native_ptr(), 1585218420)
        assert(PopupMenu._method_add_multistate_item_1585218420 != nil)
        let _method_add_shortcut_2168272394_name = StringName(from: "add_shortcut")
        self._method_add_shortcut_2168272394 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_shortcut_2168272394_name._native_ptr(), 2168272394)
        assert(PopupMenu._method_add_shortcut_2168272394 != nil)
        let _method_add_icon_shortcut_68101841_name = StringName(from: "add_icon_shortcut")
        self._method_add_icon_shortcut_68101841 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_icon_shortcut_68101841_name._native_ptr(), 68101841)
        assert(PopupMenu._method_add_icon_shortcut_68101841 != nil)
        let _method_add_check_shortcut_2168272394_name = StringName(from: "add_check_shortcut")
        self._method_add_check_shortcut_2168272394 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_check_shortcut_2168272394_name._native_ptr(), 2168272394)
        assert(PopupMenu._method_add_check_shortcut_2168272394 != nil)
        let _method_add_icon_check_shortcut_68101841_name = StringName(from: "add_icon_check_shortcut")
        self._method_add_icon_check_shortcut_68101841 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_icon_check_shortcut_68101841_name._native_ptr(), 68101841)
        assert(PopupMenu._method_add_icon_check_shortcut_68101841 != nil)
        let _method_add_radio_check_shortcut_2168272394_name = StringName(from: "add_radio_check_shortcut")
        self._method_add_radio_check_shortcut_2168272394 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_radio_check_shortcut_2168272394_name._native_ptr(), 2168272394)
        assert(PopupMenu._method_add_radio_check_shortcut_2168272394 != nil)
        let _method_add_icon_radio_check_shortcut_68101841_name = StringName(from: "add_icon_radio_check_shortcut")
        self._method_add_icon_radio_check_shortcut_68101841 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_icon_radio_check_shortcut_68101841_name._native_ptr(), 68101841)
        assert(PopupMenu._method_add_icon_radio_check_shortcut_68101841 != nil)
        let _method_add_submenu_item_3728518296_name = StringName(from: "add_submenu_item")
        self._method_add_submenu_item_3728518296 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_submenu_item_3728518296_name._native_ptr(), 3728518296)
        assert(PopupMenu._method_add_submenu_item_3728518296 != nil)
        let _method_set_item_text_501894301_name = StringName(from: "set_item_text")
        self._method_set_item_text_501894301 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_text_501894301_name._native_ptr(), 501894301)
        assert(PopupMenu._method_set_item_text_501894301 != nil)
        let _method_set_item_text_direction_1707680378_name = StringName(from: "set_item_text_direction")
        self._method_set_item_text_direction_1707680378 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_text_direction_1707680378_name._native_ptr(), 1707680378)
        assert(PopupMenu._method_set_item_text_direction_1707680378 != nil)
        let _method_set_item_language_501894301_name = StringName(from: "set_item_language")
        self._method_set_item_language_501894301 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_language_501894301_name._native_ptr(), 501894301)
        assert(PopupMenu._method_set_item_language_501894301 != nil)
        let _method_set_item_icon_666127730_name = StringName(from: "set_item_icon")
        self._method_set_item_icon_666127730 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_icon_666127730_name._native_ptr(), 666127730)
        assert(PopupMenu._method_set_item_icon_666127730 != nil)
        let _method_set_item_checked_300928843_name = StringName(from: "set_item_checked")
        self._method_set_item_checked_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_checked_300928843_name._native_ptr(), 300928843)
        assert(PopupMenu._method_set_item_checked_300928843 != nil)
        let _method_set_item_id_3937882851_name = StringName(from: "set_item_id")
        self._method_set_item_id_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_id_3937882851_name._native_ptr(), 3937882851)
        assert(PopupMenu._method_set_item_id_3937882851 != nil)
        let _method_set_item_accelerator_2992817551_name = StringName(from: "set_item_accelerator")
        self._method_set_item_accelerator_2992817551 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_accelerator_2992817551_name._native_ptr(), 2992817551)
        assert(PopupMenu._method_set_item_accelerator_2992817551 != nil)
        let _method_set_item_metadata_2152698145_name = StringName(from: "set_item_metadata")
        self._method_set_item_metadata_2152698145 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_metadata_2152698145_name._native_ptr(), 2152698145)
        assert(PopupMenu._method_set_item_metadata_2152698145 != nil)
        let _method_set_item_disabled_300928843_name = StringName(from: "set_item_disabled")
        self._method_set_item_disabled_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_disabled_300928843_name._native_ptr(), 300928843)
        assert(PopupMenu._method_set_item_disabled_300928843 != nil)
        let _method_set_item_submenu_501894301_name = StringName(from: "set_item_submenu")
        self._method_set_item_submenu_501894301 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_submenu_501894301_name._native_ptr(), 501894301)
        assert(PopupMenu._method_set_item_submenu_501894301 != nil)
        let _method_set_item_as_separator_300928843_name = StringName(from: "set_item_as_separator")
        self._method_set_item_as_separator_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_as_separator_300928843_name._native_ptr(), 300928843)
        assert(PopupMenu._method_set_item_as_separator_300928843 != nil)
        let _method_set_item_as_checkable_300928843_name = StringName(from: "set_item_as_checkable")
        self._method_set_item_as_checkable_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_as_checkable_300928843_name._native_ptr(), 300928843)
        assert(PopupMenu._method_set_item_as_checkable_300928843 != nil)
        let _method_set_item_as_radio_checkable_300928843_name = StringName(from: "set_item_as_radio_checkable")
        self._method_set_item_as_radio_checkable_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_as_radio_checkable_300928843_name._native_ptr(), 300928843)
        assert(PopupMenu._method_set_item_as_radio_checkable_300928843 != nil)
        let _method_set_item_tooltip_501894301_name = StringName(from: "set_item_tooltip")
        self._method_set_item_tooltip_501894301 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_tooltip_501894301_name._native_ptr(), 501894301)
        assert(PopupMenu._method_set_item_tooltip_501894301 != nil)
        let _method_set_item_shortcut_825127832_name = StringName(from: "set_item_shortcut")
        self._method_set_item_shortcut_825127832 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_shortcut_825127832_name._native_ptr(), 825127832)
        assert(PopupMenu._method_set_item_shortcut_825127832 != nil)
        let _method_set_item_indent_3937882851_name = StringName(from: "set_item_indent")
        self._method_set_item_indent_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_indent_3937882851_name._native_ptr(), 3937882851)
        assert(PopupMenu._method_set_item_indent_3937882851 != nil)
        let _method_set_item_multistate_3937882851_name = StringName(from: "set_item_multistate")
        self._method_set_item_multistate_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_multistate_3937882851_name._native_ptr(), 3937882851)
        assert(PopupMenu._method_set_item_multistate_3937882851 != nil)
        let _method_set_item_shortcut_disabled_300928843_name = StringName(from: "set_item_shortcut_disabled")
        self._method_set_item_shortcut_disabled_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_shortcut_disabled_300928843_name._native_ptr(), 300928843)
        assert(PopupMenu._method_set_item_shortcut_disabled_300928843 != nil)
        let _method_toggle_item_checked_1286410249_name = StringName(from: "toggle_item_checked")
        self._method_toggle_item_checked_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_toggle_item_checked_1286410249_name._native_ptr(), 1286410249)
        assert(PopupMenu._method_toggle_item_checked_1286410249 != nil)
        let _method_toggle_item_multistate_1286410249_name = StringName(from: "toggle_item_multistate")
        self._method_toggle_item_multistate_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_toggle_item_multistate_1286410249_name._native_ptr(), 1286410249)
        assert(PopupMenu._method_toggle_item_multistate_1286410249 != nil)
        let _method_get_item_text_844755477_name = StringName(from: "get_item_text")
        self._method_get_item_text_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_item_text_844755477_name._native_ptr(), 844755477)
        assert(PopupMenu._method_get_item_text_844755477 != nil)
        let _method_get_item_text_direction_4235602388_name = StringName(from: "get_item_text_direction")
        self._method_get_item_text_direction_4235602388 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_item_text_direction_4235602388_name._native_ptr(), 4235602388)
        assert(PopupMenu._method_get_item_text_direction_4235602388 != nil)
        let _method_get_item_language_844755477_name = StringName(from: "get_item_language")
        self._method_get_item_language_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_item_language_844755477_name._native_ptr(), 844755477)
        assert(PopupMenu._method_get_item_language_844755477 != nil)
        let _method_get_item_icon_3536238170_name = StringName(from: "get_item_icon")
        self._method_get_item_icon_3536238170 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_item_icon_3536238170_name._native_ptr(), 3536238170)
        assert(PopupMenu._method_get_item_icon_3536238170 != nil)
        let _method_is_item_checked_1116898809_name = StringName(from: "is_item_checked")
        self._method_is_item_checked_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_item_checked_1116898809_name._native_ptr(), 1116898809)
        assert(PopupMenu._method_is_item_checked_1116898809 != nil)
        let _method_get_item_id_923996154_name = StringName(from: "get_item_id")
        self._method_get_item_id_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_item_id_923996154_name._native_ptr(), 923996154)
        assert(PopupMenu._method_get_item_id_923996154 != nil)
        let _method_get_item_index_923996154_name = StringName(from: "get_item_index")
        self._method_get_item_index_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_item_index_923996154_name._native_ptr(), 923996154)
        assert(PopupMenu._method_get_item_index_923996154 != nil)
        let _method_get_item_accelerator_253789942_name = StringName(from: "get_item_accelerator")
        self._method_get_item_accelerator_253789942 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_item_accelerator_253789942_name._native_ptr(), 253789942)
        assert(PopupMenu._method_get_item_accelerator_253789942 != nil)
        let _method_get_item_metadata_4227898402_name = StringName(from: "get_item_metadata")
        self._method_get_item_metadata_4227898402 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_item_metadata_4227898402_name._native_ptr(), 4227898402)
        assert(PopupMenu._method_get_item_metadata_4227898402 != nil)
        let _method_is_item_disabled_1116898809_name = StringName(from: "is_item_disabled")
        self._method_is_item_disabled_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_item_disabled_1116898809_name._native_ptr(), 1116898809)
        assert(PopupMenu._method_is_item_disabled_1116898809 != nil)
        let _method_get_item_submenu_844755477_name = StringName(from: "get_item_submenu")
        self._method_get_item_submenu_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_item_submenu_844755477_name._native_ptr(), 844755477)
        assert(PopupMenu._method_get_item_submenu_844755477 != nil)
        let _method_is_item_separator_1116898809_name = StringName(from: "is_item_separator")
        self._method_is_item_separator_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_item_separator_1116898809_name._native_ptr(), 1116898809)
        assert(PopupMenu._method_is_item_separator_1116898809 != nil)
        let _method_is_item_checkable_1116898809_name = StringName(from: "is_item_checkable")
        self._method_is_item_checkable_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_item_checkable_1116898809_name._native_ptr(), 1116898809)
        assert(PopupMenu._method_is_item_checkable_1116898809 != nil)
        let _method_is_item_radio_checkable_1116898809_name = StringName(from: "is_item_radio_checkable")
        self._method_is_item_radio_checkable_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_item_radio_checkable_1116898809_name._native_ptr(), 1116898809)
        assert(PopupMenu._method_is_item_radio_checkable_1116898809 != nil)
        let _method_is_item_shortcut_disabled_1116898809_name = StringName(from: "is_item_shortcut_disabled")
        self._method_is_item_shortcut_disabled_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_item_shortcut_disabled_1116898809_name._native_ptr(), 1116898809)
        assert(PopupMenu._method_is_item_shortcut_disabled_1116898809 != nil)
        let _method_get_item_tooltip_844755477_name = StringName(from: "get_item_tooltip")
        self._method_get_item_tooltip_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_item_tooltip_844755477_name._native_ptr(), 844755477)
        assert(PopupMenu._method_get_item_tooltip_844755477 != nil)
        let _method_get_item_shortcut_1449483325_name = StringName(from: "get_item_shortcut")
        self._method_get_item_shortcut_1449483325 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_item_shortcut_1449483325_name._native_ptr(), 1449483325)
        assert(PopupMenu._method_get_item_shortcut_1449483325 != nil)
        let _method_get_item_indent_923996154_name = StringName(from: "get_item_indent")
        self._method_get_item_indent_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_item_indent_923996154_name._native_ptr(), 923996154)
        assert(PopupMenu._method_get_item_indent_923996154 != nil)
        let _method_set_focused_item_1286410249_name = StringName(from: "set_focused_item")
        self._method_set_focused_item_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_focused_item_1286410249_name._native_ptr(), 1286410249)
        assert(PopupMenu._method_set_focused_item_1286410249 != nil)
        let _method_get_focused_item_3905245786_name = StringName(from: "get_focused_item")
        self._method_get_focused_item_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_focused_item_3905245786_name._native_ptr(), 3905245786)
        assert(PopupMenu._method_get_focused_item_3905245786 != nil)
        let _method_set_item_count_1286410249_name = StringName(from: "set_item_count")
        self._method_set_item_count_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_count_1286410249_name._native_ptr(), 1286410249)
        assert(PopupMenu._method_set_item_count_1286410249 != nil)
        let _method_get_item_count_3905245786_name = StringName(from: "get_item_count")
        self._method_get_item_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_item_count_3905245786_name._native_ptr(), 3905245786)
        assert(PopupMenu._method_get_item_count_3905245786 != nil)
        let _method_scroll_to_item_1286410249_name = StringName(from: "scroll_to_item")
        self._method_scroll_to_item_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_scroll_to_item_1286410249_name._native_ptr(), 1286410249)
        assert(PopupMenu._method_scroll_to_item_1286410249 != nil)
        let _method_remove_item_1286410249_name = StringName(from: "remove_item")
        self._method_remove_item_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_item_1286410249_name._native_ptr(), 1286410249)
        assert(PopupMenu._method_remove_item_1286410249 != nil)
        let _method_add_separator_2266703459_name = StringName(from: "add_separator")
        self._method_add_separator_2266703459 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_separator_2266703459_name._native_ptr(), 2266703459)
        assert(PopupMenu._method_add_separator_2266703459 != nil)
        let _method_clear_3218959716_name = StringName(from: "clear")
        self._method_clear_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_3218959716_name._native_ptr(), 3218959716)
        assert(PopupMenu._method_clear_3218959716 != nil)
        let _method_set_hide_on_item_selection_2586408642_name = StringName(from: "set_hide_on_item_selection")
        self._method_set_hide_on_item_selection_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_hide_on_item_selection_2586408642_name._native_ptr(), 2586408642)
        assert(PopupMenu._method_set_hide_on_item_selection_2586408642 != nil)
        let _method_is_hide_on_item_selection_36873697_name = StringName(from: "is_hide_on_item_selection")
        self._method_is_hide_on_item_selection_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_hide_on_item_selection_36873697_name._native_ptr(), 36873697)
        assert(PopupMenu._method_is_hide_on_item_selection_36873697 != nil)
        let _method_set_hide_on_checkable_item_selection_2586408642_name = StringName(from: "set_hide_on_checkable_item_selection")
        self._method_set_hide_on_checkable_item_selection_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_hide_on_checkable_item_selection_2586408642_name._native_ptr(), 2586408642)
        assert(PopupMenu._method_set_hide_on_checkable_item_selection_2586408642 != nil)
        let _method_is_hide_on_checkable_item_selection_36873697_name = StringName(from: "is_hide_on_checkable_item_selection")
        self._method_is_hide_on_checkable_item_selection_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_hide_on_checkable_item_selection_36873697_name._native_ptr(), 36873697)
        assert(PopupMenu._method_is_hide_on_checkable_item_selection_36873697 != nil)
        let _method_set_hide_on_state_item_selection_2586408642_name = StringName(from: "set_hide_on_state_item_selection")
        self._method_set_hide_on_state_item_selection_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_hide_on_state_item_selection_2586408642_name._native_ptr(), 2586408642)
        assert(PopupMenu._method_set_hide_on_state_item_selection_2586408642 != nil)
        let _method_is_hide_on_state_item_selection_36873697_name = StringName(from: "is_hide_on_state_item_selection")
        self._method_is_hide_on_state_item_selection_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_hide_on_state_item_selection_36873697_name._native_ptr(), 36873697)
        assert(PopupMenu._method_is_hide_on_state_item_selection_36873697 != nil)
        let _method_set_submenu_popup_delay_373806689_name = StringName(from: "set_submenu_popup_delay")
        self._method_set_submenu_popup_delay_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_submenu_popup_delay_373806689_name._native_ptr(), 373806689)
        assert(PopupMenu._method_set_submenu_popup_delay_373806689 != nil)
        let _method_get_submenu_popup_delay_1740695150_name = StringName(from: "get_submenu_popup_delay")
        self._method_get_submenu_popup_delay_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_submenu_popup_delay_1740695150_name._native_ptr(), 1740695150)
        assert(PopupMenu._method_get_submenu_popup_delay_1740695150 != nil)
        let _method_set_allow_search_2586408642_name = StringName(from: "set_allow_search")
        self._method_set_allow_search_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_allow_search_2586408642_name._native_ptr(), 2586408642)
        assert(PopupMenu._method_set_allow_search_2586408642 != nil)
        let _method_get_allow_search_36873697_name = StringName(from: "get_allow_search")
        self._method_get_allow_search_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_allow_search_36873697_name._native_ptr(), 36873697)
        assert(PopupMenu._method_get_allow_search_36873697 != nil)
    }

    public func add_item(label: String, id: Int64, accel: Key)  {
        withUnsafePointer(to: id) { id_native in
        withUnsafePointer(to: label) { label_native in
        withUnsafePointer(to: accel.rawValue) { accel_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(label_native), .init(id_native), .init(accel_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_item_3224536192,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func add_icon_item(texture: Texture2D, label: String, id: Int64, accel: Key)  {
        withUnsafePointer(to: id) { id_native in
        withUnsafePointer(to: label) { label_native in
        withUnsafePointer(to: accel.rawValue) { accel_native in
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native), .init(label_native), .init(id_native), .init(accel_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_icon_item_1200674553,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func add_check_item(label: String, id: Int64, accel: Key)  {
        withUnsafePointer(to: id) { id_native in
        withUnsafePointer(to: label) { label_native in
        withUnsafePointer(to: accel.rawValue) { accel_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(label_native), .init(id_native), .init(accel_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_check_item_3224536192,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func add_icon_check_item(texture: Texture2D, label: String, id: Int64, accel: Key)  {
        withUnsafePointer(to: id) { id_native in
        withUnsafePointer(to: label) { label_native in
        withUnsafePointer(to: accel.rawValue) { accel_native in
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native), .init(label_native), .init(id_native), .init(accel_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_icon_check_item_1200674553,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func add_radio_check_item(label: String, id: Int64, accel: Key)  {
        withUnsafePointer(to: id) { id_native in
        withUnsafePointer(to: label) { label_native in
        withUnsafePointer(to: accel.rawValue) { accel_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(label_native), .init(id_native), .init(accel_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_radio_check_item_3224536192,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func add_icon_radio_check_item(texture: Texture2D, label: String, id: Int64, accel: Key)  {
        withUnsafePointer(to: id) { id_native in
        withUnsafePointer(to: label) { label_native in
        withUnsafePointer(to: accel.rawValue) { accel_native in
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native), .init(label_native), .init(id_native), .init(accel_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_icon_radio_check_item_1200674553,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func add_multistate_item(label: String, max_states: Int64, default_state: Int64, id: Int64, accel: Key)  {
        withUnsafePointer(to: id) { id_native in
        withUnsafePointer(to: default_state) { default_state_native in
        withUnsafePointer(to: max_states) { max_states_native in
        withUnsafePointer(to: label) { label_native in
        withUnsafePointer(to: accel.rawValue) { accel_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(label_native), .init(max_states_native), .init(default_state_native), .init(id_native), .init(accel_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_multistate_item_1585218420,
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
    public func add_shortcut(shortcut: Shortcut, id: Int64, global: UInt8)  {
        withUnsafePointer(to: global) { global_native in
        withUnsafePointer(to: id) { id_native in
        let shortcut_native = shortcut._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shortcut_native), .init(id_native), .init(global_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_shortcut_2168272394,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func add_icon_shortcut(texture: Texture2D, shortcut: Shortcut, id: Int64, global: UInt8)  {
        withUnsafePointer(to: global) { global_native in
        withUnsafePointer(to: id) { id_native in
        let shortcut_native = shortcut._native_ptr()
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native), .init(shortcut_native), .init(id_native), .init(global_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_icon_shortcut_68101841,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func add_check_shortcut(shortcut: Shortcut, id: Int64, global: UInt8)  {
        withUnsafePointer(to: global) { global_native in
        withUnsafePointer(to: id) { id_native in
        let shortcut_native = shortcut._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shortcut_native), .init(id_native), .init(global_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_check_shortcut_2168272394,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func add_icon_check_shortcut(texture: Texture2D, shortcut: Shortcut, id: Int64, global: UInt8)  {
        withUnsafePointer(to: global) { global_native in
        withUnsafePointer(to: id) { id_native in
        let shortcut_native = shortcut._native_ptr()
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native), .init(shortcut_native), .init(id_native), .init(global_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_icon_check_shortcut_68101841,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func add_radio_check_shortcut(shortcut: Shortcut, id: Int64, global: UInt8)  {
        withUnsafePointer(to: global) { global_native in
        withUnsafePointer(to: id) { id_native in
        let shortcut_native = shortcut._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shortcut_native), .init(id_native), .init(global_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_radio_check_shortcut_2168272394,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func add_icon_radio_check_shortcut(texture: Texture2D, shortcut: Shortcut, id: Int64, global: UInt8)  {
        withUnsafePointer(to: global) { global_native in
        withUnsafePointer(to: id) { id_native in
        let shortcut_native = shortcut._native_ptr()
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native), .init(shortcut_native), .init(id_native), .init(global_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_icon_radio_check_shortcut_68101841,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func add_submenu_item(label: String, submenu: String, id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        withUnsafePointer(to: submenu) { submenu_native in
        withUnsafePointer(to: label) { label_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(label_native), .init(submenu_native), .init(id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_submenu_item_3728518296,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func set_item_text(index: Int64, text: String)  {
        withUnsafePointer(to: text) { text_native in
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(text_native)
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
    public func set_item_text_direction(index: Int64, direction: Control.TextDirection)  {
        withUnsafePointer(to: index) { index_native in
        withUnsafePointer(to: direction.rawValue) { direction_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(direction_native)
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
    public func set_item_language(index: Int64, language: String)  {
        withUnsafePointer(to: language) { language_native in
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(language_native)
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
    public func set_item_icon(index: Int64, icon: Texture2D)  {
        withUnsafePointer(to: index) { index_native in
        let icon_native = icon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(icon_native)
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
    public func set_item_checked(index: Int64, checked: UInt8)  {
        withUnsafePointer(to: checked) { checked_native in
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(checked_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_checked_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_item_id(index: Int64, id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_id_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_item_accelerator(index: Int64, accel: Key)  {
        withUnsafePointer(to: index) { index_native in
        withUnsafePointer(to: accel.rawValue) { accel_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(accel_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_accelerator_2992817551,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_item_metadata(index: Int64, metadata: Variant)  {
        withUnsafePointer(to: index) { index_native in
        let metadata_native = metadata._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(metadata_native)
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
    public func set_item_disabled(index: Int64, disabled: UInt8)  {
        withUnsafePointer(to: disabled) { disabled_native in
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(disabled_native)
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
    public func set_item_submenu(index: Int64, submenu: String)  {
        withUnsafePointer(to: submenu) { submenu_native in
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(submenu_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_submenu_501894301,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_item_as_separator(index: Int64, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_as_separator_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_item_as_checkable(index: Int64, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_as_checkable_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_item_as_radio_checkable(index: Int64, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_as_radio_checkable_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_item_tooltip(index: Int64, tooltip: String)  {
        withUnsafePointer(to: tooltip) { tooltip_native in
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(tooltip_native)
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
    public func set_item_shortcut(index: Int64, shortcut: Shortcut, global: UInt8)  {
        withUnsafePointer(to: global) { global_native in
        withUnsafePointer(to: index) { index_native in
        let shortcut_native = shortcut._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(shortcut_native), .init(global_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_shortcut_825127832,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_item_indent(index: Int64, indent: Int64)  {
        withUnsafePointer(to: indent) { indent_native in
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(indent_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_indent_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_item_multistate(index: Int64, state: Int64)  {
        withUnsafePointer(to: state) { state_native in
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(state_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_multistate_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_item_shortcut_disabled(index: Int64, disabled: UInt8)  {
        withUnsafePointer(to: disabled) { disabled_native in
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(disabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_shortcut_disabled_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func toggle_item_checked(index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_toggle_item_checked_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func toggle_item_multistate(index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_toggle_item_multistate_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_item_text(index: Int64) -> String {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
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
    public func get_item_text_direction(index: Int64) -> Control.TextDirection {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
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
    public func get_item_language(index: Int64) -> String {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
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
    public func get_item_icon(index: Int64) -> Texture2D {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
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
    public func is_item_checked(index: Int64) -> UInt8 {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_item_checked_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func get_item_id(index: Int64) -> Int64 {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_id_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func get_item_index(id: Int64) -> Int64 {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_index_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func get_item_accelerator(index: Int64) -> Key {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_accelerator_253789942,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Key(from: __resPtr.pointee)
        }
    }
    public func get_item_metadata(index: Int64) -> Variant {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
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
    public func is_item_disabled(index: Int64) -> UInt8 {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
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
    public func get_item_submenu(index: Int64) -> String {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_submenu_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
    public func is_item_separator(index: Int64) -> UInt8 {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_item_separator_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func is_item_checkable(index: Int64) -> UInt8 {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_item_checkable_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func is_item_radio_checkable(index: Int64) -> UInt8 {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_item_radio_checkable_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func is_item_shortcut_disabled(index: Int64) -> UInt8 {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_item_shortcut_disabled_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func get_item_tooltip(index: Int64) -> String {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
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
    public func get_item_shortcut(index: Int64) -> Shortcut {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_shortcut_1449483325,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Shortcut(from: __resPtr.pointee)
        }
    }
    public func get_item_indent(index: Int64) -> Int64 {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_indent_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func set_focused_item(index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_focused_item_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_focused_item() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_focused_item_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
    public func scroll_to_item(index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_scroll_to_item_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func remove_item(index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
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
    public func add_separator(label: String, id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        withUnsafePointer(to: label) { label_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(label_native), .init(id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_separator_2266703459,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
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
    public func set_hide_on_item_selection(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_hide_on_item_selection_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_hide_on_item_selection() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_hide_on_item_selection_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_hide_on_checkable_item_selection(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_hide_on_checkable_item_selection_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_hide_on_checkable_item_selection() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_hide_on_checkable_item_selection_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_hide_on_state_item_selection(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_hide_on_state_item_selection_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_hide_on_state_item_selection() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_hide_on_state_item_selection_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_submenu_popup_delay(seconds: Float64)  {
        withUnsafePointer(to: seconds) { seconds_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(seconds_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_submenu_popup_delay_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_submenu_popup_delay() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_submenu_popup_delay_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_allow_search(allow: UInt8)  {
        withUnsafePointer(to: allow) { allow_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(allow_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_allow_search_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_allow_search() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_allow_search_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}