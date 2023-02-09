import godot_native

fileprivate var __godot_name_AudioStreamPlayback: StringName! = nil

/// Meta class for playing back audio.
/// 
/// Can play, loop, pause a scroll through audio. See [AudioStream] and [AudioStreamOggVorbis] for usage.
open class AudioStreamPlayback : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_AudioStreamPlayback }

    static var _method__start_0: StringName! = nil
    static var _method__stop_0: StringName! = nil
    static var _method__is_playing_0: StringName! = nil
    static var _method__get_loop_count_0: StringName! = nil
    static var _method__get_playback_position_0: StringName! = nil
    static var _method__seek_0: StringName! = nil
    static var _method__mix_0: StringName! = nil
    static var _method__tag_used_streams_0: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AudioStreamPlayback == nil)
        __godot_name_AudioStreamPlayback = StringName(from: "AudioStreamPlayback")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    public func _start(from_pos: Float64)  {
        withUnsafePointer(to: from_pos) { from_pos_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_pos_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
        }
    }
    public func _stop()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _is_playing() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return UInt8(godot: __resPtr.pointee)
    }
    public func _get_loop_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return Int64(godot: __resPtr.pointee)
    }
    public func _get_playback_position() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return Float64(godot: __resPtr.pointee)
    }
    public func _seek(position: Float64)  {
        withUnsafePointer(to: position) { position_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
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
            fatalError("Not implemented: virtual default results")
            return Int64(godot: __resPtr.pointee)
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
            fatalError("Not implemented: virtual default results")
    }
}