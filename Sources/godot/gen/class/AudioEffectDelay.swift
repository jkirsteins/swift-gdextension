import godot_native

fileprivate var __godot_name_AudioEffectDelay: StringName! = nil

/// Adds a delay audio effect to an audio bus. Plays input signal back after a period of time.
///  
/// Two tap delay and feedback options.
/// 
/// Plays input signal back after a period of time. The delayed signal may be played back multiple times to create the sound of a repeating, decaying echo. Delay effects range from a subtle echo effect to a pronounced blending of previous sounds with new sounds.
public class AudioEffectDelay : AudioEffect {

    

    public override class var __godot_name: StringName { __godot_name_AudioEffectDelay }

    static var _method_set_dry_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_dry_191475506: GDExtensionMethodBindPtr! = nil
    static var _method_set_tap1_active_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_tap1_active_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_tap1_delay_ms_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_tap1_delay_ms_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_tap1_level_db_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_tap1_level_db_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_tap1_pan_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_tap1_pan_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_tap2_active_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_tap2_active_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_tap2_delay_ms_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_tap2_delay_ms_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_tap2_level_db_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_tap2_level_db_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_tap2_pan_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_tap2_pan_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_feedback_active_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_feedback_active_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_feedback_delay_ms_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_feedback_delay_ms_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_feedback_level_db_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_feedback_level_db_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_feedback_lowpass_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_feedback_lowpass_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_AudioEffectDelay = StringName(from: "AudioEffectDelay")

        let _method_set_dry_373806689_name = StringName(from: "set_dry")
        self._method_set_dry_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_dry_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectDelay._method_set_dry_373806689 != nil)
        let _method_get_dry_191475506_name = StringName(from: "get_dry")
        self._method_get_dry_191475506 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_dry_191475506_name._native_ptr(), 191475506)
        assert(AudioEffectDelay._method_get_dry_191475506 != nil)
        let _method_set_tap1_active_2586408642_name = StringName(from: "set_tap1_active")
        self._method_set_tap1_active_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tap1_active_2586408642_name._native_ptr(), 2586408642)
        assert(AudioEffectDelay._method_set_tap1_active_2586408642 != nil)
        let _method_is_tap1_active_36873697_name = StringName(from: "is_tap1_active")
        self._method_is_tap1_active_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_tap1_active_36873697_name._native_ptr(), 36873697)
        assert(AudioEffectDelay._method_is_tap1_active_36873697 != nil)
        let _method_set_tap1_delay_ms_373806689_name = StringName(from: "set_tap1_delay_ms")
        self._method_set_tap1_delay_ms_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tap1_delay_ms_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectDelay._method_set_tap1_delay_ms_373806689 != nil)
        let _method_get_tap1_delay_ms_1740695150_name = StringName(from: "get_tap1_delay_ms")
        self._method_get_tap1_delay_ms_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tap1_delay_ms_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectDelay._method_get_tap1_delay_ms_1740695150 != nil)
        let _method_set_tap1_level_db_373806689_name = StringName(from: "set_tap1_level_db")
        self._method_set_tap1_level_db_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tap1_level_db_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectDelay._method_set_tap1_level_db_373806689 != nil)
        let _method_get_tap1_level_db_1740695150_name = StringName(from: "get_tap1_level_db")
        self._method_get_tap1_level_db_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tap1_level_db_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectDelay._method_get_tap1_level_db_1740695150 != nil)
        let _method_set_tap1_pan_373806689_name = StringName(from: "set_tap1_pan")
        self._method_set_tap1_pan_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tap1_pan_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectDelay._method_set_tap1_pan_373806689 != nil)
        let _method_get_tap1_pan_1740695150_name = StringName(from: "get_tap1_pan")
        self._method_get_tap1_pan_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tap1_pan_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectDelay._method_get_tap1_pan_1740695150 != nil)
        let _method_set_tap2_active_2586408642_name = StringName(from: "set_tap2_active")
        self._method_set_tap2_active_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tap2_active_2586408642_name._native_ptr(), 2586408642)
        assert(AudioEffectDelay._method_set_tap2_active_2586408642 != nil)
        let _method_is_tap2_active_36873697_name = StringName(from: "is_tap2_active")
        self._method_is_tap2_active_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_tap2_active_36873697_name._native_ptr(), 36873697)
        assert(AudioEffectDelay._method_is_tap2_active_36873697 != nil)
        let _method_set_tap2_delay_ms_373806689_name = StringName(from: "set_tap2_delay_ms")
        self._method_set_tap2_delay_ms_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tap2_delay_ms_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectDelay._method_set_tap2_delay_ms_373806689 != nil)
        let _method_get_tap2_delay_ms_1740695150_name = StringName(from: "get_tap2_delay_ms")
        self._method_get_tap2_delay_ms_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tap2_delay_ms_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectDelay._method_get_tap2_delay_ms_1740695150 != nil)
        let _method_set_tap2_level_db_373806689_name = StringName(from: "set_tap2_level_db")
        self._method_set_tap2_level_db_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tap2_level_db_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectDelay._method_set_tap2_level_db_373806689 != nil)
        let _method_get_tap2_level_db_1740695150_name = StringName(from: "get_tap2_level_db")
        self._method_get_tap2_level_db_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tap2_level_db_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectDelay._method_get_tap2_level_db_1740695150 != nil)
        let _method_set_tap2_pan_373806689_name = StringName(from: "set_tap2_pan")
        self._method_set_tap2_pan_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tap2_pan_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectDelay._method_set_tap2_pan_373806689 != nil)
        let _method_get_tap2_pan_1740695150_name = StringName(from: "get_tap2_pan")
        self._method_get_tap2_pan_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tap2_pan_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectDelay._method_get_tap2_pan_1740695150 != nil)
        let _method_set_feedback_active_2586408642_name = StringName(from: "set_feedback_active")
        self._method_set_feedback_active_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_feedback_active_2586408642_name._native_ptr(), 2586408642)
        assert(AudioEffectDelay._method_set_feedback_active_2586408642 != nil)
        let _method_is_feedback_active_36873697_name = StringName(from: "is_feedback_active")
        self._method_is_feedback_active_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_feedback_active_36873697_name._native_ptr(), 36873697)
        assert(AudioEffectDelay._method_is_feedback_active_36873697 != nil)
        let _method_set_feedback_delay_ms_373806689_name = StringName(from: "set_feedback_delay_ms")
        self._method_set_feedback_delay_ms_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_feedback_delay_ms_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectDelay._method_set_feedback_delay_ms_373806689 != nil)
        let _method_get_feedback_delay_ms_1740695150_name = StringName(from: "get_feedback_delay_ms")
        self._method_get_feedback_delay_ms_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_feedback_delay_ms_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectDelay._method_get_feedback_delay_ms_1740695150 != nil)
        let _method_set_feedback_level_db_373806689_name = StringName(from: "set_feedback_level_db")
        self._method_set_feedback_level_db_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_feedback_level_db_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectDelay._method_set_feedback_level_db_373806689 != nil)
        let _method_get_feedback_level_db_1740695150_name = StringName(from: "get_feedback_level_db")
        self._method_get_feedback_level_db_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_feedback_level_db_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectDelay._method_get_feedback_level_db_1740695150 != nil)
        let _method_set_feedback_lowpass_373806689_name = StringName(from: "set_feedback_lowpass")
        self._method_set_feedback_lowpass_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_feedback_lowpass_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectDelay._method_set_feedback_lowpass_373806689 != nil)
        let _method_get_feedback_lowpass_1740695150_name = StringName(from: "get_feedback_lowpass")
        self._method_get_feedback_lowpass_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_feedback_lowpass_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectDelay._method_get_feedback_lowpass_1740695150 != nil)
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
                    Self._method_get_dry_191475506,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_tap1_active(amount: UInt8)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tap1_active_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_tap1_active() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_tap1_active_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_tap1_delay_ms(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tap1_delay_ms_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_tap1_delay_ms() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tap1_delay_ms_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_tap1_level_db(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tap1_level_db_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_tap1_level_db() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tap1_level_db_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_tap1_pan(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tap1_pan_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_tap1_pan() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tap1_pan_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_tap2_active(amount: UInt8)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tap2_active_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_tap2_active() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_tap2_active_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_tap2_delay_ms(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tap2_delay_ms_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_tap2_delay_ms() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tap2_delay_ms_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_tap2_level_db(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tap2_level_db_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_tap2_level_db() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tap2_level_db_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_tap2_pan(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tap2_pan_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_tap2_pan() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tap2_pan_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_feedback_active(amount: UInt8)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_feedback_active_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_feedback_active() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_feedback_active_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_feedback_delay_ms(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_feedback_delay_ms_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_feedback_delay_ms() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_feedback_delay_ms_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_feedback_level_db(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_feedback_level_db_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_feedback_level_db() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_feedback_level_db_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_feedback_lowpass(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_feedback_lowpass_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_feedback_lowpass() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_feedback_lowpass_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
}