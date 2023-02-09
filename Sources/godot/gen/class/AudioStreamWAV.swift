import godot_native

fileprivate var __godot_name_AudioStreamWAV: StringName! = nil

/// Stores audio data loaded from WAV files.
/// 
/// AudioStreamWAV stores sound samples loaded from WAV files. To play the stored sound, use an [AudioStreamPlayer] (for non-positional audio) or [AudioStreamPlayer2D]/[AudioStreamPlayer3D] (for positional audio). The sound can be looped.
///  
/// This class can also be used to store dynamically-generated PCM audio data. See also [AudioStreamGenerator] for procedural audio generation.
open class AudioStreamWAV : AudioStream {

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

    static var _method_set_data_2971499966: StringName! = nil
    static var _method_get_data_2362200018: StringName! = nil
    static var _method_set_format_60648488: StringName! = nil
    static var _method_get_format_3151724922: StringName! = nil
    static var _method_set_loop_mode_2444882972: StringName! = nil
    static var _method_get_loop_mode_393560655: StringName! = nil
    static var _method_set_loop_begin_1286410249: StringName! = nil
    static var _method_get_loop_begin_3905245786: StringName! = nil
    static var _method_set_loop_end_1286410249: StringName! = nil
    static var _method_get_loop_end_3905245786: StringName! = nil
    static var _method_set_mix_rate_1286410249: StringName! = nil
    static var _method_get_mix_rate_3905245786: StringName! = nil
    static var _method_set_stereo_2586408642: StringName! = nil
    static var _method_is_stereo_36873697: StringName! = nil
    static var _method_save_to_wav_166001499: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AudioStreamWAV == nil)
        __godot_name_AudioStreamWAV = StringName(from: "AudioStreamWAV")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_data_2971499966 = StringName(from: "set_data")
        assert(self._method_set_data_2971499966 != nil)
        self._method_get_data_2362200018 = StringName(from: "get_data")
        assert(self._method_get_data_2362200018 != nil)
        self._method_set_format_60648488 = StringName(from: "set_format")
        assert(self._method_set_format_60648488 != nil)
        self._method_get_format_3151724922 = StringName(from: "get_format")
        assert(self._method_get_format_3151724922 != nil)
        self._method_set_loop_mode_2444882972 = StringName(from: "set_loop_mode")
        assert(self._method_set_loop_mode_2444882972 != nil)
        self._method_get_loop_mode_393560655 = StringName(from: "get_loop_mode")
        assert(self._method_get_loop_mode_393560655 != nil)
        self._method_set_loop_begin_1286410249 = StringName(from: "set_loop_begin")
        assert(self._method_set_loop_begin_1286410249 != nil)
        self._method_get_loop_begin_3905245786 = StringName(from: "get_loop_begin")
        assert(self._method_get_loop_begin_3905245786 != nil)
        self._method_set_loop_end_1286410249 = StringName(from: "set_loop_end")
        assert(self._method_set_loop_end_1286410249 != nil)
        self._method_get_loop_end_3905245786 = StringName(from: "get_loop_end")
        assert(self._method_get_loop_end_3905245786 != nil)
        self._method_set_mix_rate_1286410249 = StringName(from: "set_mix_rate")
        assert(self._method_set_mix_rate_1286410249 != nil)
        self._method_get_mix_rate_3905245786 = StringName(from: "get_mix_rate")
        assert(self._method_get_mix_rate_3905245786 != nil)
        self._method_set_stereo_2586408642 = StringName(from: "set_stereo")
        assert(self._method_set_stereo_2586408642 != nil)
        self._method_is_stereo_36873697 = StringName(from: "is_stereo")
        assert(self._method_is_stereo_36873697 != nil)
        self._method_save_to_wav_166001499 = StringName(from: "save_to_wav")
        assert(self._method_save_to_wav_166001499 != nil)
    }

    public func set_data(data: PackedByteArray)  {
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(data_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_data_2971499966._native_ptr(),
                    2971499966)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_data_2362200018._native_ptr(),
                    2362200018)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(godot: __resPtr.pointee)
    }
    public func set_format(format: AudioStreamWAV.Format)  {
        withUnsafePointer(to: format.rawValue) { format_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(format_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_format_60648488._native_ptr(),
                    60648488)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_format_3151724922._native_ptr(),
                    3151724922)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AudioStreamWAV.Format(godot: __resPtr.pointee)
    }
    public func set_loop_mode(loop_mode: AudioStreamWAV.LoopMode)  {
        withUnsafePointer(to: loop_mode.rawValue) { loop_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(loop_mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_loop_mode_2444882972._native_ptr(),
                    2444882972)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_loop_mode_393560655._native_ptr(),
                    393560655)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AudioStreamWAV.LoopMode(godot: __resPtr.pointee)
    }
    public func set_loop_begin(loop_begin: Int64)  {
        withUnsafePointer(to: loop_begin) { loop_begin_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(loop_begin_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_loop_begin_1286410249._native_ptr(),
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
    public func get_loop_begin() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_loop_begin_3905245786._native_ptr(),
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
    public func set_loop_end(loop_end: Int64)  {
        withUnsafePointer(to: loop_end) { loop_end_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(loop_end_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_loop_end_1286410249._native_ptr(),
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
    public func get_loop_end() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_loop_end_3905245786._native_ptr(),
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
    public func set_mix_rate(mix_rate: Int64)  {
        withUnsafePointer(to: mix_rate) { mix_rate_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mix_rate_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_mix_rate_1286410249._native_ptr(),
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
    public func get_mix_rate() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_mix_rate_3905245786._native_ptr(),
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
    public func set_stereo(stereo: UInt8)  {
        withUnsafePointer(to: stereo) { stereo_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(stereo_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_stereo_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_stereo_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func save_to_wav(path: godot.String) -> Error {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_save_to_wav_166001499._native_ptr(),
                    166001499)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
}