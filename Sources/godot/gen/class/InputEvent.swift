import godot_native

fileprivate var __godot_name_InputEvent: StringName! = nil

/// Generic input event.
/// 
/// Base class of all sort of input event. See [method Node._input].
public class InputEvent : Resource {

    

    public override class var __godot_name: StringName { __godot_name_InputEvent }

    static var _method_set_device_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_device_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_is_action_1558498928: GDExtensionMethodBindPtr! = nil
    static var _method_is_action_pressed_1631499404: GDExtensionMethodBindPtr! = nil
    static var _method_is_action_released_1558498928: GDExtensionMethodBindPtr! = nil
    static var _method_get_action_strength_801543509: GDExtensionMethodBindPtr! = nil
    static var _method_is_pressed_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_is_echo_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_as_text_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_is_match_3392494811: GDExtensionMethodBindPtr! = nil
    static var _method_is_action_type_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_accumulate_1062211774: GDExtensionMethodBindPtr! = nil
    static var _method_xformed_by_2747409789: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_InputEvent = StringName(from: "InputEvent")

        let _method_set_device_1286410249_name = StringName(from: "set_device")
        self._method_set_device_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_device_1286410249_name._native_ptr(), 1286410249)
        assert(InputEvent._method_set_device_1286410249 != nil)
        let _method_get_device_3905245786_name = StringName(from: "get_device")
        self._method_get_device_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_device_3905245786_name._native_ptr(), 3905245786)
        assert(InputEvent._method_get_device_3905245786 != nil)
        let _method_is_action_1558498928_name = StringName(from: "is_action")
        self._method_is_action_1558498928 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_action_1558498928_name._native_ptr(), 1558498928)
        assert(InputEvent._method_is_action_1558498928 != nil)
        let _method_is_action_pressed_1631499404_name = StringName(from: "is_action_pressed")
        self._method_is_action_pressed_1631499404 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_action_pressed_1631499404_name._native_ptr(), 1631499404)
        assert(InputEvent._method_is_action_pressed_1631499404 != nil)
        let _method_is_action_released_1558498928_name = StringName(from: "is_action_released")
        self._method_is_action_released_1558498928 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_action_released_1558498928_name._native_ptr(), 1558498928)
        assert(InputEvent._method_is_action_released_1558498928 != nil)
        let _method_get_action_strength_801543509_name = StringName(from: "get_action_strength")
        self._method_get_action_strength_801543509 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_action_strength_801543509_name._native_ptr(), 801543509)
        assert(InputEvent._method_get_action_strength_801543509 != nil)
        let _method_is_pressed_36873697_name = StringName(from: "is_pressed")
        self._method_is_pressed_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_pressed_36873697_name._native_ptr(), 36873697)
        assert(InputEvent._method_is_pressed_36873697 != nil)
        let _method_is_echo_36873697_name = StringName(from: "is_echo")
        self._method_is_echo_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_echo_36873697_name._native_ptr(), 36873697)
        assert(InputEvent._method_is_echo_36873697 != nil)
        let _method_as_text_201670096_name = StringName(from: "as_text")
        self._method_as_text_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_as_text_201670096_name._native_ptr(), 201670096)
        assert(InputEvent._method_as_text_201670096 != nil)
        let _method_is_match_3392494811_name = StringName(from: "is_match")
        self._method_is_match_3392494811 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_match_3392494811_name._native_ptr(), 3392494811)
        assert(InputEvent._method_is_match_3392494811 != nil)
        let _method_is_action_type_36873697_name = StringName(from: "is_action_type")
        self._method_is_action_type_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_action_type_36873697_name._native_ptr(), 36873697)
        assert(InputEvent._method_is_action_type_36873697 != nil)
        let _method_accumulate_1062211774_name = StringName(from: "accumulate")
        self._method_accumulate_1062211774 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_accumulate_1062211774_name._native_ptr(), 1062211774)
        assert(InputEvent._method_accumulate_1062211774 != nil)
        let _method_xformed_by_2747409789_name = StringName(from: "xformed_by")
        self._method_xformed_by_2747409789 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_xformed_by_2747409789_name._native_ptr(), 2747409789)
        assert(InputEvent._method_xformed_by_2747409789 != nil)
    }

    public func set_device(device: Int64)  {
        withUnsafePointer(to: device) { device_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(device_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_device_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_device() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_device_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func is_action(action: StringName, exact_match: UInt8) -> UInt8 {
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
                    Self._method_is_action_1558498928,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func is_action_pressed(action: StringName, allow_echo: UInt8, exact_match: UInt8) -> UInt8 {
        withUnsafePointer(to: exact_match) { exact_match_native in
        withUnsafePointer(to: allow_echo) { allow_echo_native in
        let action_native = action._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(action_native), .init(allow_echo_native), .init(exact_match_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_action_pressed_1631499404,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
        }
    }
    public func is_action_released(action: StringName, exact_match: UInt8) -> UInt8 {
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
                    Self._method_is_action_released_1558498928,
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
    public func is_echo() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_echo_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func as_text() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_as_text_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func is_match(event: InputEvent, exact_match: UInt8) -> UInt8 {
        withUnsafePointer(to: exact_match) { exact_match_native in
        let event_native = event._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(event_native), .init(exact_match_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_match_3392494811,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func is_action_type() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_action_type_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func accumulate(with_event: InputEvent) -> UInt8 {
        let with_event_native = with_event._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(with_event_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_accumulate_1062211774,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func xformed_by(xform: Transform2D, local_ofs: Vector2) -> InputEvent {
        let local_ofs_native = local_ofs._native_ptr()
        let xform_native = xform._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(xform_native), .init(local_ofs_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_xformed_by_2747409789,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return InputEvent(from: __resPtr.pointee)
    }
}