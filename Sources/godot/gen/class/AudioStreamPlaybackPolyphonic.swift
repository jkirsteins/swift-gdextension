import godot_native

fileprivate var __godot_name_AudioStreamPlaybackPolyphonic: StringName! = nil

/// Playback instance for [AudioStreamPolyphonic].
/// 
/// Playback instance for [AudioStreamPolyphonic]. After setting the [code]stream[/code] property of [AudioStreamPlayer], [AudioStreamPlayer2D], or [AudioStreamPlayer3D], the playback instance can be obtained by calling [method AudioStreamPlayer.get_stream_playback], [method AudioStreamPlayer2D.get_stream_playback] or [method AudioStreamPlayer3D.get_stream_playback] methods.
open class AudioStreamPlaybackPolyphonic : AudioStreamPlayback {

    

    public override class var __godot_name: StringName { __godot_name_AudioStreamPlaybackPolyphonic }

    static var _method_play_stream_3792189967: StringName! = nil
    static var _method_set_stream_volume_1602489585: StringName! = nil
    static var _method_set_stream_pitch_scale_1602489585: StringName! = nil
    static var _method_is_stream_playing_1116898809: StringName! = nil
    static var _method_stop_stream_1286410249: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AudioStreamPlaybackPolyphonic == nil)
        __godot_name_AudioStreamPlaybackPolyphonic = StringName(from: "AudioStreamPlaybackPolyphonic")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_play_stream_3792189967 = StringName(from: "play_stream")
        assert(self._method_play_stream_3792189967 != nil)
        self._method_set_stream_volume_1602489585 = StringName(from: "set_stream_volume")
        assert(self._method_set_stream_volume_1602489585 != nil)
        self._method_set_stream_pitch_scale_1602489585 = StringName(from: "set_stream_pitch_scale")
        assert(self._method_set_stream_pitch_scale_1602489585 != nil)
        self._method_is_stream_playing_1116898809 = StringName(from: "is_stream_playing")
        assert(self._method_is_stream_playing_1116898809 != nil)
        self._method_stop_stream_1286410249 = StringName(from: "stop_stream")
        assert(self._method_stop_stream_1286410249 != nil)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_play_stream_3792189967._native_ptr(),
                    3792189967)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_stream_volume_1602489585._native_ptr(),
                    1602489585)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_stream_pitch_scale_1602489585._native_ptr(),
                    1602489585)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_stream_playing_1116898809._native_ptr(),
                    1116898809)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_stop_stream_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}