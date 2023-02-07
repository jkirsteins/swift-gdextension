import godot_native

fileprivate var __godot_name_InputEventGesture: StringName! = nil

/// Base class for touch control gestures.
/// 
/// 
public class InputEventGesture : InputEventWithModifiers {

    

    public override class var __godot_name: StringName { __godot_name_InputEventGesture }

    static var _method_set_position_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_position_3341600327: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_InputEventGesture = StringName(from: "InputEventGesture")

        let _method_set_position_743155724_name = StringName(from: "set_position")
        self._method_set_position_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_position_743155724_name._native_ptr(), 743155724)
        assert(InputEventGesture._method_set_position_743155724 != nil)
        let _method_get_position_3341600327_name = StringName(from: "get_position")
        self._method_get_position_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_position_3341600327_name._native_ptr(), 3341600327)
        assert(InputEventGesture._method_get_position_3341600327 != nil)
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
}