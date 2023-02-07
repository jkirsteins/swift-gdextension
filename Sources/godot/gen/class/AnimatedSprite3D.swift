import godot_native

fileprivate var __godot_name_AnimatedSprite3D: StringName! = nil

/// 2D sprite node in 3D world, that can use multiple 2D textures for animation.
/// 
/// [AnimatedSprite3D] is similar to the [Sprite3D] node, except it carries multiple textures as animation [member sprite_frames]. Animations are created using a [SpriteFrames] resource, which allows you to import image files (or a folder containing said files) to provide the animation frames for the sprite. The [SpriteFrames] resource can be configured in the editor via the SpriteFrames bottom panel.
public class AnimatedSprite3D : SpriteBase3D {

    

    public override class var __godot_name: StringName { __godot_name_AnimatedSprite3D }

    static var _method_set_sprite_frames_905781144: GDExtensionMethodBindPtr! = nil
    static var _method_get_sprite_frames_3804851214: GDExtensionMethodBindPtr! = nil
    static var _method_set_animation_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_get_animation_2002593661: GDExtensionMethodBindPtr! = nil
    static var _method_set_autoplay_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_autoplay_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_is_playing_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_play_1459844657: GDExtensionMethodBindPtr! = nil
    static var _method_play_backwards_1421762485: GDExtensionMethodBindPtr! = nil
    static var _method_pause_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_stop_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_frame_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_frame_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_frame_progress_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_frame_progress_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_frame_and_progress_1602489585: GDExtensionMethodBindPtr! = nil
    static var _method_set_speed_scale_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_speed_scale_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_playing_speed_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_AnimatedSprite3D = StringName(from: "AnimatedSprite3D")

        let _method_set_sprite_frames_905781144_name = StringName(from: "set_sprite_frames")
        self._method_set_sprite_frames_905781144 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_sprite_frames_905781144_name._native_ptr(), 905781144)
        assert(AnimatedSprite3D._method_set_sprite_frames_905781144 != nil)
        let _method_get_sprite_frames_3804851214_name = StringName(from: "get_sprite_frames")
        self._method_get_sprite_frames_3804851214 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_sprite_frames_3804851214_name._native_ptr(), 3804851214)
        assert(AnimatedSprite3D._method_get_sprite_frames_3804851214 != nil)
        let _method_set_animation_3304788590_name = StringName(from: "set_animation")
        self._method_set_animation_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_animation_3304788590_name._native_ptr(), 3304788590)
        assert(AnimatedSprite3D._method_set_animation_3304788590 != nil)
        let _method_get_animation_2002593661_name = StringName(from: "get_animation")
        self._method_get_animation_2002593661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_animation_2002593661_name._native_ptr(), 2002593661)
        assert(AnimatedSprite3D._method_get_animation_2002593661 != nil)
        let _method_set_autoplay_83702148_name = StringName(from: "set_autoplay")
        self._method_set_autoplay_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_autoplay_83702148_name._native_ptr(), 83702148)
        assert(AnimatedSprite3D._method_set_autoplay_83702148 != nil)
        let _method_get_autoplay_201670096_name = StringName(from: "get_autoplay")
        self._method_get_autoplay_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_autoplay_201670096_name._native_ptr(), 201670096)
        assert(AnimatedSprite3D._method_get_autoplay_201670096 != nil)
        let _method_is_playing_36873697_name = StringName(from: "is_playing")
        self._method_is_playing_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_playing_36873697_name._native_ptr(), 36873697)
        assert(AnimatedSprite3D._method_is_playing_36873697 != nil)
        let _method_play_1459844657_name = StringName(from: "play")
        self._method_play_1459844657 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_play_1459844657_name._native_ptr(), 1459844657)
        assert(AnimatedSprite3D._method_play_1459844657 != nil)
        let _method_play_backwards_1421762485_name = StringName(from: "play_backwards")
        self._method_play_backwards_1421762485 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_play_backwards_1421762485_name._native_ptr(), 1421762485)
        assert(AnimatedSprite3D._method_play_backwards_1421762485 != nil)
        let _method_pause_3218959716_name = StringName(from: "pause")
        self._method_pause_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_pause_3218959716_name._native_ptr(), 3218959716)
        assert(AnimatedSprite3D._method_pause_3218959716 != nil)
        let _method_stop_3218959716_name = StringName(from: "stop")
        self._method_stop_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_stop_3218959716_name._native_ptr(), 3218959716)
        assert(AnimatedSprite3D._method_stop_3218959716 != nil)
        let _method_set_frame_1286410249_name = StringName(from: "set_frame")
        self._method_set_frame_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_frame_1286410249_name._native_ptr(), 1286410249)
        assert(AnimatedSprite3D._method_set_frame_1286410249 != nil)
        let _method_get_frame_3905245786_name = StringName(from: "get_frame")
        self._method_get_frame_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_frame_3905245786_name._native_ptr(), 3905245786)
        assert(AnimatedSprite3D._method_get_frame_3905245786 != nil)
        let _method_set_frame_progress_373806689_name = StringName(from: "set_frame_progress")
        self._method_set_frame_progress_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_frame_progress_373806689_name._native_ptr(), 373806689)
        assert(AnimatedSprite3D._method_set_frame_progress_373806689 != nil)
        let _method_get_frame_progress_1740695150_name = StringName(from: "get_frame_progress")
        self._method_get_frame_progress_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_frame_progress_1740695150_name._native_ptr(), 1740695150)
        assert(AnimatedSprite3D._method_get_frame_progress_1740695150 != nil)
        let _method_set_frame_and_progress_1602489585_name = StringName(from: "set_frame_and_progress")
        self._method_set_frame_and_progress_1602489585 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_frame_and_progress_1602489585_name._native_ptr(), 1602489585)
        assert(AnimatedSprite3D._method_set_frame_and_progress_1602489585 != nil)
        let _method_set_speed_scale_373806689_name = StringName(from: "set_speed_scale")
        self._method_set_speed_scale_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_speed_scale_373806689_name._native_ptr(), 373806689)
        assert(AnimatedSprite3D._method_set_speed_scale_373806689 != nil)
        let _method_get_speed_scale_1740695150_name = StringName(from: "get_speed_scale")
        self._method_get_speed_scale_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_speed_scale_1740695150_name._native_ptr(), 1740695150)
        assert(AnimatedSprite3D._method_get_speed_scale_1740695150 != nil)
        let _method_get_playing_speed_1740695150_name = StringName(from: "get_playing_speed")
        self._method_get_playing_speed_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_playing_speed_1740695150_name._native_ptr(), 1740695150)
        assert(AnimatedSprite3D._method_get_playing_speed_1740695150 != nil)
    }

    public func set_sprite_frames(sprite_frames: SpriteFrames)  {
        let sprite_frames_native = sprite_frames._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sprite_frames_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sprite_frames_905781144,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_sprite_frames() -> SpriteFrames {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sprite_frames_3804851214,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return SpriteFrames(from: __resPtr.pointee)
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
            return StringName(from: __resPtr.pointee)
    }
    public func set_autoplay(name: String)  {
        withUnsafePointer(to: name) { name_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_autoplay_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_autoplay() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_autoplay_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func is_playing() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_playing_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func play(name: StringName, custom_speed: Float64, from_end: UInt8)  {
        withUnsafePointer(to: from_end) { from_end_native in
        withUnsafePointer(to: custom_speed) { custom_speed_native in
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(custom_speed_native), .init(from_end_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_play_1459844657,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func play_backwards(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_play_backwards_1421762485,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func pause()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_pause_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func stop()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_stop_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_frame(frame: Int64)  {
        withUnsafePointer(to: frame) { frame_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(frame_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_frame_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_frame() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_frame_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_frame_progress(progress: Float64)  {
        withUnsafePointer(to: progress) { progress_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(progress_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_frame_progress_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_frame_progress() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_frame_progress_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_frame_and_progress(frame: Int64, progress: Float64)  {
        withUnsafePointer(to: progress) { progress_native in
        withUnsafePointer(to: frame) { frame_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(frame_native), .init(progress_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_frame_and_progress_1602489585,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_speed_scale(speed_scale: Float64)  {
        withUnsafePointer(to: speed_scale) { speed_scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(speed_scale_native)
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
            return Float64(from: __resPtr.pointee)
    }
    public func get_playing_speed() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_playing_speed_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
}