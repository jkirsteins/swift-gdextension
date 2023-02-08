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

    static var _method_set_recording_active_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_recording_active_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_format_60648488: GDExtensionMethodBindPtr! = nil
    static var _method_get_format_3151724922: GDExtensionMethodBindPtr! = nil
    static var _method_get_recording_2964110865: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_AudioEffectRecord = StringName(from: "AudioEffectRecord")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_recording_active_2586408642_name = StringName(from: "set_recording_active")
        self._method_set_recording_active_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectRecord._native_ptr(), _method_set_recording_active_2586408642_name._native_ptr(), 2586408642)
        assert(AudioEffectRecord._method_set_recording_active_2586408642 != nil)
        let _method_is_recording_active_36873697_name = StringName(from: "is_recording_active")
        self._method_is_recording_active_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectRecord._native_ptr(), _method_is_recording_active_36873697_name._native_ptr(), 36873697)
        assert(AudioEffectRecord._method_is_recording_active_36873697 != nil)
        let _method_set_format_60648488_name = StringName(from: "set_format")
        self._method_set_format_60648488 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectRecord._native_ptr(), _method_set_format_60648488_name._native_ptr(), 60648488)
        assert(AudioEffectRecord._method_set_format_60648488 != nil)
        let _method_get_format_3151724922_name = StringName(from: "get_format")
        self._method_get_format_3151724922 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectRecord._native_ptr(), _method_get_format_3151724922_name._native_ptr(), 3151724922)
        assert(AudioEffectRecord._method_get_format_3151724922 != nil)
        let _method_get_recording_2964110865_name = StringName(from: "get_recording")
        self._method_get_recording_2964110865 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectRecord._native_ptr(), _method_get_recording_2964110865_name._native_ptr(), 2964110865)
        assert(AudioEffectRecord._method_get_recording_2964110865 != nil)
    }

    public func set_recording_active(record: UInt8)  {
        withUnsafePointer(to: record) { record_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(record_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_recording_active_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_recording_active_36873697,
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
            return AudioStreamWAV.Format(godot: __resPtr.pointee)
    }
    public func get_recording() -> AudioStreamWAV {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_recording_2964110865,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AudioStreamWAV(godot: __resPtr.pointee)
    }
}