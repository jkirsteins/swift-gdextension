import godot_native

fileprivate var __godot_name_MethodTweener: StringName! = nil

/// Interpolates an abstract value and supplies it to a method called over time.
/// 
/// [MethodTweener] is similar to a combination of [CallbackTweener] and [PropertyTweener]. It calls a method providing an interpolated value as a parameter. See [method Tween.tween_method] for more usage information.
///  
/// [b]Note:[/b] [method Tween.tween_method] is the only correct way to create [MethodTweener]. Any [MethodTweener] created manually will not function correctly.
open class MethodTweener : Tweener {

    

    public override class var __godot_name: StringName { __godot_name_MethodTweener }

    static var _method_set_delay_266477812: StringName! = nil
    static var _method_set_trans_3740975367: StringName! = nil
    static var _method_set_ease_315540545: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_MethodTweener == nil)
        __godot_name_MethodTweener = StringName(from: "MethodTweener")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_delay_266477812 = StringName(from: "set_delay")
        assert(self._method_set_delay_266477812 != nil)
        self._method_set_trans_3740975367 = StringName(from: "set_trans")
        assert(self._method_set_trans_3740975367 != nil)
        self._method_set_ease_315540545 = StringName(from: "set_ease")
        assert(self._method_set_ease_315540545 != nil)
    }

    public func set_delay(delay: Float64) -> MethodTweener {
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
                    Self._method_set_delay_266477812._native_ptr(),
                    266477812)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return MethodTweener(godot: __resPtr.pointee)
        }
    }
    public func set_trans(trans: Tween.TransitionType) -> MethodTweener {
        withUnsafePointer(to: trans.rawValue) { trans_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(trans_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_trans_3740975367._native_ptr(),
                    3740975367)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return MethodTweener(godot: __resPtr.pointee)
        }
    }
    public func set_ease(ease: Tween.EaseType) -> MethodTweener {
        withUnsafePointer(to: ease.rawValue) { ease_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ease_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ease_315540545._native_ptr(),
                    315540545)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return MethodTweener(godot: __resPtr.pointee)
        }
    }
}