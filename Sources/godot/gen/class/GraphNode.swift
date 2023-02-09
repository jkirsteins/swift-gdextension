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
open class GraphNode : Container {

    public enum Overlay : Int32 {
        case OVERLAY_DISABLED = 0
        case OVERLAY_BREAKPOINT = 1
        case OVERLAY_POSITION = 2
    }

    public override class var __godot_name: StringName { __godot_name_GraphNode }

    static var _method_set_title_83702148: StringName! = nil
    static var _method_get_title_201670096: StringName! = nil
    static var _method_set_text_direction_119160795: StringName! = nil
    static var _method_get_text_direction_797257663: StringName! = nil
    static var _method_set_language_83702148: StringName! = nil
    static var _method_get_language_201670096: StringName! = nil
    static var _method_set_slot_902131739: StringName! = nil
    static var _method_clear_slot_1286410249: StringName! = nil
    static var _method_clear_all_slots_3218959716: StringName! = nil
    static var _method_set_slot_enabled_left_300928843: StringName! = nil
    static var _method_is_slot_enabled_left_1116898809: StringName! = nil
    static var _method_set_slot_type_left_3937882851: StringName! = nil
    static var _method_get_slot_type_left_923996154: StringName! = nil
    static var _method_set_slot_color_left_2878471219: StringName! = nil
    static var _method_get_slot_color_left_3457211756: StringName! = nil
    static var _method_set_slot_enabled_right_300928843: StringName! = nil
    static var _method_is_slot_enabled_right_1116898809: StringName! = nil
    static var _method_set_slot_type_right_3937882851: StringName! = nil
    static var _method_get_slot_type_right_923996154: StringName! = nil
    static var _method_set_slot_color_right_2878471219: StringName! = nil
    static var _method_get_slot_color_right_3457211756: StringName! = nil
    static var _method_is_slot_draw_stylebox_1116898809: StringName! = nil
    static var _method_set_slot_draw_stylebox_300928843: StringName! = nil
    static var _method_set_position_offset_743155724: StringName! = nil
    static var _method_get_position_offset_3341600327: StringName! = nil
    static var _method_set_comment_2586408642: StringName! = nil
    static var _method_is_comment_36873697: StringName! = nil
    static var _method_set_resizable_2586408642: StringName! = nil
    static var _method_is_resizable_36873697: StringName! = nil
    static var _method_set_draggable_2586408642: StringName! = nil
    static var _method_is_draggable_2240911060: StringName! = nil
    static var _method_set_selectable_2586408642: StringName! = nil
    static var _method_is_selectable_2240911060: StringName! = nil
    static var _method_set_selected_2586408642: StringName! = nil
    static var _method_is_selected_2240911060: StringName! = nil
    static var _method_get_connection_input_count_2455072627: StringName! = nil
    static var _method_get_connection_input_height_3744713108: StringName! = nil
    static var _method_get_connection_input_position_3114997196: StringName! = nil
    static var _method_get_connection_input_type_3744713108: StringName! = nil
    static var _method_get_connection_input_color_2624840992: StringName! = nil
    static var _method_get_connection_input_slot_3744713108: StringName! = nil
    static var _method_get_connection_output_count_2455072627: StringName! = nil
    static var _method_get_connection_output_height_3744713108: StringName! = nil
    static var _method_get_connection_output_position_3114997196: StringName! = nil
    static var _method_get_connection_output_type_3744713108: StringName! = nil
    static var _method_get_connection_output_color_2624840992: StringName! = nil
    static var _method_get_connection_output_slot_3744713108: StringName! = nil
    static var _method_set_show_close_button_2586408642: StringName! = nil
    static var _method_is_close_button_visible_36873697: StringName! = nil
    static var _method_set_overlay_3144190109: StringName! = nil
    static var _method_get_overlay_2854257040: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_GraphNode == nil)
        __godot_name_GraphNode = StringName(from: "GraphNode")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_title_83702148 = StringName(from: "set_title")
        assert(self._method_set_title_83702148 != nil)
        self._method_get_title_201670096 = StringName(from: "get_title")
        assert(self._method_get_title_201670096 != nil)
        self._method_set_text_direction_119160795 = StringName(from: "set_text_direction")
        assert(self._method_set_text_direction_119160795 != nil)
        self._method_get_text_direction_797257663 = StringName(from: "get_text_direction")
        assert(self._method_get_text_direction_797257663 != nil)
        self._method_set_language_83702148 = StringName(from: "set_language")
        assert(self._method_set_language_83702148 != nil)
        self._method_get_language_201670096 = StringName(from: "get_language")
        assert(self._method_get_language_201670096 != nil)
        self._method_set_slot_902131739 = StringName(from: "set_slot")
        assert(self._method_set_slot_902131739 != nil)
        self._method_clear_slot_1286410249 = StringName(from: "clear_slot")
        assert(self._method_clear_slot_1286410249 != nil)
        self._method_clear_all_slots_3218959716 = StringName(from: "clear_all_slots")
        assert(self._method_clear_all_slots_3218959716 != nil)
        self._method_set_slot_enabled_left_300928843 = StringName(from: "set_slot_enabled_left")
        assert(self._method_set_slot_enabled_left_300928843 != nil)
        self._method_is_slot_enabled_left_1116898809 = StringName(from: "is_slot_enabled_left")
        assert(self._method_is_slot_enabled_left_1116898809 != nil)
        self._method_set_slot_type_left_3937882851 = StringName(from: "set_slot_type_left")
        assert(self._method_set_slot_type_left_3937882851 != nil)
        self._method_get_slot_type_left_923996154 = StringName(from: "get_slot_type_left")
        assert(self._method_get_slot_type_left_923996154 != nil)
        self._method_set_slot_color_left_2878471219 = StringName(from: "set_slot_color_left")
        assert(self._method_set_slot_color_left_2878471219 != nil)
        self._method_get_slot_color_left_3457211756 = StringName(from: "get_slot_color_left")
        assert(self._method_get_slot_color_left_3457211756 != nil)
        self._method_set_slot_enabled_right_300928843 = StringName(from: "set_slot_enabled_right")
        assert(self._method_set_slot_enabled_right_300928843 != nil)
        self._method_is_slot_enabled_right_1116898809 = StringName(from: "is_slot_enabled_right")
        assert(self._method_is_slot_enabled_right_1116898809 != nil)
        self._method_set_slot_type_right_3937882851 = StringName(from: "set_slot_type_right")
        assert(self._method_set_slot_type_right_3937882851 != nil)
        self._method_get_slot_type_right_923996154 = StringName(from: "get_slot_type_right")
        assert(self._method_get_slot_type_right_923996154 != nil)
        self._method_set_slot_color_right_2878471219 = StringName(from: "set_slot_color_right")
        assert(self._method_set_slot_color_right_2878471219 != nil)
        self._method_get_slot_color_right_3457211756 = StringName(from: "get_slot_color_right")
        assert(self._method_get_slot_color_right_3457211756 != nil)
        self._method_is_slot_draw_stylebox_1116898809 = StringName(from: "is_slot_draw_stylebox")
        assert(self._method_is_slot_draw_stylebox_1116898809 != nil)
        self._method_set_slot_draw_stylebox_300928843 = StringName(from: "set_slot_draw_stylebox")
        assert(self._method_set_slot_draw_stylebox_300928843 != nil)
        self._method_set_position_offset_743155724 = StringName(from: "set_position_offset")
        assert(self._method_set_position_offset_743155724 != nil)
        self._method_get_position_offset_3341600327 = StringName(from: "get_position_offset")
        assert(self._method_get_position_offset_3341600327 != nil)
        self._method_set_comment_2586408642 = StringName(from: "set_comment")
        assert(self._method_set_comment_2586408642 != nil)
        self._method_is_comment_36873697 = StringName(from: "is_comment")
        assert(self._method_is_comment_36873697 != nil)
        self._method_set_resizable_2586408642 = StringName(from: "set_resizable")
        assert(self._method_set_resizable_2586408642 != nil)
        self._method_is_resizable_36873697 = StringName(from: "is_resizable")
        assert(self._method_is_resizable_36873697 != nil)
        self._method_set_draggable_2586408642 = StringName(from: "set_draggable")
        assert(self._method_set_draggable_2586408642 != nil)
        self._method_is_draggable_2240911060 = StringName(from: "is_draggable")
        assert(self._method_is_draggable_2240911060 != nil)
        self._method_set_selectable_2586408642 = StringName(from: "set_selectable")
        assert(self._method_set_selectable_2586408642 != nil)
        self._method_is_selectable_2240911060 = StringName(from: "is_selectable")
        assert(self._method_is_selectable_2240911060 != nil)
        self._method_set_selected_2586408642 = StringName(from: "set_selected")
        assert(self._method_set_selected_2586408642 != nil)
        self._method_is_selected_2240911060 = StringName(from: "is_selected")
        assert(self._method_is_selected_2240911060 != nil)
        self._method_get_connection_input_count_2455072627 = StringName(from: "get_connection_input_count")
        assert(self._method_get_connection_input_count_2455072627 != nil)
        self._method_get_connection_input_height_3744713108 = StringName(from: "get_connection_input_height")
        assert(self._method_get_connection_input_height_3744713108 != nil)
        self._method_get_connection_input_position_3114997196 = StringName(from: "get_connection_input_position")
        assert(self._method_get_connection_input_position_3114997196 != nil)
        self._method_get_connection_input_type_3744713108 = StringName(from: "get_connection_input_type")
        assert(self._method_get_connection_input_type_3744713108 != nil)
        self._method_get_connection_input_color_2624840992 = StringName(from: "get_connection_input_color")
        assert(self._method_get_connection_input_color_2624840992 != nil)
        self._method_get_connection_input_slot_3744713108 = StringName(from: "get_connection_input_slot")
        assert(self._method_get_connection_input_slot_3744713108 != nil)
        self._method_get_connection_output_count_2455072627 = StringName(from: "get_connection_output_count")
        assert(self._method_get_connection_output_count_2455072627 != nil)
        self._method_get_connection_output_height_3744713108 = StringName(from: "get_connection_output_height")
        assert(self._method_get_connection_output_height_3744713108 != nil)
        self._method_get_connection_output_position_3114997196 = StringName(from: "get_connection_output_position")
        assert(self._method_get_connection_output_position_3114997196 != nil)
        self._method_get_connection_output_type_3744713108 = StringName(from: "get_connection_output_type")
        assert(self._method_get_connection_output_type_3744713108 != nil)
        self._method_get_connection_output_color_2624840992 = StringName(from: "get_connection_output_color")
        assert(self._method_get_connection_output_color_2624840992 != nil)
        self._method_get_connection_output_slot_3744713108 = StringName(from: "get_connection_output_slot")
        assert(self._method_get_connection_output_slot_3744713108 != nil)
        self._method_set_show_close_button_2586408642 = StringName(from: "set_show_close_button")
        assert(self._method_set_show_close_button_2586408642 != nil)
        self._method_is_close_button_visible_36873697 = StringName(from: "is_close_button_visible")
        assert(self._method_is_close_button_visible_36873697 != nil)
        self._method_set_overlay_3144190109 = StringName(from: "set_overlay")
        assert(self._method_set_overlay_3144190109 != nil)
        self._method_get_overlay_2854257040 = StringName(from: "get_overlay")
        assert(self._method_get_overlay_2854257040 != nil)
    }

    public func set_title(title: godot.String)  {
        let title_native = title._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(title_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_title_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_title() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_title_201670096._native_ptr(),
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
    public func set_text_direction(direction: Control.TextDirection)  {
        withUnsafePointer(to: direction.rawValue) { direction_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(direction_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_text_direction_119160795._native_ptr(),
                    119160795)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_text_direction_797257663._native_ptr(),
                    797257663)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Control.TextDirection(godot: __resPtr.pointee)
    }
    public func set_language(language: godot.String)  {
        let language_native = language._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(language_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_language_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_language() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_language_201670096._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_slot_902131739._native_ptr(),
                    902131739)
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
    }
    public func clear_slot(slot_index: Int64)  {
        withUnsafePointer(to: slot_index) { slot_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(slot_index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_slot_1286410249._native_ptr(),
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
    public func clear_all_slots()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_all_slots_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_slot_enabled_left_300928843._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_slot_enabled_left_1116898809._native_ptr(),
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
    public func set_slot_type_left(slot_index: Int64, `type`: Int64)  {
        withUnsafePointer(to: `type`) { type_native in
        withUnsafePointer(to: slot_index) { slot_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(slot_index_native), .init(type_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_slot_type_left_3937882851._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_slot_type_left_923996154._native_ptr(),
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
    public func set_slot_color_left(slot_index: Int64, color: Color)  {
        withUnsafePointer(to: slot_index) { slot_index_native in
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(slot_index_native), .init(color_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_slot_color_left_2878471219._native_ptr(),
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
    public func get_slot_color_left(slot_index: Int64) -> Color {
        withUnsafePointer(to: slot_index) { slot_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(slot_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_slot_color_left_3457211756._native_ptr(),
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
    public func set_slot_enabled_right(slot_index: Int64, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        withUnsafePointer(to: slot_index) { slot_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(slot_index_native), .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_slot_enabled_right_300928843._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_slot_enabled_right_1116898809._native_ptr(),
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
    public func set_slot_type_right(slot_index: Int64, `type`: Int64)  {
        withUnsafePointer(to: `type`) { type_native in
        withUnsafePointer(to: slot_index) { slot_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(slot_index_native), .init(type_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_slot_type_right_3937882851._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_slot_type_right_923996154._native_ptr(),
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
    public func set_slot_color_right(slot_index: Int64, color: Color)  {
        withUnsafePointer(to: slot_index) { slot_index_native in
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(slot_index_native), .init(color_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_slot_color_right_2878471219._native_ptr(),
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
    public func get_slot_color_right(slot_index: Int64) -> Color {
        withUnsafePointer(to: slot_index) { slot_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(slot_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_slot_color_right_3457211756._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_slot_draw_stylebox_1116898809._native_ptr(),
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
    public func set_slot_draw_stylebox(slot_index: Int64, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        withUnsafePointer(to: slot_index) { slot_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(slot_index_native), .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_slot_draw_stylebox_300928843._native_ptr(),
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
    public func set_position_offset(offset: Vector2)  {
        let offset_native = offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_position_offset_743155724._native_ptr(),
                    743155724)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_position_offset_3341600327._native_ptr(),
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
    public func set_comment(comment: UInt8)  {
        withUnsafePointer(to: comment) { comment_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(comment_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_comment_2586408642._native_ptr(),
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
    public func is_comment() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_comment_36873697._native_ptr(),
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
    public func set_resizable(resizable: UInt8)  {
        withUnsafePointer(to: resizable) { resizable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(resizable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_resizable_2586408642._native_ptr(),
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
    public func is_resizable() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_resizable_36873697._native_ptr(),
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
    public func set_draggable(draggable: UInt8)  {
        withUnsafePointer(to: draggable) { draggable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(draggable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_draggable_2586408642._native_ptr(),
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
    public func is_draggable() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_draggable_2240911060._native_ptr(),
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
    public func set_selectable(selectable: UInt8)  {
        withUnsafePointer(to: selectable) { selectable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(selectable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_selectable_2586408642._native_ptr(),
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
    public func is_selectable() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_selectable_2240911060._native_ptr(),
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
    public func set_selected(selected: UInt8)  {
        withUnsafePointer(to: selected) { selected_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(selected_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_selected_2586408642._native_ptr(),
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
    public func is_selected() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_selected_2240911060._native_ptr(),
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
    public func get_connection_input_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_connection_input_count_2455072627._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_connection_input_height_3744713108._native_ptr(),
                    3744713108)
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
    public func get_connection_input_position(port: Int64) -> Vector2 {
        withUnsafePointer(to: port) { port_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(port_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_connection_input_position_3114997196._native_ptr(),
                    3114997196)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_connection_input_type_3744713108._native_ptr(),
                    3744713108)
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
    public func get_connection_input_color(port: Int64) -> Color {
        withUnsafePointer(to: port) { port_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(port_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_connection_input_color_2624840992._native_ptr(),
                    2624840992)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_connection_input_slot_3744713108._native_ptr(),
                    3744713108)
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
    public func get_connection_output_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_connection_output_count_2455072627._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_connection_output_height_3744713108._native_ptr(),
                    3744713108)
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
    public func get_connection_output_position(port: Int64) -> Vector2 {
        withUnsafePointer(to: port) { port_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(port_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_connection_output_position_3114997196._native_ptr(),
                    3114997196)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_connection_output_type_3744713108._native_ptr(),
                    3744713108)
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
    public func get_connection_output_color(port: Int64) -> Color {
        withUnsafePointer(to: port) { port_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(port_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_connection_output_color_2624840992._native_ptr(),
                    2624840992)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_connection_output_slot_3744713108._native_ptr(),
                    3744713108)
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
    public func set_show_close_button(show: UInt8)  {
        withUnsafePointer(to: show) { show_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(show_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_show_close_button_2586408642._native_ptr(),
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
    public func is_close_button_visible() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_close_button_visible_36873697._native_ptr(),
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
    public func set_overlay(overlay: GraphNode.Overlay)  {
        withUnsafePointer(to: overlay.rawValue) { overlay_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(overlay_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_overlay_3144190109._native_ptr(),
                    3144190109)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_overlay_2854257040._native_ptr(),
                    2854257040)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return GraphNode.Overlay(godot: __resPtr.pointee)
    }
}