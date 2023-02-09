import godot_native

fileprivate var __godot_name_AudioStreamPlaybackResampled: StringName! = nil

/// 
/// 
/// 
open class AudioStreamPlaybackResampled : AudioStreamPlayback {

    

    public override class var __godot_name: StringName { __godot_name_AudioStreamPlaybackResampled }

    static var _method__mix_resampled_0: StringName! = nil
    static var _method__get_stream_sampling_rate_0: StringName! = nil
    static var _method_begin_resample_3218959716: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AudioStreamPlaybackResampled == nil)
        __godot_name_AudioStreamPlaybackResampled = StringName(from: "AudioStreamPlaybackResampled")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_begin_resample_3218959716 = StringName(from: "begin_resample")
        assert(self._method_begin_resample_3218959716 != nil)
    }

    public func _mix_resampled(dst_buffer: UnsafeMutablePointer<AudioFrame>, frame_count: Int64) -> Int64 {
        withUnsafePointer(to: frame_count) { frame_count_native in
        withUnsafePointer(to: dst_buffer) { dst_buffer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(dst_buffer_native), .init(frame_count_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return Int64(godot: __resPtr.pointee)
        }
        }
    }
    public func _get_stream_sampling_rate() -> Float64 {
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
    public func begin_resample()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_begin_resample_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}