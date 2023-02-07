import godot_native

fileprivate var __godot_name_AudioStreamPlayer: StringName! = nil

/// Plays back audio non-positionally.
/// 
/// Plays an audio stream non-positionally.
///  
/// To play audio positionally, use [AudioStreamPlayer2D] or [AudioStreamPlayer3D] instead of [AudioStreamPlayer].
public class AudioStreamPlayer : Node {

    public enum MixTarget : Int32 {
        case MIX_TARGET_STEREO = 0
        case MIX_TARGET_SURROUND = 1
        case MIX_TARGET_CENTER = 2
    }

    public override class var __godot_name: StringName { __godot_name_AudioStreamPlayer }

    static var _method_set_stream_2210767741: GDExtensionMethodBindPtr! = nil
    static var _method_get_stream_160907539: GDExtensionMethodBindPtr! = nil
    static var _method_set_volume_db_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_volume_db_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_pitch_scale_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_pitch_scale_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_play_3041634712: GDExtensionMethodBindPtr! = nil
    static var _method_seek_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_stop_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_is_playing_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_playback_position_191475506: GDExtensionMethodBindPtr! = nil
    static var _method_set_bus_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_get_bus_2002593661: GDExtensionMethodBindPtr! = nil
    static var _method_set_autoplay_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_autoplay_enabled_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_set_mix_target_2300306138: GDExtensionMethodBindPtr! = nil
    static var _method_get_mix_target_172807476: GDExtensionMethodBindPtr! = nil
    static var _method_set_stream_paused_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_stream_paused_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_max_polyphony_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_polyphony_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_has_stream_playback_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_get_stream_playback_210135309: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_AudioStreamPlayer = StringName(from: "AudioStreamPlayer")

        let _method_set_stream_2210767741_name = StringName(from: "set_stream")
        self._method_set_stream_2210767741 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_stream_2210767741_name._native_ptr(), 2210767741)
        assert(AudioStreamPlayer._method_set_stream_2210767741 != nil)
        let _method_get_stream_160907539_name = StringName(from: "get_stream")
        self._method_get_stream_160907539 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_stream_160907539_name._native_ptr(), 160907539)
        assert(AudioStreamPlayer._method_get_stream_160907539 != nil)
        let _method_set_volume_db_373806689_name = StringName(from: "set_volume_db")
        self._method_set_volume_db_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_volume_db_373806689_name._native_ptr(), 373806689)
        assert(AudioStreamPlayer._method_set_volume_db_373806689 != nil)
        let _method_get_volume_db_1740695150_name = StringName(from: "get_volume_db")
        self._method_get_volume_db_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_volume_db_1740695150_name._native_ptr(), 1740695150)
        assert(AudioStreamPlayer._method_get_volume_db_1740695150 != nil)
        let _method_set_pitch_scale_373806689_name = StringName(from: "set_pitch_scale")
        self._method_set_pitch_scale_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_pitch_scale_373806689_name._native_ptr(), 373806689)
        assert(AudioStreamPlayer._method_set_pitch_scale_373806689 != nil)
        let _method_get_pitch_scale_1740695150_name = StringName(from: "get_pitch_scale")
        self._method_get_pitch_scale_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_pitch_scale_1740695150_name._native_ptr(), 1740695150)
        assert(AudioStreamPlayer._method_get_pitch_scale_1740695150 != nil)
        let _method_play_3041634712_name = StringName(from: "play")
        self._method_play_3041634712 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_play_3041634712_name._native_ptr(), 3041634712)
        assert(AudioStreamPlayer._method_play_3041634712 != nil)
        let _method_seek_373806689_name = StringName(from: "seek")
        self._method_seek_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_seek_373806689_name._native_ptr(), 373806689)
        assert(AudioStreamPlayer._method_seek_373806689 != nil)
        let _method_stop_3218959716_name = StringName(from: "stop")
        self._method_stop_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_stop_3218959716_name._native_ptr(), 3218959716)
        assert(AudioStreamPlayer._method_stop_3218959716 != nil)
        let _method_is_playing_36873697_name = StringName(from: "is_playing")
        self._method_is_playing_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_playing_36873697_name._native_ptr(), 36873697)
        assert(AudioStreamPlayer._method_is_playing_36873697 != nil)
        let _method_get_playback_position_191475506_name = StringName(from: "get_playback_position")
        self._method_get_playback_position_191475506 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_playback_position_191475506_name._native_ptr(), 191475506)
        assert(AudioStreamPlayer._method_get_playback_position_191475506 != nil)
        let _method_set_bus_3304788590_name = StringName(from: "set_bus")
        self._method_set_bus_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_bus_3304788590_name._native_ptr(), 3304788590)
        assert(AudioStreamPlayer._method_set_bus_3304788590 != nil)
        let _method_get_bus_2002593661_name = StringName(from: "get_bus")
        self._method_get_bus_2002593661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_bus_2002593661_name._native_ptr(), 2002593661)
        assert(AudioStreamPlayer._method_get_bus_2002593661 != nil)
        let _method_set_autoplay_2586408642_name = StringName(from: "set_autoplay")
        self._method_set_autoplay_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_autoplay_2586408642_name._native_ptr(), 2586408642)
        assert(AudioStreamPlayer._method_set_autoplay_2586408642 != nil)
        let _method_is_autoplay_enabled_2240911060_name = StringName(from: "is_autoplay_enabled")
        self._method_is_autoplay_enabled_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_autoplay_enabled_2240911060_name._native_ptr(), 2240911060)
        assert(AudioStreamPlayer._method_is_autoplay_enabled_2240911060 != nil)
        let _method_set_mix_target_2300306138_name = StringName(from: "set_mix_target")
        self._method_set_mix_target_2300306138 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_mix_target_2300306138_name._native_ptr(), 2300306138)
        assert(AudioStreamPlayer._method_set_mix_target_2300306138 != nil)
        let _method_get_mix_target_172807476_name = StringName(from: "get_mix_target")
        self._method_get_mix_target_172807476 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_mix_target_172807476_name._native_ptr(), 172807476)
        assert(AudioStreamPlayer._method_get_mix_target_172807476 != nil)
        let _method_set_stream_paused_2586408642_name = StringName(from: "set_stream_paused")
        self._method_set_stream_paused_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_stream_paused_2586408642_name._native_ptr(), 2586408642)
        assert(AudioStreamPlayer._method_set_stream_paused_2586408642 != nil)
        let _method_get_stream_paused_36873697_name = StringName(from: "get_stream_paused")
        self._method_get_stream_paused_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_stream_paused_36873697_name._native_ptr(), 36873697)
        assert(AudioStreamPlayer._method_get_stream_paused_36873697 != nil)
        let _method_set_max_polyphony_1286410249_name = StringName(from: "set_max_polyphony")
        self._method_set_max_polyphony_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_max_polyphony_1286410249_name._native_ptr(), 1286410249)
        assert(AudioStreamPlayer._method_set_max_polyphony_1286410249 != nil)
        let _method_get_max_polyphony_3905245786_name = StringName(from: "get_max_polyphony")
        self._method_get_max_polyphony_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_max_polyphony_3905245786_name._native_ptr(), 3905245786)
        assert(AudioStreamPlayer._method_get_max_polyphony_3905245786 != nil)
        let _method_has_stream_playback_2240911060_name = StringName(from: "has_stream_playback")
        self._method_has_stream_playback_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_stream_playback_2240911060_name._native_ptr(), 2240911060)
        assert(AudioStreamPlayer._method_has_stream_playback_2240911060 != nil)
        let _method_get_stream_playback_210135309_name = StringName(from: "get_stream_playback")
        self._method_get_stream_playback_210135309 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_stream_playback_210135309_name._native_ptr(), 210135309)
        assert(AudioStreamPlayer._method_get_stream_playback_210135309 != nil)
    }

    public func set_stream(stream: AudioStream)  {
        let stream_native = stream._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(stream_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_stream_2210767741,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_stream() -> AudioStream {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_stream_160907539,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AudioStream(from: __resPtr.pointee)
    }
    public func set_volume_db(volume_db: Float64)  {
        withUnsafePointer(to: volume_db) { volume_db_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(volume_db_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_volume_db_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_volume_db() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_volume_db_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_pitch_scale(pitch_scale: Float64)  {
        withUnsafePointer(to: pitch_scale) { pitch_scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pitch_scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_pitch_scale_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_pitch_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_pitch_scale_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func play(from_position: Float64)  {
        withUnsafePointer(to: from_position) { from_position_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_play_3041634712,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func seek(to_position: Float64)  {
        withUnsafePointer(to: to_position) { to_position_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(to_position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_seek_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
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
    public func get_playback_position() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_playback_position_191475506,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_bus(bus: StringName)  {
        let bus_native = bus._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bus_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bus_3304788590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_bus() -> StringName {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bus_2002593661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(from: __resPtr.pointee)
    }
    public func set_autoplay(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_autoplay_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_autoplay_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_autoplay_enabled_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_mix_target(mix_target: AudioStreamPlayer.MixTarget)  {
        withUnsafePointer(to: mix_target.rawValue) { mix_target_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mix_target_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_mix_target_2300306138,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_mix_target() -> AudioStreamPlayer.MixTarget {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mix_target_172807476,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AudioStreamPlayer.MixTarget(from: __resPtr.pointee)
    }
    public func set_stream_paused(pause: UInt8)  {
        withUnsafePointer(to: pause) { pause_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pause_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_stream_paused_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_stream_paused() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_stream_paused_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_max_polyphony(max_polyphony: Int64)  {
        withUnsafePointer(to: max_polyphony) { max_polyphony_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_polyphony_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_max_polyphony_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_max_polyphony() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_max_polyphony_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func has_stream_playback() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_stream_playback_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_stream_playback() -> AudioStreamPlayback {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_stream_playback_210135309,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AudioStreamPlayback(from: __resPtr.pointee)
    }
}