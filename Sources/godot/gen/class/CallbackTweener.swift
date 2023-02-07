import godot_native

fileprivate var __godot_name_CallbackTweener: StringName! = nil

/// Calls the specified method after optional delay.
/// 
/// [CallbackTweener] is used to call a method in a tweening sequence. See [method Tween.tween_callback] for more usage information.
///  
/// [b]Note:[/b] [method Tween.tween_callback] is the only correct way to create [CallbackTweener]. Any [CallbackTweener] created manually will not function correctly.
public class CallbackTweener : Tweener {

    

    public override class var __godot_name: StringName { __godot_name_CallbackTweener }

    static var _method_set_delay_3008182292: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_CallbackTweener = StringName(from: "CallbackTweener")

        let _method_set_delay_3008182292_name = StringName(from: "set_delay")
        self._method_set_delay_3008182292 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_delay_3008182292_name._native_ptr(), 3008182292)
        assert(CallbackTweener._method_set_delay_3008182292 != nil)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_delay_3008182292,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CallbackTweener(from: __resPtr.pointee)
        }
    }
}