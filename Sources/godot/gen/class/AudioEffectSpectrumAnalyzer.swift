import godot_native

fileprivate var __godot_name_AudioEffectSpectrumAnalyzer: StringName! = nil

/// Audio effect that can be used for real-time audio visualizations.
/// 
/// This audio effect does not affect sound output, but can be used for real-time audio visualizations.
///  
/// See also [AudioStreamGenerator] for procedurally generating sounds.
open class AudioEffectSpectrumAnalyzer : AudioEffect {

    public enum FFTSize : Int32 {
        case FFT_SIZE_256 = 0
        case FFT_SIZE_512 = 1
        case FFT_SIZE_1024 = 2
        case FFT_SIZE_2048 = 3
        case FFT_SIZE_4096 = 4
        case FFT_SIZE_MAX = 5
    }

    public override class var __godot_name: StringName { __godot_name_AudioEffectSpectrumAnalyzer }

    static var _method_set_buffer_length_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_buffer_length_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_tap_back_pos_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_tap_back_pos_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_fft_size_1202879215: GDExtensionMethodBindPtr! = nil
    static var _method_get_fft_size_3925405343: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_AudioEffectSpectrumAnalyzer = StringName(from: "AudioEffectSpectrumAnalyzer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_buffer_length_373806689_name = StringName(from: "set_buffer_length")
        self._method_set_buffer_length_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectSpectrumAnalyzer._native_ptr(), _method_set_buffer_length_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectSpectrumAnalyzer._method_set_buffer_length_373806689 != nil)
        let _method_get_buffer_length_1740695150_name = StringName(from: "get_buffer_length")
        self._method_get_buffer_length_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectSpectrumAnalyzer._native_ptr(), _method_get_buffer_length_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectSpectrumAnalyzer._method_get_buffer_length_1740695150 != nil)
        let _method_set_tap_back_pos_373806689_name = StringName(from: "set_tap_back_pos")
        self._method_set_tap_back_pos_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectSpectrumAnalyzer._native_ptr(), _method_set_tap_back_pos_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectSpectrumAnalyzer._method_set_tap_back_pos_373806689 != nil)
        let _method_get_tap_back_pos_1740695150_name = StringName(from: "get_tap_back_pos")
        self._method_get_tap_back_pos_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectSpectrumAnalyzer._native_ptr(), _method_get_tap_back_pos_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectSpectrumAnalyzer._method_get_tap_back_pos_1740695150 != nil)
        let _method_set_fft_size_1202879215_name = StringName(from: "set_fft_size")
        self._method_set_fft_size_1202879215 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectSpectrumAnalyzer._native_ptr(), _method_set_fft_size_1202879215_name._native_ptr(), 1202879215)
        assert(AudioEffectSpectrumAnalyzer._method_set_fft_size_1202879215 != nil)
        let _method_get_fft_size_3925405343_name = StringName(from: "get_fft_size")
        self._method_get_fft_size_3925405343 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectSpectrumAnalyzer._native_ptr(), _method_get_fft_size_3925405343_name._native_ptr(), 3925405343)
        assert(AudioEffectSpectrumAnalyzer._method_get_fft_size_3925405343 != nil)
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
    public func set_tap_back_pos(seconds: Float64)  {
        withUnsafePointer(to: seconds) { seconds_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(seconds_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tap_back_pos_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_tap_back_pos() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tap_back_pos_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_fft_size(size: AudioEffectSpectrumAnalyzer.FFTSize)  {
        withUnsafePointer(to: size.rawValue) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fft_size_1202879215,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_fft_size() -> AudioEffectSpectrumAnalyzer.FFTSize {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_fft_size_3925405343,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AudioEffectSpectrumAnalyzer.FFTSize(godot: __resPtr.pointee)
    }
}