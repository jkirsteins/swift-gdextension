import godot_native

fileprivate var __godot_name_InputEventShortcut: StringName! = nil

/// 
/// 
/// 
public class InputEventShortcut : InputEvent {

    

    public override class var __godot_name: StringName { __godot_name_InputEventShortcut }

    static var _method_set_shortcut_857163497: GDExtensionMethodBindPtr! = nil
    static var _method_get_shortcut_3766804753: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_InputEventShortcut = StringName(from: "InputEventShortcut")

        let _method_set_shortcut_857163497_name = StringName(from: "set_shortcut")
        self._method_set_shortcut_857163497 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_shortcut_857163497_name._native_ptr(), 857163497)
        assert(InputEventShortcut._method_set_shortcut_857163497 != nil)
        let _method_get_shortcut_3766804753_name = StringName(from: "get_shortcut")
        self._method_get_shortcut_3766804753 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_shortcut_3766804753_name._native_ptr(), 3766804753)
        assert(InputEventShortcut._method_get_shortcut_3766804753 != nil)
    }

    public func set_shortcut(shortcut: Shortcut)  {
        let shortcut_native = shortcut._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shortcut_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_shortcut_857163497,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_shortcut() -> Shortcut {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_shortcut_3766804753,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Shortcut(from: __resPtr.pointee)
    }
}