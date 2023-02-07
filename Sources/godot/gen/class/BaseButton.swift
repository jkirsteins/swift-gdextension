import godot_native

fileprivate var __godot_name_BaseButton: StringName! = nil

/// Base class for different kinds of buttons.
/// 
/// BaseButton is the abstract base class for buttons, so it shouldn't be used directly (it doesn't display anything). Other types of buttons inherit from it.
public class BaseButton : Control {

    public enum DrawMode : Int32 {
        case DRAW_NORMAL = 0
        case DRAW_PRESSED = 1
        case DRAW_HOVER = 2
        case DRAW_DISABLED = 3
        case DRAW_HOVER_PRESSED = 4
    }
    public enum ActionMode : Int32 {
        case ACTION_MODE_BUTTON_PRESS = 0
        case ACTION_MODE_BUTTON_RELEASE = 1
    }

    public override class var __godot_name: StringName { __godot_name_BaseButton }

    static var _method__pressed_0: GDExtensionMethodBindPtr! = nil
    static var _method__toggled_0: GDExtensionMethodBindPtr! = nil
    static var _method_set_pressed_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_pressed_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_pressed_no_signal_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_hovered_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_toggle_mode_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_toggle_mode_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_shortcut_in_tooltip_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_shortcut_in_tooltip_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_disabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_disabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_action_mode_1985162088: GDExtensionMethodBindPtr! = nil
    static var _method_get_action_mode_2589712189: GDExtensionMethodBindPtr! = nil
    static var _method_set_button_mask_3950145251: GDExtensionMethodBindPtr! = nil
    static var _method_get_button_mask_2512161324: GDExtensionMethodBindPtr! = nil
    static var _method_get_draw_mode_2492721305: GDExtensionMethodBindPtr! = nil
    static var _method_set_keep_pressed_outside_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_keep_pressed_outside_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_shortcut_feedback_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_shortcut_feedback_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_shortcut_857163497: GDExtensionMethodBindPtr! = nil
    static var _method_get_shortcut_3415666916: GDExtensionMethodBindPtr! = nil
    static var _method_set_button_group_1794463739: GDExtensionMethodBindPtr! = nil
    static var _method_get_button_group_281644053: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_BaseButton = StringName(from: "BaseButton")

        let _method_set_pressed_2586408642_name = StringName(from: "set_pressed")
        self._method_set_pressed_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_pressed_2586408642_name._native_ptr(), 2586408642)
        assert(BaseButton._method_set_pressed_2586408642 != nil)
        let _method_is_pressed_36873697_name = StringName(from: "is_pressed")
        self._method_is_pressed_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_pressed_36873697_name._native_ptr(), 36873697)
        assert(BaseButton._method_is_pressed_36873697 != nil)
        let _method_set_pressed_no_signal_2586408642_name = StringName(from: "set_pressed_no_signal")
        self._method_set_pressed_no_signal_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_pressed_no_signal_2586408642_name._native_ptr(), 2586408642)
        assert(BaseButton._method_set_pressed_no_signal_2586408642 != nil)
        let _method_is_hovered_36873697_name = StringName(from: "is_hovered")
        self._method_is_hovered_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_hovered_36873697_name._native_ptr(), 36873697)
        assert(BaseButton._method_is_hovered_36873697 != nil)
        let _method_set_toggle_mode_2586408642_name = StringName(from: "set_toggle_mode")
        self._method_set_toggle_mode_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_toggle_mode_2586408642_name._native_ptr(), 2586408642)
        assert(BaseButton._method_set_toggle_mode_2586408642 != nil)
        let _method_is_toggle_mode_36873697_name = StringName(from: "is_toggle_mode")
        self._method_is_toggle_mode_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_toggle_mode_36873697_name._native_ptr(), 36873697)
        assert(BaseButton._method_is_toggle_mode_36873697 != nil)
        let _method_set_shortcut_in_tooltip_2586408642_name = StringName(from: "set_shortcut_in_tooltip")
        self._method_set_shortcut_in_tooltip_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_shortcut_in_tooltip_2586408642_name._native_ptr(), 2586408642)
        assert(BaseButton._method_set_shortcut_in_tooltip_2586408642 != nil)
        let _method_is_shortcut_in_tooltip_enabled_36873697_name = StringName(from: "is_shortcut_in_tooltip_enabled")
        self._method_is_shortcut_in_tooltip_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_shortcut_in_tooltip_enabled_36873697_name._native_ptr(), 36873697)
        assert(BaseButton._method_is_shortcut_in_tooltip_enabled_36873697 != nil)
        let _method_set_disabled_2586408642_name = StringName(from: "set_disabled")
        self._method_set_disabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_disabled_2586408642_name._native_ptr(), 2586408642)
        assert(BaseButton._method_set_disabled_2586408642 != nil)
        let _method_is_disabled_36873697_name = StringName(from: "is_disabled")
        self._method_is_disabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_disabled_36873697_name._native_ptr(), 36873697)
        assert(BaseButton._method_is_disabled_36873697 != nil)
        let _method_set_action_mode_1985162088_name = StringName(from: "set_action_mode")
        self._method_set_action_mode_1985162088 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_action_mode_1985162088_name._native_ptr(), 1985162088)
        assert(BaseButton._method_set_action_mode_1985162088 != nil)
        let _method_get_action_mode_2589712189_name = StringName(from: "get_action_mode")
        self._method_get_action_mode_2589712189 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_action_mode_2589712189_name._native_ptr(), 2589712189)
        assert(BaseButton._method_get_action_mode_2589712189 != nil)
        let _method_set_button_mask_3950145251_name = StringName(from: "set_button_mask")
        self._method_set_button_mask_3950145251 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_button_mask_3950145251_name._native_ptr(), 3950145251)
        assert(BaseButton._method_set_button_mask_3950145251 != nil)
        let _method_get_button_mask_2512161324_name = StringName(from: "get_button_mask")
        self._method_get_button_mask_2512161324 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_button_mask_2512161324_name._native_ptr(), 2512161324)
        assert(BaseButton._method_get_button_mask_2512161324 != nil)
        let _method_get_draw_mode_2492721305_name = StringName(from: "get_draw_mode")
        self._method_get_draw_mode_2492721305 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_draw_mode_2492721305_name._native_ptr(), 2492721305)
        assert(BaseButton._method_get_draw_mode_2492721305 != nil)
        let _method_set_keep_pressed_outside_2586408642_name = StringName(from: "set_keep_pressed_outside")
        self._method_set_keep_pressed_outside_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_keep_pressed_outside_2586408642_name._native_ptr(), 2586408642)
        assert(BaseButton._method_set_keep_pressed_outside_2586408642 != nil)
        let _method_is_keep_pressed_outside_36873697_name = StringName(from: "is_keep_pressed_outside")
        self._method_is_keep_pressed_outside_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_keep_pressed_outside_36873697_name._native_ptr(), 36873697)
        assert(BaseButton._method_is_keep_pressed_outside_36873697 != nil)
        let _method_set_shortcut_feedback_2586408642_name = StringName(from: "set_shortcut_feedback")
        self._method_set_shortcut_feedback_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_shortcut_feedback_2586408642_name._native_ptr(), 2586408642)
        assert(BaseButton._method_set_shortcut_feedback_2586408642 != nil)
        let _method_is_shortcut_feedback_36873697_name = StringName(from: "is_shortcut_feedback")
        self._method_is_shortcut_feedback_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_shortcut_feedback_36873697_name._native_ptr(), 36873697)
        assert(BaseButton._method_is_shortcut_feedback_36873697 != nil)
        let _method_set_shortcut_857163497_name = StringName(from: "set_shortcut")
        self._method_set_shortcut_857163497 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_shortcut_857163497_name._native_ptr(), 857163497)
        assert(BaseButton._method_set_shortcut_857163497 != nil)
        let _method_get_shortcut_3415666916_name = StringName(from: "get_shortcut")
        self._method_get_shortcut_3415666916 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_shortcut_3415666916_name._native_ptr(), 3415666916)
        assert(BaseButton._method_get_shortcut_3415666916 != nil)
        let _method_set_button_group_1794463739_name = StringName(from: "set_button_group")
        self._method_set_button_group_1794463739 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_button_group_1794463739_name._native_ptr(), 1794463739)
        assert(BaseButton._method_set_button_group_1794463739 != nil)
        let _method_get_button_group_281644053_name = StringName(from: "get_button_group")
        self._method_get_button_group_281644053 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_button_group_281644053_name._native_ptr(), 281644053)
        assert(BaseButton._method_get_button_group_281644053 != nil)
    }

    public func _pressed()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__pressed_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _toggled(button_pressed: UInt8)  {
        withUnsafePointer(to: button_pressed) { button_pressed_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(button_pressed_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__toggled_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_pressed(pressed: UInt8)  {
        withUnsafePointer(to: pressed) { pressed_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pressed_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_pressed_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_pressed() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_pressed_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_pressed_no_signal(pressed: UInt8)  {
        withUnsafePointer(to: pressed) { pressed_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pressed_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_pressed_no_signal_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_hovered() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_hovered_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_toggle_mode(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_toggle_mode_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_toggle_mode() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_toggle_mode_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_shortcut_in_tooltip(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_shortcut_in_tooltip_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_shortcut_in_tooltip_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_shortcut_in_tooltip_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_disabled(disabled: UInt8)  {
        withUnsafePointer(to: disabled) { disabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(disabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_disabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_disabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_disabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_action_mode(mode: BaseButton.ActionMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_action_mode_1985162088,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_action_mode() -> BaseButton.ActionMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_action_mode_2589712189,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseButton.ActionMode(from: __resPtr.pointee)
    }
    public func set_button_mask(mask: MouseButtonMask)  {
        withUnsafePointer(to: mask.rawValue) { mask_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_button_mask_3950145251,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_button_mask() -> MouseButtonMask {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_button_mask_2512161324,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return MouseButtonMask(from: __resPtr.pointee)
    }
    public func get_draw_mode() -> BaseButton.DrawMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_draw_mode_2492721305,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseButton.DrawMode(from: __resPtr.pointee)
    }
    public func set_keep_pressed_outside(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_keep_pressed_outside_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_keep_pressed_outside() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_keep_pressed_outside_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_shortcut_feedback(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_shortcut_feedback_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_shortcut_feedback() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_shortcut_feedback_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_shortcut(shortcut: Shortcut)  {
        let shortcut_native = shortcut._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shortcut_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_shortcut_857163497,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_shortcut() -> Shortcut {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_shortcut_3415666916,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Shortcut(from: __resPtr.pointee)
    }
    public func set_button_group(button_group: ButtonGroup)  {
        let button_group_native = button_group._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(button_group_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_button_group_1794463739,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_button_group() -> ButtonGroup {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_button_group_281644053,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ButtonGroup(from: __resPtr.pointee)
    }
}