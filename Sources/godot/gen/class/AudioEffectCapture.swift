import godot_native

fileprivate var __godot_name_AudioEffectCapture: StringName! = nil

/// Captures audio from an audio bus in real-time.
/// 
/// AudioEffectCapture is an AudioEffect which copies all audio frames from the attached audio effect bus into its internal ring buffer.
///  
/// Application code should consume these audio frames from this ring buffer using [method get_buffer] and process it as needed, for example to capture data from an [AudioStreamMicrophone], implement application-defined effects, or to transmit audio over the network. When capturing audio data from a microphone, the format of the samples will be stereo 32-bit floating point PCM.
///  
/// [b]Note:[/b] [member ProjectSettings.audio/driver/enable_input] must be [code]true[/code] for audio input to work. See also that setting's description for caveats related to permissions and operating system privacy settings.
public class AudioEffectCapture : AudioEffect {

    

    public override class var __godot_name: StringName { __godot_name_AudioEffectCapture }

    static var _method_can_get_buffer_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_get_buffer_2649534757: GDExtensionMethodBindPtr! = nil
    static var _method_clear_buffer_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_buffer_length_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_buffer_length_191475506: GDExtensionMethodBindPtr! = nil
    static var _method_get_frames_available_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_discarded_frames_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_buffer_length_frames_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_pushed_frames_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_AudioEffectCapture = StringName(from: "AudioEffectCapture")

        let _method_can_get_buffer_1116898809_name = StringName(from: "can_get_buffer")
        self._method_can_get_buffer_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_can_get_buffer_1116898809_name._native_ptr(), 1116898809)
        assert(AudioEffectCapture._method_can_get_buffer_1116898809 != nil)
        let _method_get_buffer_2649534757_name = StringName(from: "get_buffer")
        self._method_get_buffer_2649534757 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_buffer_2649534757_name._native_ptr(), 2649534757)
        assert(AudioEffectCapture._method_get_buffer_2649534757 != nil)
        let _method_clear_buffer_3218959716_name = StringName(from: "clear_buffer")
        self._method_clear_buffer_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_buffer_3218959716_name._native_ptr(), 3218959716)
        assert(AudioEffectCapture._method_clear_buffer_3218959716 != nil)
        let _method_set_buffer_length_373806689_name = StringName(from: "set_buffer_length")
        self._method_set_buffer_length_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_buffer_length_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectCapture._method_set_buffer_length_373806689 != nil)
        let _method_get_buffer_length_191475506_name = StringName(from: "get_buffer_length")
        self._method_get_buffer_length_191475506 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_buffer_length_191475506_name._native_ptr(), 191475506)
        assert(AudioEffectCapture._method_get_buffer_length_191475506 != nil)
        let _method_get_frames_available_3905245786_name = StringName(from: "get_frames_available")
        self._method_get_frames_available_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_frames_available_3905245786_name._native_ptr(), 3905245786)
        assert(AudioEffectCapture._method_get_frames_available_3905245786 != nil)
        let _method_get_discarded_frames_3905245786_name = StringName(from: "get_discarded_frames")
        self._method_get_discarded_frames_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_discarded_frames_3905245786_name._native_ptr(), 3905245786)
        assert(AudioEffectCapture._method_get_discarded_frames_3905245786 != nil)
        let _method_get_buffer_length_frames_3905245786_name = StringName(from: "get_buffer_length_frames")
        self._method_get_buffer_length_frames_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_buffer_length_frames_3905245786_name._native_ptr(), 3905245786)
        assert(AudioEffectCapture._method_get_buffer_length_frames_3905245786 != nil)
        let _method_get_pushed_frames_3905245786_name = StringName(from: "get_pushed_frames")
        self._method_get_pushed_frames_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_pushed_frames_3905245786_name._native_ptr(), 3905245786)
        assert(AudioEffectCapture._method_get_pushed_frames_3905245786 != nil)
    }

    public func can_get_buffer(frames: Int64) -> UInt8 {
        withUnsafePointer(to: frames) { frames_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(frames_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_can_get_buffer_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func get_buffer(frames: Int64) -> PackedVector2Array {
        withUnsafePointer(to: frames) { frames_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(frames_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_buffer_2649534757,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(from: __resPtr.pointee)
        }
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
    public func set_buffer_length(buffer_length_seconds: Float64)  {
        withUnsafePointer(to: buffer_length_seconds) { buffer_length_seconds_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(buffer_length_seconds_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_buffer_length_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_buffer_length() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_buffer_length_191475506,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
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
            return Int64(from: __resPtr.pointee)
    }
    public func get_discarded_frames() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_discarded_frames_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_buffer_length_frames() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_buffer_length_frames_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_pushed_frames() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_pushed_frames_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
}