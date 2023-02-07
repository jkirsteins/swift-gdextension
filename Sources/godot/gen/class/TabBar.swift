import godot_native

fileprivate var __godot_name_TabBar: StringName! = nil

/// Tab bar control.
/// 
/// Simple tabs control, similar to [TabContainer] but is only in charge of drawing tabs, not interacting with children.
public class TabBar : Control {

    public enum AlignmentMode : Int32 {
        case ALIGNMENT_LEFT = 0
        case ALIGNMENT_CENTER = 1
        case ALIGNMENT_RIGHT = 2
        case ALIGNMENT_MAX = 3
    }
    public enum CloseButtonDisplayPolicy : Int32 {
        case CLOSE_BUTTON_SHOW_NEVER = 0
        case CLOSE_BUTTON_SHOW_ACTIVE_ONLY = 1
        case CLOSE_BUTTON_SHOW_ALWAYS = 2
        case CLOSE_BUTTON_MAX = 3
    }

    public override class var __godot_name: StringName { __godot_name_TabBar }

    static var _method_set_tab_count_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_tab_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_current_tab_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_current_tab_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_previous_tab_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_tab_title_501894301: GDExtensionMethodBindPtr! = nil
    static var _method_get_tab_title_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_set_tab_text_direction_1707680378: GDExtensionMethodBindPtr! = nil
    static var _method_get_tab_text_direction_4235602388: GDExtensionMethodBindPtr! = nil
    static var _method_set_tab_language_501894301: GDExtensionMethodBindPtr! = nil
    static var _method_get_tab_language_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_set_tab_icon_666127730: GDExtensionMethodBindPtr! = nil
    static var _method_get_tab_icon_3536238170: GDExtensionMethodBindPtr! = nil
    static var _method_set_tab_button_icon_666127730: GDExtensionMethodBindPtr! = nil
    static var _method_get_tab_button_icon_3536238170: GDExtensionMethodBindPtr! = nil
    static var _method_set_tab_disabled_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_is_tab_disabled_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_tab_hidden_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_is_tab_hidden_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_remove_tab_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_add_tab_1465444425: GDExtensionMethodBindPtr! = nil
    static var _method_get_tab_idx_at_point_3820158470: GDExtensionMethodBindPtr! = nil
    static var _method_set_tab_alignment_2413632353: GDExtensionMethodBindPtr! = nil
    static var _method_get_tab_alignment_2178122193: GDExtensionMethodBindPtr! = nil
    static var _method_set_clip_tabs_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_clip_tabs_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_tab_offset_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_offset_buttons_visible_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_ensure_tab_visible_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_tab_rect_3327874267: GDExtensionMethodBindPtr! = nil
    static var _method_move_tab_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_set_tab_close_display_policy_2212906737: GDExtensionMethodBindPtr! = nil
    static var _method_get_tab_close_display_policy_2956568028: GDExtensionMethodBindPtr! = nil
    static var _method_set_max_tab_width_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_tab_width_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_scrolling_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_scrolling_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_drag_to_rearrange_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_drag_to_rearrange_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_tabs_rearrange_group_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_tabs_rearrange_group_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_scroll_to_selected_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_scroll_to_selected_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_select_with_rmb_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_select_with_rmb_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_clear_tabs_3218959716: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_TabBar = StringName(from: "TabBar")

        let _method_set_tab_count_1286410249_name = StringName(from: "set_tab_count")
        self._method_set_tab_count_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tab_count_1286410249_name._native_ptr(), 1286410249)
        assert(TabBar._method_set_tab_count_1286410249 != nil)
        let _method_get_tab_count_3905245786_name = StringName(from: "get_tab_count")
        self._method_get_tab_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tab_count_3905245786_name._native_ptr(), 3905245786)
        assert(TabBar._method_get_tab_count_3905245786 != nil)
        let _method_set_current_tab_1286410249_name = StringName(from: "set_current_tab")
        self._method_set_current_tab_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_current_tab_1286410249_name._native_ptr(), 1286410249)
        assert(TabBar._method_set_current_tab_1286410249 != nil)
        let _method_get_current_tab_3905245786_name = StringName(from: "get_current_tab")
        self._method_get_current_tab_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_current_tab_3905245786_name._native_ptr(), 3905245786)
        assert(TabBar._method_get_current_tab_3905245786 != nil)
        let _method_get_previous_tab_3905245786_name = StringName(from: "get_previous_tab")
        self._method_get_previous_tab_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_previous_tab_3905245786_name._native_ptr(), 3905245786)
        assert(TabBar._method_get_previous_tab_3905245786 != nil)
        let _method_set_tab_title_501894301_name = StringName(from: "set_tab_title")
        self._method_set_tab_title_501894301 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tab_title_501894301_name._native_ptr(), 501894301)
        assert(TabBar._method_set_tab_title_501894301 != nil)
        let _method_get_tab_title_844755477_name = StringName(from: "get_tab_title")
        self._method_get_tab_title_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tab_title_844755477_name._native_ptr(), 844755477)
        assert(TabBar._method_get_tab_title_844755477 != nil)
        let _method_set_tab_text_direction_1707680378_name = StringName(from: "set_tab_text_direction")
        self._method_set_tab_text_direction_1707680378 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tab_text_direction_1707680378_name._native_ptr(), 1707680378)
        assert(TabBar._method_set_tab_text_direction_1707680378 != nil)
        let _method_get_tab_text_direction_4235602388_name = StringName(from: "get_tab_text_direction")
        self._method_get_tab_text_direction_4235602388 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tab_text_direction_4235602388_name._native_ptr(), 4235602388)
        assert(TabBar._method_get_tab_text_direction_4235602388 != nil)
        let _method_set_tab_language_501894301_name = StringName(from: "set_tab_language")
        self._method_set_tab_language_501894301 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tab_language_501894301_name._native_ptr(), 501894301)
        assert(TabBar._method_set_tab_language_501894301 != nil)
        let _method_get_tab_language_844755477_name = StringName(from: "get_tab_language")
        self._method_get_tab_language_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tab_language_844755477_name._native_ptr(), 844755477)
        assert(TabBar._method_get_tab_language_844755477 != nil)
        let _method_set_tab_icon_666127730_name = StringName(from: "set_tab_icon")
        self._method_set_tab_icon_666127730 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tab_icon_666127730_name._native_ptr(), 666127730)
        assert(TabBar._method_set_tab_icon_666127730 != nil)
        let _method_get_tab_icon_3536238170_name = StringName(from: "get_tab_icon")
        self._method_get_tab_icon_3536238170 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tab_icon_3536238170_name._native_ptr(), 3536238170)
        assert(TabBar._method_get_tab_icon_3536238170 != nil)
        let _method_set_tab_button_icon_666127730_name = StringName(from: "set_tab_button_icon")
        self._method_set_tab_button_icon_666127730 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tab_button_icon_666127730_name._native_ptr(), 666127730)
        assert(TabBar._method_set_tab_button_icon_666127730 != nil)
        let _method_get_tab_button_icon_3536238170_name = StringName(from: "get_tab_button_icon")
        self._method_get_tab_button_icon_3536238170 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tab_button_icon_3536238170_name._native_ptr(), 3536238170)
        assert(TabBar._method_get_tab_button_icon_3536238170 != nil)
        let _method_set_tab_disabled_300928843_name = StringName(from: "set_tab_disabled")
        self._method_set_tab_disabled_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tab_disabled_300928843_name._native_ptr(), 300928843)
        assert(TabBar._method_set_tab_disabled_300928843 != nil)
        let _method_is_tab_disabled_1116898809_name = StringName(from: "is_tab_disabled")
        self._method_is_tab_disabled_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_tab_disabled_1116898809_name._native_ptr(), 1116898809)
        assert(TabBar._method_is_tab_disabled_1116898809 != nil)
        let _method_set_tab_hidden_300928843_name = StringName(from: "set_tab_hidden")
        self._method_set_tab_hidden_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tab_hidden_300928843_name._native_ptr(), 300928843)
        assert(TabBar._method_set_tab_hidden_300928843 != nil)
        let _method_is_tab_hidden_1116898809_name = StringName(from: "is_tab_hidden")
        self._method_is_tab_hidden_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_tab_hidden_1116898809_name._native_ptr(), 1116898809)
        assert(TabBar._method_is_tab_hidden_1116898809 != nil)
        let _method_remove_tab_1286410249_name = StringName(from: "remove_tab")
        self._method_remove_tab_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_tab_1286410249_name._native_ptr(), 1286410249)
        assert(TabBar._method_remove_tab_1286410249 != nil)
        let _method_add_tab_1465444425_name = StringName(from: "add_tab")
        self._method_add_tab_1465444425 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_tab_1465444425_name._native_ptr(), 1465444425)
        assert(TabBar._method_add_tab_1465444425 != nil)
        let _method_get_tab_idx_at_point_3820158470_name = StringName(from: "get_tab_idx_at_point")
        self._method_get_tab_idx_at_point_3820158470 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tab_idx_at_point_3820158470_name._native_ptr(), 3820158470)
        assert(TabBar._method_get_tab_idx_at_point_3820158470 != nil)
        let _method_set_tab_alignment_2413632353_name = StringName(from: "set_tab_alignment")
        self._method_set_tab_alignment_2413632353 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tab_alignment_2413632353_name._native_ptr(), 2413632353)
        assert(TabBar._method_set_tab_alignment_2413632353 != nil)
        let _method_get_tab_alignment_2178122193_name = StringName(from: "get_tab_alignment")
        self._method_get_tab_alignment_2178122193 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tab_alignment_2178122193_name._native_ptr(), 2178122193)
        assert(TabBar._method_get_tab_alignment_2178122193 != nil)
        let _method_set_clip_tabs_2586408642_name = StringName(from: "set_clip_tabs")
        self._method_set_clip_tabs_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_clip_tabs_2586408642_name._native_ptr(), 2586408642)
        assert(TabBar._method_set_clip_tabs_2586408642 != nil)
        let _method_get_clip_tabs_36873697_name = StringName(from: "get_clip_tabs")
        self._method_get_clip_tabs_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_clip_tabs_36873697_name._native_ptr(), 36873697)
        assert(TabBar._method_get_clip_tabs_36873697 != nil)
        let _method_get_tab_offset_3905245786_name = StringName(from: "get_tab_offset")
        self._method_get_tab_offset_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tab_offset_3905245786_name._native_ptr(), 3905245786)
        assert(TabBar._method_get_tab_offset_3905245786 != nil)
        let _method_get_offset_buttons_visible_36873697_name = StringName(from: "get_offset_buttons_visible")
        self._method_get_offset_buttons_visible_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_offset_buttons_visible_36873697_name._native_ptr(), 36873697)
        assert(TabBar._method_get_offset_buttons_visible_36873697 != nil)
        let _method_ensure_tab_visible_1286410249_name = StringName(from: "ensure_tab_visible")
        self._method_ensure_tab_visible_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_ensure_tab_visible_1286410249_name._native_ptr(), 1286410249)
        assert(TabBar._method_ensure_tab_visible_1286410249 != nil)
        let _method_get_tab_rect_3327874267_name = StringName(from: "get_tab_rect")
        self._method_get_tab_rect_3327874267 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tab_rect_3327874267_name._native_ptr(), 3327874267)
        assert(TabBar._method_get_tab_rect_3327874267 != nil)
        let _method_move_tab_3937882851_name = StringName(from: "move_tab")
        self._method_move_tab_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_move_tab_3937882851_name._native_ptr(), 3937882851)
        assert(TabBar._method_move_tab_3937882851 != nil)
        let _method_set_tab_close_display_policy_2212906737_name = StringName(from: "set_tab_close_display_policy")
        self._method_set_tab_close_display_policy_2212906737 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tab_close_display_policy_2212906737_name._native_ptr(), 2212906737)
        assert(TabBar._method_set_tab_close_display_policy_2212906737 != nil)
        let _method_get_tab_close_display_policy_2956568028_name = StringName(from: "get_tab_close_display_policy")
        self._method_get_tab_close_display_policy_2956568028 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tab_close_display_policy_2956568028_name._native_ptr(), 2956568028)
        assert(TabBar._method_get_tab_close_display_policy_2956568028 != nil)
        let _method_set_max_tab_width_1286410249_name = StringName(from: "set_max_tab_width")
        self._method_set_max_tab_width_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_max_tab_width_1286410249_name._native_ptr(), 1286410249)
        assert(TabBar._method_set_max_tab_width_1286410249 != nil)
        let _method_get_max_tab_width_3905245786_name = StringName(from: "get_max_tab_width")
        self._method_get_max_tab_width_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_max_tab_width_3905245786_name._native_ptr(), 3905245786)
        assert(TabBar._method_get_max_tab_width_3905245786 != nil)
        let _method_set_scrolling_enabled_2586408642_name = StringName(from: "set_scrolling_enabled")
        self._method_set_scrolling_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_scrolling_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(TabBar._method_set_scrolling_enabled_2586408642 != nil)
        let _method_get_scrolling_enabled_36873697_name = StringName(from: "get_scrolling_enabled")
        self._method_get_scrolling_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_scrolling_enabled_36873697_name._native_ptr(), 36873697)
        assert(TabBar._method_get_scrolling_enabled_36873697 != nil)
        let _method_set_drag_to_rearrange_enabled_2586408642_name = StringName(from: "set_drag_to_rearrange_enabled")
        self._method_set_drag_to_rearrange_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_drag_to_rearrange_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(TabBar._method_set_drag_to_rearrange_enabled_2586408642 != nil)
        let _method_get_drag_to_rearrange_enabled_36873697_name = StringName(from: "get_drag_to_rearrange_enabled")
        self._method_get_drag_to_rearrange_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_drag_to_rearrange_enabled_36873697_name._native_ptr(), 36873697)
        assert(TabBar._method_get_drag_to_rearrange_enabled_36873697 != nil)
        let _method_set_tabs_rearrange_group_1286410249_name = StringName(from: "set_tabs_rearrange_group")
        self._method_set_tabs_rearrange_group_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tabs_rearrange_group_1286410249_name._native_ptr(), 1286410249)
        assert(TabBar._method_set_tabs_rearrange_group_1286410249 != nil)
        let _method_get_tabs_rearrange_group_3905245786_name = StringName(from: "get_tabs_rearrange_group")
        self._method_get_tabs_rearrange_group_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tabs_rearrange_group_3905245786_name._native_ptr(), 3905245786)
        assert(TabBar._method_get_tabs_rearrange_group_3905245786 != nil)
        let _method_set_scroll_to_selected_2586408642_name = StringName(from: "set_scroll_to_selected")
        self._method_set_scroll_to_selected_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_scroll_to_selected_2586408642_name._native_ptr(), 2586408642)
        assert(TabBar._method_set_scroll_to_selected_2586408642 != nil)
        let _method_get_scroll_to_selected_36873697_name = StringName(from: "get_scroll_to_selected")
        self._method_get_scroll_to_selected_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_scroll_to_selected_36873697_name._native_ptr(), 36873697)
        assert(TabBar._method_get_scroll_to_selected_36873697 != nil)
        let _method_set_select_with_rmb_2586408642_name = StringName(from: "set_select_with_rmb")
        self._method_set_select_with_rmb_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_select_with_rmb_2586408642_name._native_ptr(), 2586408642)
        assert(TabBar._method_set_select_with_rmb_2586408642 != nil)
        let _method_get_select_with_rmb_36873697_name = StringName(from: "get_select_with_rmb")
        self._method_get_select_with_rmb_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_select_with_rmb_36873697_name._native_ptr(), 36873697)
        assert(TabBar._method_get_select_with_rmb_36873697 != nil)
        let _method_clear_tabs_3218959716_name = StringName(from: "clear_tabs")
        self._method_clear_tabs_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_tabs_3218959716_name._native_ptr(), 3218959716)
        assert(TabBar._method_clear_tabs_3218959716 != nil)
    }

    public func set_tab_count(count: Int64)  {
        withUnsafePointer(to: count) { count_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(count_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tab_count_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_tab_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tab_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_current_tab(tab_idx: Int64)  {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_current_tab_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_current_tab() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_current_tab_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_previous_tab() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_previous_tab_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_tab_title(tab_idx: Int64, title: String)  {
        withUnsafePointer(to: title) { title_native in
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native), .init(title_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tab_title_501894301,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_tab_title(tab_idx: Int64) -> String {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tab_title_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
    public func set_tab_text_direction(tab_idx: Int64, direction: Control.TextDirection)  {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        withUnsafePointer(to: direction.rawValue) { direction_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native), .init(direction_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tab_text_direction_1707680378,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_tab_text_direction(tab_idx: Int64) -> Control.TextDirection {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tab_text_direction_4235602388,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Control.TextDirection(from: __resPtr.pointee)
        }
    }
    public func set_tab_language(tab_idx: Int64, language: String)  {
        withUnsafePointer(to: language) { language_native in
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native), .init(language_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tab_language_501894301,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_tab_language(tab_idx: Int64) -> String {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tab_language_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
    public func set_tab_icon(tab_idx: Int64, icon: Texture2D)  {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let icon_native = icon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native), .init(icon_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tab_icon_666127730,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_tab_icon(tab_idx: Int64) -> Texture2D {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tab_icon_3536238170,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(from: __resPtr.pointee)
        }
    }
    public func set_tab_button_icon(tab_idx: Int64, icon: Texture2D)  {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let icon_native = icon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native), .init(icon_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tab_button_icon_666127730,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_tab_button_icon(tab_idx: Int64) -> Texture2D {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tab_button_icon_3536238170,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(from: __resPtr.pointee)
        }
    }
    public func set_tab_disabled(tab_idx: Int64, disabled: UInt8)  {
        withUnsafePointer(to: disabled) { disabled_native in
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native), .init(disabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tab_disabled_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func is_tab_disabled(tab_idx: Int64) -> UInt8 {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_tab_disabled_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func set_tab_hidden(tab_idx: Int64, hidden: UInt8)  {
        withUnsafePointer(to: hidden) { hidden_native in
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native), .init(hidden_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tab_hidden_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func is_tab_hidden(tab_idx: Int64) -> UInt8 {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_tab_hidden_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func remove_tab(tab_idx: Int64)  {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_tab_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_tab(title: String, icon: Texture2D)  {
        withUnsafePointer(to: title) { title_native in
        let icon_native = icon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(title_native), .init(icon_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_tab_1465444425,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_tab_idx_at_point(point: Vector2) -> Int64 {
        let point_native = point._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(point_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tab_idx_at_point_3820158470,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_tab_alignment(alignment: TabBar.AlignmentMode)  {
        withUnsafePointer(to: alignment.rawValue) { alignment_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(alignment_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tab_alignment_2413632353,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_tab_alignment() -> TabBar.AlignmentMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tab_alignment_2178122193,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TabBar.AlignmentMode(from: __resPtr.pointee)
    }
    public func set_clip_tabs(clip_tabs: UInt8)  {
        withUnsafePointer(to: clip_tabs) { clip_tabs_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(clip_tabs_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_clip_tabs_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_clip_tabs() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_clip_tabs_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_tab_offset() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tab_offset_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_offset_buttons_visible() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_offset_buttons_visible_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func ensure_tab_visible(idx: Int64)  {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_ensure_tab_visible_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_tab_rect(tab_idx: Int64) -> Rect2 {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tab_rect_3327874267,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2(from: __resPtr.pointee)
        }
    }
    public func move_tab(from: Int64, to: Int64)  {
        withUnsafePointer(to: to) { to_native in
        withUnsafePointer(to: from) { from_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native), .init(to_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_move_tab_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_tab_close_display_policy(policy: TabBar.CloseButtonDisplayPolicy)  {
        withUnsafePointer(to: policy.rawValue) { policy_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(policy_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tab_close_display_policy_2212906737,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_tab_close_display_policy() -> TabBar.CloseButtonDisplayPolicy {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tab_close_display_policy_2956568028,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TabBar.CloseButtonDisplayPolicy(from: __resPtr.pointee)
    }
    public func set_max_tab_width(width: Int64)  {
        withUnsafePointer(to: width) { width_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(width_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_max_tab_width_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_max_tab_width() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_max_tab_width_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_scrolling_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_scrolling_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_scrolling_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_scrolling_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_drag_to_rearrange_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_drag_to_rearrange_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_drag_to_rearrange_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_drag_to_rearrange_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_tabs_rearrange_group(group_id: Int64)  {
        withUnsafePointer(to: group_id) { group_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(group_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tabs_rearrange_group_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_tabs_rearrange_group() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tabs_rearrange_group_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_scroll_to_selected(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_scroll_to_selected_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_scroll_to_selected() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_scroll_to_selected_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_select_with_rmb(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_select_with_rmb_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_select_with_rmb() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_select_with_rmb_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func clear_tabs()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_tabs_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}