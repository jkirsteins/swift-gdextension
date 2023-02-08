import godot_native

fileprivate var __godot_name_AudioStreamGenerator: StringName! = nil

/// Audio stream that generates sounds procedurally.
/// 
/// This audio stream does not play back sounds, but expects a script to generate audio data for it instead. See also [AudioStreamGeneratorPlayback].
///  
/// See also [AudioEffectSpectrumAnalyzer] for performing real-time audio spectrum analysis.
///  
/// [b]Note:[/b] Due to performance constraints, this class is best used from C# or from a compiled language via GDExtension. If you still want to use this class from GDScript, consider using a lower [member mix_rate] such as 11,025 Hz or 22,050 Hz.
open class AudioStreamGenerator : AudioStream {

    

    public override class var __godot_name: StringName { __godot_name_AudioStreamGenerator }

    static var _method_set_mix_rate_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_mix_rate_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_buffer_length_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_buffer_length_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_AudioStreamGenerator = StringName(from: "AudioStreamGenerator")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_mix_rate_373806689_name = StringName(from: "set_mix_rate")
        self._method_set_mix_rate_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioStreamGenerator._native_ptr(), _method_set_mix_rate_373806689_name._native_ptr(), 373806689)
        assert(AudioStreamGenerator._method_set_mix_rate_373806689 != nil)
        let _method_get_mix_rate_1740695150_name = StringName(from: "get_mix_rate")
        self._method_get_mix_rate_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioStreamGenerator._native_ptr(), _method_get_mix_rate_1740695150_name._native_ptr(), 1740695150)
        assert(AudioStreamGenerator._method_get_mix_rate_1740695150 != nil)
        let _method_set_buffer_length_373806689_name = StringName(from: "set_buffer_length")
        self._method_set_buffer_length_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioStreamGenerator._native_ptr(), _method_set_buffer_length_373806689_name._native_ptr(), 373806689)
        assert(AudioStreamGenerator._method_set_buffer_length_373806689 != nil)
        let _method_get_buffer_length_1740695150_name = StringName(from: "get_buffer_length")
        self._method_get_buffer_length_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioStreamGenerator._native_ptr(), _method_get_buffer_length_1740695150_name._native_ptr(), 1740695150)
        assert(AudioStreamGenerator._method_get_buffer_length_1740695150 != nil)
    }

    public func set_mix_rate(hz: Float64)  {
        withUnsafePointer(to: hz) { hz_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(hz_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_mix_rate_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_mix_rate() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mix_rate_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_buffer_length(seconds: Float64)  {
        withUnsafePointer(to: seconds) { seconds_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(seconds_native)
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
                    Self._method_get_buffer_length_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
}