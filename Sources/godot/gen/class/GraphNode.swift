import godot_native

fileprivate var __godot_name_GraphNode: StringName! = nil

/// GraphNode is a [Container] control that represents a single data unit in a [GraphEdit] graph. You can customize the number, type, and color of left- and right-side connection ports.
/// 
/// GraphNode allows to create nodes for a [GraphEdit] graph with customizable content based on its child [Control]s. GraphNode is a [Container] and is responsible for placing its children on screen. This works similar to [VBoxContainer]. Children, in turn, provide GraphNode with so-called slots, each of which can have a connection port on either side. This is similar to how [TabContainer] uses children to create the tabs.
///  
/// Each GraphNode slot is defined by its index and can provide the node with up to two ports: one on the left, and one on the right. By convention the left port is also referred to as the input port and the right port is referred to as the output port. Each port can be enabled and configured individually, using different type and color. The type is an arbitrary value that you can define using your own considerations. The parent [GraphEdit] will receive this information on each connect and disconnect request.
///  
/// Slots can be configured in the Inspector dock once you add at least one child [Control]. The properties are grouped by each slot's index in the "Slot" section.
///  
/// [b]Note:[/b] While GraphNode is set up using slots and slot indices, connections are made between the ports which are enabled. Because of that [GraphEdit] uses port's index and not slot's index. You can use [method get_connection_input_slot] and [method get_connection_output_slot] to get the slot index from the port index.
public class GraphNode : Container {

    public enum Overlay : Int32 {
        case OVERLAY_DISABLED = 0
        case OVERLAY_BREAKPOINT = 1
        case OVERLAY_POSITION = 2
    }

    public override class var __godot_name: StringName { __godot_name_GraphNode }

    static var _method_set_title_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_title_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_text_direction_119160795: GDExtensionMethodBindPtr! = nil
    static var _method_get_text_direction_797257663: GDExtensionMethodBindPtr! = nil
    static var _method_set_language_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_language_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_slot_902131739: GDExtensionMethodBindPtr! = nil
    static var _method_clear_slot_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_clear_all_slots_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_slot_enabled_left_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_is_slot_enabled_left_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_slot_type_left_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_get_slot_type_left_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_set_slot_color_left_2878471219: GDExtensionMethodBindPtr! = nil
    static var _method_get_slot_color_left_3457211756: GDExtensionMethodBindPtr! = nil
    static var _method_set_slot_enabled_right_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_is_slot_enabled_right_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_slot_type_right_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_get_slot_type_right_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_set_slot_color_right_2878471219: GDExtensionMethodBindPtr! = nil
    static var _method_get_slot_color_right_3457211756: GDExtensionMethodBindPtr! = nil
    static var _method_is_slot_draw_stylebox_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_slot_draw_stylebox_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_set_position_offset_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_position_offset_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_comment_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_comment_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_resizable_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_resizable_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_draggable_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_draggable_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_set_selectable_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_selectable_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_set_selected_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_selected_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_get_connection_input_count_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_get_connection_input_height_3744713108: GDExtensionMethodBindPtr! = nil
    static var _method_get_connection_input_position_3114997196: GDExtensionMethodBindPtr! = nil
    static var _method_get_connection_input_type_3744713108: GDExtensionMethodBindPtr! = nil
    static var _method_get_connection_input_color_2624840992: GDExtensionMethodBindPtr! = nil
    static var _method_get_connection_input_slot_3744713108: GDExtensionMethodBindPtr! = nil
    static var _method_get_connection_output_count_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_get_connection_output_height_3744713108: GDExtensionMethodBindPtr! = nil
    static var _method_get_connection_output_position_3114997196: GDExtensionMethodBindPtr! = nil
    static var _method_get_connection_output_type_3744713108: GDExtensionMethodBindPtr! = nil
    static var _method_get_connection_output_color_2624840992: GDExtensionMethodBindPtr! = nil
    static var _method_get_connection_output_slot_3744713108: GDExtensionMethodBindPtr! = nil
    static var _method_set_show_close_button_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_close_button_visible_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_overlay_3144190109: GDExtensionMethodBindPtr! = nil
    static var _method_get_overlay_2854257040: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_GraphNode = StringName(from: "GraphNode")

        let _method_set_title_83702148_name = StringName(from: "set_title")
        self._method_set_title_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_title_83702148_name._native_ptr(), 83702148)
        assert(GraphNode._method_set_title_83702148 != nil)
        let _method_get_title_201670096_name = StringName(from: "get_title")
        self._method_get_title_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_title_201670096_name._native_ptr(), 201670096)
        assert(GraphNode._method_get_title_201670096 != nil)
        let _method_set_text_direction_119160795_name = StringName(from: "set_text_direction")
        self._method_set_text_direction_119160795 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_text_direction_119160795_name._native_ptr(), 119160795)
        assert(GraphNode._method_set_text_direction_119160795 != nil)
        let _method_get_text_direction_797257663_name = StringName(from: "get_text_direction")
        self._method_get_text_direction_797257663 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_text_direction_797257663_name._native_ptr(), 797257663)
        assert(GraphNode._method_get_text_direction_797257663 != nil)
        let _method_set_language_83702148_name = StringName(from: "set_language")
        self._method_set_language_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_language_83702148_name._native_ptr(), 83702148)
        assert(GraphNode._method_set_language_83702148 != nil)
        let _method_get_language_201670096_name = StringName(from: "get_language")
        self._method_get_language_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_language_201670096_name._native_ptr(), 201670096)
        assert(GraphNode._method_get_language_201670096 != nil)
        let _method_set_slot_902131739_name = StringName(from: "set_slot")
        self._method_set_slot_902131739 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_slot_902131739_name._native_ptr(), 902131739)
        assert(GraphNode._method_set_slot_902131739 != nil)
        let _method_clear_slot_1286410249_name = StringName(from: "clear_slot")
        self._method_clear_slot_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_slot_1286410249_name._native_ptr(), 1286410249)
        assert(GraphNode._method_clear_slot_1286410249 != nil)
        let _method_clear_all_slots_3218959716_name = StringName(from: "clear_all_slots")
        self._method_clear_all_slots_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_all_slots_3218959716_name._native_ptr(), 3218959716)
        assert(GraphNode._method_clear_all_slots_3218959716 != nil)
        let _method_set_slot_enabled_left_300928843_name = StringName(from: "set_slot_enabled_left")
        self._method_set_slot_enabled_left_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_slot_enabled_left_300928843_name._native_ptr(), 300928843)
        assert(GraphNode._method_set_slot_enabled_left_300928843 != nil)
        let _method_is_slot_enabled_left_1116898809_name = StringName(from: "is_slot_enabled_left")
        self._method_is_slot_enabled_left_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_slot_enabled_left_1116898809_name._native_ptr(), 1116898809)
        assert(GraphNode._method_is_slot_enabled_left_1116898809 != nil)
        let _method_set_slot_type_left_3937882851_name = StringName(from: "set_slot_type_left")
        self._method_set_slot_type_left_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_slot_type_left_3937882851_name._native_ptr(), 3937882851)
        assert(GraphNode._method_set_slot_type_left_3937882851 != nil)
        let _method_get_slot_type_left_923996154_name = StringName(from: "get_slot_type_left")
        self._method_get_slot_type_left_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_slot_type_left_923996154_name._native_ptr(), 923996154)
        assert(GraphNode._method_get_slot_type_left_923996154 != nil)
        let _method_set_slot_color_left_2878471219_name = StringName(from: "set_slot_color_left")
        self._method_set_slot_color_left_2878471219 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_slot_color_left_2878471219_name._native_ptr(), 2878471219)
        assert(GraphNode._method_set_slot_color_left_2878471219 != nil)
        let _method_get_slot_color_left_3457211756_name = StringName(from: "get_slot_color_left")
        self._method_get_slot_color_left_3457211756 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_slot_color_left_3457211756_name._native_ptr(), 3457211756)
        assert(GraphNode._method_get_slot_color_left_3457211756 != nil)
        let _method_set_slot_enabled_right_300928843_name = StringName(from: "set_slot_enabled_right")
        self._method_set_slot_enabled_right_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_slot_enabled_right_300928843_name._native_ptr(), 300928843)
        assert(GraphNode._method_set_slot_enabled_right_300928843 != nil)
        let _method_is_slot_enabled_right_1116898809_name = StringName(from: "is_slot_enabled_right")
        self._method_is_slot_enabled_right_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_slot_enabled_right_1116898809_name._native_ptr(), 1116898809)
        assert(GraphNode._method_is_slot_enabled_right_1116898809 != nil)
        let _method_set_slot_type_right_3937882851_name = StringName(from: "set_slot_type_right")
        self._method_set_slot_type_right_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_slot_type_right_3937882851_name._native_ptr(), 3937882851)
        assert(GraphNode._method_set_slot_type_right_3937882851 != nil)
        let _method_get_slot_type_right_923996154_name = StringName(from: "get_slot_type_right")
        self._method_get_slot_type_right_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_slot_type_right_923996154_name._native_ptr(), 923996154)
        assert(GraphNode._method_get_slot_type_right_923996154 != nil)
        let _method_set_slot_color_right_2878471219_name = StringName(from: "set_slot_color_right")
        self._method_set_slot_color_right_2878471219 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_slot_color_right_2878471219_name._native_ptr(), 2878471219)
        assert(GraphNode._method_set_slot_color_right_2878471219 != nil)
        let _method_get_slot_color_right_3457211756_name = StringName(from: "get_slot_color_right")
        self._method_get_slot_color_right_3457211756 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_slot_color_right_3457211756_name._native_ptr(), 3457211756)
        assert(GraphNode._method_get_slot_color_right_3457211756 != nil)
        let _method_is_slot_draw_stylebox_1116898809_name = StringName(from: "is_slot_draw_stylebox")
        self._method_is_slot_draw_stylebox_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_slot_draw_stylebox_1116898809_name._native_ptr(), 1116898809)
        assert(GraphNode._method_is_slot_draw_stylebox_1116898809 != nil)
        let _method_set_slot_draw_stylebox_300928843_name = StringName(from: "set_slot_draw_stylebox")
        self._method_set_slot_draw_stylebox_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_slot_draw_stylebox_300928843_name._native_ptr(), 300928843)
        assert(GraphNode._method_set_slot_draw_stylebox_300928843 != nil)
        let _method_set_position_offset_743155724_name = StringName(from: "set_position_offset")
        self._method_set_position_offset_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_position_offset_743155724_name._native_ptr(), 743155724)
        assert(GraphNode._method_set_position_offset_743155724 != nil)
        let _method_get_position_offset_3341600327_name = StringName(from: "get_position_offset")
        self._method_get_position_offset_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_position_offset_3341600327_name._native_ptr(), 3341600327)
        assert(GraphNode._method_get_position_offset_3341600327 != nil)
        let _method_set_comment_2586408642_name = StringName(from: "set_comment")
        self._method_set_comment_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_comment_2586408642_name._native_ptr(), 2586408642)
        assert(GraphNode._method_set_comment_2586408642 != nil)
        let _method_is_comment_36873697_name = StringName(from: "is_comment")
        self._method_is_comment_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_comment_36873697_name._native_ptr(), 36873697)
        assert(GraphNode._method_is_comment_36873697 != nil)
        let _method_set_resizable_2586408642_name = StringName(from: "set_resizable")
        self._method_set_resizable_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_resizable_2586408642_name._native_ptr(), 2586408642)
        assert(GraphNode._method_set_resizable_2586408642 != nil)
        let _method_is_resizable_36873697_name = StringName(from: "is_resizable")
        self._method_is_resizable_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_resizable_36873697_name._native_ptr(), 36873697)
        assert(GraphNode._method_is_resizable_36873697 != nil)
        let _method_set_draggable_2586408642_name = StringName(from: "set_draggable")
        self._method_set_draggable_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_draggable_2586408642_name._native_ptr(), 2586408642)
        assert(GraphNode._method_set_draggable_2586408642 != nil)
        let _method_is_draggable_2240911060_name = StringName(from: "is_draggable")
        self._method_is_draggable_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_draggable_2240911060_name._native_ptr(), 2240911060)
        assert(GraphNode._method_is_draggable_2240911060 != nil)
        let _method_set_selectable_2586408642_name = StringName(from: "set_selectable")
        self._method_set_selectable_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_selectable_2586408642_name._native_ptr(), 2586408642)
        assert(GraphNode._method_set_selectable_2586408642 != nil)
        let _method_is_selectable_2240911060_name = StringName(from: "is_selectable")
        self._method_is_selectable_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_selectable_2240911060_name._native_ptr(), 2240911060)
        assert(GraphNode._method_is_selectable_2240911060 != nil)
        let _method_set_selected_2586408642_name = StringName(from: "set_selected")
        self._method_set_selected_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_selected_2586408642_name._native_ptr(), 2586408642)
        assert(GraphNode._method_set_selected_2586408642 != nil)
        let _method_is_selected_2240911060_name = StringName(from: "is_selected")
        self._method_is_selected_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_selected_2240911060_name._native_ptr(), 2240911060)
        assert(GraphNode._method_is_selected_2240911060 != nil)
        let _method_get_connection_input_count_2455072627_name = StringName(from: "get_connection_input_count")
        self._method_get_connection_input_count_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_connection_input_count_2455072627_name._native_ptr(), 2455072627)
        assert(GraphNode._method_get_connection_input_count_2455072627 != nil)
        let _method_get_connection_input_height_3744713108_name = StringName(from: "get_connection_input_height")
        self._method_get_connection_input_height_3744713108 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_connection_input_height_3744713108_name._native_ptr(), 3744713108)
        assert(GraphNode._method_get_connection_input_height_3744713108 != nil)
        let _method_get_connection_input_position_3114997196_name = StringName(from: "get_connection_input_position")
        self._method_get_connection_input_position_3114997196 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_connection_input_position_3114997196_name._native_ptr(), 3114997196)
        assert(GraphNode._method_get_connection_input_position_3114997196 != nil)
        let _method_get_connection_input_type_3744713108_name = StringName(from: "get_connection_input_type")
        self._method_get_connection_input_type_3744713108 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_connection_input_type_3744713108_name._native_ptr(), 3744713108)
        assert(GraphNode._method_get_connection_input_type_3744713108 != nil)
        let _method_get_connection_input_color_2624840992_name = StringName(from: "get_connection_input_color")
        self._method_get_connection_input_color_2624840992 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_connection_input_color_2624840992_name._native_ptr(), 2624840992)
        assert(GraphNode._method_get_connection_input_color_2624840992 != nil)
        let _method_get_connection_input_slot_3744713108_name = StringName(from: "get_connection_input_slot")
        self._method_get_connection_input_slot_3744713108 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_connection_input_slot_3744713108_name._native_ptr(), 3744713108)
        assert(GraphNode._method_get_connection_input_slot_3744713108 != nil)
        let _method_get_connection_output_count_2455072627_name = StringName(from: "get_connection_output_count")
        self._method_get_connection_output_count_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_connection_output_count_2455072627_name._native_ptr(), 2455072627)
        assert(GraphNode._method_get_connection_output_count_2455072627 != nil)
        let _method_get_connection_output_height_3744713108_name = StringName(from: "get_connection_output_height")
        self._method_get_connection_output_height_3744713108 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_connection_output_height_3744713108_name._native_ptr(), 3744713108)
        assert(GraphNode._method_get_connection_output_height_3744713108 != nil)
        let _method_get_connection_output_position_3114997196_name = StringName(from: "get_connection_output_position")
        self._method_get_connection_output_position_3114997196 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_connection_output_position_3114997196_name._native_ptr(), 3114997196)
        assert(GraphNode._method_get_connection_output_position_3114997196 != nil)
        let _method_get_connection_output_type_3744713108_name = StringName(from: "get_connection_output_type")
        self._method_get_connection_output_type_3744713108 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_connection_output_type_3744713108_name._native_ptr(), 3744713108)
        assert(GraphNode._method_get_connection_output_type_3744713108 != nil)
        let _method_get_connection_output_color_2624840992_name = StringName(from: "get_connection_output_color")
        self._method_get_connection_output_color_2624840992 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_connection_output_color_2624840992_name._native_ptr(), 2624840992)
        assert(GraphNode._method_get_connection_output_color_2624840992 != nil)
        let _method_get_connection_output_slot_3744713108_name = StringName(from: "get_connection_output_slot")
        self._method_get_connection_output_slot_3744713108 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_connection_output_slot_3744713108_name._native_ptr(), 3744713108)
        assert(GraphNode._method_get_connection_output_slot_3744713108 != nil)
        let _method_set_show_close_button_2586408642_name = StringName(from: "set_show_close_button")
        self._method_set_show_close_button_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_show_close_button_2586408642_name._native_ptr(), 2586408642)
        assert(GraphNode._method_set_show_close_button_2586408642 != nil)
        let _method_is_close_button_visible_36873697_name = StringName(from: "is_close_button_visible")
        self._method_is_close_button_visible_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_close_button_visible_36873697_name._native_ptr(), 36873697)
        assert(GraphNode._method_is_close_button_visible_36873697 != nil)
        let _method_set_overlay_3144190109_name = StringName(from: "set_overlay")
        self._method_set_overlay_3144190109 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_overlay_3144190109_name._native_ptr(), 3144190109)
        assert(GraphNode._method_set_overlay_3144190109 != nil)
        let _method_get_overlay_2854257040_name = StringName(from: "get_overlay")
        self._method_get_overlay_2854257040 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_overlay_2854257040_name._native_ptr(), 2854257040)
        assert(GraphNode._method_get_overlay_2854257040 != nil)
    }

    public func set_title(title: String)  {
        withUnsafePointer(to: title) { title_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(title_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_title_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_title() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_title_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_text_direction(direction: Control.TextDirection)  {
        withUnsafePointer(to: direction.rawValue) { direction_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(direction_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_text_direction_119160795,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_text_direction() -> Control.TextDirection {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_text_direction_797257663,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Control.TextDirection(from: __resPtr.pointee)
    }
    public func set_language(language: String)  {
        withUnsafePointer(to: language) { language_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(language_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_language_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_language() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_language_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_slot(slot_index: Int64, enable_left_port: UInt8, type_left: Int64, color_left: Color, enable_right_port: UInt8, type_right: Int64, color_right: Color, custom_icon_left: Texture2D, custom_icon_right: Texture2D, draw_stylebox: UInt8)  {
        withUnsafePointer(to: draw_stylebox) { draw_stylebox_native in
        withUnsafePointer(to: type_right) { type_right_native in
        withUnsafePointer(to: enable_right_port) { enable_right_port_native in
        withUnsafePointer(to: type_left) { type_left_native in
        withUnsafePointer(to: enable_left_port) { enable_left_port_native in
        withUnsafePointer(to: slot_index) { slot_index_native in
        let custom_icon_right_native = custom_icon_right._native_ptr()
        let custom_icon_left_native = custom_icon_left._native_ptr()
        let color_right_native = color_right._native_ptr()
        let color_left_native = color_left._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 10)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(slot_index_native), .init(enable_left_port_native), .init(type_left_native), .init(color_left_native), .init(enable_right_port_native), .init(type_right_native), .init(color_right_native), .init(custom_icon_left_native), .init(custom_icon_right_native), .init(draw_stylebox_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_slot_902131739,
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
    }
    public func clear_slot(slot_index: Int64)  {
        withUnsafePointer(to: slot_index) { slot_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(slot_index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_slot_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func clear_all_slots()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_all_slots_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_slot_enabled_left(slot_index: Int64, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        withUnsafePointer(to: slot_index) { slot_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(slot_index_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_slot_enabled_left_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func is_slot_enabled_left(slot_index: Int64) -> UInt8 {
        withUnsafePointer(to: slot_index) { slot_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(slot_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_slot_enabled_left_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func set_slot_type_left(slot_index: Int64, `type`: Int64)  {
        withUnsafePointer(to: `type`) { type_native in
        withUnsafePointer(to: slot_index) { slot_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(slot_index_native), .init(type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_slot_type_left_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_slot_type_left(slot_index: Int64) -> Int64 {
        withUnsafePointer(to: slot_index) { slot_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(slot_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_slot_type_left_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func set_slot_color_left(slot_index: Int64, color: Color)  {
        withUnsafePointer(to: slot_index) { slot_index_native in
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(slot_index_native), .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_slot_color_left_2878471219,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_slot_color_left(slot_index: Int64) -> Color {
        withUnsafePointer(to: slot_index) { slot_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(slot_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_slot_color_left_3457211756,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
        }
    }
    public func set_slot_enabled_right(slot_index: Int64, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        withUnsafePointer(to: slot_index) { slot_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(slot_index_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_slot_enabled_right_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func is_slot_enabled_right(slot_index: Int64) -> UInt8 {
        withUnsafePointer(to: slot_index) { slot_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(slot_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_slot_enabled_right_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func set_slot_type_right(slot_index: Int64, `type`: Int64)  {
        withUnsafePointer(to: `type`) { type_native in
        withUnsafePointer(to: slot_index) { slot_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(slot_index_native), .init(type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_slot_type_right_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_slot_type_right(slot_index: Int64) -> Int64 {
        withUnsafePointer(to: slot_index) { slot_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(slot_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_slot_type_right_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func set_slot_color_right(slot_index: Int64, color: Color)  {
        withUnsafePointer(to: slot_index) { slot_index_native in
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(slot_index_native), .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_slot_color_right_2878471219,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_slot_color_right(slot_index: Int64) -> Color {
        withUnsafePointer(to: slot_index) { slot_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(slot_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_slot_color_right_3457211756,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
        }
    }
    public func is_slot_draw_stylebox(slot_index: Int64) -> UInt8 {
        withUnsafePointer(to: slot_index) { slot_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(slot_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_slot_draw_stylebox_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func set_slot_draw_stylebox(slot_index: Int64, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        withUnsafePointer(to: slot_index) { slot_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(slot_index_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_slot_draw_stylebox_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_position_offset(offset: Vector2)  {
        let offset_native = offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_position_offset_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_position_offset() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_position_offset_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func set_comment(comment: UInt8)  {
        withUnsafePointer(to: comment) { comment_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(comment_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_comment_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_comment() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_comment_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_resizable(resizable: UInt8)  {
        withUnsafePointer(to: resizable) { resizable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(resizable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_resizable_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_resizable() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_resizable_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_draggable(draggable: UInt8)  {
        withUnsafePointer(to: draggable) { draggable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(draggable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_draggable_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_draggable() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_draggable_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_selectable(selectable: UInt8)  {
        withUnsafePointer(to: selectable) { selectable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(selectable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_selectable_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_selectable() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_selectable_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_selected(selected: UInt8)  {
        withUnsafePointer(to: selected) { selected_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(selected_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_selected_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_selected() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_selected_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_connection_input_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_connection_input_count_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_connection_input_height(port: Int64) -> Int64 {
        withUnsafePointer(to: port) { port_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(port_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_connection_input_height_3744713108,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func get_connection_input_position(port: Int64) -> Vector2 {
        withUnsafePointer(to: port) { port_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(port_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_connection_input_position_3114997196,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
        }
    }
    public func get_connection_input_type(port: Int64) -> Int64 {
        withUnsafePointer(to: port) { port_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(port_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_connection_input_type_3744713108,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func get_connection_input_color(port: Int64) -> Color {
        withUnsafePointer(to: port) { port_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(port_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_connection_input_color_2624840992,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
        }
    }
    public func get_connection_input_slot(port: Int64) -> Int64 {
        withUnsafePointer(to: port) { port_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(port_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_connection_input_slot_3744713108,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func get_connection_output_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_connection_output_count_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_connection_output_height(port: Int64) -> Int64 {
        withUnsafePointer(to: port) { port_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(port_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_connection_output_height_3744713108,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func get_connection_output_position(port: Int64) -> Vector2 {
        withUnsafePointer(to: port) { port_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(port_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_connection_output_position_3114997196,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
        }
    }
    public func get_connection_output_type(port: Int64) -> Int64 {
        withUnsafePointer(to: port) { port_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(port_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_connection_output_type_3744713108,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func get_connection_output_color(port: Int64) -> Color {
        withUnsafePointer(to: port) { port_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(port_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_connection_output_color_2624840992,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
        }
    }
    public func get_connection_output_slot(port: Int64) -> Int64 {
        withUnsafePointer(to: port) { port_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(port_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_connection_output_slot_3744713108,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func set_show_close_button(show: UInt8)  {
        withUnsafePointer(to: show) { show_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(show_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_show_close_button_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_close_button_visible() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_close_button_visible_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_overlay(overlay: GraphNode.Overlay)  {
        withUnsafePointer(to: overlay.rawValue) { overlay_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(overlay_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_overlay_3144190109,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_overlay() -> GraphNode.Overlay {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_overlay_2854257040,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return GraphNode.Overlay(from: __resPtr.pointee)
    }
}