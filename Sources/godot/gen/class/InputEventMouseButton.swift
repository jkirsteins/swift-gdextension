import godot_native

fileprivate var __godot_name_InputEventMouseButton: StringName! = nil

/// Input event type for mouse button events.
/// 
/// Contains mouse click information. See [method Node._input].
public class InputEventMouseButton : InputEventMouse {

    

    public override class var __godot_name: StringName { __godot_name_InputEventMouseButton }

    static var _method_set_factor_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_factor_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_button_index_3624991109: GDExtensionMethodBindPtr! = nil
    static var _method_get_button_index_1132662608: GDExtensionMethodBindPtr! = nil
    static var _method_set_pressed_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_set_double_click_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_double_click_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_InputEventMouseButton = StringName(from: "InputEventMouseButton")

        let _method_set_factor_373806689_name = StringName(from: "set_factor")
        self._method_set_factor_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_factor_373806689_name._native_ptr(), 373806689)
        assert(InputEventMouseButton._method_set_factor_373806689 != nil)
        let _method_get_factor_1740695150_name = StringName(from: "get_factor")
        self._method_get_factor_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_factor_1740695150_name._native_ptr(), 1740695150)
        assert(InputEventMouseButton._method_get_factor_1740695150 != nil)
        let _method_set_button_index_3624991109_name = StringName(from: "set_button_index")
        self._method_set_button_index_3624991109 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_button_index_3624991109_name._native_ptr(), 3624991109)
        assert(InputEventMouseButton._method_set_button_index_3624991109 != nil)
        let _method_get_button_index_1132662608_name = StringName(from: "get_button_index")
        self._method_get_button_index_1132662608 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_button_index_1132662608_name._native_ptr(), 1132662608)
        assert(InputEventMouseButton._method_get_button_index_1132662608 != nil)
        let _method_set_pressed_2586408642_name = StringName(from: "set_pressed")
        self._method_set_pressed_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_pressed_2586408642_name._native_ptr(), 2586408642)
        assert(InputEventMouseButton._method_set_pressed_2586408642 != nil)
        let _method_set_double_click_2586408642_name = StringName(from: "set_double_click")
        self._method_set_double_click_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_double_click_2586408642_name._native_ptr(), 2586408642)
        assert(InputEventMouseButton._method_set_double_click_2586408642 != nil)
        let _method_is_double_click_36873697_name = StringName(from: "is_double_click")
        self._method_is_double_click_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_double_click_36873697_name._native_ptr(), 36873697)
        assert(InputEventMouseButton._method_is_double_click_36873697 != nil)
    }

    public func set_factor(factor: Float64)  {
        withUnsafePointer(to: factor) { factor_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(factor_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_factor_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_factor() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_factor_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_button_index(button_index: MouseButton)  {
        withUnsafePointer(to: button_index.rawValue) { button_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(button_index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_button_index_3624991109,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_button_index() -> MouseButton {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_button_index_1132662608,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return MouseButton(from: __resPtr.pointee)
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
    public func set_double_click(double_click: UInt8)  {
        withUnsafePointer(to: double_click) { double_click_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(double_click_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_double_click_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_double_click() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_double_click_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}