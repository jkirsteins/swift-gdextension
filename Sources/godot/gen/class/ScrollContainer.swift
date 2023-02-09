import godot_native

fileprivate var __godot_name_ScrollContainer: StringName! = nil

/// A helper node for displaying scrollable elements such as lists.
/// 
/// A ScrollContainer node meant to contain a [Control] child.
///  
/// ScrollContainers will automatically create a scrollbar child ([HScrollBar], [VScrollBar], or both) when needed and will only draw the Control within the ScrollContainer area. Scrollbars will automatically be drawn at the right (for vertical) or bottom (for horizontal) and will enable dragging to move the viewable Control (and its children) within the ScrollContainer. Scrollbars will also automatically resize the grabber based on the [member Control.custom_minimum_size] of the Control relative to the ScrollContainer.
///  
/// Works great with a [Panel] control. You can set [constant Control.SIZE_EXPAND] on the children's size flags, so they will upscale to the ScrollContainer's size if it's larger (scroll is invisible for the chosen dimension).
open class ScrollContainer : Container {

    public enum ScrollMode : Int32 {
        case SCROLL_MODE_DISABLED = 0
        case SCROLL_MODE_AUTO = 1
        case SCROLL_MODE_SHOW_ALWAYS = 2
        case SCROLL_MODE_SHOW_NEVER = 3
    }

    public override class var __godot_name: StringName { __godot_name_ScrollContainer }

    static var _method_set_h_scroll_1286410249: StringName! = nil
    static var _method_get_h_scroll_3905245786: StringName! = nil
    static var _method_set_v_scroll_1286410249: StringName! = nil
    static var _method_get_v_scroll_3905245786: StringName! = nil
    static var _method_set_horizontal_scroll_mode_2750506364: StringName! = nil
    static var _method_get_horizontal_scroll_mode_3987985145: StringName! = nil
    static var _method_set_vertical_scroll_mode_2750506364: StringName! = nil
    static var _method_get_vertical_scroll_mode_3987985145: StringName! = nil
    static var _method_set_deadzone_1286410249: StringName! = nil
    static var _method_get_deadzone_3905245786: StringName! = nil
    static var _method_set_follow_focus_2586408642: StringName! = nil
    static var _method_is_following_focus_36873697: StringName! = nil
    static var _method_get_h_scroll_bar_4004517983: StringName! = nil
    static var _method_get_v_scroll_bar_2630340773: StringName! = nil
    static var _method_ensure_control_visible_1496901182: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_ScrollContainer == nil)
        __godot_name_ScrollContainer = StringName(from: "ScrollContainer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_h_scroll_1286410249 = StringName(from: "set_h_scroll")
        assert(self._method_set_h_scroll_1286410249 != nil)
        self._method_get_h_scroll_3905245786 = StringName(from: "get_h_scroll")
        assert(self._method_get_h_scroll_3905245786 != nil)
        self._method_set_v_scroll_1286410249 = StringName(from: "set_v_scroll")
        assert(self._method_set_v_scroll_1286410249 != nil)
        self._method_get_v_scroll_3905245786 = StringName(from: "get_v_scroll")
        assert(self._method_get_v_scroll_3905245786 != nil)
        self._method_set_horizontal_scroll_mode_2750506364 = StringName(from: "set_horizontal_scroll_mode")
        assert(self._method_set_horizontal_scroll_mode_2750506364 != nil)
        self._method_get_horizontal_scroll_mode_3987985145 = StringName(from: "get_horizontal_scroll_mode")
        assert(self._method_get_horizontal_scroll_mode_3987985145 != nil)
        self._method_set_vertical_scroll_mode_2750506364 = StringName(from: "set_vertical_scroll_mode")
        assert(self._method_set_vertical_scroll_mode_2750506364 != nil)
        self._method_get_vertical_scroll_mode_3987985145 = StringName(from: "get_vertical_scroll_mode")
        assert(self._method_get_vertical_scroll_mode_3987985145 != nil)
        self._method_set_deadzone_1286410249 = StringName(from: "set_deadzone")
        assert(self._method_set_deadzone_1286410249 != nil)
        self._method_get_deadzone_3905245786 = StringName(from: "get_deadzone")
        assert(self._method_get_deadzone_3905245786 != nil)
        self._method_set_follow_focus_2586408642 = StringName(from: "set_follow_focus")
        assert(self._method_set_follow_focus_2586408642 != nil)
        self._method_is_following_focus_36873697 = StringName(from: "is_following_focus")
        assert(self._method_is_following_focus_36873697 != nil)
        self._method_get_h_scroll_bar_4004517983 = StringName(from: "get_h_scroll_bar")
        assert(self._method_get_h_scroll_bar_4004517983 != nil)
        self._method_get_v_scroll_bar_2630340773 = StringName(from: "get_v_scroll_bar")
        assert(self._method_get_v_scroll_bar_2630340773 != nil)
        self._method_ensure_control_visible_1496901182 = StringName(from: "ensure_control_visible")
        assert(self._method_ensure_control_visible_1496901182 != nil)
    }

    public func set_h_scroll(value: Int64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_h_scroll_1286410249._native_ptr(),
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
    public func get_h_scroll() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_h_scroll_3905245786._native_ptr(),
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
    public func set_v_scroll(value: Int64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_v_scroll_1286410249._native_ptr(),
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
    public func get_v_scroll() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_v_scroll_3905245786._native_ptr(),
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
    public func set_horizontal_scroll_mode(enable: ScrollContainer.ScrollMode)  {
        withUnsafePointer(to: enable.rawValue) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_horizontal_scroll_mode_2750506364._native_ptr(),
                    2750506364)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_horizontal_scroll_mode() -> ScrollContainer.ScrollMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_horizontal_scroll_mode_3987985145._native_ptr(),
                    3987985145)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ScrollContainer.ScrollMode(godot: __resPtr.pointee)
    }
    public func set_vertical_scroll_mode(enable: ScrollContainer.ScrollMode)  {
        withUnsafePointer(to: enable.rawValue) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_vertical_scroll_mode_2750506364._native_ptr(),
                    2750506364)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_vertical_scroll_mode() -> ScrollContainer.ScrollMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_vertical_scroll_mode_3987985145._native_ptr(),
                    3987985145)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ScrollContainer.ScrollMode(godot: __resPtr.pointee)
    }
    public func set_deadzone(deadzone: Int64)  {
        withUnsafePointer(to: deadzone) { deadzone_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(deadzone_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_deadzone_1286410249._native_ptr(),
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
    public func get_deadzone() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_deadzone_3905245786._native_ptr(),
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
    public func set_follow_focus(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_follow_focus_2586408642._native_ptr(),
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
    public func is_following_focus() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_following_focus_36873697._native_ptr(),
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
    public func get_h_scroll_bar() -> HScrollBar {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_h_scroll_bar_4004517983._native_ptr(),
                    4004517983)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return HScrollBar(godot: __resPtr.pointee)
    }
    public func get_v_scroll_bar() -> VScrollBar {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_v_scroll_bar_2630340773._native_ptr(),
                    2630340773)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VScrollBar(godot: __resPtr.pointee)
    }
    public func ensure_control_visible(control: Control)  {
        let control_native = control._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(control_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_ensure_control_visible_1496901182._native_ptr(),
                    1496901182)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}