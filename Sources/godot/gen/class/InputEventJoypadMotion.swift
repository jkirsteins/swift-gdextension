import godot_native

fileprivate var __godot_name_InputEventJoypadMotion: StringName! = nil

/// Input event type for gamepad joysticks and other motions. For buttons, see [code]InputEventJoypadButton[/code].
/// 
/// Stores information about joystick motions. One [InputEventJoypadMotion] represents one axis at a time.
public class InputEventJoypadMotion : InputEvent {

    

    public override class var __godot_name: StringName { __godot_name_InputEventJoypadMotion }

    static var _method_set_axis_1332685170: GDExtensionMethodBindPtr! = nil
    static var _method_get_axis_4019121683: GDExtensionMethodBindPtr! = nil
    static var _method_set_axis_value_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_axis_value_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_InputEventJoypadMotion = StringName(from: "InputEventJoypadMotion")

        let _method_set_axis_1332685170_name = StringName(from: "set_axis")
        self._method_set_axis_1332685170 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_axis_1332685170_name._native_ptr(), 1332685170)
        assert(InputEventJoypadMotion._method_set_axis_1332685170 != nil)
        let _method_get_axis_4019121683_name = StringName(from: "get_axis")
        self._method_get_axis_4019121683 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_axis_4019121683_name._native_ptr(), 4019121683)
        assert(InputEventJoypadMotion._method_get_axis_4019121683 != nil)
        let _method_set_axis_value_373806689_name = StringName(from: "set_axis_value")
        self._method_set_axis_value_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_axis_value_373806689_name._native_ptr(), 373806689)
        assert(InputEventJoypadMotion._method_set_axis_value_373806689 != nil)
        let _method_get_axis_value_1740695150_name = StringName(from: "get_axis_value")
        self._method_get_axis_value_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_axis_value_1740695150_name._native_ptr(), 1740695150)
        assert(InputEventJoypadMotion._method_get_axis_value_1740695150 != nil)
    }

    public func set_axis(axis: JoyAxis)  {
        withUnsafePointer(to: axis.rawValue) { axis_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(axis_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_axis_1332685170,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_axis_4019121683,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return JoyAxis(from: __resPtr.pointee)
    }
    public func set_axis_value(axis_value: Float64)  {
        withUnsafePointer(to: axis_value) { axis_value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(axis_value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_axis_value_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_axis_value_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
}