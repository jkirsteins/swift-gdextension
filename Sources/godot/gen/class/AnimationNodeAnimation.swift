import godot_native

fileprivate var __godot_name_AnimationNodeAnimation: StringName! = nil

/// Input animation to use in an [AnimationNodeBlendTree].
/// 
/// A resource to add to an [AnimationNodeBlendTree]. Only features one output set using the [member animation] property. Use it as an input for [AnimationNode] that blend animations together.
open class AnimationNodeAnimation : AnimationRootNode {

    public enum PlayMode : Int32 {
        case PLAY_MODE_FORWARD = 0
        case PLAY_MODE_BACKWARD = 1
    }

    public override class var __godot_name: StringName { __godot_name_AnimationNodeAnimation }

    static var _method_set_animation_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_get_animation_2002593661: GDExtensionMethodBindPtr! = nil
    static var _method_set_play_mode_3347718873: GDExtensionMethodBindPtr! = nil
    static var _method_get_play_mode_2061244637: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_AnimationNodeAnimation = StringName(from: "AnimationNodeAnimation")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_animation_3304788590_name = StringName(from: "set_animation")
        self._method_set_animation_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeAnimation._native_ptr(), _method_set_animation_3304788590_name._native_ptr(), 3304788590)
        assert(AnimationNodeAnimation._method_set_animation_3304788590 != nil)
        let _method_get_animation_2002593661_name = StringName(from: "get_animation")
        self._method_get_animation_2002593661 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeAnimation._native_ptr(), _method_get_animation_2002593661_name._native_ptr(), 2002593661)
        assert(AnimationNodeAnimation._method_get_animation_2002593661 != nil)
        let _method_set_play_mode_3347718873_name = StringName(from: "set_play_mode")
        self._method_set_play_mode_3347718873 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeAnimation._native_ptr(), _method_set_play_mode_3347718873_name._native_ptr(), 3347718873)
        assert(AnimationNodeAnimation._method_set_play_mode_3347718873 != nil)
        let _method_get_play_mode_2061244637_name = StringName(from: "get_play_mode")
        self._method_get_play_mode_2061244637 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeAnimation._native_ptr(), _method_get_play_mode_2061244637_name._native_ptr(), 2061244637)
        assert(AnimationNodeAnimation._method_get_play_mode_2061244637 != nil)
    }

    public func set_animation(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_animation_3304788590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_animation() -> StringName {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_animation_2002593661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
    }
    public func set_play_mode(mode: AnimationNodeAnimation.PlayMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_play_mode_3347718873,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_play_mode() -> AnimationNodeAnimation.PlayMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_play_mode_2061244637,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AnimationNodeAnimation.PlayMode(godot: __resPtr.pointee)
    }
}