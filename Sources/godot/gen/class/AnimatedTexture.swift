import godot_native

fileprivate var __godot_name_AnimatedTexture: StringName! = nil

/// Proxy texture for simple frame-based animations.
/// 
/// [AnimatedTexture] is a resource format for frame-based animations, where multiple textures can be chained automatically with a predefined delay for each frame. Unlike [AnimationPlayer] or [AnimatedSprite2D], it isn't a [Node], but has the advantage of being usable anywhere a [Texture2D] resource can be used, e.g. in a [TileSet].
///  
/// The playback of the animation is controlled by the [member speed_scale] property, as well as each frame's duration (see [method set_frame_duration]). The animation loops, i.e. it will restart at frame 0 automatically after playing the last frame.
///  
/// [AnimatedTexture] currently requires all frame textures to have the same size, otherwise the bigger ones will be cropped to match the smallest one.
///  
/// [b]Note:[/b] AnimatedTexture doesn't support using [AtlasTexture]s. Each frame needs to be a separate [Texture2D].
open class AnimatedTexture : Texture2D {

    

    public override class var __godot_name: StringName { __godot_name_AnimatedTexture }

    static var _method_set_frames_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_frames_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_current_frame_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_current_frame_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_pause_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_pause_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_one_shot_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_one_shot_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_speed_scale_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_speed_scale_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_frame_texture_666127730: GDExtensionMethodBindPtr! = nil
    static var _method_get_frame_texture_3536238170: GDExtensionMethodBindPtr! = nil
    static var _method_set_frame_duration_1602489585: GDExtensionMethodBindPtr! = nil
    static var _method_get_frame_duration_2339986948: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_AnimatedTexture = StringName(from: "AnimatedTexture")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_frames_1286410249_name = StringName(from: "set_frames")
        self._method_set_frames_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimatedTexture._native_ptr(), _method_set_frames_1286410249_name._native_ptr(), 1286410249)
        assert(AnimatedTexture._method_set_frames_1286410249 != nil)
        let _method_get_frames_3905245786_name = StringName(from: "get_frames")
        self._method_get_frames_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimatedTexture._native_ptr(), _method_get_frames_3905245786_name._native_ptr(), 3905245786)
        assert(AnimatedTexture._method_get_frames_3905245786 != nil)
        let _method_set_current_frame_1286410249_name = StringName(from: "set_current_frame")
        self._method_set_current_frame_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimatedTexture._native_ptr(), _method_set_current_frame_1286410249_name._native_ptr(), 1286410249)
        assert(AnimatedTexture._method_set_current_frame_1286410249 != nil)
        let _method_get_current_frame_3905245786_name = StringName(from: "get_current_frame")
        self._method_get_current_frame_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimatedTexture._native_ptr(), _method_get_current_frame_3905245786_name._native_ptr(), 3905245786)
        assert(AnimatedTexture._method_get_current_frame_3905245786 != nil)
        let _method_set_pause_2586408642_name = StringName(from: "set_pause")
        self._method_set_pause_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimatedTexture._native_ptr(), _method_set_pause_2586408642_name._native_ptr(), 2586408642)
        assert(AnimatedTexture._method_set_pause_2586408642 != nil)
        let _method_get_pause_36873697_name = StringName(from: "get_pause")
        self._method_get_pause_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimatedTexture._native_ptr(), _method_get_pause_36873697_name._native_ptr(), 36873697)
        assert(AnimatedTexture._method_get_pause_36873697 != nil)
        let _method_set_one_shot_2586408642_name = StringName(from: "set_one_shot")
        self._method_set_one_shot_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimatedTexture._native_ptr(), _method_set_one_shot_2586408642_name._native_ptr(), 2586408642)
        assert(AnimatedTexture._method_set_one_shot_2586408642 != nil)
        let _method_get_one_shot_36873697_name = StringName(from: "get_one_shot")
        self._method_get_one_shot_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimatedTexture._native_ptr(), _method_get_one_shot_36873697_name._native_ptr(), 36873697)
        assert(AnimatedTexture._method_get_one_shot_36873697 != nil)
        let _method_set_speed_scale_373806689_name = StringName(from: "set_speed_scale")
        self._method_set_speed_scale_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimatedTexture._native_ptr(), _method_set_speed_scale_373806689_name._native_ptr(), 373806689)
        assert(AnimatedTexture._method_set_speed_scale_373806689 != nil)
        let _method_get_speed_scale_1740695150_name = StringName(from: "get_speed_scale")
        self._method_get_speed_scale_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimatedTexture._native_ptr(), _method_get_speed_scale_1740695150_name._native_ptr(), 1740695150)
        assert(AnimatedTexture._method_get_speed_scale_1740695150 != nil)
        let _method_set_frame_texture_666127730_name = StringName(from: "set_frame_texture")
        self._method_set_frame_texture_666127730 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimatedTexture._native_ptr(), _method_set_frame_texture_666127730_name._native_ptr(), 666127730)
        assert(AnimatedTexture._method_set_frame_texture_666127730 != nil)
        let _method_get_frame_texture_3536238170_name = StringName(from: "get_frame_texture")
        self._method_get_frame_texture_3536238170 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimatedTexture._native_ptr(), _method_get_frame_texture_3536238170_name._native_ptr(), 3536238170)
        assert(AnimatedTexture._method_get_frame_texture_3536238170 != nil)
        let _method_set_frame_duration_1602489585_name = StringName(from: "set_frame_duration")
        self._method_set_frame_duration_1602489585 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimatedTexture._native_ptr(), _method_set_frame_duration_1602489585_name._native_ptr(), 1602489585)
        assert(AnimatedTexture._method_set_frame_duration_1602489585 != nil)
        let _method_get_frame_duration_2339986948_name = StringName(from: "get_frame_duration")
        self._method_get_frame_duration_2339986948 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimatedTexture._native_ptr(), _method_get_frame_duration_2339986948_name._native_ptr(), 2339986948)
        assert(AnimatedTexture._method_get_frame_duration_2339986948 != nil)
    }

    public func set_frames(frames: Int64)  {
        withUnsafePointer(to: frames) { frames_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(frames_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_frames_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_frames() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_frames_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_current_frame(frame: Int64)  {
        withUnsafePointer(to: frame) { frame_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(frame_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_current_frame_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_current_frame() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_current_frame_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_pause(pause: UInt8)  {
        withUnsafePointer(to: pause) { pause_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pause_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_pause_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_pause() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_pause_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_one_shot(one_shot: UInt8)  {
        withUnsafePointer(to: one_shot) { one_shot_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(one_shot_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_one_shot_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_one_shot() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_one_shot_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_speed_scale(scale: Float64)  {
        withUnsafePointer(to: scale) { scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_speed_scale_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_speed_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_speed_scale_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_frame_texture(frame: Int64, texture: Texture2D)  {
        withUnsafePointer(to: frame) { frame_native in
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(frame_native), .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_frame_texture_666127730,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_frame_texture(frame: Int64) -> Texture2D {
        withUnsafePointer(to: frame) { frame_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(frame_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_frame_texture_3536238170,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
        }
    }
    public func set_frame_duration(frame: Int64, duration: Float64)  {
        withUnsafePointer(to: duration) { duration_native in
        withUnsafePointer(to: frame) { frame_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(frame_native), .init(duration_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_frame_duration_1602489585,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_frame_duration(frame: Int64) -> Float64 {
        withUnsafePointer(to: frame) { frame_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(frame_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_frame_duration_2339986948,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
}