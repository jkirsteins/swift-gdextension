import godot_native

fileprivate var __godot_name_AudioEffectRecord: StringName! = nil

/// Audio effect used for recording the sound from an audio bus.
/// 
/// Allows the user to record the sound from an audio bus. This can include all audio output by Godot when used on the "Master" audio bus.
///  
/// Can be used (with an [AudioStreamMicrophone]) to record from a microphone.
///  
/// It sets and gets the format in which the audio file will be recorded (8-bit, 16-bit, or compressed). It checks whether or not the recording is active, and if it is, records the sound. It then returns the recorded sample.
open class AudioEffectRecord : AudioEffect {

    

    public override class var __godot_name: StringName { __godot_name_AudioEffectRecord }

    static var _method_set_recording_active_2586408642: StringName! = nil
    static var _method_is_recording_active_36873697: StringName! = nil
    static var _method_set_format_60648488: StringName! = nil
    static var _method_get_format_3151724922: StringName! = nil
    static var _method_get_recording_2964110865: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AudioEffectRecord == nil)
        __godot_name_AudioEffectRecord = StringName(from: "AudioEffectRecord")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_recording_active_2586408642 = StringName(from: "set_recording_active")
        assert(self._method_set_recording_active_2586408642 != nil)
        self._method_is_recording_active_36873697 = StringName(from: "is_recording_active")
        assert(self._method_is_recording_active_36873697 != nil)
        self._method_set_format_60648488 = StringName(from: "set_format")
        assert(self._method_set_format_60648488 != nil)
        self._method_get_format_3151724922 = StringName(from: "get_format")
        assert(self._method_get_format_3151724922 != nil)
        self._method_get_recording_2964110865 = StringName(from: "get_recording")
        assert(self._method_get_recording_2964110865 != nil)
    }

    public func set_recording_active(record: UInt8)  {
        withUnsafePointer(to: record) { record_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(record_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_recording_active_2586408642._native_ptr(),
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
    public func is_recording_active() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_recording_active_36873697._native_ptr(),
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
    public func get_recording() -> AudioStreamWAV {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_recording_2964110865._native_ptr(),
                    2964110865)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AudioStreamWAV(godot: __resPtr.pointee)
    }
}