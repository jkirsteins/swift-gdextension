import godot_native

fileprivate var __godot_name_AudioStreamGeneratorPlayback: StringName! = nil

/// Plays back audio generated using [AudioStreamGenerator].
/// 
/// This class is meant to be used with [AudioStreamGenerator] to play back the generated audio in real-time.
open class AudioStreamGeneratorPlayback : AudioStreamPlaybackResampled {

    

    public override class var __godot_name: StringName { __godot_name_AudioStreamGeneratorPlayback }

    static var _method_push_frame_3975407249: GDExtensionMethodBindPtr! = nil
    static var _method_can_push_buffer_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_push_buffer_1361156557: GDExtensionMethodBindPtr! = nil
    static var _method_get_frames_available_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_skips_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_clear_buffer_3218959716: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_AudioStreamGeneratorPlayback = StringName(from: "AudioStreamGeneratorPlayback")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_push_frame_3975407249_name = StringName(from: "push_frame")
        self._method_push_frame_3975407249 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioStreamGeneratorPlayback._native_ptr(), _method_push_frame_3975407249_name._native_ptr(), 3975407249)
        assert(AudioStreamGeneratorPlayback._method_push_frame_3975407249 != nil)
        let _method_can_push_buffer_1116898809_name = StringName(from: "can_push_buffer")
        self._method_can_push_buffer_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioStreamGeneratorPlayback._native_ptr(), _method_can_push_buffer_1116898809_name._native_ptr(), 1116898809)
        assert(AudioStreamGeneratorPlayback._method_can_push_buffer_1116898809 != nil)
        let _method_push_buffer_1361156557_name = StringName(from: "push_buffer")
        self._method_push_buffer_1361156557 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioStreamGeneratorPlayback._native_ptr(), _method_push_buffer_1361156557_name._native_ptr(), 1361156557)
        assert(AudioStreamGeneratorPlayback._method_push_buffer_1361156557 != nil)
        let _method_get_frames_available_3905245786_name = StringName(from: "get_frames_available")
        self._method_get_frames_available_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioStreamGeneratorPlayback._native_ptr(), _method_get_frames_available_3905245786_name._native_ptr(), 3905245786)
        assert(AudioStreamGeneratorPlayback._method_get_frames_available_3905245786 != nil)
        let _method_get_skips_3905245786_name = StringName(from: "get_skips")
        self._method_get_skips_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioStreamGeneratorPlayback._native_ptr(), _method_get_skips_3905245786_name._native_ptr(), 3905245786)
        assert(AudioStreamGeneratorPlayback._method_get_skips_3905245786 != nil)
        let _method_clear_buffer_3218959716_name = StringName(from: "clear_buffer")
        self._method_clear_buffer_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioStreamGeneratorPlayback._native_ptr(), _method_clear_buffer_3218959716_name._native_ptr(), 3218959716)
        assert(AudioStreamGeneratorPlayback._method_clear_buffer_3218959716 != nil)
    }

    public func push_frame(frame: Vector2) -> UInt8 {
        let frame_native = frame._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(frame_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_push_frame_3975407249,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func can_push_buffer(amount: Int64) -> UInt8 {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_can_push_buffer_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func push_buffer(frames: PackedVector2Array) -> UInt8 {
        let frames_native = frames._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(frames_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_push_buffer_1361156557,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_frames_available() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_frames_available_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_skips() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_skips_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func clear_buffer()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_buffer_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}