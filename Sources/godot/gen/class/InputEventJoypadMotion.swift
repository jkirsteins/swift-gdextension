import godot_native

fileprivate var __godot_name_InputEventJoypadMotion: StringName! = nil

/// Input event type for gamepad joysticks and other motions. For buttons, see [code]InputEventJoypadButton[/code].
/// 
/// Stores information about joystick motions. One [InputEventJoypadMotion] represents one axis at a time.
open class InputEventJoypadMotion : InputEvent {

    

    public override class var __godot_name: StringName { __godot_name_InputEventJoypadMotion }

    static var _method_set_axis_1332685170: StringName! = nil
    static var _method_get_axis_4019121683: StringName! = nil
    static var _method_set_axis_value_373806689: StringName! = nil
    static var _method_get_axis_value_1740695150: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_InputEventJoypadMotion == nil)
        __godot_name_InputEventJoypadMotion = StringName(from: "InputEventJoypadMotion")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_axis_1332685170 = StringName(from: "set_axis")
        assert(self._method_set_axis_1332685170 != nil)
        self._method_get_axis_4019121683 = StringName(from: "get_axis")
        assert(self._method_get_axis_4019121683 != nil)
        self._method_set_axis_value_373806689 = StringName(from: "set_axis_value")
        assert(self._method_set_axis_value_373806689 != nil)
        self._method_get_axis_value_1740695150 = StringName(from: "get_axis_value")
        assert(self._method_get_axis_value_1740695150 != nil)
    }

    public func set_axis(axis: JoyAxis)  {
        withUnsafePointer(to: axis.rawValue) { axis_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(axis_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_axis_1332685170._native_ptr(),
                    1332685170)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_axis() -> JoyAxis {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_axis_4019121683._native_ptr(),
                    4019121683)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return JoyAxis(godot: __resPtr.pointee)
    }
    public func set_axis_value(axis_value: Float64)  {
        withUnsafePointer(to: axis_value) { axis_value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(axis_value_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_axis_value_373806689._native_ptr(),
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
    public func get_axis_value() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_axis_value_1740695150._native_ptr(),
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
}