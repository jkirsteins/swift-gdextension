import godot_native

fileprivate var __godot_name_InputEventPanGesture: StringName! = nil

/// 
/// 
/// 
open class InputEventPanGesture : InputEventGesture {

    

    public override class var __godot_name: StringName { __godot_name_InputEventPanGesture }

    static var _method_set_delta_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_delta_3341600327: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_InputEventPanGesture = StringName(from: "InputEventPanGesture")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_delta_743155724_name = StringName(from: "set_delta")
        self._method_set_delta_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventPanGesture._native_ptr(), _method_set_delta_743155724_name._native_ptr(), 743155724)
        assert(InputEventPanGesture._method_set_delta_743155724 != nil)
        let _method_get_delta_3341600327_name = StringName(from: "get_delta")
        self._method_get_delta_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventPanGesture._native_ptr(), _method_get_delta_3341600327_name._native_ptr(), 3341600327)
        assert(InputEventPanGesture._method_get_delta_3341600327 != nil)
    }

    public func set_delta(delta: Vector2)  {
        let delta_native = delta._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(delta_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_delta_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_delta() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_delta_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
}