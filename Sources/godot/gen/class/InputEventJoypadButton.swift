import godot_native

fileprivate var __godot_name_InputEventJoypadButton: StringName! = nil

/// Input event for gamepad buttons.
/// 
/// Input event type for gamepad buttons. For gamepad analog sticks and joysticks, see [InputEventJoypadMotion].
open class InputEventJoypadButton : InputEvent {

    

    public override class var __godot_name: StringName { __godot_name_InputEventJoypadButton }

    static var _method_set_button_index_1466368136: GDExtensionMethodBindPtr! = nil
    static var _method_get_button_index_595588182: GDExtensionMethodBindPtr! = nil
    static var _method_set_pressure_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_pressure_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_pressed_2586408642: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_InputEventJoypadButton = StringName(from: "InputEventJoypadButton")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_button_index_1466368136_name = StringName(from: "set_button_index")
        self._method_set_button_index_1466368136 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventJoypadButton._native_ptr(), _method_set_button_index_1466368136_name._native_ptr(), 1466368136)
        assert(InputEventJoypadButton._method_set_button_index_1466368136 != nil)
        let _method_get_button_index_595588182_name = StringName(from: "get_button_index")
        self._method_get_button_index_595588182 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventJoypadButton._native_ptr(), _method_get_button_index_595588182_name._native_ptr(), 595588182)
        assert(InputEventJoypadButton._method_get_button_index_595588182 != nil)
        let _method_set_pressure_373806689_name = StringName(from: "set_pressure")
        self._method_set_pressure_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventJoypadButton._native_ptr(), _method_set_pressure_373806689_name._native_ptr(), 373806689)
        assert(InputEventJoypadButton._method_set_pressure_373806689 != nil)
        let _method_get_pressure_1740695150_name = StringName(from: "get_pressure")
        self._method_get_pressure_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventJoypadButton._native_ptr(), _method_get_pressure_1740695150_name._native_ptr(), 1740695150)
        assert(InputEventJoypadButton._method_get_pressure_1740695150 != nil)
        let _method_set_pressed_2586408642_name = StringName(from: "set_pressed")
        self._method_set_pressed_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventJoypadButton._native_ptr(), _method_set_pressed_2586408642_name._native_ptr(), 2586408642)
        assert(InputEventJoypadButton._method_set_pressed_2586408642 != nil)
    }

    public func set_button_index(button_index: JoyButton)  {
        withUnsafePointer(to: button_index.rawValue) { button_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(button_index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_button_index_1466368136,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_button_index() -> JoyButton {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_button_index_595588182,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return JoyButton(godot: __resPtr.pointee)
    }
    public func set_pressure(pressure: Float64)  {
        withUnsafePointer(to: pressure) { pressure_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pressure_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_pressure_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_pressure() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_pressure_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
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
}