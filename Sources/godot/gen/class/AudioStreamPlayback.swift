import godot_native

fileprivate var __godot_name_AudioStreamPlayback: StringName! = nil

/// Meta class for playing back audio.
/// 
/// Can play, loop, pause a scroll through audio. See [AudioStream] and [AudioStreamOggVorbis] for usage.
public class AudioStreamPlayback : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_AudioStreamPlayback }

    static var _method__start_0: GDExtensionMethodBindPtr! = nil
    static var _method__stop_0: GDExtensionMethodBindPtr! = nil
    static var _method__is_playing_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_loop_count_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_playback_position_0: GDExtensionMethodBindPtr! = nil
    static var _method__seek_0: GDExtensionMethodBindPtr! = nil
    static var _method__mix_0: GDExtensionMethodBindPtr! = nil
    static var _method__tag_used_streams_0: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_AudioStreamPlayback = StringName(from: "AudioStreamPlayback")

        
    }

    public func _start(from_pos: Float64)  {
        withUnsafePointer(to: from_pos) { from_pos_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_pos_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__start_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _stop()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__stop_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _is_playing() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__is_playing_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func _get_loop_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_loop_count_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _get_playback_position() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_playback_position_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func _seek(position: Float64)  {
        withUnsafePointer(to: position) { position_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__seek_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _mix(buffer: UnsafeMutablePointer<AudioFrame>, rate_scale: Float64, frames: Int64) -> Int64 {
        withUnsafePointer(to: frames) { frames_native in
        withUnsafePointer(to: rate_scale) { rate_scale_native in
        withUnsafePointer(to: buffer) { buffer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(buffer_native), .init(rate_scale_native), .init(frames_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__mix_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
        }
    }
    public func _tag_used_streams()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__tag_used_streams_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}