import godot_native

fileprivate var __godot_name_Control: StringName! = nil

/// All user interface nodes inherit from Control. A control's anchors and offsets adapt its position and size relative to its parent.
/// 
/// Base class for all UI-related nodes. [Control] features a bounding rectangle that defines its extents, an anchor position relative to its parent control or the current viewport, and offsets relative to the anchor. The offsets update automatically when the node, any of its parents, or the screen size change.
///  
/// For more information on Godot's UI system, anchors, offsets, and containers, see the related tutorials in the manual. To build flexible UIs, you'll need a mix of UI elements that inherit from [Control] and [Container] nodes.
///  
/// [b]User Interface nodes and input[/b]
///  
/// Godot propagates input events via viewports. Each [Viewport] is responsible for propagating [InputEvent]s to their child nodes. As the [member SceneTree.root] is a [Window], this already happens automatically for all UI elements in your game.
///  
/// Input events are propagated through the [SceneTree] from the root node to all child nodes by calling [method Node._input]. For UI elements specifically, it makes more sense to override the virtual method [method _gui_input], which filters out unrelated input events, such as by checking z-order, [member mouse_filter], focus, or if the event was inside of the control's bounding box.
///  
/// Call [method accept_event] so no other node receives the event. Once you accept an input, it becomes handled so [method Node._unhandled_input] will not process it.
///  
/// Only one [Control] node can be in focus. Only the node in focus will receive events. To get the focus, call [method grab_focus]. [Control] nodes lose focus when another node grabs it, or if you hide the node in focus.
///  
/// Sets [member mouse_filter] to [constant MOUSE_FILTER_IGNORE] to tell a [Control] node to ignore mouse or touch events. You'll need it if you place an icon on top of a button.
///  
/// [Theme] resources change the Control's appearance. If you change the [Theme] on a [Control] node, it affects all of its children. To override some of the theme's parameters, call one of the [code]add_theme_*_override[/code] methods, like [method add_theme_font_override]. You can override the theme with the Inspector.
///  
/// [b]Note:[/b] Theme items are [i]not[/i] [Object] properties. This means you can't access their values using [method Object.get] and [method Object.set]. Instead, use the [code]get_theme_*[/code] and [code]add_theme_*_override[/code] methods provided by this class.
open class Control : CanvasItem {

    public enum FocusMode : Int32 {
        case FOCUS_NONE = 0
        case FOCUS_CLICK = 1
        case FOCUS_ALL = 2
    }
    public enum CursorShape : Int32 {
        case CURSOR_ARROW = 0
        case CURSOR_IBEAM = 1
        case CURSOR_POINTING_HAND = 2
        case CURSOR_CROSS = 3
        case CURSOR_WAIT = 4
        case CURSOR_BUSY = 5
        case CURSOR_DRAG = 6
        case CURSOR_CAN_DROP = 7
        case CURSOR_FORBIDDEN = 8
        case CURSOR_VSIZE = 9
        case CURSOR_HSIZE = 10
        case CURSOR_BDIAGSIZE = 11
        case CURSOR_FDIAGSIZE = 12
        case CURSOR_MOVE = 13
        case CURSOR_VSPLIT = 14
        case CURSOR_HSPLIT = 15
        case CURSOR_HELP = 16
    }
    public enum LayoutPreset : Int32 {
        case PRESET_TOP_LEFT = 0
        case PRESET_TOP_RIGHT = 1
        case PRESET_BOTTOM_LEFT = 2
        case PRESET_BOTTOM_RIGHT = 3
        case PRESET_CENTER_LEFT = 4
        case PRESET_CENTER_TOP = 5
        case PRESET_CENTER_RIGHT = 6
        case PRESET_CENTER_BOTTOM = 7
        case PRESET_CENTER = 8
        case PRESET_LEFT_WIDE = 9
        case PRESET_TOP_WIDE = 10
        case PRESET_RIGHT_WIDE = 11
        case PRESET_BOTTOM_WIDE = 12
        case PRESET_VCENTER_WIDE = 13
        case PRESET_HCENTER_WIDE = 14
        case PRESET_FULL_RECT = 15
    }
    public enum LayoutPresetMode : Int32 {
        case PRESET_MODE_MINSIZE = 0
        case PRESET_MODE_KEEP_WIDTH = 1
        case PRESET_MODE_KEEP_HEIGHT = 2
        case PRESET_MODE_KEEP_SIZE = 3
    }
    public struct SizeFlags: OptionSet {
        public let rawValue: Int32
        public init(rawValue: Int32) {
            self.rawValue = rawValue
        }
        static let SIZE_SHRINK_BEGIN: SizeFlags = []
        static let SIZE_FILL = SizeFlags(rawValue: 1)
        static let SIZE_EXPAND = SizeFlags(rawValue: 2)
        static let SIZE_EXPAND_FILL = SizeFlags(rawValue: 3)
        static let SIZE_SHRINK_CENTER = SizeFlags(rawValue: 4)
        static let SIZE_SHRINK_END = SizeFlags(rawValue: 8)
    }
    public enum MouseFilter : Int32 {
        case MOUSE_FILTER_STOP = 0
        case MOUSE_FILTER_PASS = 1
        case MOUSE_FILTER_IGNORE = 2
    }
    public enum GrowDirection : Int32 {
        case GROW_DIRECTION_BEGIN = 0
        case GROW_DIRECTION_END = 1
        case GROW_DIRECTION_BOTH = 2
    }
    public enum Anchor : Int32 {
        case ANCHOR_BEGIN = 0
        case ANCHOR_END = 1
    }
    public enum LayoutDirection : Int32 {
        case LAYOUT_DIRECTION_INHERITED = 0
        case LAYOUT_DIRECTION_LOCALE = 1
        case LAYOUT_DIRECTION_LTR = 2
        case LAYOUT_DIRECTION_RTL = 3
    }
    public enum TextDirection : Int32 {
        case TEXT_DIRECTION_INHERITED = 3
        case TEXT_DIRECTION_AUTO = 0
        case TEXT_DIRECTION_LTR = 1
        case TEXT_DIRECTION_RTL = 2
    }

    public override class var __godot_name: StringName { __godot_name_Control }

    static var _method__has_point_0: StringName! = nil
    static var _method__structured_text_parser_0: StringName! = nil
    static var _method__get_minimum_size_0: StringName! = nil
    static var _method__get_drag_data_0: StringName! = nil
    static var _method__can_drop_data_0: StringName! = nil
    static var _method__drop_data_0: StringName! = nil
    static var _method__make_custom_tooltip_0: StringName! = nil
    static var _method__gui_input_0: StringName! = nil
    static var _method_accept_event_3218959716: StringName! = nil
    static var _method_get_minimum_size_3341600327: StringName! = nil
    static var _method_get_combined_minimum_size_3341600327: StringName! = nil
    static var _method_set_anchors_preset_509135270: StringName! = nil
    static var _method_set_offsets_preset_3651818904: StringName! = nil
    static var _method_set_anchors_and_offsets_preset_3651818904: StringName! = nil
    static var _method_set_anchor_2589937826: StringName! = nil
    static var _method_get_anchor_2869120046: StringName! = nil
    static var _method_set_offset_4290182280: StringName! = nil
    static var _method_get_offset_2869120046: StringName! = nil
    static var _method_set_anchor_and_offset_4031722181: StringName! = nil
    static var _method_set_begin_743155724: StringName! = nil
    static var _method_set_end_743155724: StringName! = nil
    static var _method_set_position_2436320129: StringName! = nil
    static var _method_set_size_2436320129: StringName! = nil
    static var _method_reset_size_3218959716: StringName! = nil
    static var _method_set_custom_minimum_size_743155724: StringName! = nil
    static var _method_set_global_position_2436320129: StringName! = nil
    static var _method_set_rotation_373806689: StringName! = nil
    static var _method_set_rotation_degrees_373806689: StringName! = nil
    static var _method_set_scale_743155724: StringName! = nil
    static var _method_set_pivot_offset_743155724: StringName! = nil
    static var _method_get_begin_3341600327: StringName! = nil
    static var _method_get_end_3341600327: StringName! = nil
    static var _method_get_position_3341600327: StringName! = nil
    static var _method_get_size_3341600327: StringName! = nil
    static var _method_get_rotation_1740695150: StringName! = nil
    static var _method_get_rotation_degrees_1740695150: StringName! = nil
    static var _method_get_scale_3341600327: StringName! = nil
    static var _method_get_pivot_offset_3341600327: StringName! = nil
    static var _method_get_custom_minimum_size_3341600327: StringName! = nil
    static var _method_get_parent_area_size_3341600327: StringName! = nil
    static var _method_get_global_position_3341600327: StringName! = nil
    static var _method_get_screen_position_3341600327: StringName! = nil
    static var _method_get_rect_1639390495: StringName! = nil
    static var _method_get_global_rect_1639390495: StringName! = nil
    static var _method_set_focus_mode_3232914922: StringName! = nil
    static var _method_get_focus_mode_2132829277: StringName! = nil
    static var _method_has_focus_36873697: StringName! = nil
    static var _method_grab_focus_3218959716: StringName! = nil
    static var _method_release_focus_3218959716: StringName! = nil
    static var _method_find_prev_valid_focus_2783021301: StringName! = nil
    static var _method_find_next_valid_focus_2783021301: StringName! = nil
    static var _method_set_h_size_flags_394851643: StringName! = nil
    static var _method_get_h_size_flags_3781367401: StringName! = nil
    static var _method_set_stretch_ratio_373806689: StringName! = nil
    static var _method_get_stretch_ratio_1740695150: StringName! = nil
    static var _method_set_v_size_flags_394851643: StringName! = nil
    static var _method_get_v_size_flags_3781367401: StringName! = nil
    static var _method_set_theme_2326690814: StringName! = nil
    static var _method_get_theme_3846893731: StringName! = nil
    static var _method_set_theme_type_variation_3304788590: StringName! = nil
    static var _method_get_theme_type_variation_2002593661: StringName! = nil
    static var _method_begin_bulk_theme_override_3218959716: StringName! = nil
    static var _method_end_bulk_theme_override_3218959716: StringName! = nil
    static var _method_add_theme_icon_override_1373065600: StringName! = nil
    static var _method_add_theme_stylebox_override_4188838905: StringName! = nil
    static var _method_add_theme_font_override_3518018674: StringName! = nil
    static var _method_add_theme_font_size_override_2415702435: StringName! = nil
    static var _method_add_theme_color_override_4260178595: StringName! = nil
    static var _method_add_theme_constant_override_2415702435: StringName! = nil
    static var _method_remove_theme_icon_override_3304788590: StringName! = nil
    static var _method_remove_theme_stylebox_override_3304788590: StringName! = nil
    static var _method_remove_theme_font_override_3304788590: StringName! = nil
    static var _method_remove_theme_font_size_override_3304788590: StringName! = nil
    static var _method_remove_theme_color_override_3304788590: StringName! = nil
    static var _method_remove_theme_constant_override_3304788590: StringName! = nil
    static var _method_get_theme_icon_2336455395: StringName! = nil
    static var _method_get_theme_stylebox_2759935355: StringName! = nil
    static var _method_get_theme_font_387378635: StringName! = nil
    static var _method_get_theme_font_size_229578101: StringName! = nil
    static var _method_get_theme_color_2377051548: StringName! = nil
    static var _method_get_theme_constant_229578101: StringName! = nil
    static var _method_has_theme_icon_override_2619796661: StringName! = nil
    static var _method_has_theme_stylebox_override_2619796661: StringName! = nil
    static var _method_has_theme_font_override_2619796661: StringName! = nil
    static var _method_has_theme_font_size_override_2619796661: StringName! = nil
    static var _method_has_theme_color_override_2619796661: StringName! = nil
    static var _method_has_theme_constant_override_2619796661: StringName! = nil
    static var _method_has_theme_icon_1187511791: StringName! = nil
    static var _method_has_theme_stylebox_1187511791: StringName! = nil
    static var _method_has_theme_font_1187511791: StringName! = nil
    static var _method_has_theme_font_size_1187511791: StringName! = nil
    static var _method_has_theme_color_1187511791: StringName! = nil
    static var _method_has_theme_constant_1187511791: StringName! = nil
    static var _method_get_theme_default_base_scale_1740695150: StringName! = nil
    static var _method_get_theme_default_font_3229501585: StringName! = nil
    static var _method_get_theme_default_font_size_3905245786: StringName! = nil
    static var _method_get_parent_control_2783021301: StringName! = nil
    static var _method_set_h_grow_direction_2022385301: StringName! = nil
    static var _method_get_h_grow_direction_3635610155: StringName! = nil
    static var _method_set_v_grow_direction_2022385301: StringName! = nil
    static var _method_get_v_grow_direction_3635610155: StringName! = nil
    static var _method_set_tooltip_text_83702148: StringName! = nil
    static var _method_get_tooltip_text_201670096: StringName! = nil
    static var _method_get_tooltip_2895288280: StringName! = nil
    static var _method_set_default_cursor_shape_217062046: StringName! = nil
    static var _method_get_default_cursor_shape_2359535750: StringName! = nil
    static var _method_get_cursor_shape_1395773853: StringName! = nil
    static var _method_set_focus_neighbor_2024461774: StringName! = nil
    static var _method_get_focus_neighbor_2757935761: StringName! = nil
    static var _method_set_focus_next_1348162250: StringName! = nil
    static var _method_get_focus_next_4075236667: StringName! = nil
    static var _method_set_focus_previous_1348162250: StringName! = nil
    static var _method_get_focus_previous_4075236667: StringName! = nil
    static var _method_force_drag_3191844692: StringName! = nil
    static var _method_set_mouse_filter_3891156122: StringName! = nil
    static var _method_get_mouse_filter_1572545674: StringName! = nil
    static var _method_set_force_pass_scroll_events_2586408642: StringName! = nil
    static var _method_is_force_pass_scroll_events_36873697: StringName! = nil
    static var _method_set_clip_contents_2586408642: StringName! = nil
    static var _method_is_clipping_contents_2240911060: StringName! = nil
    static var _method_grab_click_focus_3218959716: StringName! = nil
    static var _method_set_drag_forwarding_1076571380: StringName! = nil
    static var _method_set_drag_preview_1496901182: StringName! = nil
    static var _method_is_drag_successful_36873697: StringName! = nil
    static var _method_warp_mouse_743155724: StringName! = nil
    static var _method_set_shortcut_context_1078189570: StringName! = nil
    static var _method_get_shortcut_context_3160264692: StringName! = nil
    static var _method_update_minimum_size_3218959716: StringName! = nil
    static var _method_set_layout_direction_3310692370: StringName! = nil
    static var _method_get_layout_direction_1546772008: StringName! = nil
    static var _method_is_layout_rtl_36873697: StringName! = nil
    static var _method_set_auto_translate_2586408642: StringName! = nil
    static var _method_is_auto_translating_36873697: StringName! = nil
    static var _method_set_localize_numeral_system_2586408642: StringName! = nil
    static var _method_is_localizing_numeral_system_36873697: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_Control == nil)
        __godot_name_Control = StringName(from: "Control")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_accept_event_3218959716 = StringName(from: "accept_event")
        assert(self._method_accept_event_3218959716 != nil)
        self._method_get_minimum_size_3341600327 = StringName(from: "get_minimum_size")
        assert(self._method_get_minimum_size_3341600327 != nil)
        self._method_get_combined_minimum_size_3341600327 = StringName(from: "get_combined_minimum_size")
        assert(self._method_get_combined_minimum_size_3341600327 != nil)
        self._method_set_anchors_preset_509135270 = StringName(from: "set_anchors_preset")
        assert(self._method_set_anchors_preset_509135270 != nil)
        self._method_set_offsets_preset_3651818904 = StringName(from: "set_offsets_preset")
        assert(self._method_set_offsets_preset_3651818904 != nil)
        self._method_set_anchors_and_offsets_preset_3651818904 = StringName(from: "set_anchors_and_offsets_preset")
        assert(self._method_set_anchors_and_offsets_preset_3651818904 != nil)
        self._method_set_anchor_2589937826 = StringName(from: "set_anchor")
        assert(self._method_set_anchor_2589937826 != nil)
        self._method_get_anchor_2869120046 = StringName(from: "get_anchor")
        assert(self._method_get_anchor_2869120046 != nil)
        self._method_set_offset_4290182280 = StringName(from: "set_offset")
        assert(self._method_set_offset_4290182280 != nil)
        self._method_get_offset_2869120046 = StringName(from: "get_offset")
        assert(self._method_get_offset_2869120046 != nil)
        self._method_set_anchor_and_offset_4031722181 = StringName(from: "set_anchor_and_offset")
        assert(self._method_set_anchor_and_offset_4031722181 != nil)
        self._method_set_begin_743155724 = StringName(from: "set_begin")
        assert(self._method_set_begin_743155724 != nil)
        self._method_set_end_743155724 = StringName(from: "set_end")
        assert(self._method_set_end_743155724 != nil)
        self._method_set_position_2436320129 = StringName(from: "set_position")
        assert(self._method_set_position_2436320129 != nil)
        self._method_set_size_2436320129 = StringName(from: "set_size")
        assert(self._method_set_size_2436320129 != nil)
        self._method_reset_size_3218959716 = StringName(from: "reset_size")
        assert(self._method_reset_size_3218959716 != nil)
        self._method_set_custom_minimum_size_743155724 = StringName(from: "set_custom_minimum_size")
        assert(self._method_set_custom_minimum_size_743155724 != nil)
        self._method_set_global_position_2436320129 = StringName(from: "set_global_position")
        assert(self._method_set_global_position_2436320129 != nil)
        self._method_set_rotation_373806689 = StringName(from: "set_rotation")
        assert(self._method_set_rotation_373806689 != nil)
        self._method_set_rotation_degrees_373806689 = StringName(from: "set_rotation_degrees")
        assert(self._method_set_rotation_degrees_373806689 != nil)
        self._method_set_scale_743155724 = StringName(from: "set_scale")
        assert(self._method_set_scale_743155724 != nil)
        self._method_set_pivot_offset_743155724 = StringName(from: "set_pivot_offset")
        assert(self._method_set_pivot_offset_743155724 != nil)
        self._method_get_begin_3341600327 = StringName(from: "get_begin")
        assert(self._method_get_begin_3341600327 != nil)
        self._method_get_end_3341600327 = StringName(from: "get_end")
        assert(self._method_get_end_3341600327 != nil)
        self._method_get_position_3341600327 = StringName(from: "get_position")
        assert(self._method_get_position_3341600327 != nil)
        self._method_get_size_3341600327 = StringName(from: "get_size")
        assert(self._method_get_size_3341600327 != nil)
        self._method_get_rotation_1740695150 = StringName(from: "get_rotation")
        assert(self._method_get_rotation_1740695150 != nil)
        self._method_get_rotation_degrees_1740695150 = StringName(from: "get_rotation_degrees")
        assert(self._method_get_rotation_degrees_1740695150 != nil)
        self._method_get_scale_3341600327 = StringName(from: "get_scale")
        assert(self._method_get_scale_3341600327 != nil)
        self._method_get_pivot_offset_3341600327 = StringName(from: "get_pivot_offset")
        assert(self._method_get_pivot_offset_3341600327 != nil)
        self._method_get_custom_minimum_size_3341600327 = StringName(from: "get_custom_minimum_size")
        assert(self._method_get_custom_minimum_size_3341600327 != nil)
        self._method_get_parent_area_size_3341600327 = StringName(from: "get_parent_area_size")
        assert(self._method_get_parent_area_size_3341600327 != nil)
        self._method_get_global_position_3341600327 = StringName(from: "get_global_position")
        assert(self._method_get_global_position_3341600327 != nil)
        self._method_get_screen_position_3341600327 = StringName(from: "get_screen_position")
        assert(self._method_get_screen_position_3341600327 != nil)
        self._method_get_rect_1639390495 = StringName(from: "get_rect")
        assert(self._method_get_rect_1639390495 != nil)
        self._method_get_global_rect_1639390495 = StringName(from: "get_global_rect")
        assert(self._method_get_global_rect_1639390495 != nil)
        self._method_set_focus_mode_3232914922 = StringName(from: "set_focus_mode")
        assert(self._method_set_focus_mode_3232914922 != nil)
        self._method_get_focus_mode_2132829277 = StringName(from: "get_focus_mode")
        assert(self._method_get_focus_mode_2132829277 != nil)
        self._method_has_focus_36873697 = StringName(from: "has_focus")
        assert(self._method_has_focus_36873697 != nil)
        self._method_grab_focus_3218959716 = StringName(from: "grab_focus")
        assert(self._method_grab_focus_3218959716 != nil)
        self._method_release_focus_3218959716 = StringName(from: "release_focus")
        assert(self._method_release_focus_3218959716 != nil)
        self._method_find_prev_valid_focus_2783021301 = StringName(from: "find_prev_valid_focus")
        assert(self._method_find_prev_valid_focus_2783021301 != nil)
        self._method_find_next_valid_focus_2783021301 = StringName(from: "find_next_valid_focus")
        assert(self._method_find_next_valid_focus_2783021301 != nil)
        self._method_set_h_size_flags_394851643 = StringName(from: "set_h_size_flags")
        assert(self._method_set_h_size_flags_394851643 != nil)
        self._method_get_h_size_flags_3781367401 = StringName(from: "get_h_size_flags")
        assert(self._method_get_h_size_flags_3781367401 != nil)
        self._method_set_stretch_ratio_373806689 = StringName(from: "set_stretch_ratio")
        assert(self._method_set_stretch_ratio_373806689 != nil)
        self._method_get_stretch_ratio_1740695150 = StringName(from: "get_stretch_ratio")
        assert(self._method_get_stretch_ratio_1740695150 != nil)
        self._method_set_v_size_flags_394851643 = StringName(from: "set_v_size_flags")
        assert(self._method_set_v_size_flags_394851643 != nil)
        self._method_get_v_size_flags_3781367401 = StringName(from: "get_v_size_flags")
        assert(self._method_get_v_size_flags_3781367401 != nil)
        self._method_set_theme_2326690814 = StringName(from: "set_theme")
        assert(self._method_set_theme_2326690814 != nil)
        self._method_get_theme_3846893731 = StringName(from: "get_theme")
        assert(self._method_get_theme_3846893731 != nil)
        self._method_set_theme_type_variation_3304788590 = StringName(from: "set_theme_type_variation")
        assert(self._method_set_theme_type_variation_3304788590 != nil)
        self._method_get_theme_type_variation_2002593661 = StringName(from: "get_theme_type_variation")
        assert(self._method_get_theme_type_variation_2002593661 != nil)
        self._method_begin_bulk_theme_override_3218959716 = StringName(from: "begin_bulk_theme_override")
        assert(self._method_begin_bulk_theme_override_3218959716 != nil)
        self._method_end_bulk_theme_override_3218959716 = StringName(from: "end_bulk_theme_override")
        assert(self._method_end_bulk_theme_override_3218959716 != nil)
        self._method_add_theme_icon_override_1373065600 = StringName(from: "add_theme_icon_override")
        assert(self._method_add_theme_icon_override_1373065600 != nil)
        self._method_add_theme_stylebox_override_4188838905 = StringName(from: "add_theme_stylebox_override")
        assert(self._method_add_theme_stylebox_override_4188838905 != nil)
        self._method_add_theme_font_override_3518018674 = StringName(from: "add_theme_font_override")
        assert(self._method_add_theme_font_override_3518018674 != nil)
        self._method_add_theme_font_size_override_2415702435 = StringName(from: "add_theme_font_size_override")
        assert(self._method_add_theme_font_size_override_2415702435 != nil)
        self._method_add_theme_color_override_4260178595 = StringName(from: "add_theme_color_override")
        assert(self._method_add_theme_color_override_4260178595 != nil)
        self._method_add_theme_constant_override_2415702435 = StringName(from: "add_theme_constant_override")
        assert(self._method_add_theme_constant_override_2415702435 != nil)
        self._method_remove_theme_icon_override_3304788590 = StringName(from: "remove_theme_icon_override")
        assert(self._method_remove_theme_icon_override_3304788590 != nil)
        self._method_remove_theme_stylebox_override_3304788590 = StringName(from: "remove_theme_stylebox_override")
        assert(self._method_remove_theme_stylebox_override_3304788590 != nil)
        self._method_remove_theme_font_override_3304788590 = StringName(from: "remove_theme_font_override")
        assert(self._method_remove_theme_font_override_3304788590 != nil)
        self._method_remove_theme_font_size_override_3304788590 = StringName(from: "remove_theme_font_size_override")
        assert(self._method_remove_theme_font_size_override_3304788590 != nil)
        self._method_remove_theme_color_override_3304788590 = StringName(from: "remove_theme_color_override")
        assert(self._method_remove_theme_color_override_3304788590 != nil)
        self._method_remove_theme_constant_override_3304788590 = StringName(from: "remove_theme_constant_override")
        assert(self._method_remove_theme_constant_override_3304788590 != nil)
        self._method_get_theme_icon_2336455395 = StringName(from: "get_theme_icon")
        assert(self._method_get_theme_icon_2336455395 != nil)
        self._method_get_theme_stylebox_2759935355 = StringName(from: "get_theme_stylebox")
        assert(self._method_get_theme_stylebox_2759935355 != nil)
        self._method_get_theme_font_387378635 = StringName(from: "get_theme_font")
        assert(self._method_get_theme_font_387378635 != nil)
        self._method_get_theme_font_size_229578101 = StringName(from: "get_theme_font_size")
        assert(self._method_get_theme_font_size_229578101 != nil)
        self._method_get_theme_color_2377051548 = StringName(from: "get_theme_color")
        assert(self._method_get_theme_color_2377051548 != nil)
        self._method_get_theme_constant_229578101 = StringName(from: "get_theme_constant")
        assert(self._method_get_theme_constant_229578101 != nil)
        self._method_has_theme_icon_override_2619796661 = StringName(from: "has_theme_icon_override")
        assert(self._method_has_theme_icon_override_2619796661 != nil)
        self._method_has_theme_stylebox_override_2619796661 = StringName(from: "has_theme_stylebox_override")
        assert(self._method_has_theme_stylebox_override_2619796661 != nil)
        self._method_has_theme_font_override_2619796661 = StringName(from: "has_theme_font_override")
        assert(self._method_has_theme_font_override_2619796661 != nil)
        self._method_has_theme_font_size_override_2619796661 = StringName(from: "has_theme_font_size_override")
        assert(self._method_has_theme_font_size_override_2619796661 != nil)
        self._method_has_theme_color_override_2619796661 = StringName(from: "has_theme_color_override")
        assert(self._method_has_theme_color_override_2619796661 != nil)
        self._method_has_theme_constant_override_2619796661 = StringName(from: "has_theme_constant_override")
        assert(self._method_has_theme_constant_override_2619796661 != nil)
        self._method_has_theme_icon_1187511791 = StringName(from: "has_theme_icon")
        assert(self._method_has_theme_icon_1187511791 != nil)
        self._method_has_theme_stylebox_1187511791 = StringName(from: "has_theme_stylebox")
        assert(self._method_has_theme_stylebox_1187511791 != nil)
        self._method_has_theme_font_1187511791 = StringName(from: "has_theme_font")
        assert(self._method_has_theme_font_1187511791 != nil)
        self._method_has_theme_font_size_1187511791 = StringName(from: "has_theme_font_size")
        assert(self._method_has_theme_font_size_1187511791 != nil)
        self._method_has_theme_color_1187511791 = StringName(from: "has_theme_color")
        assert(self._method_has_theme_color_1187511791 != nil)
        self._method_has_theme_constant_1187511791 = StringName(from: "has_theme_constant")
        assert(self._method_has_theme_constant_1187511791 != nil)
        self._method_get_theme_default_base_scale_1740695150 = StringName(from: "get_theme_default_base_scale")
        assert(self._method_get_theme_default_base_scale_1740695150 != nil)
        self._method_get_theme_default_font_3229501585 = StringName(from: "get_theme_default_font")
        assert(self._method_get_theme_default_font_3229501585 != nil)
        self._method_get_theme_default_font_size_3905245786 = StringName(from: "get_theme_default_font_size")
        assert(self._method_get_theme_default_font_size_3905245786 != nil)
        self._method_get_parent_control_2783021301 = StringName(from: "get_parent_control")
        assert(self._method_get_parent_control_2783021301 != nil)
        self._method_set_h_grow_direction_2022385301 = StringName(from: "set_h_grow_direction")
        assert(self._method_set_h_grow_direction_2022385301 != nil)
        self._method_get_h_grow_direction_3635610155 = StringName(from: "get_h_grow_direction")
        assert(self._method_get_h_grow_direction_3635610155 != nil)
        self._method_set_v_grow_direction_2022385301 = StringName(from: "set_v_grow_direction")
        assert(self._method_set_v_grow_direction_2022385301 != nil)
        self._method_get_v_grow_direction_3635610155 = StringName(from: "get_v_grow_direction")
        assert(self._method_get_v_grow_direction_3635610155 != nil)
        self._method_set_tooltip_text_83702148 = StringName(from: "set_tooltip_text")
        assert(self._method_set_tooltip_text_83702148 != nil)
        self._method_get_tooltip_text_201670096 = StringName(from: "get_tooltip_text")
        assert(self._method_get_tooltip_text_201670096 != nil)
        self._method_get_tooltip_2895288280 = StringName(from: "get_tooltip")
        assert(self._method_get_tooltip_2895288280 != nil)
        self._method_set_default_cursor_shape_217062046 = StringName(from: "set_default_cursor_shape")
        assert(self._method_set_default_cursor_shape_217062046 != nil)
        self._method_get_default_cursor_shape_2359535750 = StringName(from: "get_default_cursor_shape")
        assert(self._method_get_default_cursor_shape_2359535750 != nil)
        self._method_get_cursor_shape_1395773853 = StringName(from: "get_cursor_shape")
        assert(self._method_get_cursor_shape_1395773853 != nil)
        self._method_set_focus_neighbor_2024461774 = StringName(from: "set_focus_neighbor")
        assert(self._method_set_focus_neighbor_2024461774 != nil)
        self._method_get_focus_neighbor_2757935761 = StringName(from: "get_focus_neighbor")
        assert(self._method_get_focus_neighbor_2757935761 != nil)
        self._method_set_focus_next_1348162250 = StringName(from: "set_focus_next")
        assert(self._method_set_focus_next_1348162250 != nil)
        self._method_get_focus_next_4075236667 = StringName(from: "get_focus_next")
        assert(self._method_get_focus_next_4075236667 != nil)
        self._method_set_focus_previous_1348162250 = StringName(from: "set_focus_previous")
        assert(self._method_set_focus_previous_1348162250 != nil)
        self._method_get_focus_previous_4075236667 = StringName(from: "get_focus_previous")
        assert(self._method_get_focus_previous_4075236667 != nil)
        self._method_force_drag_3191844692 = StringName(from: "force_drag")
        assert(self._method_force_drag_3191844692 != nil)
        self._method_set_mouse_filter_3891156122 = StringName(from: "set_mouse_filter")
        assert(self._method_set_mouse_filter_3891156122 != nil)
        self._method_get_mouse_filter_1572545674 = StringName(from: "get_mouse_filter")
        assert(self._method_get_mouse_filter_1572545674 != nil)
        self._method_set_force_pass_scroll_events_2586408642 = StringName(from: "set_force_pass_scroll_events")
        assert(self._method_set_force_pass_scroll_events_2586408642 != nil)
        self._method_is_force_pass_scroll_events_36873697 = StringName(from: "is_force_pass_scroll_events")
        assert(self._method_is_force_pass_scroll_events_36873697 != nil)
        self._method_set_clip_contents_2586408642 = StringName(from: "set_clip_contents")
        assert(self._method_set_clip_contents_2586408642 != nil)
        self._method_is_clipping_contents_2240911060 = StringName(from: "is_clipping_contents")
        assert(self._method_is_clipping_contents_2240911060 != nil)
        self._method_grab_click_focus_3218959716 = StringName(from: "grab_click_focus")
        assert(self._method_grab_click_focus_3218959716 != nil)
        self._method_set_drag_forwarding_1076571380 = StringName(from: "set_drag_forwarding")
        assert(self._method_set_drag_forwarding_1076571380 != nil)
        self._method_set_drag_preview_1496901182 = StringName(from: "set_drag_preview")
        assert(self._method_set_drag_preview_1496901182 != nil)
        self._method_is_drag_successful_36873697 = StringName(from: "is_drag_successful")
        assert(self._method_is_drag_successful_36873697 != nil)
        self._method_warp_mouse_743155724 = StringName(from: "warp_mouse")
        assert(self._method_warp_mouse_743155724 != nil)
        self._method_set_shortcut_context_1078189570 = StringName(from: "set_shortcut_context")
        assert(self._method_set_shortcut_context_1078189570 != nil)
        self._method_get_shortcut_context_3160264692 = StringName(from: "get_shortcut_context")
        assert(self._method_get_shortcut_context_3160264692 != nil)
        self._method_update_minimum_size_3218959716 = StringName(from: "update_minimum_size")
        assert(self._method_update_minimum_size_3218959716 != nil)
        self._method_set_layout_direction_3310692370 = StringName(from: "set_layout_direction")
        assert(self._method_set_layout_direction_3310692370 != nil)
        self._method_get_layout_direction_1546772008 = StringName(from: "get_layout_direction")
        assert(self._method_get_layout_direction_1546772008 != nil)
        self._method_is_layout_rtl_36873697 = StringName(from: "is_layout_rtl")
        assert(self._method_is_layout_rtl_36873697 != nil)
        self._method_set_auto_translate_2586408642 = StringName(from: "set_auto_translate")
        assert(self._method_set_auto_translate_2586408642 != nil)
        self._method_is_auto_translating_36873697 = StringName(from: "is_auto_translating")
        assert(self._method_is_auto_translating_36873697 != nil)
        self._method_set_localize_numeral_system_2586408642 = StringName(from: "set_localize_numeral_system")
        assert(self._method_set_localize_numeral_system_2586408642 != nil)
        self._method_is_localizing_numeral_system_36873697 = StringName(from: "is_localizing_numeral_system")
        assert(self._method_is_localizing_numeral_system_36873697 != nil)
    }

    public func _has_point(position: Vector2) -> UInt8 {
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return UInt8(godot: __resPtr.pointee)
    }
    public func _structured_text_parser(args: Array, text: godot.String) -> [Vector3i] {
        let text_native = text._native_ptr()
        let args_native = args._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(args_native), .init(text_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return [Vector3i](godot: __resPtr.pointee)
    }
    public func _get_minimum_size() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return Vector2(godot: __resPtr.pointee)
    }
    public func _get_drag_data(at_position: Vector2) -> Variant {
        let at_position_native = at_position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(at_position_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return Variant(godot: __resPtr.pointee)
    }
    public func _can_drop_data(at_position: Vector2, data: Variant) -> UInt8 {
        let data_native = data._native_ptr()
        let at_position_native = at_position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(at_position_native), .init(data_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return UInt8(godot: __resPtr.pointee)
    }
    public func _drop_data(at_position: Vector2, data: Variant)  {
        let data_native = data._native_ptr()
        let at_position_native = at_position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(at_position_native), .init(data_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _make_custom_tooltip(for_text: godot.String) -> Object {
        let for_text_native = for_text._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(for_text_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return Object(godot: __resPtr.pointee)
    }
    public func _gui_input(event: InputEvent)  {
        let event_native = event._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(event_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func accept_event()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_accept_event_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_minimum_size() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_minimum_size_3341600327._native_ptr(),
                    3341600327)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func get_combined_minimum_size() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_combined_minimum_size_3341600327._native_ptr(),
                    3341600327)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func set_anchors_preset(preset: Control.LayoutPreset, keep_offsets: UInt8)  {
        withUnsafePointer(to: keep_offsets) { keep_offsets_native in
        withUnsafePointer(to: preset.rawValue) { preset_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(preset_native), .init(keep_offsets_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_anchors_preset_509135270._native_ptr(),
                    509135270)
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
    public func set_offsets_preset(preset: Control.LayoutPreset, resize_mode: Control.LayoutPresetMode, margin: Int64)  {
        withUnsafePointer(to: margin) { margin_native in
        withUnsafePointer(to: resize_mode.rawValue) { resize_mode_native in
        withUnsafePointer(to: preset.rawValue) { preset_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(preset_native), .init(resize_mode_native), .init(margin_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_offsets_preset_3651818904._native_ptr(),
                    3651818904)
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
    public func set_anchors_and_offsets_preset(preset: Control.LayoutPreset, resize_mode: Control.LayoutPresetMode, margin: Int64)  {
        withUnsafePointer(to: margin) { margin_native in
        withUnsafePointer(to: resize_mode.rawValue) { resize_mode_native in
        withUnsafePointer(to: preset.rawValue) { preset_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(preset_native), .init(resize_mode_native), .init(margin_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_anchors_and_offsets_preset_3651818904._native_ptr(),
                    3651818904)
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
    public func set_anchor(side: Side, anchor: Float64, keep_offset: UInt8, push_opposite_anchor: UInt8)  {
        withUnsafePointer(to: push_opposite_anchor) { push_opposite_anchor_native in
        withUnsafePointer(to: keep_offset) { keep_offset_native in
        withUnsafePointer(to: anchor) { anchor_native in
        withUnsafePointer(to: side.rawValue) { side_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(side_native), .init(anchor_native), .init(keep_offset_native), .init(push_opposite_anchor_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_anchor_2589937826._native_ptr(),
                    2589937826)
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
    public func get_anchor(side: Side) -> Float64 {
        withUnsafePointer(to: side.rawValue) { side_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(side_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_anchor_2869120046._native_ptr(),
                    2869120046)
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
    public func set_offset(side: Side, offset: Float64)  {
        withUnsafePointer(to: offset) { offset_native in
        withUnsafePointer(to: side.rawValue) { side_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(side_native), .init(offset_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_offset_4290182280._native_ptr(),
                    4290182280)
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
    public func get_offset(offset: Side) -> Float64 {
        withUnsafePointer(to: offset.rawValue) { offset_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_offset_2869120046._native_ptr(),
                    2869120046)
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
    public func set_anchor_and_offset(side: Side, anchor: Float64, offset: Float64, push_opposite_anchor: UInt8)  {
        withUnsafePointer(to: push_opposite_anchor) { push_opposite_anchor_native in
        withUnsafePointer(to: offset) { offset_native in
        withUnsafePointer(to: anchor) { anchor_native in
        withUnsafePointer(to: side.rawValue) { side_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(side_native), .init(anchor_native), .init(offset_native), .init(push_opposite_anchor_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_anchor_and_offset_4031722181._native_ptr(),
                    4031722181)
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
    public func set_begin(position: Vector2)  {
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_begin_743155724._native_ptr(),
                    743155724)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_end(position: Vector2)  {
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_end_743155724._native_ptr(),
                    743155724)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_position(position: Vector2, keep_offsets: UInt8)  {
        withUnsafePointer(to: keep_offsets) { keep_offsets_native in
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native), .init(keep_offsets_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_position_2436320129._native_ptr(),
                    2436320129)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_size(size: Vector2, keep_offsets: UInt8)  {
        withUnsafePointer(to: keep_offsets) { keep_offsets_native in
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native), .init(keep_offsets_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_size_2436320129._native_ptr(),
                    2436320129)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func reset_size()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_reset_size_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_custom_minimum_size(size: Vector2)  {
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_custom_minimum_size_743155724._native_ptr(),
                    743155724)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_global_position(position: Vector2, keep_offsets: UInt8)  {
        withUnsafePointer(to: keep_offsets) { keep_offsets_native in
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native), .init(keep_offsets_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_global_position_2436320129._native_ptr(),
                    2436320129)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_rotation(radians: Float64)  {
        withUnsafePointer(to: radians) { radians_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(radians_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_rotation_373806689._native_ptr(),
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
    public func set_rotation_degrees(degrees: Float64)  {
        withUnsafePointer(to: degrees) { degrees_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(degrees_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_rotation_degrees_373806689._native_ptr(),
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
    public func set_scale(scale: Vector2)  {
        let scale_native = scale._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_scale_743155724._native_ptr(),
                    743155724)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_pivot_offset(pivot_offset: Vector2)  {
        let pivot_offset_native = pivot_offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pivot_offset_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_pivot_offset_743155724._native_ptr(),
                    743155724)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_begin() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_begin_3341600327._native_ptr(),
                    3341600327)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func get_end() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_end_3341600327._native_ptr(),
                    3341600327)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func get_position() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_position_3341600327._native_ptr(),
                    3341600327)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func get_size() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_size_3341600327._native_ptr(),
                    3341600327)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func get_rotation() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_rotation_1740695150._native_ptr(),
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
    public func get_rotation_degrees() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_rotation_degrees_1740695150._native_ptr(),
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
    public func get_scale() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_scale_3341600327._native_ptr(),
                    3341600327)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func get_pivot_offset() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_pivot_offset_3341600327._native_ptr(),
                    3341600327)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func get_custom_minimum_size() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_custom_minimum_size_3341600327._native_ptr(),
                    3341600327)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func get_parent_area_size() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_parent_area_size_3341600327._native_ptr(),
                    3341600327)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func get_global_position() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_global_position_3341600327._native_ptr(),
                    3341600327)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func get_screen_position() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_screen_position_3341600327._native_ptr(),
                    3341600327)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func get_rect() -> Rect2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_rect_1639390495._native_ptr(),
                    1639390495)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2(godot: __resPtr.pointee)
    }
    public func get_global_rect() -> Rect2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_global_rect_1639390495._native_ptr(),
                    1639390495)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2(godot: __resPtr.pointee)
    }
    public func set_focus_mode(mode: Control.FocusMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_focus_mode_3232914922._native_ptr(),
                    3232914922)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_focus_mode() -> Control.FocusMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_focus_mode_2132829277._native_ptr(),
                    2132829277)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Control.FocusMode(godot: __resPtr.pointee)
    }
    public func has_focus() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_focus_36873697._native_ptr(),
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
    public func grab_focus()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_grab_focus_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func release_focus()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_release_focus_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func find_prev_valid_focus() -> Control {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_find_prev_valid_focus_2783021301._native_ptr(),
                    2783021301)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Control(godot: __resPtr.pointee)
    }
    public func find_next_valid_focus() -> Control {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_find_next_valid_focus_2783021301._native_ptr(),
                    2783021301)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Control(godot: __resPtr.pointee)
    }
    public func set_h_size_flags(flags: Control.SizeFlags)  {
        withUnsafePointer(to: flags.rawValue) { flags_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flags_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_h_size_flags_394851643._native_ptr(),
                    394851643)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_h_size_flags() -> Control.SizeFlags {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_h_size_flags_3781367401._native_ptr(),
                    3781367401)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Control.SizeFlags(godot: __resPtr.pointee)
    }
    public func set_stretch_ratio(ratio: Float64)  {
        withUnsafePointer(to: ratio) { ratio_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ratio_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_stretch_ratio_373806689._native_ptr(),
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
    public func get_stretch_ratio() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_stretch_ratio_1740695150._native_ptr(),
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
    public func set_v_size_flags(flags: Control.SizeFlags)  {
        withUnsafePointer(to: flags.rawValue) { flags_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flags_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_v_size_flags_394851643._native_ptr(),
                    394851643)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_v_size_flags() -> Control.SizeFlags {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_v_size_flags_3781367401._native_ptr(),
                    3781367401)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Control.SizeFlags(godot: __resPtr.pointee)
    }
    public func set_theme(theme: Theme)  {
        let theme_native = theme._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(theme_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_theme_2326690814._native_ptr(),
                    2326690814)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_theme() -> Theme {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_theme_3846893731._native_ptr(),
                    3846893731)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Theme(godot: __resPtr.pointee)
    }
    public func set_theme_type_variation(theme_type: StringName)  {
        let theme_type_native = theme_type._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(theme_type_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_theme_type_variation_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_theme_type_variation() -> StringName {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_theme_type_variation_2002593661._native_ptr(),
                    2002593661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
    }
    public func begin_bulk_theme_override()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_begin_bulk_theme_override_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func end_bulk_theme_override()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_end_bulk_theme_override_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_theme_icon_override(name: StringName, texture: Texture2D)  {
        let texture_native = texture._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(texture_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_theme_icon_override_1373065600._native_ptr(),
                    1373065600)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_theme_stylebox_override(name: StringName, stylebox: StyleBox)  {
        let stylebox_native = stylebox._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(stylebox_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_theme_stylebox_override_4188838905._native_ptr(),
                    4188838905)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_theme_font_override(name: StringName, font: Font)  {
        let font_native = font._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(font_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_theme_font_override_3518018674._native_ptr(),
                    3518018674)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_theme_font_size_override(name: StringName, font_size: Int64)  {
        withUnsafePointer(to: font_size) { font_size_native in
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(font_size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_theme_font_size_override_2415702435._native_ptr(),
                    2415702435)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_theme_color_override(name: StringName, color: Color)  {
        let color_native = color._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(color_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_theme_color_override_4260178595._native_ptr(),
                    4260178595)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_theme_constant_override(name: StringName, constant: Int64)  {
        withUnsafePointer(to: constant) { constant_native in
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(constant_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_theme_constant_override_2415702435._native_ptr(),
                    2415702435)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func remove_theme_icon_override(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_theme_icon_override_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_theme_stylebox_override(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_theme_stylebox_override_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_theme_font_override(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_theme_font_override_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_theme_font_size_override(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_theme_font_size_override_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_theme_color_override(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_theme_color_override_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_theme_constant_override(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_theme_constant_override_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_theme_icon(name: StringName, theme_type: StringName) -> Texture2D {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_theme_icon_2336455395._native_ptr(),
                    2336455395)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
    }
    public func get_theme_stylebox(name: StringName, theme_type: StringName) -> StyleBox {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_theme_stylebox_2759935355._native_ptr(),
                    2759935355)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StyleBox(godot: __resPtr.pointee)
    }
    public func get_theme_font(name: StringName, theme_type: StringName) -> Font {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_theme_font_387378635._native_ptr(),
                    387378635)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Font(godot: __resPtr.pointee)
    }
    public func get_theme_font_size(name: StringName, theme_type: StringName) -> Int64 {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_theme_font_size_229578101._native_ptr(),
                    229578101)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_theme_color(name: StringName, theme_type: StringName) -> Color {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_theme_color_2377051548._native_ptr(),
                    2377051548)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
    public func get_theme_constant(name: StringName, theme_type: StringName) -> Int64 {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_theme_constant_229578101._native_ptr(),
                    229578101)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func has_theme_icon_override(name: StringName) -> UInt8 {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_theme_icon_override_2619796661._native_ptr(),
                    2619796661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func has_theme_stylebox_override(name: StringName) -> UInt8 {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_theme_stylebox_override_2619796661._native_ptr(),
                    2619796661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func has_theme_font_override(name: StringName) -> UInt8 {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_theme_font_override_2619796661._native_ptr(),
                    2619796661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func has_theme_font_size_override(name: StringName) -> UInt8 {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_theme_font_size_override_2619796661._native_ptr(),
                    2619796661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func has_theme_color_override(name: StringName) -> UInt8 {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_theme_color_override_2619796661._native_ptr(),
                    2619796661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func has_theme_constant_override(name: StringName) -> UInt8 {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_theme_constant_override_2619796661._native_ptr(),
                    2619796661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func has_theme_icon(name: StringName, theme_type: StringName) -> UInt8 {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_theme_icon_1187511791._native_ptr(),
                    1187511791)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func has_theme_stylebox(name: StringName, theme_type: StringName) -> UInt8 {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_theme_stylebox_1187511791._native_ptr(),
                    1187511791)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func has_theme_font(name: StringName, theme_type: StringName) -> UInt8 {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_theme_font_1187511791._native_ptr(),
                    1187511791)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func has_theme_font_size(name: StringName, theme_type: StringName) -> UInt8 {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_theme_font_size_1187511791._native_ptr(),
                    1187511791)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func has_theme_color(name: StringName, theme_type: StringName) -> UInt8 {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_theme_color_1187511791._native_ptr(),
                    1187511791)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func has_theme_constant(name: StringName, theme_type: StringName) -> UInt8 {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_theme_constant_1187511791._native_ptr(),
                    1187511791)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_theme_default_base_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_theme_default_base_scale_1740695150._native_ptr(),
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
    public func get_theme_default_font() -> Font {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_theme_default_font_3229501585._native_ptr(),
                    3229501585)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Font(godot: __resPtr.pointee)
    }
    public func get_theme_default_font_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_theme_default_font_size_3905245786._native_ptr(),
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
    public func get_parent_control() -> Control {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_parent_control_2783021301._native_ptr(),
                    2783021301)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Control(godot: __resPtr.pointee)
    }
    public func set_h_grow_direction(direction: Control.GrowDirection)  {
        withUnsafePointer(to: direction.rawValue) { direction_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(direction_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_h_grow_direction_2022385301._native_ptr(),
                    2022385301)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_h_grow_direction() -> Control.GrowDirection {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_h_grow_direction_3635610155._native_ptr(),
                    3635610155)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Control.GrowDirection(godot: __resPtr.pointee)
    }
    public func set_v_grow_direction(direction: Control.GrowDirection)  {
        withUnsafePointer(to: direction.rawValue) { direction_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(direction_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_v_grow_direction_2022385301._native_ptr(),
                    2022385301)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_v_grow_direction() -> Control.GrowDirection {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_v_grow_direction_3635610155._native_ptr(),
                    3635610155)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Control.GrowDirection(godot: __resPtr.pointee)
    }
    public func set_tooltip_text(hint: godot.String)  {
        let hint_native = hint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(hint_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tooltip_text_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_tooltip_text() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tooltip_text_201670096._native_ptr(),
                    201670096)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_tooltip(at_position: Vector2) -> godot.String {
        let at_position_native = at_position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(at_position_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tooltip_2895288280._native_ptr(),
                    2895288280)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func set_default_cursor_shape(shape: Control.CursorShape)  {
        withUnsafePointer(to: shape.rawValue) { shape_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_default_cursor_shape_217062046._native_ptr(),
                    217062046)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_default_cursor_shape() -> Control.CursorShape {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_default_cursor_shape_2359535750._native_ptr(),
                    2359535750)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Control.CursorShape(godot: __resPtr.pointee)
    }
    public func get_cursor_shape(position: Vector2) -> Control.CursorShape {
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_cursor_shape_1395773853._native_ptr(),
                    1395773853)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Control.CursorShape(godot: __resPtr.pointee)
    }
    public func set_focus_neighbor(side: Side, neighbor: NodePath)  {
        withUnsafePointer(to: side.rawValue) { side_native in
        let neighbor_native = neighbor._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(side_native), .init(neighbor_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_focus_neighbor_2024461774._native_ptr(),
                    2024461774)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_focus_neighbor(side: Side) -> NodePath {
        withUnsafePointer(to: side.rawValue) { side_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(side_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_focus_neighbor_2757935761._native_ptr(),
                    2757935761)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(godot: __resPtr.pointee)
        }
    }
    public func set_focus_next(next: NodePath)  {
        let next_native = next._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(next_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_focus_next_1348162250._native_ptr(),
                    1348162250)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_focus_next() -> NodePath {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_focus_next_4075236667._native_ptr(),
                    4075236667)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(godot: __resPtr.pointee)
    }
    public func set_focus_previous(previous: NodePath)  {
        let previous_native = previous._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(previous_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_focus_previous_1348162250._native_ptr(),
                    1348162250)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_focus_previous() -> NodePath {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_focus_previous_4075236667._native_ptr(),
                    4075236667)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(godot: __resPtr.pointee)
    }
    public func force_drag(data: Variant, preview: Control)  {
        let preview_native = preview._native_ptr()
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(data_native), .init(preview_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_force_drag_3191844692._native_ptr(),
                    3191844692)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_mouse_filter(filter: Control.MouseFilter)  {
        withUnsafePointer(to: filter.rawValue) { filter_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(filter_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_mouse_filter_3891156122._native_ptr(),
                    3891156122)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_mouse_filter() -> Control.MouseFilter {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_mouse_filter_1572545674._native_ptr(),
                    1572545674)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Control.MouseFilter(godot: __resPtr.pointee)
    }
    public func set_force_pass_scroll_events(force_pass_scroll_events: UInt8)  {
        withUnsafePointer(to: force_pass_scroll_events) { force_pass_scroll_events_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(force_pass_scroll_events_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_force_pass_scroll_events_2586408642._native_ptr(),
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
    public func is_force_pass_scroll_events() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_force_pass_scroll_events_36873697._native_ptr(),
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
    public func set_clip_contents(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_clip_contents_2586408642._native_ptr(),
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
    public func is_clipping_contents() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_clipping_contents_2240911060._native_ptr(),
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
    public func grab_click_focus()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_grab_click_focus_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_drag_forwarding(drag_func: Callable, can_drop_func: Callable, drop_func: Callable)  {
        let drop_func_native = drop_func._native_ptr()
        let can_drop_func_native = can_drop_func._native_ptr()
        let drag_func_native = drag_func._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(drag_func_native), .init(can_drop_func_native), .init(drop_func_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_drag_forwarding_1076571380._native_ptr(),
                    1076571380)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_drag_preview(control: Control)  {
        let control_native = control._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(control_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_drag_preview_1496901182._native_ptr(),
                    1496901182)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func is_drag_successful() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_drag_successful_36873697._native_ptr(),
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
    public func warp_mouse(position: Vector2)  {
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_warp_mouse_743155724._native_ptr(),
                    743155724)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_shortcut_context(node: Node)  {
        let node_native = node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(node_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_shortcut_context_1078189570._native_ptr(),
                    1078189570)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_shortcut_context() -> Node {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_shortcut_context_3160264692._native_ptr(),
                    3160264692)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node(godot: __resPtr.pointee)
    }
    public func update_minimum_size()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_update_minimum_size_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_layout_direction(direction: Control.LayoutDirection)  {
        withUnsafePointer(to: direction.rawValue) { direction_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(direction_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_layout_direction_3310692370._native_ptr(),
                    3310692370)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_layout_direction() -> Control.LayoutDirection {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_layout_direction_1546772008._native_ptr(),
                    1546772008)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Control.LayoutDirection(godot: __resPtr.pointee)
    }
    public func is_layout_rtl() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_layout_rtl_36873697._native_ptr(),
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
    public func set_auto_translate(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_auto_translate_2586408642._native_ptr(),
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
    public func is_auto_translating() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_auto_translating_36873697._native_ptr(),
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
    public func set_localize_numeral_system(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_localize_numeral_system_2586408642._native_ptr(),
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
    public func is_localizing_numeral_system() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_localizing_numeral_system_36873697._native_ptr(),
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