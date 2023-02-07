import godot_native

fileprivate var __godot_name_AudioListener3D: StringName! = nil

/// Overrides the location sounds are heard from.
/// 
/// Once added to the scene tree and enabled using [method make_current], this node will override the location sounds are heard from. This can be used to listen from a location different from the [Camera3D].
public class AudioListener3D : Node3D {

    

    public override class var __godot_name: StringName { __godot_name_AudioListener3D }

    static var _method_make_current_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_clear_current_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_is_current_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_listener_transform_3229777777: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_AudioListener3D = StringName(from: "AudioListener3D")

        let _method_make_current_3218959716_name = StringName(from: "make_current")
        self._method_make_current_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_make_current_3218959716_name._native_ptr(), 3218959716)
        assert(AudioListener3D._method_make_current_3218959716 != nil)
        let _method_clear_current_3218959716_name = StringName(from: "clear_current")
        self._method_clear_current_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_current_3218959716_name._native_ptr(), 3218959716)
        assert(AudioListener3D._method_clear_current_3218959716 != nil)
        let _method_is_current_36873697_name = StringName(from: "is_current")
        self._method_is_current_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_current_36873697_name._native_ptr(), 36873697)
        assert(AudioListener3D._method_is_current_36873697 != nil)
        let _method_get_listener_transform_3229777777_name = StringName(from: "get_listener_transform")
        self._method_get_listener_transform_3229777777 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_listener_transform_3229777777_name._native_ptr(), 3229777777)
        assert(AudioListener3D._method_get_listener_transform_3229777777 != nil)
    }

    public func make_current()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_make_current_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func clear_current()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_current_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func is_current() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_current_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_listener_transform() -> Transform3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_listener_transform_3229777777,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(from: __resPtr.pointee)
    }
}