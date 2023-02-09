import godot_native

fileprivate var __godot_name_PropertyTweener: StringName! = nil

/// Interpolates an [Object]'s property over time.
/// 
/// [PropertyTweener] is used to interpolate a property in an object. See [method Tween.tween_property] for more usage information.
///  
/// [b]Note:[/b] [method Tween.tween_property] is the only correct way to create [PropertyTweener]. Any [PropertyTweener] created manually will not function correctly.
open class PropertyTweener : Tweener {

    

    public override class var __godot_name: StringName { __godot_name_PropertyTweener }

    static var _method_from_4190193059: StringName! = nil
    static var _method_from_current_4279177709: StringName! = nil
    static var _method_as_relative_4279177709: StringName! = nil
    static var _method_set_trans_1899107404: StringName! = nil
    static var _method_set_ease_1080455622: StringName! = nil
    static var _method_set_delay_2171559331: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_PropertyTweener == nil)
        __godot_name_PropertyTweener = StringName(from: "PropertyTweener")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_from_4190193059 = StringName(from: "from")
        assert(self._method_from_4190193059 != nil)
        self._method_from_current_4279177709 = StringName(from: "from_current")
        assert(self._method_from_current_4279177709 != nil)
        self._method_as_relative_4279177709 = StringName(from: "as_relative")
        assert(self._method_as_relative_4279177709 != nil)
        self._method_set_trans_1899107404 = StringName(from: "set_trans")
        assert(self._method_set_trans_1899107404 != nil)
        self._method_set_ease_1080455622 = StringName(from: "set_ease")
        assert(self._method_set_ease_1080455622 != nil)
        self._method_set_delay_2171559331 = StringName(from: "set_delay")
        assert(self._method_set_delay_2171559331 != nil)
    }

    public func from(value: Variant) -> PropertyTweener {
        let value_native = value._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_from_4190193059._native_ptr(),
                    4190193059)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PropertyTweener(godot: __resPtr.pointee)
    }
    public func from_current() -> PropertyTweener {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_from_current_4279177709._native_ptr(),
                    4279177709)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PropertyTweener(godot: __resPtr.pointee)
    }
    public func as_relative() -> PropertyTweener {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_as_relative_4279177709._native_ptr(),
                    4279177709)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PropertyTweener(godot: __resPtr.pointee)
    }
    public func set_trans(trans: Tween.TransitionType) -> PropertyTweener {
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
                    Self._method_set_trans_1899107404._native_ptr(),
                    1899107404)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PropertyTweener(godot: __resPtr.pointee)
        }
    }
    public func set_ease(ease: Tween.EaseType) -> PropertyTweener {
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
                    Self._method_set_ease_1080455622._native_ptr(),
                    1080455622)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PropertyTweener(godot: __resPtr.pointee)
        }
    }
    public func set_delay(delay: Float64) -> PropertyTweener {
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
                    Self._method_set_delay_2171559331._native_ptr(),
                    2171559331)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PropertyTweener(godot: __resPtr.pointee)
        }
    }
}