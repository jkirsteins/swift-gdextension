import godot_native

fileprivate var __godot_name_AudioListener2D: StringName! = nil

/// Overrides the location sounds are heard from.
/// 
/// Once added to the scene tree and enabled using [method make_current], this node will override the location sounds are heard from. Only one [AudioListener2D] can be current. Using [method make_current] will disable the previous [AudioListener2D].
///  
/// If there is no active [AudioListener2D] in the current [Viewport], center of the screen will be used as a hearing point for the audio. [AudioListener2D] needs to be inside [SceneTree] to function.
open class AudioListener2D : Node2D {

    

    public override class var __godot_name: StringName { __godot_name_AudioListener2D }

    static var _method_make_current_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_clear_current_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_is_current_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_AudioListener2D = StringName(from: "AudioListener2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_make_current_3218959716_name = StringName(from: "make_current")
        self._method_make_current_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioListener2D._native_ptr(), _method_make_current_3218959716_name._native_ptr(), 3218959716)
        assert(AudioListener2D._method_make_current_3218959716 != nil)
        let _method_clear_current_3218959716_name = StringName(from: "clear_current")
        self._method_clear_current_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioListener2D._native_ptr(), _method_clear_current_3218959716_name._native_ptr(), 3218959716)
        assert(AudioListener2D._method_clear_current_3218959716 != nil)
        let _method_is_current_36873697_name = StringName(from: "is_current")
        self._method_is_current_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioListener2D._native_ptr(), _method_is_current_36873697_name._native_ptr(), 36873697)
        assert(AudioListener2D._method_is_current_36873697 != nil)
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
            return UInt8(godot: __resPtr.pointee)
    }
}