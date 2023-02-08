import godot_native

fileprivate var __godot_name_InputEventMouse: StringName! = nil

/// Base input event type for mouse events.
/// 
/// Stores general mouse events information.
open class InputEventMouse : InputEventWithModifiers {

    

    public override class var __godot_name: StringName { __godot_name_InputEventMouse }

    static var _method_set_button_mask_3950145251: GDExtensionMethodBindPtr! = nil
    static var _method_get_button_mask_2512161324: GDExtensionMethodBindPtr! = nil
    static var _method_set_position_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_position_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_global_position_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_global_position_3341600327: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_InputEventMouse = StringName(from: "InputEventMouse")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_button_mask_3950145251_name = StringName(from: "set_button_mask")
        self._method_set_button_mask_3950145251 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventMouse._native_ptr(), _method_set_button_mask_3950145251_name._native_ptr(), 3950145251)
        assert(InputEventMouse._method_set_button_mask_3950145251 != nil)
        let _method_get_button_mask_2512161324_name = StringName(from: "get_button_mask")
        self._method_get_button_mask_2512161324 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventMouse._native_ptr(), _method_get_button_mask_2512161324_name._native_ptr(), 2512161324)
        assert(InputEventMouse._method_get_button_mask_2512161324 != nil)
        let _method_set_position_743155724_name = StringName(from: "set_position")
        self._method_set_position_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventMouse._native_ptr(), _method_set_position_743155724_name._native_ptr(), 743155724)
        assert(InputEventMouse._method_set_position_743155724 != nil)
        let _method_get_position_3341600327_name = StringName(from: "get_position")
        self._method_get_position_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventMouse._native_ptr(), _method_get_position_3341600327_name._native_ptr(), 3341600327)
        assert(InputEventMouse._method_get_position_3341600327 != nil)
        let _method_set_global_position_743155724_name = StringName(from: "set_global_position")
        self._method_set_global_position_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventMouse._native_ptr(), _method_set_global_position_743155724_name._native_ptr(), 743155724)
        assert(InputEventMouse._method_set_global_position_743155724 != nil)
        let _method_get_global_position_3341600327_name = StringName(from: "get_global_position")
        self._method_get_global_position_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventMouse._native_ptr(), _method_get_global_position_3341600327_name._native_ptr(), 3341600327)
        assert(InputEventMouse._method_get_global_position_3341600327 != nil)
    }

    public func set_button_mask(button_mask: MouseButtonMask)  {
        withUnsafePointer(to: button_mask.rawValue) { button_mask_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(button_mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_button_mask_3950145251,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_button_mask() -> MouseButtonMask {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_button_mask_2512161324,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return MouseButtonMask(godot: __resPtr.pointee)
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
    public func set_global_position(global_position: Vector2)  {
        let global_position_native = global_position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(global_position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_global_position_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_global_position() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_global_position_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
}