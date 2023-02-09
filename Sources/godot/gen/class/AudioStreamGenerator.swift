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

    static var _method_set_mix_rate_373806689: StringName! = nil
    static var _method_get_mix_rate_1740695150: StringName! = nil
    static var _method_set_buffer_length_373806689: StringName! = nil
    static var _method_get_buffer_length_1740695150: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AudioStreamGenerator == nil)
        __godot_name_AudioStreamGenerator = StringName(from: "AudioStreamGenerator")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_mix_rate_373806689 = StringName(from: "set_mix_rate")
        assert(self._method_set_mix_rate_373806689 != nil)
        self._method_get_mix_rate_1740695150 = StringName(from: "get_mix_rate")
        assert(self._method_get_mix_rate_1740695150 != nil)
        self._method_set_buffer_length_373806689 = StringName(from: "set_buffer_length")
        assert(self._method_set_buffer_length_373806689 != nil)
        self._method_get_buffer_length_1740695150 = StringName(from: "get_buffer_length")
        assert(self._method_get_buffer_length_1740695150 != nil)
    }

    public func set_mix_rate(hz: Float64)  {
        withUnsafePointer(to: hz) { hz_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(hz_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_mix_rate_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_mix_rate_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_buffer_length_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_buffer_length_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
}