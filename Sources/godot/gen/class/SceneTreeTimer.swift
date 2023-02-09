import godot_native

fileprivate var __godot_name_SceneTreeTimer: StringName! = nil

/// One-shot timer.
/// 
/// A one-shot timer managed by the scene tree, which emits [signal timeout] on completion. See also [method SceneTree.create_timer].
///  
/// As opposed to [Timer], it does not require the instantiation of a node. Commonly used to create a one-shot delay timer as in the following example:
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// func some_function():
///  
///     print("Timer started.")
///  
///     await get_tree().create_timer(1.0).timeout
///  
///     print("Timer ended.")
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// public async Task SomeFunction()
///  
/// {
///  
///     GD.Print("Timer started.");
///  
///     await ToSignal(GetTree().CreateTimer(1.0f), SceneTreeTimer.SignalName.Timeout);
///  
///     GD.Print("Timer ended.");
///  
/// }
///  
/// [/csharp]
///  
/// [/codeblocks]
///  
/// The timer will be dereferenced after its time elapses. To preserve the timer, you can keep a reference to it. See [RefCounted].
open class SceneTreeTimer : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_SceneTreeTimer }

    static var _method_set_time_left_373806689: StringName! = nil
    static var _method_get_time_left_1740695150: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_SceneTreeTimer == nil)
        __godot_name_SceneTreeTimer = StringName(from: "SceneTreeTimer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_time_left_373806689 = StringName(from: "set_time_left")
        assert(self._method_set_time_left_373806689 != nil)
        self._method_get_time_left_1740695150 = StringName(from: "get_time_left")
        assert(self._method_get_time_left_1740695150 != nil)
    }

    public func set_time_left(time: Float64)  {
        withUnsafePointer(to: time) { time_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(time_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_time_left_373806689._native_ptr(),
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
    public func get_time_left() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_time_left_1740695150._native_ptr(),
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