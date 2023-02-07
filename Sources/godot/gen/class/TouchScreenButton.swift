import godot_native

fileprivate var __godot_name_TouchScreenButton: StringName! = nil

/// Button for touch screen devices for gameplay use.
/// 
/// TouchScreenButton allows you to create on-screen buttons for touch devices. It's intended for gameplay use, such as a unit you have to touch to move. Unlike [Button], TouchScreenButton supports multitouch out of the box. Several TouchScreenButtons can be pressed at the same time with touch input.
///  
/// This node inherits from [Node2D]. Unlike with [Control] nodes, you cannot set anchors on it. If you want to create menus or user interfaces, you may want to use [Button] nodes instead. To make button nodes react to touch events, you can enable the Emulate Mouse option in the Project Settings.
///  
/// You can configure TouchScreenButton to be visible only on touch devices, helping you develop your game both for desktop and mobile devices.
public class TouchScreenButton : Node2D {

    public enum VisibilityMode : Int32 {
        case VISIBILITY_ALWAYS = 0
        case VISIBILITY_TOUCHSCREEN_ONLY = 1
    }

    public override class var __godot_name: StringName { __godot_name_TouchScreenButton }

    static var _method_set_texture_normal_4051416890: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_normal_3635182373: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_pressed_4051416890: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_pressed_3635182373: GDExtensionMethodBindPtr! = nil
    static var _method_set_bitmask_698588216: GDExtensionMethodBindPtr! = nil
    static var _method_get_bitmask_2459671998: GDExtensionMethodBindPtr! = nil
    static var _method_set_shape_771364740: GDExtensionMethodBindPtr! = nil
    static var _method_get_shape_522005891: GDExtensionMethodBindPtr! = nil
    static var _method_set_shape_centered_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_shape_centered_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_shape_visible_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_shape_visible_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_action_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_action_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_visibility_mode_3031128463: GDExtensionMethodBindPtr! = nil
    static var _method_get_visibility_mode_2558996468: GDExtensionMethodBindPtr! = nil
    static var _method_set_passby_press_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_passby_press_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_is_pressed_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_TouchScreenButton = StringName(from: "TouchScreenButton")

        let _method_set_texture_normal_4051416890_name = StringName(from: "set_texture_normal")
        self._method_set_texture_normal_4051416890 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_texture_normal_4051416890_name._native_ptr(), 4051416890)
        assert(TouchScreenButton._method_set_texture_normal_4051416890 != nil)
        let _method_get_texture_normal_3635182373_name = StringName(from: "get_texture_normal")
        self._method_get_texture_normal_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_texture_normal_3635182373_name._native_ptr(), 3635182373)
        assert(TouchScreenButton._method_get_texture_normal_3635182373 != nil)
        let _method_set_texture_pressed_4051416890_name = StringName(from: "set_texture_pressed")
        self._method_set_texture_pressed_4051416890 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_texture_pressed_4051416890_name._native_ptr(), 4051416890)
        assert(TouchScreenButton._method_set_texture_pressed_4051416890 != nil)
        let _method_get_texture_pressed_3635182373_name = StringName(from: "get_texture_pressed")
        self._method_get_texture_pressed_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_texture_pressed_3635182373_name._native_ptr(), 3635182373)
        assert(TouchScreenButton._method_get_texture_pressed_3635182373 != nil)
        let _method_set_bitmask_698588216_name = StringName(from: "set_bitmask")
        self._method_set_bitmask_698588216 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_bitmask_698588216_name._native_ptr(), 698588216)
        assert(TouchScreenButton._method_set_bitmask_698588216 != nil)
        let _method_get_bitmask_2459671998_name = StringName(from: "get_bitmask")
        self._method_get_bitmask_2459671998 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_bitmask_2459671998_name._native_ptr(), 2459671998)
        assert(TouchScreenButton._method_get_bitmask_2459671998 != nil)
        let _method_set_shape_771364740_name = StringName(from: "set_shape")
        self._method_set_shape_771364740 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_shape_771364740_name._native_ptr(), 771364740)
        assert(TouchScreenButton._method_set_shape_771364740 != nil)
        let _method_get_shape_522005891_name = StringName(from: "get_shape")
        self._method_get_shape_522005891 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_shape_522005891_name._native_ptr(), 522005891)
        assert(TouchScreenButton._method_get_shape_522005891 != nil)
        let _method_set_shape_centered_2586408642_name = StringName(from: "set_shape_centered")
        self._method_set_shape_centered_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_shape_centered_2586408642_name._native_ptr(), 2586408642)
        assert(TouchScreenButton._method_set_shape_centered_2586408642 != nil)
        let _method_is_shape_centered_36873697_name = StringName(from: "is_shape_centered")
        self._method_is_shape_centered_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_shape_centered_36873697_name._native_ptr(), 36873697)
        assert(TouchScreenButton._method_is_shape_centered_36873697 != nil)
        let _method_set_shape_visible_2586408642_name = StringName(from: "set_shape_visible")
        self._method_set_shape_visible_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_shape_visible_2586408642_name._native_ptr(), 2586408642)
        assert(TouchScreenButton._method_set_shape_visible_2586408642 != nil)
        let _method_is_shape_visible_36873697_name = StringName(from: "is_shape_visible")
        self._method_is_shape_visible_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_shape_visible_36873697_name._native_ptr(), 36873697)
        assert(TouchScreenButton._method_is_shape_visible_36873697 != nil)
        let _method_set_action_83702148_name = StringName(from: "set_action")
        self._method_set_action_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_action_83702148_name._native_ptr(), 83702148)
        assert(TouchScreenButton._method_set_action_83702148 != nil)
        let _method_get_action_201670096_name = StringName(from: "get_action")
        self._method_get_action_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_action_201670096_name._native_ptr(), 201670096)
        assert(TouchScreenButton._method_get_action_201670096 != nil)
        let _method_set_visibility_mode_3031128463_name = StringName(from: "set_visibility_mode")
        self._method_set_visibility_mode_3031128463 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_visibility_mode_3031128463_name._native_ptr(), 3031128463)
        assert(TouchScreenButton._method_set_visibility_mode_3031128463 != nil)
        let _method_get_visibility_mode_2558996468_name = StringName(from: "get_visibility_mode")
        self._method_get_visibility_mode_2558996468 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_visibility_mode_2558996468_name._native_ptr(), 2558996468)
        assert(TouchScreenButton._method_get_visibility_mode_2558996468 != nil)
        let _method_set_passby_press_2586408642_name = StringName(from: "set_passby_press")
        self._method_set_passby_press_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_passby_press_2586408642_name._native_ptr(), 2586408642)
        assert(TouchScreenButton._method_set_passby_press_2586408642 != nil)
        let _method_is_passby_press_enabled_36873697_name = StringName(from: "is_passby_press_enabled")
        self._method_is_passby_press_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_passby_press_enabled_36873697_name._native_ptr(), 36873697)
        assert(TouchScreenButton._method_is_passby_press_enabled_36873697 != nil)
        let _method_is_pressed_36873697_name = StringName(from: "is_pressed")
        self._method_is_pressed_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_pressed_36873697_name._native_ptr(), 36873697)
        assert(TouchScreenButton._method_is_pressed_36873697 != nil)
    }

    public func set_texture_normal(texture: Texture2D)  {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_normal_4051416890,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_texture_normal() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_normal_3635182373,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(from: __resPtr.pointee)
    }
    public func set_texture_pressed(texture: Texture2D)  {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_pressed_4051416890,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_texture_pressed() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_pressed_3635182373,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(from: __resPtr.pointee)
    }
    public func set_bitmask(bitmask: BitMap)  {
        let bitmask_native = bitmask._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bitmask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bitmask_698588216,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_bitmask() -> BitMap {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bitmask_2459671998,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BitMap(from: __resPtr.pointee)
    }
    public func set_shape(shape: Shape2D)  {
        let shape_native = shape._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_shape_771364740,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_shape() -> Shape2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_shape_522005891,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Shape2D(from: __resPtr.pointee)
    }
    public func set_shape_centered(bool: UInt8)  {
        withUnsafePointer(to: bool) { bool_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bool_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_shape_centered_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_shape_centered() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_shape_centered_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_shape_visible(bool: UInt8)  {
        withUnsafePointer(to: bool) { bool_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bool_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_shape_visible_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_shape_visible() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_shape_visible_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_action(action: String)  {
        withUnsafePointer(to: action) { action_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(action_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_action_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_action() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_action_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_visibility_mode(mode: TouchScreenButton.VisibilityMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_visibility_mode_3031128463,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_visibility_mode() -> TouchScreenButton.VisibilityMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_visibility_mode_2558996468,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TouchScreenButton.VisibilityMode(from: __resPtr.pointee)
    }
    public func set_passby_press(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_passby_press_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_passby_press_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_passby_press_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
}