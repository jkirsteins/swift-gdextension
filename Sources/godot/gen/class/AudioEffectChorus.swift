import godot_native

fileprivate var __godot_name_AudioEffectChorus: StringName! = nil

/// Adds a chorus audio effect.
/// 
/// Adds a chorus audio effect. The effect applies a filter with voices to duplicate the audio source and manipulate it through the filter.
public class AudioEffectChorus : AudioEffect {

    

    public override class var __godot_name: StringName { __godot_name_AudioEffectChorus }

    static var _method_set_voice_count_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_voice_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_voice_delay_ms_1602489585: GDExtensionMethodBindPtr! = nil
    static var _method_get_voice_delay_ms_2339986948: GDExtensionMethodBindPtr! = nil
    static var _method_set_voice_rate_hz_1602489585: GDExtensionMethodBindPtr! = nil
    static var _method_get_voice_rate_hz_2339986948: GDExtensionMethodBindPtr! = nil
    static var _method_set_voice_depth_ms_1602489585: GDExtensionMethodBindPtr! = nil
    static var _method_get_voice_depth_ms_2339986948: GDExtensionMethodBindPtr! = nil
    static var _method_set_voice_level_db_1602489585: GDExtensionMethodBindPtr! = nil
    static var _method_get_voice_level_db_2339986948: GDExtensionMethodBindPtr! = nil
    static var _method_set_voice_cutoff_hz_1602489585: GDExtensionMethodBindPtr! = nil
    static var _method_get_voice_cutoff_hz_2339986948: GDExtensionMethodBindPtr! = nil
    static var _method_set_voice_pan_1602489585: GDExtensionMethodBindPtr! = nil
    static var _method_get_voice_pan_2339986948: GDExtensionMethodBindPtr! = nil
    static var _method_set_wet_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_wet_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_dry_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_dry_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_AudioEffectChorus = StringName(from: "AudioEffectChorus")

        let _method_set_voice_count_1286410249_name = StringName(from: "set_voice_count")
        self._method_set_voice_count_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_voice_count_1286410249_name._native_ptr(), 1286410249)
        assert(AudioEffectChorus._method_set_voice_count_1286410249 != nil)
        let _method_get_voice_count_3905245786_name = StringName(from: "get_voice_count")
        self._method_get_voice_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_voice_count_3905245786_name._native_ptr(), 3905245786)
        assert(AudioEffectChorus._method_get_voice_count_3905245786 != nil)
        let _method_set_voice_delay_ms_1602489585_name = StringName(from: "set_voice_delay_ms")
        self._method_set_voice_delay_ms_1602489585 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_voice_delay_ms_1602489585_name._native_ptr(), 1602489585)
        assert(AudioEffectChorus._method_set_voice_delay_ms_1602489585 != nil)
        let _method_get_voice_delay_ms_2339986948_name = StringName(from: "get_voice_delay_ms")
        self._method_get_voice_delay_ms_2339986948 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_voice_delay_ms_2339986948_name._native_ptr(), 2339986948)
        assert(AudioEffectChorus._method_get_voice_delay_ms_2339986948 != nil)
        let _method_set_voice_rate_hz_1602489585_name = StringName(from: "set_voice_rate_hz")
        self._method_set_voice_rate_hz_1602489585 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_voice_rate_hz_1602489585_name._native_ptr(), 1602489585)
        assert(AudioEffectChorus._method_set_voice_rate_hz_1602489585 != nil)
        let _method_get_voice_rate_hz_2339986948_name = StringName(from: "get_voice_rate_hz")
        self._method_get_voice_rate_hz_2339986948 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_voice_rate_hz_2339986948_name._native_ptr(), 2339986948)
        assert(AudioEffectChorus._method_get_voice_rate_hz_2339986948 != nil)
        let _method_set_voice_depth_ms_1602489585_name = StringName(from: "set_voice_depth_ms")
        self._method_set_voice_depth_ms_1602489585 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_voice_depth_ms_1602489585_name._native_ptr(), 1602489585)
        assert(AudioEffectChorus._method_set_voice_depth_ms_1602489585 != nil)
        let _method_get_voice_depth_ms_2339986948_name = StringName(from: "get_voice_depth_ms")
        self._method_get_voice_depth_ms_2339986948 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_voice_depth_ms_2339986948_name._native_ptr(), 2339986948)
        assert(AudioEffectChorus._method_get_voice_depth_ms_2339986948 != nil)
        let _method_set_voice_level_db_1602489585_name = StringName(from: "set_voice_level_db")
        self._method_set_voice_level_db_1602489585 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_voice_level_db_1602489585_name._native_ptr(), 1602489585)
        assert(AudioEffectChorus._method_set_voice_level_db_1602489585 != nil)
        let _method_get_voice_level_db_2339986948_name = StringName(from: "get_voice_level_db")
        self._method_get_voice_level_db_2339986948 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_voice_level_db_2339986948_name._native_ptr(), 2339986948)
        assert(AudioEffectChorus._method_get_voice_level_db_2339986948 != nil)
        let _method_set_voice_cutoff_hz_1602489585_name = StringName(from: "set_voice_cutoff_hz")
        self._method_set_voice_cutoff_hz_1602489585 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_voice_cutoff_hz_1602489585_name._native_ptr(), 1602489585)
        assert(AudioEffectChorus._method_set_voice_cutoff_hz_1602489585 != nil)
        let _method_get_voice_cutoff_hz_2339986948_name = StringName(from: "get_voice_cutoff_hz")
        self._method_get_voice_cutoff_hz_2339986948 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_voice_cutoff_hz_2339986948_name._native_ptr(), 2339986948)
        assert(AudioEffectChorus._method_get_voice_cutoff_hz_2339986948 != nil)
        let _method_set_voice_pan_1602489585_name = StringName(from: "set_voice_pan")
        self._method_set_voice_pan_1602489585 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_voice_pan_1602489585_name._native_ptr(), 1602489585)
        assert(AudioEffectChorus._method_set_voice_pan_1602489585 != nil)
        let _method_get_voice_pan_2339986948_name = StringName(from: "get_voice_pan")
        self._method_get_voice_pan_2339986948 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_voice_pan_2339986948_name._native_ptr(), 2339986948)
        assert(AudioEffectChorus._method_get_voice_pan_2339986948 != nil)
        let _method_set_wet_373806689_name = StringName(from: "set_wet")
        self._method_set_wet_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_wet_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectChorus._method_set_wet_373806689 != nil)
        let _method_get_wet_1740695150_name = StringName(from: "get_wet")
        self._method_get_wet_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_wet_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectChorus._method_get_wet_1740695150 != nil)
        let _method_set_dry_373806689_name = StringName(from: "set_dry")
        self._method_set_dry_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_dry_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectChorus._method_set_dry_373806689 != nil)
        let _method_get_dry_1740695150_name = StringName(from: "get_dry")
        self._method_get_dry_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_dry_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectChorus._method_get_dry_1740695150 != nil)
    }

    public func set_voice_count(voices: Int64)  {
        withUnsafePointer(to: voices) { voices_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(voices_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_voice_count_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_voice_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_voice_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_voice_delay_ms(voice_idx: Int64, delay_ms: Float64)  {
        withUnsafePointer(to: delay_ms) { delay_ms_native in
        withUnsafePointer(to: voice_idx) { voice_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(voice_idx_native), .init(delay_ms_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_voice_delay_ms_1602489585,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_voice_delay_ms(voice_idx: Int64) -> Float64 {
        withUnsafePointer(to: voice_idx) { voice_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(voice_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_voice_delay_ms_2339986948,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func set_voice_rate_hz(voice_idx: Int64, rate_hz: Float64)  {
        withUnsafePointer(to: rate_hz) { rate_hz_native in
        withUnsafePointer(to: voice_idx) { voice_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(voice_idx_native), .init(rate_hz_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_voice_rate_hz_1602489585,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_voice_rate_hz(voice_idx: Int64) -> Float64 {
        withUnsafePointer(to: voice_idx) { voice_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(voice_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_voice_rate_hz_2339986948,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func set_voice_depth_ms(voice_idx: Int64, depth_ms: Float64)  {
        withUnsafePointer(to: depth_ms) { depth_ms_native in
        withUnsafePointer(to: voice_idx) { voice_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(voice_idx_native), .init(depth_ms_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_voice_depth_ms_1602489585,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_voice_depth_ms(voice_idx: Int64) -> Float64 {
        withUnsafePointer(to: voice_idx) { voice_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(voice_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_voice_depth_ms_2339986948,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func set_voice_level_db(voice_idx: Int64, level_db: Float64)  {
        withUnsafePointer(to: level_db) { level_db_native in
        withUnsafePointer(to: voice_idx) { voice_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(voice_idx_native), .init(level_db_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_voice_level_db_1602489585,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_voice_level_db(voice_idx: Int64) -> Float64 {
        withUnsafePointer(to: voice_idx) { voice_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(voice_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_voice_level_db_2339986948,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func set_voice_cutoff_hz(voice_idx: Int64, cutoff_hz: Float64)  {
        withUnsafePointer(to: cutoff_hz) { cutoff_hz_native in
        withUnsafePointer(to: voice_idx) { voice_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(voice_idx_native), .init(cutoff_hz_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_voice_cutoff_hz_1602489585,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_voice_cutoff_hz(voice_idx: Int64) -> Float64 {
        withUnsafePointer(to: voice_idx) { voice_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(voice_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_voice_cutoff_hz_2339986948,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func set_voice_pan(voice_idx: Int64, pan: Float64)  {
        withUnsafePointer(to: pan) { pan_native in
        withUnsafePointer(to: voice_idx) { voice_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(voice_idx_native), .init(pan_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_voice_pan_1602489585,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_voice_pan(voice_idx: Int64) -> Float64 {
        withUnsafePointer(to: voice_idx) { voice_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(voice_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_voice_pan_2339986948,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func set_wet(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_wet_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_wet() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_wet_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_dry(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_dry_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_dry() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_dry_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
}