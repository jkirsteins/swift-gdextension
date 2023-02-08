import godot_native

fileprivate var __godot_name_AudioEffectCompressor: StringName! = nil

/// Adds a compressor audio effect to an audio bus.
///  
/// Reduces sounds that exceed a certain threshold level, smooths out the dynamics and increases the overall volume.
/// 
/// Dynamic range compressor reduces the level of the sound when the amplitude goes over a certain threshold in Decibels. One of the main uses of a compressor is to increase the dynamic range by clipping as little as possible (when sound goes over 0dB).
///  
/// Compressor has many uses in the mix:
///  
/// - In the Master bus to compress the whole output (although an [AudioEffectLimiter] is probably better).
///  
/// - In voice channels to ensure they sound as balanced as possible.
///  
/// - Sidechained. This can reduce the sound level sidechained with another audio bus for threshold detection. This technique is common in video game mixing to the level of music and SFX while voices are being heard.
///  
/// - Accentuates transients by using a wider attack, making effects sound more punchy.
open class AudioEffectCompressor : AudioEffect {

    

    public override class var __godot_name: StringName { __godot_name_AudioEffectCompressor }

    static var _method_set_threshold_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_threshold_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_ratio_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_ratio_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_gain_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_gain_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_attack_us_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_attack_us_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_release_ms_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_release_ms_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_mix_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_mix_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_sidechain_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_get_sidechain_2002593661: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_AudioEffectCompressor = StringName(from: "AudioEffectCompressor")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_threshold_373806689_name = StringName(from: "set_threshold")
        self._method_set_threshold_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectCompressor._native_ptr(), _method_set_threshold_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectCompressor._method_set_threshold_373806689 != nil)
        let _method_get_threshold_1740695150_name = StringName(from: "get_threshold")
        self._method_get_threshold_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectCompressor._native_ptr(), _method_get_threshold_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectCompressor._method_get_threshold_1740695150 != nil)
        let _method_set_ratio_373806689_name = StringName(from: "set_ratio")
        self._method_set_ratio_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectCompressor._native_ptr(), _method_set_ratio_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectCompressor._method_set_ratio_373806689 != nil)
        let _method_get_ratio_1740695150_name = StringName(from: "get_ratio")
        self._method_get_ratio_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectCompressor._native_ptr(), _method_get_ratio_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectCompressor._method_get_ratio_1740695150 != nil)
        let _method_set_gain_373806689_name = StringName(from: "set_gain")
        self._method_set_gain_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectCompressor._native_ptr(), _method_set_gain_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectCompressor._method_set_gain_373806689 != nil)
        let _method_get_gain_1740695150_name = StringName(from: "get_gain")
        self._method_get_gain_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectCompressor._native_ptr(), _method_get_gain_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectCompressor._method_get_gain_1740695150 != nil)
        let _method_set_attack_us_373806689_name = StringName(from: "set_attack_us")
        self._method_set_attack_us_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectCompressor._native_ptr(), _method_set_attack_us_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectCompressor._method_set_attack_us_373806689 != nil)
        let _method_get_attack_us_1740695150_name = StringName(from: "get_attack_us")
        self._method_get_attack_us_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectCompressor._native_ptr(), _method_get_attack_us_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectCompressor._method_get_attack_us_1740695150 != nil)
        let _method_set_release_ms_373806689_name = StringName(from: "set_release_ms")
        self._method_set_release_ms_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectCompressor._native_ptr(), _method_set_release_ms_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectCompressor._method_set_release_ms_373806689 != nil)
        let _method_get_release_ms_1740695150_name = StringName(from: "get_release_ms")
        self._method_get_release_ms_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectCompressor._native_ptr(), _method_get_release_ms_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectCompressor._method_get_release_ms_1740695150 != nil)
        let _method_set_mix_373806689_name = StringName(from: "set_mix")
        self._method_set_mix_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectCompressor._native_ptr(), _method_set_mix_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectCompressor._method_set_mix_373806689 != nil)
        let _method_get_mix_1740695150_name = StringName(from: "get_mix")
        self._method_get_mix_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectCompressor._native_ptr(), _method_get_mix_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectCompressor._method_get_mix_1740695150 != nil)
        let _method_set_sidechain_3304788590_name = StringName(from: "set_sidechain")
        self._method_set_sidechain_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectCompressor._native_ptr(), _method_set_sidechain_3304788590_name._native_ptr(), 3304788590)
        assert(AudioEffectCompressor._method_set_sidechain_3304788590 != nil)
        let _method_get_sidechain_2002593661_name = StringName(from: "get_sidechain")
        self._method_get_sidechain_2002593661 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectCompressor._native_ptr(), _method_get_sidechain_2002593661_name._native_ptr(), 2002593661)
        assert(AudioEffectCompressor._method_get_sidechain_2002593661 != nil)
    }

    public func set_threshold(threshold: Float64)  {
        withUnsafePointer(to: threshold) { threshold_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(threshold_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_threshold_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_threshold() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_threshold_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_ratio(ratio: Float64)  {
        withUnsafePointer(to: ratio) { ratio_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ratio_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ratio_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_ratio() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ratio_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_gain(gain: Float64)  {
        withUnsafePointer(to: gain) { gain_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gain_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_gain_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_gain() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_gain_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_attack_us(attack_us: Float64)  {
        withUnsafePointer(to: attack_us) { attack_us_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(attack_us_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_attack_us_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_attack_us() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_attack_us_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_release_ms(release_ms: Float64)  {
        withUnsafePointer(to: release_ms) { release_ms_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(release_ms_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_release_ms_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_release_ms() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_release_ms_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_mix(mix: Float64)  {
        withUnsafePointer(to: mix) { mix_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mix_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_mix_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_mix() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mix_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_sidechain(sidechain: StringName)  {
        let sidechain_native = sidechain._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sidechain_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sidechain_3304788590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_sidechain() -> StringName {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sidechain_2002593661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
    }
}