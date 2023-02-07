import godot_native

fileprivate var __godot_name_InputEventWithModifiers: StringName! = nil

/// Base class for keys events with modifiers.
/// 
/// Contains keys events information with modifiers support like [kbd]Shift[/kbd] or [kbd]Alt[/kbd]. See [method Node._input].
public class InputEventWithModifiers : InputEventFromWindow {

    

    public override class var __godot_name: StringName { __godot_name_InputEventWithModifiers }

    static var _method_set_command_or_control_autoremap_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_command_or_control_autoremap_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_is_command_or_control_pressed_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_alt_pressed_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_alt_pressed_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_shift_pressed_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_shift_pressed_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_ctrl_pressed_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_ctrl_pressed_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_meta_pressed_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_meta_pressed_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_modifiers_mask_1258259499: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_InputEventWithModifiers = StringName(from: "InputEventWithModifiers")

        let _method_set_command_or_control_autoremap_2586408642_name = StringName(from: "set_command_or_control_autoremap")
        self._method_set_command_or_control_autoremap_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_command_or_control_autoremap_2586408642_name._native_ptr(), 2586408642)
        assert(InputEventWithModifiers._method_set_command_or_control_autoremap_2586408642 != nil)
        let _method_is_command_or_control_autoremap_36873697_name = StringName(from: "is_command_or_control_autoremap")
        self._method_is_command_or_control_autoremap_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_command_or_control_autoremap_36873697_name._native_ptr(), 36873697)
        assert(InputEventWithModifiers._method_is_command_or_control_autoremap_36873697 != nil)
        let _method_is_command_or_control_pressed_36873697_name = StringName(from: "is_command_or_control_pressed")
        self._method_is_command_or_control_pressed_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_command_or_control_pressed_36873697_name._native_ptr(), 36873697)
        assert(InputEventWithModifiers._method_is_command_or_control_pressed_36873697 != nil)
        let _method_set_alt_pressed_2586408642_name = StringName(from: "set_alt_pressed")
        self._method_set_alt_pressed_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_alt_pressed_2586408642_name._native_ptr(), 2586408642)
        assert(InputEventWithModifiers._method_set_alt_pressed_2586408642 != nil)
        let _method_is_alt_pressed_36873697_name = StringName(from: "is_alt_pressed")
        self._method_is_alt_pressed_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_alt_pressed_36873697_name._native_ptr(), 36873697)
        assert(InputEventWithModifiers._method_is_alt_pressed_36873697 != nil)
        let _method_set_shift_pressed_2586408642_name = StringName(from: "set_shift_pressed")
        self._method_set_shift_pressed_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_shift_pressed_2586408642_name._native_ptr(), 2586408642)
        assert(InputEventWithModifiers._method_set_shift_pressed_2586408642 != nil)
        let _method_is_shift_pressed_36873697_name = StringName(from: "is_shift_pressed")
        self._method_is_shift_pressed_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_shift_pressed_36873697_name._native_ptr(), 36873697)
        assert(InputEventWithModifiers._method_is_shift_pressed_36873697 != nil)
        let _method_set_ctrl_pressed_2586408642_name = StringName(from: "set_ctrl_pressed")
        self._method_set_ctrl_pressed_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ctrl_pressed_2586408642_name._native_ptr(), 2586408642)
        assert(InputEventWithModifiers._method_set_ctrl_pressed_2586408642 != nil)
        let _method_is_ctrl_pressed_36873697_name = StringName(from: "is_ctrl_pressed")
        self._method_is_ctrl_pressed_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_ctrl_pressed_36873697_name._native_ptr(), 36873697)
        assert(InputEventWithModifiers._method_is_ctrl_pressed_36873697 != nil)
        let _method_set_meta_pressed_2586408642_name = StringName(from: "set_meta_pressed")
        self._method_set_meta_pressed_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_meta_pressed_2586408642_name._native_ptr(), 2586408642)
        assert(InputEventWithModifiers._method_set_meta_pressed_2586408642 != nil)
        let _method_is_meta_pressed_36873697_name = StringName(from: "is_meta_pressed")
        self._method_is_meta_pressed_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_meta_pressed_36873697_name._native_ptr(), 36873697)
        assert(InputEventWithModifiers._method_is_meta_pressed_36873697 != nil)
        let _method_get_modifiers_mask_1258259499_name = StringName(from: "get_modifiers_mask")
        self._method_get_modifiers_mask_1258259499 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_modifiers_mask_1258259499_name._native_ptr(), 1258259499)
        assert(InputEventWithModifiers._method_get_modifiers_mask_1258259499 != nil)
    }

    public func set_command_or_control_autoremap(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_command_or_control_autoremap_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_command_or_control_autoremap() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_command_or_control_autoremap_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func is_command_or_control_pressed() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_command_or_control_pressed_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_alt_pressed(pressed: UInt8)  {
        withUnsafePointer(to: pressed) { pressed_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pressed_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_alt_pressed_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_alt_pressed() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_alt_pressed_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_shift_pressed(pressed: UInt8)  {
        withUnsafePointer(to: pressed) { pressed_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pressed_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_shift_pressed_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_shift_pressed() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_shift_pressed_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_ctrl_pressed(pressed: UInt8)  {
        withUnsafePointer(to: pressed) { pressed_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pressed_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ctrl_pressed_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_ctrl_pressed() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_ctrl_pressed_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_meta_pressed(pressed: UInt8)  {
        withUnsafePointer(to: pressed) { pressed_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pressed_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_meta_pressed_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_meta_pressed() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_meta_pressed_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_modifiers_mask() -> KeyModifierMask {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_modifiers_mask_1258259499,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return KeyModifierMask(from: __resPtr.pointee)
    }
}