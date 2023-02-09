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

    static var _method_set_buffer_length_373806689: StringName! = nil
    static var _method_get_buffer_length_1740695150: StringName! = nil
    static var _method_set_tap_back_pos_373806689: StringName! = nil
    static var _method_get_tap_back_pos_1740695150: StringName! = nil
    static var _method_set_fft_size_1202879215: StringName! = nil
    static var _method_get_fft_size_3925405343: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AudioEffectSpectrumAnalyzer == nil)
        __godot_name_AudioEffectSpectrumAnalyzer = StringName(from: "AudioEffectSpectrumAnalyzer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_buffer_length_373806689 = StringName(from: "set_buffer_length")
        assert(self._method_set_buffer_length_373806689 != nil)
        self._method_get_buffer_length_1740695150 = StringName(from: "get_buffer_length")
        assert(self._method_get_buffer_length_1740695150 != nil)
        self._method_set_tap_back_pos_373806689 = StringName(from: "set_tap_back_pos")
        assert(self._method_set_tap_back_pos_373806689 != nil)
        self._method_get_tap_back_pos_1740695150 = StringName(from: "get_tap_back_pos")
        assert(self._method_get_tap_back_pos_1740695150 != nil)
        self._method_set_fft_size_1202879215 = StringName(from: "set_fft_size")
        assert(self._method_set_fft_size_1202879215 != nil)
        self._method_get_fft_size_3925405343 = StringName(from: "get_fft_size")
        assert(self._method_get_fft_size_3925405343 != nil)
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
    public func set_tap_back_pos(seconds: Float64)  {
        withUnsafePointer(to: seconds) { seconds_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(seconds_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tap_back_pos_373806689._native_ptr(),
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
    public func get_tap_back_pos() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tap_back_pos_1740695150._native_ptr(),
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
    public func set_fft_size(size: AudioEffectSpectrumAnalyzer.FFTSize)  {
        withUnsafePointer(to: size.rawValue) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fft_size_1202879215._native_ptr(),
                    1202879215)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fft_size_3925405343._native_ptr(),
                    3925405343)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AudioEffectSpectrumAnalyzer.FFTSize(godot: __resPtr.pointee)
    }
}