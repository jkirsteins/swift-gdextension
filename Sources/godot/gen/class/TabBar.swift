import godot_native

fileprivate var __godot_name_TabBar: StringName! = nil

/// Tab bar control.
/// 
/// Simple tabs control, similar to [TabContainer] but is only in charge of drawing tabs, not interacting with children.
open class TabBar : Control {

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

    static var _method_set_tab_count_1286410249: StringName! = nil
    static var _method_get_tab_count_3905245786: StringName! = nil
    static var _method_set_current_tab_1286410249: StringName! = nil
    static var _method_get_current_tab_3905245786: StringName! = nil
    static var _method_get_previous_tab_3905245786: StringName! = nil
    static var _method_set_tab_title_501894301: StringName! = nil
    static var _method_get_tab_title_844755477: StringName! = nil
    static var _method_set_tab_text_direction_1707680378: StringName! = nil
    static var _method_get_tab_text_direction_4235602388: StringName! = nil
    static var _method_set_tab_language_501894301: StringName! = nil
    static var _method_get_tab_language_844755477: StringName! = nil
    static var _method_set_tab_icon_666127730: StringName! = nil
    static var _method_get_tab_icon_3536238170: StringName! = nil
    static var _method_set_tab_button_icon_666127730: StringName! = nil
    static var _method_get_tab_button_icon_3536238170: StringName! = nil
    static var _method_set_tab_disabled_300928843: StringName! = nil
    static var _method_is_tab_disabled_1116898809: StringName! = nil
    static var _method_set_tab_hidden_300928843: StringName! = nil
    static var _method_is_tab_hidden_1116898809: StringName! = nil
    static var _method_remove_tab_1286410249: StringName! = nil
    static var _method_add_tab_1465444425: StringName! = nil
    static var _method_get_tab_idx_at_point_3820158470: StringName! = nil
    static var _method_set_tab_alignment_2413632353: StringName! = nil
    static var _method_get_tab_alignment_2178122193: StringName! = nil
    static var _method_set_clip_tabs_2586408642: StringName! = nil
    static var _method_get_clip_tabs_36873697: StringName! = nil
    static var _method_get_tab_offset_3905245786: StringName! = nil
    static var _method_get_offset_buttons_visible_36873697: StringName! = nil
    static var _method_ensure_tab_visible_1286410249: StringName! = nil
    static var _method_get_tab_rect_3327874267: StringName! = nil
    static var _method_move_tab_3937882851: StringName! = nil
    static var _method_set_tab_close_display_policy_2212906737: StringName! = nil
    static var _method_get_tab_close_display_policy_2956568028: StringName! = nil
    static var _method_set_max_tab_width_1286410249: StringName! = nil
    static var _method_get_max_tab_width_3905245786: StringName! = nil
    static var _method_set_scrolling_enabled_2586408642: StringName! = nil
    static var _method_get_scrolling_enabled_36873697: StringName! = nil
    static var _method_set_drag_to_rearrange_enabled_2586408642: StringName! = nil
    static var _method_get_drag_to_rearrange_enabled_36873697: StringName! = nil
    static var _method_set_tabs_rearrange_group_1286410249: StringName! = nil
    static var _method_get_tabs_rearrange_group_3905245786: StringName! = nil
    static var _method_set_scroll_to_selected_2586408642: StringName! = nil
    static var _method_get_scroll_to_selected_36873697: StringName! = nil
    static var _method_set_select_with_rmb_2586408642: StringName! = nil
    static var _method_get_select_with_rmb_36873697: StringName! = nil
    static var _method_clear_tabs_3218959716: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_TabBar == nil)
        __godot_name_TabBar = StringName(from: "TabBar")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_tab_count_1286410249 = StringName(from: "set_tab_count")
        assert(self._method_set_tab_count_1286410249 != nil)
        self._method_get_tab_count_3905245786 = StringName(from: "get_tab_count")
        assert(self._method_get_tab_count_3905245786 != nil)
        self._method_set_current_tab_1286410249 = StringName(from: "set_current_tab")
        assert(self._method_set_current_tab_1286410249 != nil)
        self._method_get_current_tab_3905245786 = StringName(from: "get_current_tab")
        assert(self._method_get_current_tab_3905245786 != nil)
        self._method_get_previous_tab_3905245786 = StringName(from: "get_previous_tab")
        assert(self._method_get_previous_tab_3905245786 != nil)
        self._method_set_tab_title_501894301 = StringName(from: "set_tab_title")
        assert(self._method_set_tab_title_501894301 != nil)
        self._method_get_tab_title_844755477 = StringName(from: "get_tab_title")
        assert(self._method_get_tab_title_844755477 != nil)
        self._method_set_tab_text_direction_1707680378 = StringName(from: "set_tab_text_direction")
        assert(self._method_set_tab_text_direction_1707680378 != nil)
        self._method_get_tab_text_direction_4235602388 = StringName(from: "get_tab_text_direction")
        assert(self._method_get_tab_text_direction_4235602388 != nil)
        self._method_set_tab_language_501894301 = StringName(from: "set_tab_language")
        assert(self._method_set_tab_language_501894301 != nil)
        self._method_get_tab_language_844755477 = StringName(from: "get_tab_language")
        assert(self._method_get_tab_language_844755477 != nil)
        self._method_set_tab_icon_666127730 = StringName(from: "set_tab_icon")
        assert(self._method_set_tab_icon_666127730 != nil)
        self._method_get_tab_icon_3536238170 = StringName(from: "get_tab_icon")
        assert(self._method_get_tab_icon_3536238170 != nil)
        self._method_set_tab_button_icon_666127730 = StringName(from: "set_tab_button_icon")
        assert(self._method_set_tab_button_icon_666127730 != nil)
        self._method_get_tab_button_icon_3536238170 = StringName(from: "get_tab_button_icon")
        assert(self._method_get_tab_button_icon_3536238170 != nil)
        self._method_set_tab_disabled_300928843 = StringName(from: "set_tab_disabled")
        assert(self._method_set_tab_disabled_300928843 != nil)
        self._method_is_tab_disabled_1116898809 = StringName(from: "is_tab_disabled")
        assert(self._method_is_tab_disabled_1116898809 != nil)
        self._method_set_tab_hidden_300928843 = StringName(from: "set_tab_hidden")
        assert(self._method_set_tab_hidden_300928843 != nil)
        self._method_is_tab_hidden_1116898809 = StringName(from: "is_tab_hidden")
        assert(self._method_is_tab_hidden_1116898809 != nil)
        self._method_remove_tab_1286410249 = StringName(from: "remove_tab")
        assert(self._method_remove_tab_1286410249 != nil)
        self._method_add_tab_1465444425 = StringName(from: "add_tab")
        assert(self._method_add_tab_1465444425 != nil)
        self._method_get_tab_idx_at_point_3820158470 = StringName(from: "get_tab_idx_at_point")
        assert(self._method_get_tab_idx_at_point_3820158470 != nil)
        self._method_set_tab_alignment_2413632353 = StringName(from: "set_tab_alignment")
        assert(self._method_set_tab_alignment_2413632353 != nil)
        self._method_get_tab_alignment_2178122193 = StringName(from: "get_tab_alignment")
        assert(self._method_get_tab_alignment_2178122193 != nil)
        self._method_set_clip_tabs_2586408642 = StringName(from: "set_clip_tabs")
        assert(self._method_set_clip_tabs_2586408642 != nil)
        self._method_get_clip_tabs_36873697 = StringName(from: "get_clip_tabs")
        assert(self._method_get_clip_tabs_36873697 != nil)
        self._method_get_tab_offset_3905245786 = StringName(from: "get_tab_offset")
        assert(self._method_get_tab_offset_3905245786 != nil)
        self._method_get_offset_buttons_visible_36873697 = StringName(from: "get_offset_buttons_visible")
        assert(self._method_get_offset_buttons_visible_36873697 != nil)
        self._method_ensure_tab_visible_1286410249 = StringName(from: "ensure_tab_visible")
        assert(self._method_ensure_tab_visible_1286410249 != nil)
        self._method_get_tab_rect_3327874267 = StringName(from: "get_tab_rect")
        assert(self._method_get_tab_rect_3327874267 != nil)
        self._method_move_tab_3937882851 = StringName(from: "move_tab")
        assert(self._method_move_tab_3937882851 != nil)
        self._method_set_tab_close_display_policy_2212906737 = StringName(from: "set_tab_close_display_policy")
        assert(self._method_set_tab_close_display_policy_2212906737 != nil)
        self._method_get_tab_close_display_policy_2956568028 = StringName(from: "get_tab_close_display_policy")
        assert(self._method_get_tab_close_display_policy_2956568028 != nil)
        self._method_set_max_tab_width_1286410249 = StringName(from: "set_max_tab_width")
        assert(self._method_set_max_tab_width_1286410249 != nil)
        self._method_get_max_tab_width_3905245786 = StringName(from: "get_max_tab_width")
        assert(self._method_get_max_tab_width_3905245786 != nil)
        self._method_set_scrolling_enabled_2586408642 = StringName(from: "set_scrolling_enabled")
        assert(self._method_set_scrolling_enabled_2586408642 != nil)
        self._method_get_scrolling_enabled_36873697 = StringName(from: "get_scrolling_enabled")
        assert(self._method_get_scrolling_enabled_36873697 != nil)
        self._method_set_drag_to_rearrange_enabled_2586408642 = StringName(from: "set_drag_to_rearrange_enabled")
        assert(self._method_set_drag_to_rearrange_enabled_2586408642 != nil)
        self._method_get_drag_to_rearrange_enabled_36873697 = StringName(from: "get_drag_to_rearrange_enabled")
        assert(self._method_get_drag_to_rearrange_enabled_36873697 != nil)
        self._method_set_tabs_rearrange_group_1286410249 = StringName(from: "set_tabs_rearrange_group")
        assert(self._method_set_tabs_rearrange_group_1286410249 != nil)
        self._method_get_tabs_rearrange_group_3905245786 = StringName(from: "get_tabs_rearrange_group")
        assert(self._method_get_tabs_rearrange_group_3905245786 != nil)
        self._method_set_scroll_to_selected_2586408642 = StringName(from: "set_scroll_to_selected")
        assert(self._method_set_scroll_to_selected_2586408642 != nil)
        self._method_get_scroll_to_selected_36873697 = StringName(from: "get_scroll_to_selected")
        assert(self._method_get_scroll_to_selected_36873697 != nil)
        self._method_set_select_with_rmb_2586408642 = StringName(from: "set_select_with_rmb")
        assert(self._method_set_select_with_rmb_2586408642 != nil)
        self._method_get_select_with_rmb_36873697 = StringName(from: "get_select_with_rmb")
        assert(self._method_get_select_with_rmb_36873697 != nil)
        self._method_clear_tabs_3218959716 = StringName(from: "clear_tabs")
        assert(self._method_clear_tabs_3218959716 != nil)
    }

    public func set_tab_count(count: Int64)  {
        withUnsafePointer(to: count) { count_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(count_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tab_count_1286410249._native_ptr(),
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
    public func get_tab_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tab_count_3905245786._native_ptr(),
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
    public func set_current_tab(tab_idx: Int64)  {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_current_tab_1286410249._native_ptr(),
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
    public func get_current_tab() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_current_tab_3905245786._native_ptr(),
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
    public func get_previous_tab() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_previous_tab_3905245786._native_ptr(),
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
    public func set_tab_title(tab_idx: Int64, title: godot.String)  {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let title_native = title._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native), .init(title_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tab_title_501894301._native_ptr(),
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
    public func get_tab_title(tab_idx: Int64) -> godot.String {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tab_title_844755477._native_ptr(),
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
    public func set_tab_text_direction(tab_idx: Int64, direction: Control.TextDirection)  {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        withUnsafePointer(to: direction.rawValue) { direction_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native), .init(direction_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tab_text_direction_1707680378._native_ptr(),
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
    public func get_tab_text_direction(tab_idx: Int64) -> Control.TextDirection {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tab_text_direction_4235602388._native_ptr(),
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
    public func set_tab_language(tab_idx: Int64, language: godot.String)  {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let language_native = language._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native), .init(language_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tab_language_501894301._native_ptr(),
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
    public func get_tab_language(tab_idx: Int64) -> godot.String {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tab_language_844755477._native_ptr(),
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
    public func set_tab_icon(tab_idx: Int64, icon: Texture2D)  {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let icon_native = icon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native), .init(icon_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tab_icon_666127730._native_ptr(),
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
    public func get_tab_icon(tab_idx: Int64) -> Texture2D {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tab_icon_3536238170._native_ptr(),
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
    public func set_tab_button_icon(tab_idx: Int64, icon: Texture2D)  {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let icon_native = icon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native), .init(icon_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tab_button_icon_666127730._native_ptr(),
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
    public func get_tab_button_icon(tab_idx: Int64) -> Texture2D {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tab_button_icon_3536238170._native_ptr(),
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
    public func set_tab_disabled(tab_idx: Int64, disabled: UInt8)  {
        withUnsafePointer(to: disabled) { disabled_native in
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native), .init(disabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tab_disabled_300928843._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_tab_disabled_1116898809._native_ptr(),
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
    public func set_tab_hidden(tab_idx: Int64, hidden: UInt8)  {
        withUnsafePointer(to: hidden) { hidden_native in
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native), .init(hidden_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tab_hidden_300928843._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_tab_hidden_1116898809._native_ptr(),
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
    public func remove_tab(tab_idx: Int64)  {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_tab_1286410249._native_ptr(),
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
    public func add_tab(title: godot.String, icon: Texture2D)  {
        let icon_native = icon._native_ptr()
        let title_native = title._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(title_native), .init(icon_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_tab_1465444425._native_ptr(),
                    1465444425)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tab_idx_at_point_3820158470._native_ptr(),
                    3820158470)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_tab_alignment(alignment: TabBar.AlignmentMode)  {
        withUnsafePointer(to: alignment.rawValue) { alignment_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(alignment_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tab_alignment_2413632353._native_ptr(),
                    2413632353)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tab_alignment_2178122193._native_ptr(),
                    2178122193)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TabBar.AlignmentMode(godot: __resPtr.pointee)
    }
    public func set_clip_tabs(clip_tabs: UInt8)  {
        withUnsafePointer(to: clip_tabs) { clip_tabs_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(clip_tabs_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_clip_tabs_2586408642._native_ptr(),
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
    public func get_clip_tabs() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_clip_tabs_36873697._native_ptr(),
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
    public func get_tab_offset() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tab_offset_3905245786._native_ptr(),
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
    public func get_offset_buttons_visible() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_offset_buttons_visible_36873697._native_ptr(),
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
    public func ensure_tab_visible(idx: Int64)  {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_ensure_tab_visible_1286410249._native_ptr(),
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
    public func get_tab_rect(tab_idx: Int64) -> Rect2 {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tab_rect_3327874267._native_ptr(),
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
    public func move_tab(from: Int64, to: Int64)  {
        withUnsafePointer(to: to) { to_native in
        withUnsafePointer(to: from) { from_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native), .init(to_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_move_tab_3937882851._native_ptr(),
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
    public func set_tab_close_display_policy(policy: TabBar.CloseButtonDisplayPolicy)  {
        withUnsafePointer(to: policy.rawValue) { policy_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(policy_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tab_close_display_policy_2212906737._native_ptr(),
                    2212906737)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tab_close_display_policy_2956568028._native_ptr(),
                    2956568028)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TabBar.CloseButtonDisplayPolicy(godot: __resPtr.pointee)
    }
    public func set_max_tab_width(width: Int64)  {
        withUnsafePointer(to: width) { width_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(width_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_max_tab_width_1286410249._native_ptr(),
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
    public func get_max_tab_width() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_max_tab_width_3905245786._native_ptr(),
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
    public func set_scrolling_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_scrolling_enabled_2586408642._native_ptr(),
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
    public func get_scrolling_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_scrolling_enabled_36873697._native_ptr(),
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
    public func set_drag_to_rearrange_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_drag_to_rearrange_enabled_2586408642._native_ptr(),
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
    public func get_drag_to_rearrange_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_drag_to_rearrange_enabled_36873697._native_ptr(),
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
    public func set_tabs_rearrange_group(group_id: Int64)  {
        withUnsafePointer(to: group_id) { group_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(group_id_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tabs_rearrange_group_1286410249._native_ptr(),
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
    public func get_tabs_rearrange_group() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tabs_rearrange_group_3905245786._native_ptr(),
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
    public func set_scroll_to_selected(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_scroll_to_selected_2586408642._native_ptr(),
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
    public func get_scroll_to_selected() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_scroll_to_selected_36873697._native_ptr(),
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
    public func set_select_with_rmb(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_select_with_rmb_2586408642._native_ptr(),
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
    public func get_select_with_rmb() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_select_with_rmb_36873697._native_ptr(),
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
    public func clear_tabs()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_tabs_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}