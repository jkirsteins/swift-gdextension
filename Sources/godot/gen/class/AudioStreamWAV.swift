import godot_native

fileprivate var __godot_name_AudioStreamWAV: StringName! = nil

/// Stores audio data loaded from WAV files.
/// 
/// AudioStreamWAV stores sound samples loaded from WAV files. To play the stored sound, use an [AudioStreamPlayer] (for non-positional audio) or [AudioStreamPlayer2D]/[AudioStreamPlayer3D] (for positional audio). The sound can be looped.
///  
/// This class can also be used to store dynamically-generated PCM audio data. See also [AudioStreamGenerator] for procedural audio generation.
public class AudioStreamWAV : AudioStream {

    public enum Format : Int32 {
        case FORMAT_8_BITS = 0
        case FORMAT_16_BITS = 1
        case FORMAT_IMA_ADPCM = 2
    }
    public enum LoopMode : Int32 {
        case LOOP_DISABLED = 0
        case LOOP_FORWARD = 1
        case LOOP_PINGPONG = 2
        case LOOP_BACKWARD = 3
    }

    public override class var __godot_name: StringName { __godot_name_AudioStreamWAV }

    static var _method_set_data_2971499966: GDExtensionMethodBindPtr! = nil
    static var _method_get_data_2362200018: GDExtensionMethodBindPtr! = nil
    static var _method_set_format_60648488: GDExtensionMethodBindPtr! = nil
    static var _method_get_format_3151724922: GDExtensionMethodBindPtr! = nil
    static var _method_set_loop_mode_2444882972: GDExtensionMethodBindPtr! = nil
    static var _method_get_loop_mode_393560655: GDExtensionMethodBindPtr! = nil
    static var _method_set_loop_begin_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_loop_begin_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_loop_end_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_loop_end_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_mix_rate_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_mix_rate_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_stereo_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_stereo_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_save_to_wav_166001499: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_AudioStreamWAV = StringName(from: "AudioStreamWAV")

        let _method_set_data_2971499966_name = StringName(from: "set_data")
        self._method_set_data_2971499966 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_data_2971499966_name._native_ptr(), 2971499966)
        assert(AudioStreamWAV._method_set_data_2971499966 != nil)
        let _method_get_data_2362200018_name = StringName(from: "get_data")
        self._method_get_data_2362200018 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_data_2362200018_name._native_ptr(), 2362200018)
        assert(AudioStreamWAV._method_get_data_2362200018 != nil)
        let _method_set_format_60648488_name = StringName(from: "set_format")
        self._method_set_format_60648488 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_format_60648488_name._native_ptr(), 60648488)
        assert(AudioStreamWAV._method_set_format_60648488 != nil)
        let _method_get_format_3151724922_name = StringName(from: "get_format")
        self._method_get_format_3151724922 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_format_3151724922_name._native_ptr(), 3151724922)
        assert(AudioStreamWAV._method_get_format_3151724922 != nil)
        let _method_set_loop_mode_2444882972_name = StringName(from: "set_loop_mode")
        self._method_set_loop_mode_2444882972 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_loop_mode_2444882972_name._native_ptr(), 2444882972)
        assert(AudioStreamWAV._method_set_loop_mode_2444882972 != nil)
        let _method_get_loop_mode_393560655_name = StringName(from: "get_loop_mode")
        self._method_get_loop_mode_393560655 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_loop_mode_393560655_name._native_ptr(), 393560655)
        assert(AudioStreamWAV._method_get_loop_mode_393560655 != nil)
        let _method_set_loop_begin_1286410249_name = StringName(from: "set_loop_begin")
        self._method_set_loop_begin_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_loop_begin_1286410249_name._native_ptr(), 1286410249)
        assert(AudioStreamWAV._method_set_loop_begin_1286410249 != nil)
        let _method_get_loop_begin_3905245786_name = StringName(from: "get_loop_begin")
        self._method_get_loop_begin_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_loop_begin_3905245786_name._native_ptr(), 3905245786)
        assert(AudioStreamWAV._method_get_loop_begin_3905245786 != nil)
        let _method_set_loop_end_1286410249_name = StringName(from: "set_loop_end")
        self._method_set_loop_end_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_loop_end_1286410249_name._native_ptr(), 1286410249)
        assert(AudioStreamWAV._method_set_loop_end_1286410249 != nil)
        let _method_get_loop_end_3905245786_name = StringName(from: "get_loop_end")
        self._method_get_loop_end_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_loop_end_3905245786_name._native_ptr(), 3905245786)
        assert(AudioStreamWAV._method_get_loop_end_3905245786 != nil)
        let _method_set_mix_rate_1286410249_name = StringName(from: "set_mix_rate")
        self._method_set_mix_rate_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_mix_rate_1286410249_name._native_ptr(), 1286410249)
        assert(AudioStreamWAV._method_set_mix_rate_1286410249 != nil)
        let _method_get_mix_rate_3905245786_name = StringName(from: "get_mix_rate")
        self._method_get_mix_rate_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_mix_rate_3905245786_name._native_ptr(), 3905245786)
        assert(AudioStreamWAV._method_get_mix_rate_3905245786 != nil)
        let _method_set_stereo_2586408642_name = StringName(from: "set_stereo")
        self._method_set_stereo_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_stereo_2586408642_name._native_ptr(), 2586408642)
        assert(AudioStreamWAV._method_set_stereo_2586408642 != nil)
        let _method_is_stereo_36873697_name = StringName(from: "is_stereo")
        self._method_is_stereo_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_stereo_36873697_name._native_ptr(), 36873697)
        assert(AudioStreamWAV._method_is_stereo_36873697 != nil)
        let _method_save_to_wav_166001499_name = StringName(from: "save_to_wav")
        self._method_save_to_wav_166001499 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_save_to_wav_166001499_name._native_ptr(), 166001499)
        assert(AudioStreamWAV._method_save_to_wav_166001499 != nil)
    }

    public func set_data(data: PackedByteArray)  {
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(data_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_data_2971499966,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_data() -> PackedByteArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_data_2362200018,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(from: __resPtr.pointee)
    }
    public func set_format(format: AudioStreamWAV.Format)  {
        withUnsafePointer(to: format.rawValue) { format_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(format_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_format_60648488,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_format() -> AudioStreamWAV.Format {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_format_3151724922,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AudioStreamWAV.Format(from: __resPtr.pointee)
    }
    public func set_loop_mode(loop_mode: AudioStreamWAV.LoopMode)  {
        withUnsafePointer(to: loop_mode.rawValue) { loop_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(loop_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_loop_mode_2444882972,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_loop_mode() -> AudioStreamWAV.LoopMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_loop_mode_393560655,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AudioStreamWAV.LoopMode(from: __resPtr.pointee)
    }
    public func set_loop_begin(loop_begin: Int64)  {
        withUnsafePointer(to: loop_begin) { loop_begin_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(loop_begin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_loop_begin_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_loop_begin() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_loop_begin_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_loop_end(loop_end: Int64)  {
        withUnsafePointer(to: loop_end) { loop_end_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(loop_end_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_loop_end_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_loop_end() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_loop_end_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_mix_rate(mix_rate: Int64)  {
        withUnsafePointer(to: mix_rate) { mix_rate_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mix_rate_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_mix_rate_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_mix_rate() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mix_rate_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_stereo(stereo: UInt8)  {
        withUnsafePointer(to: stereo) { stereo_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(stereo_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_stereo_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_stereo() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_stereo_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func save_to_wav(path: String) -> Error {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_save_to_wav_166001499,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
    }
}