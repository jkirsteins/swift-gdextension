import godot_native

fileprivate var __godot_name_BaseButton: StringName! = nil

/// Base class for different kinds of buttons.
/// 
/// BaseButton is the abstract base class for buttons, so it shouldn't be used directly (it doesn't display anything). Other types of buttons inherit from it.
open class BaseButton : Control {

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

    static var _method__pressed_0: StringName! = nil
    static var _method__toggled_0: StringName! = nil
    static var _method_set_pressed_2586408642: StringName! = nil
    static var _method_is_pressed_36873697: StringName! = nil
    static var _method_set_pressed_no_signal_2586408642: StringName! = nil
    static var _method_is_hovered_36873697: StringName! = nil
    static var _method_set_toggle_mode_2586408642: StringName! = nil
    static var _method_is_toggle_mode_36873697: StringName! = nil
    static var _method_set_shortcut_in_tooltip_2586408642: StringName! = nil
    static var _method_is_shortcut_in_tooltip_enabled_36873697: StringName! = nil
    static var _method_set_disabled_2586408642: StringName! = nil
    static var _method_is_disabled_36873697: StringName! = nil
    static var _method_set_action_mode_1985162088: StringName! = nil
    static var _method_get_action_mode_2589712189: StringName! = nil
    static var _method_set_button_mask_3950145251: StringName! = nil
    static var _method_get_button_mask_2512161324: StringName! = nil
    static var _method_get_draw_mode_2492721305: StringName! = nil
    static var _method_set_keep_pressed_outside_2586408642: StringName! = nil
    static var _method_is_keep_pressed_outside_36873697: StringName! = nil
    static var _method_set_shortcut_feedback_2586408642: StringName! = nil
    static var _method_is_shortcut_feedback_36873697: StringName! = nil
    static var _method_set_shortcut_857163497: StringName! = nil
    static var _method_get_shortcut_3415666916: StringName! = nil
    static var _method_set_button_group_1794463739: StringName! = nil
    static var _method_get_button_group_281644053: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_BaseButton == nil)
        __godot_name_BaseButton = StringName(from: "BaseButton")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_pressed_2586408642 = StringName(from: "set_pressed")
        assert(self._method_set_pressed_2586408642 != nil)
        self._method_is_pressed_36873697 = StringName(from: "is_pressed")
        assert(self._method_is_pressed_36873697 != nil)
        self._method_set_pressed_no_signal_2586408642 = StringName(from: "set_pressed_no_signal")
        assert(self._method_set_pressed_no_signal_2586408642 != nil)
        self._method_is_hovered_36873697 = StringName(from: "is_hovered")
        assert(self._method_is_hovered_36873697 != nil)
        self._method_set_toggle_mode_2586408642 = StringName(from: "set_toggle_mode")
        assert(self._method_set_toggle_mode_2586408642 != nil)
        self._method_is_toggle_mode_36873697 = StringName(from: "is_toggle_mode")
        assert(self._method_is_toggle_mode_36873697 != nil)
        self._method_set_shortcut_in_tooltip_2586408642 = StringName(from: "set_shortcut_in_tooltip")
        assert(self._method_set_shortcut_in_tooltip_2586408642 != nil)
        self._method_is_shortcut_in_tooltip_enabled_36873697 = StringName(from: "is_shortcut_in_tooltip_enabled")
        assert(self._method_is_shortcut_in_tooltip_enabled_36873697 != nil)
        self._method_set_disabled_2586408642 = StringName(from: "set_disabled")
        assert(self._method_set_disabled_2586408642 != nil)
        self._method_is_disabled_36873697 = StringName(from: "is_disabled")
        assert(self._method_is_disabled_36873697 != nil)
        self._method_set_action_mode_1985162088 = StringName(from: "set_action_mode")
        assert(self._method_set_action_mode_1985162088 != nil)
        self._method_get_action_mode_2589712189 = StringName(from: "get_action_mode")
        assert(self._method_get_action_mode_2589712189 != nil)
        self._method_set_button_mask_3950145251 = StringName(from: "set_button_mask")
        assert(self._method_set_button_mask_3950145251 != nil)
        self._method_get_button_mask_2512161324 = StringName(from: "get_button_mask")
        assert(self._method_get_button_mask_2512161324 != nil)
        self._method_get_draw_mode_2492721305 = StringName(from: "get_draw_mode")
        assert(self._method_get_draw_mode_2492721305 != nil)
        self._method_set_keep_pressed_outside_2586408642 = StringName(from: "set_keep_pressed_outside")
        assert(self._method_set_keep_pressed_outside_2586408642 != nil)
        self._method_is_keep_pressed_outside_36873697 = StringName(from: "is_keep_pressed_outside")
        assert(self._method_is_keep_pressed_outside_36873697 != nil)
        self._method_set_shortcut_feedback_2586408642 = StringName(from: "set_shortcut_feedback")
        assert(self._method_set_shortcut_feedback_2586408642 != nil)
        self._method_is_shortcut_feedback_36873697 = StringName(from: "is_shortcut_feedback")
        assert(self._method_is_shortcut_feedback_36873697 != nil)
        self._method_set_shortcut_857163497 = StringName(from: "set_shortcut")
        assert(self._method_set_shortcut_857163497 != nil)
        self._method_get_shortcut_3415666916 = StringName(from: "get_shortcut")
        assert(self._method_get_shortcut_3415666916 != nil)
        self._method_set_button_group_1794463739 = StringName(from: "set_button_group")
        assert(self._method_set_button_group_1794463739 != nil)
        self._method_get_button_group_281644053 = StringName(from: "get_button_group")
        assert(self._method_get_button_group_281644053 != nil)
    }

    public func _pressed()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _toggled(button_pressed: UInt8)  {
        withUnsafePointer(to: button_pressed) { button_pressed_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(button_pressed_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_pressed_2586408642._native_ptr(),
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
    public func is_pressed() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_pressed_36873697._native_ptr(),
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
    public func set_pressed_no_signal(pressed: UInt8)  {
        withUnsafePointer(to: pressed) { pressed_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pressed_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_pressed_no_signal_2586408642._native_ptr(),
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
    public func is_hovered() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_hovered_36873697._native_ptr(),
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
    public func set_toggle_mode(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_toggle_mode_2586408642._native_ptr(),
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
    public func is_toggle_mode() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_toggle_mode_36873697._native_ptr(),
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
    public func set_shortcut_in_tooltip(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_shortcut_in_tooltip_2586408642._native_ptr(),
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
    public func is_shortcut_in_tooltip_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_shortcut_in_tooltip_enabled_36873697._native_ptr(),
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
    public func set_disabled(disabled: UInt8)  {
        withUnsafePointer(to: disabled) { disabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(disabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_disabled_2586408642._native_ptr(),
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
    public func is_disabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_disabled_36873697._native_ptr(),
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
    public func set_action_mode(mode: BaseButton.ActionMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_action_mode_1985162088._native_ptr(),
                    1985162088)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_action_mode_2589712189._native_ptr(),
                    2589712189)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseButton.ActionMode(godot: __resPtr.pointee)
    }
    public func set_button_mask(mask: MouseButtonMask)  {
        withUnsafePointer(to: mask.rawValue) { mask_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mask_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_button_mask_3950145251._native_ptr(),
                    3950145251)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_button_mask_2512161324._native_ptr(),
                    2512161324)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return MouseButtonMask(godot: __resPtr.pointee)
    }
    public func get_draw_mode() -> BaseButton.DrawMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_draw_mode_2492721305._native_ptr(),
                    2492721305)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseButton.DrawMode(godot: __resPtr.pointee)
    }
    public func set_keep_pressed_outside(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_keep_pressed_outside_2586408642._native_ptr(),
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
    public func is_keep_pressed_outside() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_keep_pressed_outside_36873697._native_ptr(),
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
    public func set_shortcut_feedback(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_shortcut_feedback_2586408642._native_ptr(),
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
    public func is_shortcut_feedback() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_shortcut_feedback_36873697._native_ptr(),
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
    public func set_shortcut(shortcut: Shortcut)  {
        let shortcut_native = shortcut._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shortcut_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_shortcut_857163497._native_ptr(),
                    857163497)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_shortcut_3415666916._native_ptr(),
                    3415666916)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Shortcut(godot: __resPtr.pointee)
    }
    public func set_button_group(button_group: ButtonGroup)  {
        let button_group_native = button_group._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(button_group_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_button_group_1794463739._native_ptr(),
                    1794463739)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_button_group_281644053._native_ptr(),
                    281644053)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ButtonGroup(godot: __resPtr.pointee)
    }
}