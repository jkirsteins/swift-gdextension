import godot_native

fileprivate var __godot_name_InputEventScreenDrag: StringName! = nil

/// Input event type for screen drag events. Only available on mobile devices.
/// 
/// Contains screen drag information. See [method Node._input].
public class InputEventScreenDrag : InputEventFromWindow {

    

    public override class var __godot_name: StringName { __godot_name_InputEventScreenDrag }

    static var _method_set_index_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_index_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_tilt_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_tilt_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_pressure_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_pressure_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_pen_inverted_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_pen_inverted_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_position_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_position_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_relative_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_relative_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_velocity_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_velocity_3341600327: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_InputEventScreenDrag = StringName(from: "InputEventScreenDrag")

        let _method_set_index_1286410249_name = StringName(from: "set_index")
        self._method_set_index_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_index_1286410249_name._native_ptr(), 1286410249)
        assert(InputEventScreenDrag._method_set_index_1286410249 != nil)
        let _method_get_index_3905245786_name = StringName(from: "get_index")
        self._method_get_index_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_index_3905245786_name._native_ptr(), 3905245786)
        assert(InputEventScreenDrag._method_get_index_3905245786 != nil)
        let _method_set_tilt_743155724_name = StringName(from: "set_tilt")
        self._method_set_tilt_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tilt_743155724_name._native_ptr(), 743155724)
        assert(InputEventScreenDrag._method_set_tilt_743155724 != nil)
        let _method_get_tilt_3341600327_name = StringName(from: "get_tilt")
        self._method_get_tilt_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tilt_3341600327_name._native_ptr(), 3341600327)
        assert(InputEventScreenDrag._method_get_tilt_3341600327 != nil)
        let _method_set_pressure_373806689_name = StringName(from: "set_pressure")
        self._method_set_pressure_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_pressure_373806689_name._native_ptr(), 373806689)
        assert(InputEventScreenDrag._method_set_pressure_373806689 != nil)
        let _method_get_pressure_1740695150_name = StringName(from: "get_pressure")
        self._method_get_pressure_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_pressure_1740695150_name._native_ptr(), 1740695150)
        assert(InputEventScreenDrag._method_get_pressure_1740695150 != nil)
        let _method_set_pen_inverted_2586408642_name = StringName(from: "set_pen_inverted")
        self._method_set_pen_inverted_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_pen_inverted_2586408642_name._native_ptr(), 2586408642)
        assert(InputEventScreenDrag._method_set_pen_inverted_2586408642 != nil)
        let _method_get_pen_inverted_36873697_name = StringName(from: "get_pen_inverted")
        self._method_get_pen_inverted_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_pen_inverted_36873697_name._native_ptr(), 36873697)
        assert(InputEventScreenDrag._method_get_pen_inverted_36873697 != nil)
        let _method_set_position_743155724_name = StringName(from: "set_position")
        self._method_set_position_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_position_743155724_name._native_ptr(), 743155724)
        assert(InputEventScreenDrag._method_set_position_743155724 != nil)
        let _method_get_position_3341600327_name = StringName(from: "get_position")
        self._method_get_position_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_position_3341600327_name._native_ptr(), 3341600327)
        assert(InputEventScreenDrag._method_get_position_3341600327 != nil)
        let _method_set_relative_743155724_name = StringName(from: "set_relative")
        self._method_set_relative_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_relative_743155724_name._native_ptr(), 743155724)
        assert(InputEventScreenDrag._method_set_relative_743155724 != nil)
        let _method_get_relative_3341600327_name = StringName(from: "get_relative")
        self._method_get_relative_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_relative_3341600327_name._native_ptr(), 3341600327)
        assert(InputEventScreenDrag._method_get_relative_3341600327 != nil)
        let _method_set_velocity_743155724_name = StringName(from: "set_velocity")
        self._method_set_velocity_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_velocity_743155724_name._native_ptr(), 743155724)
        assert(InputEventScreenDrag._method_set_velocity_743155724 != nil)
        let _method_get_velocity_3341600327_name = StringName(from: "get_velocity")
        self._method_get_velocity_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_velocity_3341600327_name._native_ptr(), 3341600327)
        assert(InputEventScreenDrag._method_get_velocity_3341600327 != nil)
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
            return Int64(from: __resPtr.pointee)
    }
    public func set_tilt(tilt: Vector2)  {
        let tilt_native = tilt._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tilt_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tilt_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_tilt() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tilt_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
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
            return Float64(from: __resPtr.pointee)
    }
    public func set_pen_inverted(pen_inverted: UInt8)  {
        withUnsafePointer(to: pen_inverted) { pen_inverted_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pen_inverted_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_pen_inverted_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_pen_inverted() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_pen_inverted_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            return Vector2(from: __resPtr.pointee)
    }
    public func set_relative(relative: Vector2)  {
        let relative_native = relative._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(relative_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_relative_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_relative() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_relative_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func set_velocity(velocity: Vector2)  {
        let velocity_native = velocity._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(velocity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_velocity_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_velocity() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_velocity_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
}