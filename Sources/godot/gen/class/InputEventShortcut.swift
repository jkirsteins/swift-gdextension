import godot_native

fileprivate var __godot_name_InputEventShortcut: StringName! = nil

/// 
/// 
/// 
open class InputEventShortcut : InputEvent {

    

    public override class var __godot_name: StringName { __godot_name_InputEventShortcut }

    static var _method_set_shortcut_857163497: StringName! = nil
    static var _method_get_shortcut_3766804753: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_InputEventShortcut == nil)
        __godot_name_InputEventShortcut = StringName(from: "InputEventShortcut")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_shortcut_857163497 = StringName(from: "set_shortcut")
        assert(self._method_set_shortcut_857163497 != nil)
        self._method_get_shortcut_3766804753 = StringName(from: "get_shortcut")
        assert(self._method_get_shortcut_3766804753 != nil)
    }

    public func set_shortcut(shortcut: Shortcut)  {
        let shortcut_native = shortcut._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shortcut_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_shortcut_857163497._native_ptr(),
                    857163497)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_shortcut_3766804753._native_ptr(),
                    3766804753)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Shortcut(godot: __resPtr.pointee)
    }
}