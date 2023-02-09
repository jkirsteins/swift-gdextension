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

    static var _method_set_animation_3304788590: StringName! = nil
    static var _method_get_animation_2002593661: StringName! = nil
    static var _method_set_play_mode_3347718873: StringName! = nil
    static var _method_get_play_mode_2061244637: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AnimationNodeAnimation == nil)
        __godot_name_AnimationNodeAnimation = StringName(from: "AnimationNodeAnimation")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_animation_3304788590 = StringName(from: "set_animation")
        assert(self._method_set_animation_3304788590 != nil)
        self._method_get_animation_2002593661 = StringName(from: "get_animation")
        assert(self._method_get_animation_2002593661 != nil)
        self._method_set_play_mode_3347718873 = StringName(from: "set_play_mode")
        assert(self._method_set_play_mode_3347718873 != nil)
        self._method_get_play_mode_2061244637 = StringName(from: "get_play_mode")
        assert(self._method_get_play_mode_2061244637 != nil)
    }

    public func set_animation(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_animation_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_animation_2002593661._native_ptr(),
                    2002593661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_play_mode_3347718873._native_ptr(),
                    3347718873)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_play_mode_2061244637._native_ptr(),
                    2061244637)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AnimationNodeAnimation.PlayMode(godot: __resPtr.pointee)
    }
}