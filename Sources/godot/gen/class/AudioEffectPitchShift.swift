import godot_native

fileprivate var __godot_name_AudioEffectPitchShift: StringName! = nil

/// Adds a pitch-shifting audio effect to an audio bus.
///  
/// Raises or lowers the pitch of original sound.
/// 
/// Allows modulation of pitch independently of tempo. All frequencies can be increased/decreased with minimal effect on transients.
public class AudioEffectPitchShift : AudioEffect {

    public enum FFTSize : Int32 {
        case FFT_SIZE_256 = 0
        case FFT_SIZE_512 = 1
        case FFT_SIZE_1024 = 2
        case FFT_SIZE_2048 = 3
        case FFT_SIZE_4096 = 4
        case FFT_SIZE_MAX = 5
    }

    public override class var __godot_name: StringName { __godot_name_AudioEffectPitchShift }

    static var _method_set_pitch_scale_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_pitch_scale_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_oversampling_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_oversampling_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_fft_size_2323518741: GDExtensionMethodBindPtr! = nil
    static var _method_get_fft_size_2361246789: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_AudioEffectPitchShift = StringName(from: "AudioEffectPitchShift")

        let _method_set_pitch_scale_373806689_name = StringName(from: "set_pitch_scale")
        self._method_set_pitch_scale_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_pitch_scale_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectPitchShift._method_set_pitch_scale_373806689 != nil)
        let _method_get_pitch_scale_1740695150_name = StringName(from: "get_pitch_scale")
        self._method_get_pitch_scale_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_pitch_scale_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectPitchShift._method_get_pitch_scale_1740695150 != nil)
        let _method_set_oversampling_1286410249_name = StringName(from: "set_oversampling")
        self._method_set_oversampling_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_oversampling_1286410249_name._native_ptr(), 1286410249)
        assert(AudioEffectPitchShift._method_set_oversampling_1286410249 != nil)
        let _method_get_oversampling_3905245786_name = StringName(from: "get_oversampling")
        self._method_get_oversampling_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_oversampling_3905245786_name._native_ptr(), 3905245786)
        assert(AudioEffectPitchShift._method_get_oversampling_3905245786 != nil)
        let _method_set_fft_size_2323518741_name = StringName(from: "set_fft_size")
        self._method_set_fft_size_2323518741 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_fft_size_2323518741_name._native_ptr(), 2323518741)
        assert(AudioEffectPitchShift._method_set_fft_size_2323518741 != nil)
        let _method_get_fft_size_2361246789_name = StringName(from: "get_fft_size")
        self._method_get_fft_size_2361246789 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_fft_size_2361246789_name._native_ptr(), 2361246789)
        assert(AudioEffectPitchShift._method_get_fft_size_2361246789 != nil)
    }

    public func set_pitch_scale(rate: Float64)  {
        withUnsafePointer(to: rate) { rate_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rate_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_pitch_scale_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_pitch_scale_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_oversampling(amount: Int64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_oversampling_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_oversampling_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_fft_size(size: AudioEffectPitchShift.FFTSize)  {
        withUnsafePointer(to: size.rawValue) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fft_size_2323518741,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_fft_size_2361246789,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AudioEffectPitchShift.FFTSize(from: __resPtr.pointee)
    }
}