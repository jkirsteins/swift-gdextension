import godot_native

fileprivate var __godot_name_AudioEffectPitchShift: StringName! = nil

/// Adds a pitch-shifting audio effect to an audio bus.
///  
/// Raises or lowers the pitch of original sound.
/// 
/// Allows modulation of pitch independently of tempo. All frequencies can be increased/decreased with minimal effect on transients.
open class AudioEffectPitchShift : AudioEffect {

    public enum FFTSize : Int32 {
        case FFT_SIZE_256 = 0
        case FFT_SIZE_512 = 1
        case FFT_SIZE_1024 = 2
        case FFT_SIZE_2048 = 3
        case FFT_SIZE_4096 = 4
        case FFT_SIZE_MAX = 5
    }

    public override class var __godot_name: StringName { __godot_name_AudioEffectPitchShift }

    static var _method_set_pitch_scale_373806689: StringName! = nil
    static var _method_get_pitch_scale_1740695150: StringName! = nil
    static var _method_set_oversampling_1286410249: StringName! = nil
    static var _method_get_oversampling_3905245786: StringName! = nil
    static var _method_set_fft_size_2323518741: StringName! = nil
    static var _method_get_fft_size_2361246789: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AudioEffectPitchShift == nil)
        __godot_name_AudioEffectPitchShift = StringName(from: "AudioEffectPitchShift")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_pitch_scale_373806689 = StringName(from: "set_pitch_scale")
        assert(self._method_set_pitch_scale_373806689 != nil)
        self._method_get_pitch_scale_1740695150 = StringName(from: "get_pitch_scale")
        assert(self._method_get_pitch_scale_1740695150 != nil)
        self._method_set_oversampling_1286410249 = StringName(from: "set_oversampling")
        assert(self._method_set_oversampling_1286410249 != nil)
        self._method_get_oversampling_3905245786 = StringName(from: "get_oversampling")
        assert(self._method_get_oversampling_3905245786 != nil)
        self._method_set_fft_size_2323518741 = StringName(from: "set_fft_size")
        assert(self._method_set_fft_size_2323518741 != nil)
        self._method_get_fft_size_2361246789 = StringName(from: "get_fft_size")
        assert(self._method_get_fft_size_2361246789 != nil)
    }

    public func set_pitch_scale(rate: Float64)  {
        withUnsafePointer(to: rate) { rate_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rate_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_pitch_scale_373806689._native_ptr(),
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
    public func get_pitch_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_pitch_scale_1740695150._native_ptr(),
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
    public func set_oversampling(amount: Int64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_oversampling_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_oversampling() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_oversampling_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_fft_size(size: AudioEffectPitchShift.FFTSize)  {
        withUnsafePointer(to: size.rawValue) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fft_size_2323518741._native_ptr(),
                    2323518741)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_fft_size() -> AudioEffectPitchShift.FFTSize {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fft_size_2361246789._native_ptr(),
                    2361246789)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AudioEffectPitchShift.FFTSize(godot: __resPtr.pointee)
    }
}