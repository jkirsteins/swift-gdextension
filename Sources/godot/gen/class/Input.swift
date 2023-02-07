import godot_native

fileprivate var __godot_name_Input: StringName! = nil

/// A singleton that deals with inputs.
/// 
/// A singleton that deals with inputs. This includes key presses, mouse buttons and movement, joypads, and input actions. Actions and their events can be set in the [b]Input Map[/b] tab in the [b]Project > Project Settings[/b], or with the [InputMap] class.
public class Input : Object {

    public enum MouseMode : Int32 {
        case MOUSE_MODE_VISIBLE = 0
        case MOUSE_MODE_HIDDEN = 1
        case MOUSE_MODE_CAPTURED = 2
        case MOUSE_MODE_CONFINED = 3
        case MOUSE_MODE_CONFINED_HIDDEN = 4
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

    public override class var __godot_name: StringName { __godot_name_Input }

    static var _method_is_anything_pressed_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_is_key_pressed_1938909964: GDExtensionMethodBindPtr! = nil
    static var _method_is_physical_key_pressed_1938909964: GDExtensionMethodBindPtr! = nil
    static var _method_is_key_label_pressed_1938909964: GDExtensionMethodBindPtr! = nil
    static var _method_is_mouse_button_pressed_1821097125: GDExtensionMethodBindPtr! = nil
    static var _method_is_joy_button_pressed_787208542: GDExtensionMethodBindPtr! = nil
    static var _method_is_action_pressed_1558498928: GDExtensionMethodBindPtr! = nil
    static var _method_is_action_just_pressed_1558498928: GDExtensionMethodBindPtr! = nil
    static var _method_is_action_just_released_1558498928: GDExtensionMethodBindPtr! = nil
    static var _method_get_action_strength_801543509: GDExtensionMethodBindPtr! = nil
    static var _method_get_action_raw_strength_801543509: GDExtensionMethodBindPtr! = nil
    static var _method_get_axis_1958752504: GDExtensionMethodBindPtr! = nil
    static var _method_get_vector_1517139831: GDExtensionMethodBindPtr! = nil
    static var _method_add_joy_mapping_1168363258: GDExtensionMethodBindPtr! = nil
    static var _method_remove_joy_mapping_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_is_joy_known_3067735520: GDExtensionMethodBindPtr! = nil
    static var _method_get_joy_axis_4063175957: GDExtensionMethodBindPtr! = nil
    static var _method_get_joy_name_990163283: GDExtensionMethodBindPtr! = nil
    static var _method_get_joy_guid_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_get_connected_joypads_2915620761: GDExtensionMethodBindPtr! = nil
    static var _method_get_joy_vibration_strength_3114997196: GDExtensionMethodBindPtr! = nil
    static var _method_get_joy_vibration_duration_4025615559: GDExtensionMethodBindPtr! = nil
    static var _method_start_joy_vibration_1890603622: GDExtensionMethodBindPtr! = nil
    static var _method_stop_joy_vibration_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_vibrate_handheld_955504365: GDExtensionMethodBindPtr! = nil
    static var _method_get_gravity_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_get_accelerometer_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_get_magnetometer_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_get_gyroscope_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_gravity_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_set_accelerometer_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_set_magnetometer_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_set_gyroscope_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_last_mouse_velocity_1497962370: GDExtensionMethodBindPtr! = nil
    static var _method_get_mouse_button_mask_2512161324: GDExtensionMethodBindPtr! = nil
    static var _method_set_mouse_mode_2228490894: GDExtensionMethodBindPtr! = nil
    static var _method_get_mouse_mode_965286182: GDExtensionMethodBindPtr! = nil
    static var _method_warp_mouse_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_action_press_573731101: GDExtensionMethodBindPtr! = nil
    static var _method_action_release_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_set_default_cursor_shape_2124816902: GDExtensionMethodBindPtr! = nil
    static var _method_get_current_cursor_shape_3455658929: GDExtensionMethodBindPtr! = nil
    static var _method_set_custom_mouse_cursor_3489634142: GDExtensionMethodBindPtr! = nil
    static var _method_parse_input_event_3754044979: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_accumulated_input_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_using_accumulated_input_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_flush_buffered_events_3218959716: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Input = StringName(from: "Input")

        let _method_is_anything_pressed_36873697_name = StringName(from: "is_anything_pressed")
        self._method_is_anything_pressed_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_anything_pressed_36873697_name._native_ptr(), 36873697)
        assert(Input._method_is_anything_pressed_36873697 != nil)
        let _method_is_key_pressed_1938909964_name = StringName(from: "is_key_pressed")
        self._method_is_key_pressed_1938909964 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_key_pressed_1938909964_name._native_ptr(), 1938909964)
        assert(Input._method_is_key_pressed_1938909964 != nil)
        let _method_is_physical_key_pressed_1938909964_name = StringName(from: "is_physical_key_pressed")
        self._method_is_physical_key_pressed_1938909964 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_physical_key_pressed_1938909964_name._native_ptr(), 1938909964)
        assert(Input._method_is_physical_key_pressed_1938909964 != nil)
        let _method_is_key_label_pressed_1938909964_name = StringName(from: "is_key_label_pressed")
        self._method_is_key_label_pressed_1938909964 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_key_label_pressed_1938909964_name._native_ptr(), 1938909964)
        assert(Input._method_is_key_label_pressed_1938909964 != nil)
        let _method_is_mouse_button_pressed_1821097125_name = StringName(from: "is_mouse_button_pressed")
        self._method_is_mouse_button_pressed_1821097125 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_mouse_button_pressed_1821097125_name._native_ptr(), 1821097125)
        assert(Input._method_is_mouse_button_pressed_1821097125 != nil)
        let _method_is_joy_button_pressed_787208542_name = StringName(from: "is_joy_button_pressed")
        self._method_is_joy_button_pressed_787208542 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_joy_button_pressed_787208542_name._native_ptr(), 787208542)
        assert(Input._method_is_joy_button_pressed_787208542 != nil)
        let _method_is_action_pressed_1558498928_name = StringName(from: "is_action_pressed")
        self._method_is_action_pressed_1558498928 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_action_pressed_1558498928_name._native_ptr(), 1558498928)
        assert(Input._method_is_action_pressed_1558498928 != nil)
        let _method_is_action_just_pressed_1558498928_name = StringName(from: "is_action_just_pressed")
        self._method_is_action_just_pressed_1558498928 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_action_just_pressed_1558498928_name._native_ptr(), 1558498928)
        assert(Input._method_is_action_just_pressed_1558498928 != nil)
        let _method_is_action_just_released_1558498928_name = StringName(from: "is_action_just_released")
        self._method_is_action_just_released_1558498928 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_action_just_released_1558498928_name._native_ptr(), 1558498928)
        assert(Input._method_is_action_just_released_1558498928 != nil)
        let _method_get_action_strength_801543509_name = StringName(from: "get_action_strength")
        self._method_get_action_strength_801543509 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_action_strength_801543509_name._native_ptr(), 801543509)
        assert(Input._method_get_action_strength_801543509 != nil)
        let _method_get_action_raw_strength_801543509_name = StringName(from: "get_action_raw_strength")
        self._method_get_action_raw_strength_801543509 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_action_raw_strength_801543509_name._native_ptr(), 801543509)
        assert(Input._method_get_action_raw_strength_801543509 != nil)
        let _method_get_axis_1958752504_name = StringName(from: "get_axis")
        self._method_get_axis_1958752504 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_axis_1958752504_name._native_ptr(), 1958752504)
        assert(Input._method_get_axis_1958752504 != nil)
        let _method_get_vector_1517139831_name = StringName(from: "get_vector")
        self._method_get_vector_1517139831 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_vector_1517139831_name._native_ptr(), 1517139831)
        assert(Input._method_get_vector_1517139831 != nil)
        let _method_add_joy_mapping_1168363258_name = StringName(from: "add_joy_mapping")
        self._method_add_joy_mapping_1168363258 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_joy_mapping_1168363258_name._native_ptr(), 1168363258)
        assert(Input._method_add_joy_mapping_1168363258 != nil)
        let _method_remove_joy_mapping_83702148_name = StringName(from: "remove_joy_mapping")
        self._method_remove_joy_mapping_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_joy_mapping_83702148_name._native_ptr(), 83702148)
        assert(Input._method_remove_joy_mapping_83702148 != nil)
        let _method_is_joy_known_3067735520_name = StringName(from: "is_joy_known")
        self._method_is_joy_known_3067735520 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_joy_known_3067735520_name._native_ptr(), 3067735520)
        assert(Input._method_is_joy_known_3067735520 != nil)
        let _method_get_joy_axis_4063175957_name = StringName(from: "get_joy_axis")
        self._method_get_joy_axis_4063175957 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_joy_axis_4063175957_name._native_ptr(), 4063175957)
        assert(Input._method_get_joy_axis_4063175957 != nil)
        let _method_get_joy_name_990163283_name = StringName(from: "get_joy_name")
        self._method_get_joy_name_990163283 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_joy_name_990163283_name._native_ptr(), 990163283)
        assert(Input._method_get_joy_name_990163283 != nil)
        let _method_get_joy_guid_844755477_name = StringName(from: "get_joy_guid")
        self._method_get_joy_guid_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_joy_guid_844755477_name._native_ptr(), 844755477)
        assert(Input._method_get_joy_guid_844755477 != nil)
        let _method_get_connected_joypads_2915620761_name = StringName(from: "get_connected_joypads")
        self._method_get_connected_joypads_2915620761 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_connected_joypads_2915620761_name._native_ptr(), 2915620761)
        assert(Input._method_get_connected_joypads_2915620761 != nil)
        let _method_get_joy_vibration_strength_3114997196_name = StringName(from: "get_joy_vibration_strength")
        self._method_get_joy_vibration_strength_3114997196 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_joy_vibration_strength_3114997196_name._native_ptr(), 3114997196)
        assert(Input._method_get_joy_vibration_strength_3114997196 != nil)
        let _method_get_joy_vibration_duration_4025615559_name = StringName(from: "get_joy_vibration_duration")
        self._method_get_joy_vibration_duration_4025615559 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_joy_vibration_duration_4025615559_name._native_ptr(), 4025615559)
        assert(Input._method_get_joy_vibration_duration_4025615559 != nil)
        let _method_start_joy_vibration_1890603622_name = StringName(from: "start_joy_vibration")
        self._method_start_joy_vibration_1890603622 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_start_joy_vibration_1890603622_name._native_ptr(), 1890603622)
        assert(Input._method_start_joy_vibration_1890603622 != nil)
        let _method_stop_joy_vibration_1286410249_name = StringName(from: "stop_joy_vibration")
        self._method_stop_joy_vibration_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_stop_joy_vibration_1286410249_name._native_ptr(), 1286410249)
        assert(Input._method_stop_joy_vibration_1286410249 != nil)
        let _method_vibrate_handheld_955504365_name = StringName(from: "vibrate_handheld")
        self._method_vibrate_handheld_955504365 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_vibrate_handheld_955504365_name._native_ptr(), 955504365)
        assert(Input._method_vibrate_handheld_955504365 != nil)
        let _method_get_gravity_3360562783_name = StringName(from: "get_gravity")
        self._method_get_gravity_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_gravity_3360562783_name._native_ptr(), 3360562783)
        assert(Input._method_get_gravity_3360562783 != nil)
        let _method_get_accelerometer_3360562783_name = StringName(from: "get_accelerometer")
        self._method_get_accelerometer_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_accelerometer_3360562783_name._native_ptr(), 3360562783)
        assert(Input._method_get_accelerometer_3360562783 != nil)
        let _method_get_magnetometer_3360562783_name = StringName(from: "get_magnetometer")
        self._method_get_magnetometer_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_magnetometer_3360562783_name._native_ptr(), 3360562783)
        assert(Input._method_get_magnetometer_3360562783 != nil)
        let _method_get_gyroscope_3360562783_name = StringName(from: "get_gyroscope")
        self._method_get_gyroscope_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_gyroscope_3360562783_name._native_ptr(), 3360562783)
        assert(Input._method_get_gyroscope_3360562783 != nil)
        let _method_set_gravity_3460891852_name = StringName(from: "set_gravity")
        self._method_set_gravity_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_gravity_3460891852_name._native_ptr(), 3460891852)
        assert(Input._method_set_gravity_3460891852 != nil)
        let _method_set_accelerometer_3460891852_name = StringName(from: "set_accelerometer")
        self._method_set_accelerometer_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_accelerometer_3460891852_name._native_ptr(), 3460891852)
        assert(Input._method_set_accelerometer_3460891852 != nil)
        let _method_set_magnetometer_3460891852_name = StringName(from: "set_magnetometer")
        self._method_set_magnetometer_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_magnetometer_3460891852_name._native_ptr(), 3460891852)
        assert(Input._method_set_magnetometer_3460891852 != nil)
        let _method_set_gyroscope_3460891852_name = StringName(from: "set_gyroscope")
        self._method_set_gyroscope_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_gyroscope_3460891852_name._native_ptr(), 3460891852)
        assert(Input._method_set_gyroscope_3460891852 != nil)
        let _method_get_last_mouse_velocity_1497962370_name = StringName(from: "get_last_mouse_velocity")
        self._method_get_last_mouse_velocity_1497962370 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_last_mouse_velocity_1497962370_name._native_ptr(), 1497962370)
        assert(Input._method_get_last_mouse_velocity_1497962370 != nil)
        let _method_get_mouse_button_mask_2512161324_name = StringName(from: "get_mouse_button_mask")
        self._method_get_mouse_button_mask_2512161324 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_mouse_button_mask_2512161324_name._native_ptr(), 2512161324)
        assert(Input._method_get_mouse_button_mask_2512161324 != nil)
        let _method_set_mouse_mode_2228490894_name = StringName(from: "set_mouse_mode")
        self._method_set_mouse_mode_2228490894 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_mouse_mode_2228490894_name._native_ptr(), 2228490894)
        assert(Input._method_set_mouse_mode_2228490894 != nil)
        let _method_get_mouse_mode_965286182_name = StringName(from: "get_mouse_mode")
        self._method_get_mouse_mode_965286182 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_mouse_mode_965286182_name._native_ptr(), 965286182)
        assert(Input._method_get_mouse_mode_965286182 != nil)
        let _method_warp_mouse_743155724_name = StringName(from: "warp_mouse")
        self._method_warp_mouse_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_warp_mouse_743155724_name._native_ptr(), 743155724)
        assert(Input._method_warp_mouse_743155724 != nil)
        let _method_action_press_573731101_name = StringName(from: "action_press")
        self._method_action_press_573731101 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_action_press_573731101_name._native_ptr(), 573731101)
        assert(Input._method_action_press_573731101 != nil)
        let _method_action_release_3304788590_name = StringName(from: "action_release")
        self._method_action_release_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_action_release_3304788590_name._native_ptr(), 3304788590)
        assert(Input._method_action_release_3304788590 != nil)
        let _method_set_default_cursor_shape_2124816902_name = StringName(from: "set_default_cursor_shape")
        self._method_set_default_cursor_shape_2124816902 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_default_cursor_shape_2124816902_name._native_ptr(), 2124816902)
        assert(Input._method_set_default_cursor_shape_2124816902 != nil)
        let _method_get_current_cursor_shape_3455658929_name = StringName(from: "get_current_cursor_shape")
        self._method_get_current_cursor_shape_3455658929 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_current_cursor_shape_3455658929_name._native_ptr(), 3455658929)
        assert(Input._method_get_current_cursor_shape_3455658929 != nil)
        let _method_set_custom_mouse_cursor_3489634142_name = StringName(from: "set_custom_mouse_cursor")
        self._method_set_custom_mouse_cursor_3489634142 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_custom_mouse_cursor_3489634142_name._native_ptr(), 3489634142)
        assert(Input._method_set_custom_mouse_cursor_3489634142 != nil)
        let _method_parse_input_event_3754044979_name = StringName(from: "parse_input_event")
        self._method_parse_input_event_3754044979 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_parse_input_event_3754044979_name._native_ptr(), 3754044979)
        assert(Input._method_parse_input_event_3754044979 != nil)
        let _method_set_use_accumulated_input_2586408642_name = StringName(from: "set_use_accumulated_input")
        self._method_set_use_accumulated_input_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_use_accumulated_input_2586408642_name._native_ptr(), 2586408642)
        assert(Input._method_set_use_accumulated_input_2586408642 != nil)
        let _method_is_using_accumulated_input_2240911060_name = StringName(from: "is_using_accumulated_input")
        self._method_is_using_accumulated_input_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_using_accumulated_input_2240911060_name._native_ptr(), 2240911060)
        assert(Input._method_is_using_accumulated_input_2240911060 != nil)
        let _method_flush_buffered_events_3218959716_name = StringName(from: "flush_buffered_events")
        self._method_flush_buffered_events_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_flush_buffered_events_3218959716_name._native_ptr(), 3218959716)
        assert(Input._method_flush_buffered_events_3218959716 != nil)
    }

    public func is_anything_pressed() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_anything_pressed_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func is_key_pressed(keycode: Key) -> UInt8 {
        withUnsafePointer(to: keycode.rawValue) { keycode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(keycode_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_key_pressed_1938909964,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func is_physical_key_pressed(keycode: Key) -> UInt8 {
        withUnsafePointer(to: keycode.rawValue) { keycode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(keycode_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_physical_key_pressed_1938909964,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func is_key_label_pressed(keycode: Key) -> UInt8 {
        withUnsafePointer(to: keycode.rawValue) { keycode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(keycode_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_key_label_pressed_1938909964,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func is_mouse_button_pressed(button: MouseButton) -> UInt8 {
        withUnsafePointer(to: button.rawValue) { button_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(button_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_mouse_button_pressed_1821097125,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func is_joy_button_pressed(device: Int64, button: JoyButton) -> UInt8 {
        withUnsafePointer(to: device) { device_native in
        withUnsafePointer(to: button.rawValue) { button_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(device_native), .init(button_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_joy_button_pressed_787208542,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
        }
    }
    public func is_action_pressed(action: StringName, exact_match: UInt8) -> UInt8 {
        withUnsafePointer(to: exact_match) { exact_match_native in
        let action_native = action._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(action_native), .init(exact_match_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_action_pressed_1558498928,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func is_action_just_pressed(action: StringName, exact_match: UInt8) -> UInt8 {
        withUnsafePointer(to: exact_match) { exact_match_native in
        let action_native = action._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(action_native), .init(exact_match_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_action_just_pressed_1558498928,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func is_action_just_released(action: StringName, exact_match: UInt8) -> UInt8 {
        withUnsafePointer(to: exact_match) { exact_match_native in
        let action_native = action._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(action_native), .init(exact_match_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_action_just_released_1558498928,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func get_action_strength(action: StringName, exact_match: UInt8) -> Float64 {
        withUnsafePointer(to: exact_match) { exact_match_native in
        let action_native = action._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(action_native), .init(exact_match_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_action_strength_801543509,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func get_action_raw_strength(action: StringName, exact_match: UInt8) -> Float64 {
        withUnsafePointer(to: exact_match) { exact_match_native in
        let action_native = action._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(action_native), .init(exact_match_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_action_raw_strength_801543509,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func get_axis(negative_action: StringName, positive_action: StringName) -> Float64 {
        let positive_action_native = positive_action._native_ptr()
        let negative_action_native = negative_action._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(negative_action_native), .init(positive_action_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_axis_1958752504,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func get_vector(negative_x: StringName, positive_x: StringName, negative_y: StringName, positive_y: StringName, deadzone: Float64) -> Vector2 {
        withUnsafePointer(to: deadzone) { deadzone_native in
        let positive_y_native = positive_y._native_ptr()
        let negative_y_native = negative_y._native_ptr()
        let positive_x_native = positive_x._native_ptr()
        let negative_x_native = negative_x._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(negative_x_native), .init(positive_x_native), .init(negative_y_native), .init(positive_y_native), .init(deadzone_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_vector_1517139831,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
        }
    }
    public func add_joy_mapping(mapping: String, update_existing: UInt8)  {
        withUnsafePointer(to: update_existing) { update_existing_native in
        withUnsafePointer(to: mapping) { mapping_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mapping_native), .init(update_existing_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_joy_mapping_1168363258,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func remove_joy_mapping(guid: String)  {
        withUnsafePointer(to: guid) { guid_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(guid_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_joy_mapping_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_joy_known(device: Int64) -> UInt8 {
        withUnsafePointer(to: device) { device_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(device_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_joy_known_3067735520,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func get_joy_axis(device: Int64, axis: JoyAxis) -> Float64 {
        withUnsafePointer(to: device) { device_native in
        withUnsafePointer(to: axis.rawValue) { axis_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(device_native), .init(axis_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_joy_axis_4063175957,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
        }
    }
    public func get_joy_name(device: Int64) -> String {
        withUnsafePointer(to: device) { device_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(device_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_joy_name_990163283,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
    public func get_joy_guid(device: Int64) -> String {
        withUnsafePointer(to: device) { device_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(device_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_joy_guid_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
    public func get_connected_joypads() -> [Int64] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_connected_joypads_2915620761,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Int64](from: __resPtr.pointee)
    }
    public func get_joy_vibration_strength(device: Int64) -> Vector2 {
        withUnsafePointer(to: device) { device_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(device_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_joy_vibration_strength_3114997196,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
        }
    }
    public func get_joy_vibration_duration(device: Int64) -> Float64 {
        withUnsafePointer(to: device) { device_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(device_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_joy_vibration_duration_4025615559,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func start_joy_vibration(device: Int64, weak_magnitude: Float64, strong_magnitude: Float64, duration: Float64)  {
        withUnsafePointer(to: duration) { duration_native in
        withUnsafePointer(to: strong_magnitude) { strong_magnitude_native in
        withUnsafePointer(to: weak_magnitude) { weak_magnitude_native in
        withUnsafePointer(to: device) { device_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(device_native), .init(weak_magnitude_native), .init(strong_magnitude_native), .init(duration_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_start_joy_vibration_1890603622,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
        }
    }
    public func stop_joy_vibration(device: Int64)  {
        withUnsafePointer(to: device) { device_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(device_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_stop_joy_vibration_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func vibrate_handheld(duration_ms: Int64)  {
        withUnsafePointer(to: duration_ms) { duration_ms_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(duration_ms_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_vibrate_handheld_955504365,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_gravity() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_gravity_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func get_accelerometer() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_accelerometer_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func get_magnetometer() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_magnetometer_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func get_gyroscope() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_gyroscope_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func set_gravity(value: Vector3)  {
        let value_native = value._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_gravity_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_accelerometer(value: Vector3)  {
        let value_native = value._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_accelerometer_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_magnetometer(value: Vector3)  {
        let value_native = value._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_magnetometer_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_gyroscope(value: Vector3)  {
        let value_native = value._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_gyroscope_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_last_mouse_velocity() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_last_mouse_velocity_1497962370,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func get_mouse_button_mask() -> MouseButtonMask {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mouse_button_mask_2512161324,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return MouseButtonMask(from: __resPtr.pointee)
    }
    public func set_mouse_mode(mode: Input.MouseMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_mouse_mode_2228490894,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_mouse_mode() -> Input.MouseMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mouse_mode_965286182,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Input.MouseMode(from: __resPtr.pointee)
    }
    public func warp_mouse(position: Vector2)  {
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_warp_mouse_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func action_press(action: StringName, strength: Float64)  {
        withUnsafePointer(to: strength) { strength_native in
        let action_native = action._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(action_native), .init(strength_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_action_press_573731101,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func action_release(action: StringName)  {
        let action_native = action._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(action_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_action_release_3304788590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_default_cursor_shape(shape: Input.CursorShape)  {
        withUnsafePointer(to: shape.rawValue) { shape_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_default_cursor_shape_2124816902,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_current_cursor_shape() -> Input.CursorShape {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_current_cursor_shape_3455658929,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Input.CursorShape(from: __resPtr.pointee)
    }
    public func set_custom_mouse_cursor(image: Resource, shape: Input.CursorShape, hotspot: Vector2)  {
        withUnsafePointer(to: shape.rawValue) { shape_native in
        let hotspot_native = hotspot._native_ptr()
        let image_native = image._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(image_native), .init(shape_native), .init(hotspot_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_custom_mouse_cursor_3489634142,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func parse_input_event(event: InputEvent)  {
        let event_native = event._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(event_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_parse_input_event_3754044979,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_use_accumulated_input(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_use_accumulated_input_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_using_accumulated_input() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_using_accumulated_input_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func flush_buffered_events()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_flush_buffered_events_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}