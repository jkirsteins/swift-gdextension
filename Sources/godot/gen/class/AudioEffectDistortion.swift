import godot_native

fileprivate var __godot_name_AudioEffectDistortion: StringName! = nil

/// Adds a distortion audio effect to an Audio bus.
///  
/// Modifies the sound to make it distorted.
/// 
/// Different types are available: clip, tan, lo-fi (bit crushing), overdrive, or waveshape.
///  
/// By distorting the waveform the frequency content changes, which will often make the sound "crunchy" or "abrasive". For games, it can simulate sound coming from some saturated device or speaker very efficiently.
open class AudioEffectDistortion : AudioEffect {

    public enum Mode : Int32 {
        case MODE_CLIP = 0
        case MODE_ATAN = 1
        case MODE_LOFI = 2
        case MODE_OVERDRIVE = 3
        case MODE_WAVESHAPE = 4
    }

    public override class var __godot_name: StringName { __godot_name_AudioEffectDistortion }

    static var _method_set_mode_1314744793: GDExtensionMethodBindPtr! = nil
    static var _method_get_mode_809118343: GDExtensionMethodBindPtr! = nil
    static var _method_set_pre_gain_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_pre_gain_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_keep_hf_hz_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_keep_hf_hz_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_drive_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_drive_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_post_gain_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_post_gain_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_AudioEffectDistortion = StringName(from: "AudioEffectDistortion")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_mode_1314744793_name = StringName(from: "set_mode")
        self._method_set_mode_1314744793 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectDistortion._native_ptr(), _method_set_mode_1314744793_name._native_ptr(), 1314744793)
        assert(AudioEffectDistortion._method_set_mode_1314744793 != nil)
        let _method_get_mode_809118343_name = StringName(from: "get_mode")
        self._method_get_mode_809118343 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectDistortion._native_ptr(), _method_get_mode_809118343_name._native_ptr(), 809118343)
        assert(AudioEffectDistortion._method_get_mode_809118343 != nil)
        let _method_set_pre_gain_373806689_name = StringName(from: "set_pre_gain")
        self._method_set_pre_gain_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectDistortion._native_ptr(), _method_set_pre_gain_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectDistortion._method_set_pre_gain_373806689 != nil)
        let _method_get_pre_gain_1740695150_name = StringName(from: "get_pre_gain")
        self._method_get_pre_gain_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectDistortion._native_ptr(), _method_get_pre_gain_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectDistortion._method_get_pre_gain_1740695150 != nil)
        let _method_set_keep_hf_hz_373806689_name = StringName(from: "set_keep_hf_hz")
        self._method_set_keep_hf_hz_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectDistortion._native_ptr(), _method_set_keep_hf_hz_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectDistortion._method_set_keep_hf_hz_373806689 != nil)
        let _method_get_keep_hf_hz_1740695150_name = StringName(from: "get_keep_hf_hz")
        self._method_get_keep_hf_hz_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectDistortion._native_ptr(), _method_get_keep_hf_hz_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectDistortion._method_get_keep_hf_hz_1740695150 != nil)
        let _method_set_drive_373806689_name = StringName(from: "set_drive")
        self._method_set_drive_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectDistortion._native_ptr(), _method_set_drive_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectDistortion._method_set_drive_373806689 != nil)
        let _method_get_drive_1740695150_name = StringName(from: "get_drive")
        self._method_get_drive_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectDistortion._native_ptr(), _method_get_drive_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectDistortion._method_get_drive_1740695150 != nil)
        let _method_set_post_gain_373806689_name = StringName(from: "set_post_gain")
        self._method_set_post_gain_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectDistortion._native_ptr(), _method_set_post_gain_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectDistortion._method_set_post_gain_373806689 != nil)
        let _method_get_post_gain_1740695150_name = StringName(from: "get_post_gain")
        self._method_get_post_gain_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectDistortion._native_ptr(), _method_get_post_gain_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectDistortion._method_get_post_gain_1740695150 != nil)
    }

    public func set_mode(mode: AudioEffectDistortion.Mode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_mode_1314744793,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_mode() -> AudioEffectDistortion.Mode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mode_809118343,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AudioEffectDistortion.Mode(godot: __resPtr.pointee)
    }
    public func set_pre_gain(pre_gain: Float64)  {
        withUnsafePointer(to: pre_gain) { pre_gain_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pre_gain_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_pre_gain_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_pre_gain() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_pre_gain_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_keep_hf_hz(keep_hf_hz: Float64)  {
        withUnsafePointer(to: keep_hf_hz) { keep_hf_hz_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(keep_hf_hz_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_keep_hf_hz_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_keep_hf_hz() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_keep_hf_hz_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_drive(drive: Float64)  {
        withUnsafePointer(to: drive) { drive_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(drive_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_drive_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_drive() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_drive_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_post_gain(post_gain: Float64)  {
        withUnsafePointer(to: post_gain) { post_gain_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(post_gain_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_post_gain_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_post_gain() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_post_gain_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
}