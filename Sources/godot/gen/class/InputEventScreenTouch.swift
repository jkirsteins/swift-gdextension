import godot_native

fileprivate var __godot_name_InputEventScreenTouch: StringName! = nil

/// Input event type for screen touch events.
///  
/// (only available on mobile devices)
/// 
/// Stores multi-touch press/release information. Supports touch press, touch release and [member index] for multi-touch count and order.
open class InputEventScreenTouch : InputEventFromWindow {

    

    public override class var __godot_name: StringName { __godot_name_InputEventScreenTouch }

    static var _method_set_index_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_index_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_position_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_position_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_pressed_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_set_double_tap_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_double_tap_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_InputEventScreenTouch = StringName(from: "InputEventScreenTouch")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_index_1286410249_name = StringName(from: "set_index")
        self._method_set_index_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventScreenTouch._native_ptr(), _method_set_index_1286410249_name._native_ptr(), 1286410249)
        assert(InputEventScreenTouch._method_set_index_1286410249 != nil)
        let _method_get_index_3905245786_name = StringName(from: "get_index")
        self._method_get_index_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventScreenTouch._native_ptr(), _method_get_index_3905245786_name._native_ptr(), 3905245786)
        assert(InputEventScreenTouch._method_get_index_3905245786 != nil)
        let _method_set_position_743155724_name = StringName(from: "set_position")
        self._method_set_position_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventScreenTouch._native_ptr(), _method_set_position_743155724_name._native_ptr(), 743155724)
        assert(InputEventScreenTouch._method_set_position_743155724 != nil)
        let _method_get_position_3341600327_name = StringName(from: "get_position")
        self._method_get_position_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventScreenTouch._native_ptr(), _method_get_position_3341600327_name._native_ptr(), 3341600327)
        assert(InputEventScreenTouch._method_get_position_3341600327 != nil)
        let _method_set_pressed_2586408642_name = StringName(from: "set_pressed")
        self._method_set_pressed_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventScreenTouch._native_ptr(), _method_set_pressed_2586408642_name._native_ptr(), 2586408642)
        assert(InputEventScreenTouch._method_set_pressed_2586408642 != nil)
        let _method_set_double_tap_2586408642_name = StringName(from: "set_double_tap")
        self._method_set_double_tap_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventScreenTouch._native_ptr(), _method_set_double_tap_2586408642_name._native_ptr(), 2586408642)
        assert(InputEventScreenTouch._method_set_double_tap_2586408642 != nil)
        let _method_is_double_tap_36873697_name = StringName(from: "is_double_tap")
        self._method_is_double_tap_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventScreenTouch._native_ptr(), _method_is_double_tap_36873697_name._native_ptr(), 36873697)
        assert(InputEventScreenTouch._method_is_double_tap_36873697 != nil)
    }

    public func set_index(index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_index_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_index() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_index_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_position(position: Vector2)  {
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_position_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_position() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_position_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
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
    public func set_double_tap(double_tap: UInt8)  {
        withUnsafePointer(to: double_tap) { double_tap_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(double_tap_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_double_tap_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_double_tap() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_double_tap_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}