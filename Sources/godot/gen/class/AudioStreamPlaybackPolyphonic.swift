import godot_native

fileprivate var __godot_name_AudioStreamPlaybackPolyphonic: StringName! = nil

/// Playback instance for [AudioStreamPolyphonic].
/// 
/// Playback instance for [AudioStreamPolyphonic]. After setting the [code]stream[/code] property of [AudioStreamPlayer], [AudioStreamPlayer2D], or [AudioStreamPlayer3D], the playback instance can be obtained by calling [method AudioStreamPlayer.get_stream_playback], [method AudioStreamPlayer2D.get_stream_playback] or [method AudioStreamPlayer3D.get_stream_playback] methods.
public class AudioStreamPlaybackPolyphonic : AudioStreamPlayback {

    

    public override class var __godot_name: StringName { __godot_name_AudioStreamPlaybackPolyphonic }

    static var _method_play_stream_3792189967: GDExtensionMethodBindPtr! = nil
    static var _method_set_stream_volume_1602489585: GDExtensionMethodBindPtr! = nil
    static var _method_set_stream_pitch_scale_1602489585: GDExtensionMethodBindPtr! = nil
    static var _method_is_stream_playing_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_stop_stream_1286410249: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_AudioStreamPlaybackPolyphonic = StringName(from: "AudioStreamPlaybackPolyphonic")

        let _method_play_stream_3792189967_name = StringName(from: "play_stream")
        self._method_play_stream_3792189967 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_play_stream_3792189967_name._native_ptr(), 3792189967)
        assert(AudioStreamPlaybackPolyphonic._method_play_stream_3792189967 != nil)
        let _method_set_stream_volume_1602489585_name = StringName(from: "set_stream_volume")
        self._method_set_stream_volume_1602489585 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_stream_volume_1602489585_name._native_ptr(), 1602489585)
        assert(AudioStreamPlaybackPolyphonic._method_set_stream_volume_1602489585 != nil)
        let _method_set_stream_pitch_scale_1602489585_name = StringName(from: "set_stream_pitch_scale")
        self._method_set_stream_pitch_scale_1602489585 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_stream_pitch_scale_1602489585_name._native_ptr(), 1602489585)
        assert(AudioStreamPlaybackPolyphonic._method_set_stream_pitch_scale_1602489585 != nil)
        let _method_is_stream_playing_1116898809_name = StringName(from: "is_stream_playing")
        self._method_is_stream_playing_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_stream_playing_1116898809_name._native_ptr(), 1116898809)
        assert(AudioStreamPlaybackPolyphonic._method_is_stream_playing_1116898809 != nil)
        let _method_stop_stream_1286410249_name = StringName(from: "stop_stream")
        self._method_stop_stream_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_stop_stream_1286410249_name._native_ptr(), 1286410249)
        assert(AudioStreamPlaybackPolyphonic._method_stop_stream_1286410249 != nil)
    }

    public func play_stream(stream: AudioStream, from_offset: Float64, volume_db: Float64, pitch_scale: Float64) -> Int64 {
        withUnsafePointer(to: pitch_scale) { pitch_scale_native in
        withUnsafePointer(to: volume_db) { volume_db_native in
        withUnsafePointer(to: from_offset) { from_offset_native in
        let stream_native = stream._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(stream_native), .init(from_offset_native), .init(volume_db_native), .init(pitch_scale_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_play_stream_3792189967,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
        }
    }
    public func set_stream_volume(stream: Int64, volume_db: Float64)  {
        withUnsafePointer(to: volume_db) { volume_db_native in
        withUnsafePointer(to: stream) { stream_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(stream_native), .init(volume_db_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_stream_volume_1602489585,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_stream_pitch_scale(stream: Int64, pitch_scale: Float64)  {
        withUnsafePointer(to: pitch_scale) { pitch_scale_native in
        withUnsafePointer(to: stream) { stream_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(stream_native), .init(pitch_scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_stream_pitch_scale_1602489585,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func is_stream_playing(stream: Int64) -> UInt8 {
        withUnsafePointer(to: stream) { stream_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(stream_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_stream_playing_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func stop_stream(stream: Int64)  {
        withUnsafePointer(to: stream) { stream_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(stream_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_stop_stream_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}