import godot_native

fileprivate var __godot_name_CallbackTweener: StringName! = nil

/// Calls the specified method after optional delay.
/// 
/// [CallbackTweener] is used to call a method in a tweening sequence. See [method Tween.tween_callback] for more usage information.
///  
/// [b]Note:[/b] [method Tween.tween_callback] is the only correct way to create [CallbackTweener]. Any [CallbackTweener] created manually will not function correctly.
open class CallbackTweener : Tweener {

    

    public override class var __godot_name: StringName { __godot_name_CallbackTweener }

    static var _method_set_delay_3008182292: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_CallbackTweener == nil)
        __godot_name_CallbackTweener = StringName(from: "CallbackTweener")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_delay_3008182292 = StringName(from: "set_delay")
        assert(self._method_set_delay_3008182292 != nil)
    }

    public func set_delay(delay: Float64) -> CallbackTweener {
        withUnsafePointer(to: delay) { delay_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(delay_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_delay_3008182292._native_ptr(),
                    3008182292)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CallbackTweener(godot: __resPtr.pointee)
        }
    }
}