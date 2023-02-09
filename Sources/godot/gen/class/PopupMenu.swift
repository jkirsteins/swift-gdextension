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
open class PopupMenu : Popup {

    

    public override class var __godot_name: StringName { __godot_name_PopupMenu }

    static var _method_add_item_3224536192: StringName! = nil
    static var _method_add_icon_item_1200674553: StringName! = nil
    static var _method_add_check_item_3224536192: StringName! = nil
    static var _method_add_icon_check_item_1200674553: StringName! = nil
    static var _method_add_radio_check_item_3224536192: StringName! = nil
    static var _method_add_icon_radio_check_item_1200674553: StringName! = nil
    static var _method_add_multistate_item_1585218420: StringName! = nil
    static var _method_add_shortcut_2168272394: StringName! = nil
    static var _method_add_icon_shortcut_68101841: StringName! = nil
    static var _method_add_check_shortcut_2168272394: StringName! = nil
    static var _method_add_icon_check_shortcut_68101841: StringName! = nil
    static var _method_add_radio_check_shortcut_2168272394: StringName! = nil
    static var _method_add_icon_radio_check_shortcut_68101841: StringName! = nil
    static var _method_add_submenu_item_3728518296: StringName! = nil
    static var _method_set_item_text_501894301: StringName! = nil
    static var _method_set_item_text_direction_1707680378: StringName! = nil
    static var _method_set_item_language_501894301: StringName! = nil
    static var _method_set_item_icon_666127730: StringName! = nil
    static var _method_set_item_checked_300928843: StringName! = nil
    static var _method_set_item_id_3937882851: StringName! = nil
    static var _method_set_item_accelerator_2992817551: StringName! = nil
    static var _method_set_item_metadata_2152698145: StringName! = nil
    static var _method_set_item_disabled_300928843: StringName! = nil
    static var _method_set_item_submenu_501894301: StringName! = nil
    static var _method_set_item_as_separator_300928843: StringName! = nil
    static var _method_set_item_as_checkable_300928843: StringName! = nil
    static var _method_set_item_as_radio_checkable_300928843: StringName! = nil
    static var _method_set_item_tooltip_501894301: StringName! = nil
    static var _method_set_item_shortcut_825127832: StringName! = nil
    static var _method_set_item_indent_3937882851: StringName! = nil
    static var _method_set_item_multistate_3937882851: StringName! = nil
    static var _method_set_item_shortcut_disabled_300928843: StringName! = nil
    static var _method_toggle_item_checked_1286410249: StringName! = nil
    static var _method_toggle_item_multistate_1286410249: StringName! = nil
    static var _method_get_item_text_844755477: StringName! = nil
    static var _method_get_item_text_direction_4235602388: StringName! = nil
    static var _method_get_item_language_844755477: StringName! = nil
    static var _method_get_item_icon_3536238170: StringName! = nil
    static var _method_is_item_checked_1116898809: StringName! = nil
    static var _method_get_item_id_923996154: StringName! = nil
    static var _method_get_item_index_923996154: StringName! = nil
    static var _method_get_item_accelerator_253789942: StringName! = nil
    static var _method_get_item_metadata_4227898402: StringName! = nil
    static var _method_is_item_disabled_1116898809: StringName! = nil
    static var _method_get_item_submenu_844755477: StringName! = nil
    static var _method_is_item_separator_1116898809: StringName! = nil
    static var _method_is_item_checkable_1116898809: StringName! = nil
    static var _method_is_item_radio_checkable_1116898809: StringName! = nil
    static var _method_is_item_shortcut_disabled_1116898809: StringName! = nil
    static var _method_get_item_tooltip_844755477: StringName! = nil
    static var _method_get_item_shortcut_1449483325: StringName! = nil
    static var _method_get_item_indent_923996154: StringName! = nil
    static var _method_set_focused_item_1286410249: StringName! = nil
    static var _method_get_focused_item_3905245786: StringName! = nil
    static var _method_set_item_count_1286410249: StringName! = nil
    static var _method_get_item_count_3905245786: StringName! = nil
    static var _method_scroll_to_item_1286410249: StringName! = nil
    static var _method_remove_item_1286410249: StringName! = nil
    static var _method_add_separator_2266703459: StringName! = nil
    static var _method_clear_3218959716: StringName! = nil
    static var _method_set_hide_on_item_selection_2586408642: StringName! = nil
    static var _method_is_hide_on_item_selection_36873697: StringName! = nil
    static var _method_set_hide_on_checkable_item_selection_2586408642: StringName! = nil
    static var _method_is_hide_on_checkable_item_selection_36873697: StringName! = nil
    static var _method_set_hide_on_state_item_selection_2586408642: StringName! = nil
    static var _method_is_hide_on_state_item_selection_36873697: StringName! = nil
    static var _method_set_submenu_popup_delay_373806689: StringName! = nil
    static var _method_get_submenu_popup_delay_1740695150: StringName! = nil
    static var _method_set_allow_search_2586408642: StringName! = nil
    static var _method_get_allow_search_36873697: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_PopupMenu == nil)
        __godot_name_PopupMenu = StringName(from: "PopupMenu")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_add_item_3224536192 = StringName(from: "add_item")
        assert(self._method_add_item_3224536192 != nil)
        self._method_add_icon_item_1200674553 = StringName(from: "add_icon_item")
        assert(self._method_add_icon_item_1200674553 != nil)
        self._method_add_check_item_3224536192 = StringName(from: "add_check_item")
        assert(self._method_add_check_item_3224536192 != nil)
        self._method_add_icon_check_item_1200674553 = StringName(from: "add_icon_check_item")
        assert(self._method_add_icon_check_item_1200674553 != nil)
        self._method_add_radio_check_item_3224536192 = StringName(from: "add_radio_check_item")
        assert(self._method_add_radio_check_item_3224536192 != nil)
        self._method_add_icon_radio_check_item_1200674553 = StringName(from: "add_icon_radio_check_item")
        assert(self._method_add_icon_radio_check_item_1200674553 != nil)
        self._method_add_multistate_item_1585218420 = StringName(from: "add_multistate_item")
        assert(self._method_add_multistate_item_1585218420 != nil)
        self._method_add_shortcut_2168272394 = StringName(from: "add_shortcut")
        assert(self._method_add_shortcut_2168272394 != nil)
        self._method_add_icon_shortcut_68101841 = StringName(from: "add_icon_shortcut")
        assert(self._method_add_icon_shortcut_68101841 != nil)
        self._method_add_check_shortcut_2168272394 = StringName(from: "add_check_shortcut")
        assert(self._method_add_check_shortcut_2168272394 != nil)
        self._method_add_icon_check_shortcut_68101841 = StringName(from: "add_icon_check_shortcut")
        assert(self._method_add_icon_check_shortcut_68101841 != nil)
        self._method_add_radio_check_shortcut_2168272394 = StringName(from: "add_radio_check_shortcut")
        assert(self._method_add_radio_check_shortcut_2168272394 != nil)
        self._method_add_icon_radio_check_shortcut_68101841 = StringName(from: "add_icon_radio_check_shortcut")
        assert(self._method_add_icon_radio_check_shortcut_68101841 != nil)
        self._method_add_submenu_item_3728518296 = StringName(from: "add_submenu_item")
        assert(self._method_add_submenu_item_3728518296 != nil)
        self._method_set_item_text_501894301 = StringName(from: "set_item_text")
        assert(self._method_set_item_text_501894301 != nil)
        self._method_set_item_text_direction_1707680378 = StringName(from: "set_item_text_direction")
        assert(self._method_set_item_text_direction_1707680378 != nil)
        self._method_set_item_language_501894301 = StringName(from: "set_item_language")
        assert(self._method_set_item_language_501894301 != nil)
        self._method_set_item_icon_666127730 = StringName(from: "set_item_icon")
        assert(self._method_set_item_icon_666127730 != nil)
        self._method_set_item_checked_300928843 = StringName(from: "set_item_checked")
        assert(self._method_set_item_checked_300928843 != nil)
        self._method_set_item_id_3937882851 = StringName(from: "set_item_id")
        assert(self._method_set_item_id_3937882851 != nil)
        self._method_set_item_accelerator_2992817551 = StringName(from: "set_item_accelerator")
        assert(self._method_set_item_accelerator_2992817551 != nil)
        self._method_set_item_metadata_2152698145 = StringName(from: "set_item_metadata")
        assert(self._method_set_item_metadata_2152698145 != nil)
        self._method_set_item_disabled_300928843 = StringName(from: "set_item_disabled")
        assert(self._method_set_item_disabled_300928843 != nil)
        self._method_set_item_submenu_501894301 = StringName(from: "set_item_submenu")
        assert(self._method_set_item_submenu_501894301 != nil)
        self._method_set_item_as_separator_300928843 = StringName(from: "set_item_as_separator")
        assert(self._method_set_item_as_separator_300928843 != nil)
        self._method_set_item_as_checkable_300928843 = StringName(from: "set_item_as_checkable")
        assert(self._method_set_item_as_checkable_300928843 != nil)
        self._method_set_item_as_radio_checkable_300928843 = StringName(from: "set_item_as_radio_checkable")
        assert(self._method_set_item_as_radio_checkable_300928843 != nil)
        self._method_set_item_tooltip_501894301 = StringName(from: "set_item_tooltip")
        assert(self._method_set_item_tooltip_501894301 != nil)
        self._method_set_item_shortcut_825127832 = StringName(from: "set_item_shortcut")
        assert(self._method_set_item_shortcut_825127832 != nil)
        self._method_set_item_indent_3937882851 = StringName(from: "set_item_indent")
        assert(self._method_set_item_indent_3937882851 != nil)
        self._method_set_item_multistate_3937882851 = StringName(from: "set_item_multistate")
        assert(self._method_set_item_multistate_3937882851 != nil)
        self._method_set_item_shortcut_disabled_300928843 = StringName(from: "set_item_shortcut_disabled")
        assert(self._method_set_item_shortcut_disabled_300928843 != nil)
        self._method_toggle_item_checked_1286410249 = StringName(from: "toggle_item_checked")
        assert(self._method_toggle_item_checked_1286410249 != nil)
        self._method_toggle_item_multistate_1286410249 = StringName(from: "toggle_item_multistate")
        assert(self._method_toggle_item_multistate_1286410249 != nil)
        self._method_get_item_text_844755477 = StringName(from: "get_item_text")
        assert(self._method_get_item_text_844755477 != nil)
        self._method_get_item_text_direction_4235602388 = StringName(from: "get_item_text_direction")
        assert(self._method_get_item_text_direction_4235602388 != nil)
        self._method_get_item_language_844755477 = StringName(from: "get_item_language")
        assert(self._method_get_item_language_844755477 != nil)
        self._method_get_item_icon_3536238170 = StringName(from: "get_item_icon")
        assert(self._method_get_item_icon_3536238170 != nil)
        self._method_is_item_checked_1116898809 = StringName(from: "is_item_checked")
        assert(self._method_is_item_checked_1116898809 != nil)
        self._method_get_item_id_923996154 = StringName(from: "get_item_id")
        assert(self._method_get_item_id_923996154 != nil)
        self._method_get_item_index_923996154 = StringName(from: "get_item_index")
        assert(self._method_get_item_index_923996154 != nil)
        self._method_get_item_accelerator_253789942 = StringName(from: "get_item_accelerator")
        assert(self._method_get_item_accelerator_253789942 != nil)
        self._method_get_item_metadata_4227898402 = StringName(from: "get_item_metadata")
        assert(self._method_get_item_metadata_4227898402 != nil)
        self._method_is_item_disabled_1116898809 = StringName(from: "is_item_disabled")
        assert(self._method_is_item_disabled_1116898809 != nil)
        self._method_get_item_submenu_844755477 = StringName(from: "get_item_submenu")
        assert(self._method_get_item_submenu_844755477 != nil)
        self._method_is_item_separator_1116898809 = StringName(from: "is_item_separator")
        assert(self._method_is_item_separator_1116898809 != nil)
        self._method_is_item_checkable_1116898809 = StringName(from: "is_item_checkable")
        assert(self._method_is_item_checkable_1116898809 != nil)
        self._method_is_item_radio_checkable_1116898809 = StringName(from: "is_item_radio_checkable")
        assert(self._method_is_item_radio_checkable_1116898809 != nil)
        self._method_is_item_shortcut_disabled_1116898809 = StringName(from: "is_item_shortcut_disabled")
        assert(self._method_is_item_shortcut_disabled_1116898809 != nil)
        self._method_get_item_tooltip_844755477 = StringName(from: "get_item_tooltip")
        assert(self._method_get_item_tooltip_844755477 != nil)
        self._method_get_item_shortcut_1449483325 = StringName(from: "get_item_shortcut")
        assert(self._method_get_item_shortcut_1449483325 != nil)
        self._method_get_item_indent_923996154 = StringName(from: "get_item_indent")
        assert(self._method_get_item_indent_923996154 != nil)
        self._method_set_focused_item_1286410249 = StringName(from: "set_focused_item")
        assert(self._method_set_focused_item_1286410249 != nil)
        self._method_get_focused_item_3905245786 = StringName(from: "get_focused_item")
        assert(self._method_get_focused_item_3905245786 != nil)
        self._method_set_item_count_1286410249 = StringName(from: "set_item_count")
        assert(self._method_set_item_count_1286410249 != nil)
        self._method_get_item_count_3905245786 = StringName(from: "get_item_count")
        assert(self._method_get_item_count_3905245786 != nil)
        self._method_scroll_to_item_1286410249 = StringName(from: "scroll_to_item")
        assert(self._method_scroll_to_item_1286410249 != nil)
        self._method_remove_item_1286410249 = StringName(from: "remove_item")
        assert(self._method_remove_item_1286410249 != nil)
        self._method_add_separator_2266703459 = StringName(from: "add_separator")
        assert(self._method_add_separator_2266703459 != nil)
        self._method_clear_3218959716 = StringName(from: "clear")
        assert(self._method_clear_3218959716 != nil)
        self._method_set_hide_on_item_selection_2586408642 = StringName(from: "set_hide_on_item_selection")
        assert(self._method_set_hide_on_item_selection_2586408642 != nil)
        self._method_is_hide_on_item_selection_36873697 = StringName(from: "is_hide_on_item_selection")
        assert(self._method_is_hide_on_item_selection_36873697 != nil)
        self._method_set_hide_on_checkable_item_selection_2586408642 = StringName(from: "set_hide_on_checkable_item_selection")
        assert(self._method_set_hide_on_checkable_item_selection_2586408642 != nil)
        self._method_is_hide_on_checkable_item_selection_36873697 = StringName(from: "is_hide_on_checkable_item_selection")
        assert(self._method_is_hide_on_checkable_item_selection_36873697 != nil)
        self._method_set_hide_on_state_item_selection_2586408642 = StringName(from: "set_hide_on_state_item_selection")
        assert(self._method_set_hide_on_state_item_selection_2586408642 != nil)
        self._method_is_hide_on_state_item_selection_36873697 = StringName(from: "is_hide_on_state_item_selection")
        assert(self._method_is_hide_on_state_item_selection_36873697 != nil)
        self._method_set_submenu_popup_delay_373806689 = StringName(from: "set_submenu_popup_delay")
        assert(self._method_set_submenu_popup_delay_373806689 != nil)
        self._method_get_submenu_popup_delay_1740695150 = StringName(from: "get_submenu_popup_delay")
        assert(self._method_get_submenu_popup_delay_1740695150 != nil)
        self._method_set_allow_search_2586408642 = StringName(from: "set_allow_search")
        assert(self._method_set_allow_search_2586408642 != nil)
        self._method_get_allow_search_36873697 = StringName(from: "get_allow_search")
        assert(self._method_get_allow_search_36873697 != nil)
    }

    public func add_item(label: godot.String, id: Int64, accel: Key)  {
        withUnsafePointer(to: id) { id_native in
        withUnsafePointer(to: accel.rawValue) { accel_native in
        let label_native = label._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(label_native), .init(id_native), .init(accel_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_item_3224536192._native_ptr(),
                    3224536192)
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
    public func add_icon_item(texture: Texture2D, label: godot.String, id: Int64, accel: Key)  {
        withUnsafePointer(to: id) { id_native in
        withUnsafePointer(to: accel.rawValue) { accel_native in
        let label_native = label._native_ptr()
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native), .init(label_native), .init(id_native), .init(accel_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_icon_item_1200674553._native_ptr(),
                    1200674553)
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
    public func add_check_item(label: godot.String, id: Int64, accel: Key)  {
        withUnsafePointer(to: id) { id_native in
        withUnsafePointer(to: accel.rawValue) { accel_native in
        let label_native = label._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(label_native), .init(id_native), .init(accel_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_check_item_3224536192._native_ptr(),
                    3224536192)
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
    public func add_icon_check_item(texture: Texture2D, label: godot.String, id: Int64, accel: Key)  {
        withUnsafePointer(to: id) { id_native in
        withUnsafePointer(to: accel.rawValue) { accel_native in
        let label_native = label._native_ptr()
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native), .init(label_native), .init(id_native), .init(accel_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_icon_check_item_1200674553._native_ptr(),
                    1200674553)
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
    public func add_radio_check_item(label: godot.String, id: Int64, accel: Key)  {
        withUnsafePointer(to: id) { id_native in
        withUnsafePointer(to: accel.rawValue) { accel_native in
        let label_native = label._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(label_native), .init(id_native), .init(accel_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_radio_check_item_3224536192._native_ptr(),
                    3224536192)
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
    public func add_icon_radio_check_item(texture: Texture2D, label: godot.String, id: Int64, accel: Key)  {
        withUnsafePointer(to: id) { id_native in
        withUnsafePointer(to: accel.rawValue) { accel_native in
        let label_native = label._native_ptr()
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native), .init(label_native), .init(id_native), .init(accel_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_icon_radio_check_item_1200674553._native_ptr(),
                    1200674553)
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
    public func add_multistate_item(label: godot.String, max_states: Int64, default_state: Int64, id: Int64, accel: Key)  {
        withUnsafePointer(to: id) { id_native in
        withUnsafePointer(to: default_state) { default_state_native in
        withUnsafePointer(to: max_states) { max_states_native in
        withUnsafePointer(to: accel.rawValue) { accel_native in
        let label_native = label._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(label_native), .init(max_states_native), .init(default_state_native), .init(id_native), .init(accel_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_multistate_item_1585218420._native_ptr(),
                    1585218420)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_shortcut_2168272394._native_ptr(),
                    2168272394)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_icon_shortcut_68101841._native_ptr(),
                    68101841)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_check_shortcut_2168272394._native_ptr(),
                    2168272394)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_icon_check_shortcut_68101841._native_ptr(),
                    68101841)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_radio_check_shortcut_2168272394._native_ptr(),
                    2168272394)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_icon_radio_check_shortcut_68101841._native_ptr(),
                    68101841)
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
    public func add_submenu_item(label: godot.String, submenu: godot.String, id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        let submenu_native = submenu._native_ptr()
        let label_native = label._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(label_native), .init(submenu_native), .init(id_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_submenu_item_3728518296._native_ptr(),
                    3728518296)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_item_text(index: Int64, text: godot.String)  {
        withUnsafePointer(to: index) { index_native in
        let text_native = text._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(text_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_item_text_501894301._native_ptr(),
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
    public func set_item_text_direction(index: Int64, direction: Control.TextDirection)  {
        withUnsafePointer(to: index) { index_native in
        withUnsafePointer(to: direction.rawValue) { direction_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(direction_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_item_text_direction_1707680378._native_ptr(),
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
    public func set_item_language(index: Int64, language: godot.String)  {
        withUnsafePointer(to: index) { index_native in
        let language_native = language._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(language_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_item_language_501894301._native_ptr(),
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
    public func set_item_icon(index: Int64, icon: Texture2D)  {
        withUnsafePointer(to: index) { index_native in
        let icon_native = icon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(icon_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_item_icon_666127730._native_ptr(),
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
    public func set_item_checked(index: Int64, checked: UInt8)  {
        withUnsafePointer(to: checked) { checked_native in
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(checked_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_item_checked_300928843._native_ptr(),
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
    public func set_item_id(index: Int64, id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(id_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_item_id_3937882851._native_ptr(),
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
    public func set_item_accelerator(index: Int64, accel: Key)  {
        withUnsafePointer(to: index) { index_native in
        withUnsafePointer(to: accel.rawValue) { accel_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(accel_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_item_accelerator_2992817551._native_ptr(),
                    2992817551)
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
    public func set_item_metadata(index: Int64, metadata: Variant)  {
        withUnsafePointer(to: index) { index_native in
        let metadata_native = metadata._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(metadata_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_item_metadata_2152698145._native_ptr(),
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
    public func set_item_disabled(index: Int64, disabled: UInt8)  {
        withUnsafePointer(to: disabled) { disabled_native in
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(disabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_item_disabled_300928843._native_ptr(),
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
    public func set_item_submenu(index: Int64, submenu: godot.String)  {
        withUnsafePointer(to: index) { index_native in
        let submenu_native = submenu._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(submenu_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_item_submenu_501894301._native_ptr(),
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
    public func set_item_as_separator(index: Int64, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_item_as_separator_300928843._native_ptr(),
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
    public func set_item_as_checkable(index: Int64, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_item_as_checkable_300928843._native_ptr(),
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
    public func set_item_as_radio_checkable(index: Int64, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_item_as_radio_checkable_300928843._native_ptr(),
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
    public func set_item_tooltip(index: Int64, tooltip: godot.String)  {
        withUnsafePointer(to: index) { index_native in
        let tooltip_native = tooltip._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(tooltip_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_item_tooltip_501894301._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_item_shortcut_825127832._native_ptr(),
                    825127832)
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
    public func set_item_indent(index: Int64, indent: Int64)  {
        withUnsafePointer(to: indent) { indent_native in
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(indent_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_item_indent_3937882851._native_ptr(),
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
    public func set_item_multistate(index: Int64, state: Int64)  {
        withUnsafePointer(to: state) { state_native in
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(state_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_item_multistate_3937882851._native_ptr(),
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
    public func set_item_shortcut_disabled(index: Int64, disabled: UInt8)  {
        withUnsafePointer(to: disabled) { disabled_native in
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(disabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_item_shortcut_disabled_300928843._native_ptr(),
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
    public func toggle_item_checked(index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_toggle_item_checked_1286410249._native_ptr(),
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
    public func toggle_item_multistate(index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_toggle_item_multistate_1286410249._native_ptr(),
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
    public func get_item_text(index: Int64) -> godot.String {
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
                    Self._method_get_item_text_844755477._native_ptr(),
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
    public func get_item_text_direction(index: Int64) -> Control.TextDirection {
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
                    Self._method_get_item_text_direction_4235602388._native_ptr(),
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
    public func get_item_language(index: Int64) -> godot.String {
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
                    Self._method_get_item_language_844755477._native_ptr(),
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
    public func get_item_icon(index: Int64) -> Texture2D {
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
                    Self._method_get_item_icon_3536238170._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_item_checked_1116898809._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_item_id_923996154._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_item_index_923996154._native_ptr(),
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
    public func get_item_accelerator(index: Int64) -> Key {
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
                    Self._method_get_item_accelerator_253789942._native_ptr(),
                    253789942)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Key(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_item_metadata_4227898402._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_item_disabled_1116898809._native_ptr(),
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
    public func get_item_submenu(index: Int64) -> godot.String {
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
                    Self._method_get_item_submenu_844755477._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_item_separator_1116898809._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_item_checkable_1116898809._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_item_radio_checkable_1116898809._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_item_shortcut_disabled_1116898809._native_ptr(),
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
    public func get_item_tooltip(index: Int64) -> godot.String {
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
                    Self._method_get_item_tooltip_844755477._native_ptr(),
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
    public func get_item_shortcut(index: Int64) -> Shortcut {
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
                    Self._method_get_item_shortcut_1449483325._native_ptr(),
                    1449483325)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Shortcut(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_item_indent_923996154._native_ptr(),
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
    public func set_focused_item(index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_focused_item_1286410249._native_ptr(),
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
    public func get_focused_item() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_focused_item_3905245786._native_ptr(),
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
    public func set_item_count(count: Int64)  {
        withUnsafePointer(to: count) { count_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(count_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_item_count_1286410249._native_ptr(),
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
    public func get_item_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_item_count_3905245786._native_ptr(),
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
    public func scroll_to_item(index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_scroll_to_item_1286410249._native_ptr(),
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
    public func remove_item(index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_item_1286410249._native_ptr(),
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
    public func add_separator(label: godot.String, id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        let label_native = label._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(label_native), .init(id_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_separator_2266703459._native_ptr(),
                    2266703459)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_hide_on_item_selection_2586408642._native_ptr(),
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
    public func is_hide_on_item_selection() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_hide_on_item_selection_36873697._native_ptr(),
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
    public func set_hide_on_checkable_item_selection(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_hide_on_checkable_item_selection_2586408642._native_ptr(),
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
    public func is_hide_on_checkable_item_selection() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_hide_on_checkable_item_selection_36873697._native_ptr(),
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
    public func set_hide_on_state_item_selection(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_hide_on_state_item_selection_2586408642._native_ptr(),
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
    public func is_hide_on_state_item_selection() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_hide_on_state_item_selection_36873697._native_ptr(),
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
    public func set_submenu_popup_delay(seconds: Float64)  {
        withUnsafePointer(to: seconds) { seconds_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(seconds_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_submenu_popup_delay_373806689._native_ptr(),
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
    public func get_submenu_popup_delay() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_submenu_popup_delay_1740695150._native_ptr(),
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
    public func set_allow_search(allow: UInt8)  {
        withUnsafePointer(to: allow) { allow_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(allow_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_allow_search_2586408642._native_ptr(),
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
    public func get_allow_search() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_allow_search_36873697._native_ptr(),
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
}