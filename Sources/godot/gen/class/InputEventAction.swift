import godot_native

fileprivate var __godot_name_InputEventAction: StringName! = nil

/// Input event type for actions.
/// 
/// Contains a generic action which can be targeted from several types of inputs. Actions can be created from the [b]Input Map[/b] tab in the [b]Project > Project Settings[/b] menu. See [method Node._input].
///  
/// [b]Note:[/b] Unlike the other [InputEvent] subclasses which map to unique physical events, this virtual one is not emitted by the engine. This class is useful to emit actions manually with [method Input.parse_input_event], which are then received in [method Node._input]. To check if a physical event matches an action from the Input Map, use [method InputEvent.is_action] and [method InputEvent.is_action_pressed].
public class InputEventAction : InputEvent {

    

    public override class var __godot_name: StringName { __godot_name_InputEventAction }

    static var _method_set_action_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_get_action_2002593661: GDExtensionMethodBindPtr! = nil
    static var _method_set_pressed_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_set_strength_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_strength_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_InputEventAction = StringName(from: "InputEventAction")

        let _method_set_action_3304788590_name = StringName(from: "set_action")
        self._method_set_action_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_action_3304788590_name._native_ptr(), 3304788590)
        assert(InputEventAction._method_set_action_3304788590 != nil)
        let _method_get_action_2002593661_name = StringName(from: "get_action")
        self._method_get_action_2002593661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_action_2002593661_name._native_ptr(), 2002593661)
        assert(InputEventAction._method_get_action_2002593661 != nil)
        let _method_set_pressed_2586408642_name = StringName(from: "set_pressed")
        self._method_set_pressed_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_pressed_2586408642_name._native_ptr(), 2586408642)
        assert(InputEventAction._method_set_pressed_2586408642 != nil)
        let _method_set_strength_373806689_name = StringName(from: "set_strength")
        self._method_set_strength_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_strength_373806689_name._native_ptr(), 373806689)
        assert(InputEventAction._method_set_strength_373806689 != nil)
        let _method_get_strength_1740695150_name = StringName(from: "get_strength")
        self._method_get_strength_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_strength_1740695150_name._native_ptr(), 1740695150)
        assert(InputEventAction._method_get_strength_1740695150 != nil)
    }

    public func set_action(action: StringName)  {
        let action_native = action._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(action_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_action_3304788590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_action() -> StringName {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_action_2002593661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(from: __resPtr.pointee)
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
    public func set_strength(strength: Float64)  {
        withUnsafePointer(to: strength) { strength_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(strength_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_strength_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_strength() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_strength_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
}