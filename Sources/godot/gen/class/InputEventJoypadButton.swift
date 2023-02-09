import godot_native

fileprivate var __godot_name_InputEventJoypadButton: StringName! = nil

/// Input event for gamepad buttons.
/// 
/// Input event type for gamepad buttons. For gamepad analog sticks and joysticks, see [InputEventJoypadMotion].
open class InputEventJoypadButton : InputEvent {

    

    public override class var __godot_name: StringName { __godot_name_InputEventJoypadButton }

    static var _method_set_button_index_1466368136: StringName! = nil
    static var _method_get_button_index_595588182: StringName! = nil
    static var _method_set_pressure_373806689: StringName! = nil
    static var _method_get_pressure_1740695150: StringName! = nil
    static var _method_set_pressed_2586408642: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_InputEventJoypadButton == nil)
        __godot_name_InputEventJoypadButton = StringName(from: "InputEventJoypadButton")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_button_index_1466368136 = StringName(from: "set_button_index")
        assert(self._method_set_button_index_1466368136 != nil)
        self._method_get_button_index_595588182 = StringName(from: "get_button_index")
        assert(self._method_get_button_index_595588182 != nil)
        self._method_set_pressure_373806689 = StringName(from: "set_pressure")
        assert(self._method_set_pressure_373806689 != nil)
        self._method_get_pressure_1740695150 = StringName(from: "get_pressure")
        assert(self._method_get_pressure_1740695150 != nil)
        self._method_set_pressed_2586408642 = StringName(from: "set_pressed")
        assert(self._method_set_pressed_2586408642 != nil)
    }

    public func set_button_index(button_index: JoyButton)  {
        withUnsafePointer(to: button_index.rawValue) { button_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(button_index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_button_index_1466368136._native_ptr(),
                    1466368136)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_button_index_595588182._native_ptr(),
                    595588182)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_pressure_373806689._native_ptr(),
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
    public func get_pressure() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_pressure_1740695150._native_ptr(),
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
}