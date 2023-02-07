import godot_native

fileprivate var __godot_name_AudioStream: StringName! = nil

/// Base class for audio streams.
/// 
/// Base class for audio streams. Audio streams are used for sound effects and music playback, and support WAV (via [AudioStreamWAV]) and Ogg (via [AudioStreamOggVorbis]) file formats.
public class AudioStream : Resource {

    

    public override class var __godot_name: StringName { __godot_name_AudioStream }

    static var _method__instantiate_playback_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_stream_name_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_length_0: GDExtensionMethodBindPtr! = nil
    static var _method__is_monophonic_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_bpm_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_beat_count_0: GDExtensionMethodBindPtr! = nil
    static var _method_get_length_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_is_monophonic_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_instantiate_playback_210135309: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_AudioStream = StringName(from: "AudioStream")

        let _method_get_length_1740695150_name = StringName(from: "get_length")
        self._method_get_length_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_length_1740695150_name._native_ptr(), 1740695150)
        assert(AudioStream._method_get_length_1740695150 != nil)
        let _method_is_monophonic_36873697_name = StringName(from: "is_monophonic")
        self._method_is_monophonic_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_monophonic_36873697_name._native_ptr(), 36873697)
        assert(AudioStream._method_is_monophonic_36873697 != nil)
        let _method_instantiate_playback_210135309_name = StringName(from: "instantiate_playback")
        self._method_instantiate_playback_210135309 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_instantiate_playback_210135309_name._native_ptr(), 210135309)
        assert(AudioStream._method_instantiate_playback_210135309 != nil)
    }

    public func _instantiate_playback() -> AudioStreamPlayback {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__instantiate_playback_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AudioStreamPlayback(from: __resPtr.pointee)
    }
    public func _get_stream_name() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_stream_name_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func _get_length() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_length_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func _is_monophonic() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__is_monophonic_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func _get_bpm() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_bpm_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func _get_beat_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_beat_count_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_length() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_length_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func is_monophonic() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_monophonic_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func instantiate_playback() -> AudioStreamPlayback {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instantiate_playback_210135309,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AudioStreamPlayback(from: __resPtr.pointee)
    }
}