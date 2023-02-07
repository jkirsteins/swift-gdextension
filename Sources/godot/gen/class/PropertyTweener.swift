import godot_native

fileprivate var __godot_name_PropertyTweener: StringName! = nil

/// Interpolates an [Object]'s property over time.
/// 
/// [PropertyTweener] is used to interpolate a property in an object. See [method Tween.tween_property] for more usage information.
///  
/// [b]Note:[/b] [method Tween.tween_property] is the only correct way to create [PropertyTweener]. Any [PropertyTweener] created manually will not function correctly.
public class PropertyTweener : Tweener {

    

    public override class var __godot_name: StringName { __godot_name_PropertyTweener }

    static var _method_from_4190193059: GDExtensionMethodBindPtr! = nil
    static var _method_from_current_4279177709: GDExtensionMethodBindPtr! = nil
    static var _method_as_relative_4279177709: GDExtensionMethodBindPtr! = nil
    static var _method_set_trans_1899107404: GDExtensionMethodBindPtr! = nil
    static var _method_set_ease_1080455622: GDExtensionMethodBindPtr! = nil
    static var _method_set_delay_2171559331: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_PropertyTweener = StringName(from: "PropertyTweener")

        let _method_from_4190193059_name = StringName(from: "from")
        self._method_from_4190193059 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_from_4190193059_name._native_ptr(), 4190193059)
        assert(PropertyTweener._method_from_4190193059 != nil)
        let _method_from_current_4279177709_name = StringName(from: "from_current")
        self._method_from_current_4279177709 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_from_current_4279177709_name._native_ptr(), 4279177709)
        assert(PropertyTweener._method_from_current_4279177709 != nil)
        let _method_as_relative_4279177709_name = StringName(from: "as_relative")
        self._method_as_relative_4279177709 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_as_relative_4279177709_name._native_ptr(), 4279177709)
        assert(PropertyTweener._method_as_relative_4279177709 != nil)
        let _method_set_trans_1899107404_name = StringName(from: "set_trans")
        self._method_set_trans_1899107404 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_trans_1899107404_name._native_ptr(), 1899107404)
        assert(PropertyTweener._method_set_trans_1899107404 != nil)
        let _method_set_ease_1080455622_name = StringName(from: "set_ease")
        self._method_set_ease_1080455622 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ease_1080455622_name._native_ptr(), 1080455622)
        assert(PropertyTweener._method_set_ease_1080455622 != nil)
        let _method_set_delay_2171559331_name = StringName(from: "set_delay")
        self._method_set_delay_2171559331 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_delay_2171559331_name._native_ptr(), 2171559331)
        assert(PropertyTweener._method_set_delay_2171559331 != nil)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_from_4190193059,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PropertyTweener(from: __resPtr.pointee)
    }
    public func from_current() -> PropertyTweener {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_from_current_4279177709,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PropertyTweener(from: __resPtr.pointee)
    }
    public func as_relative() -> PropertyTweener {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_as_relative_4279177709,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PropertyTweener(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_trans_1899107404,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PropertyTweener(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ease_1080455622,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PropertyTweener(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_delay_2171559331,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PropertyTweener(from: __resPtr.pointee)
        }
    }
}