import godot_native

fileprivate var __godot_name_AudioEffectReverb: StringName! = nil

/// Adds a reverberation audio effect to an Audio bus.
/// 
/// Simulates the sound of acoustic environments such as rooms, concert halls, caverns, or an open spaces.
open class AudioEffectReverb : AudioEffect {

    

    public override class var __godot_name: StringName { __godot_name_AudioEffectReverb }

    static var _method_set_predelay_msec_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_predelay_msec_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_predelay_feedback_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_predelay_feedback_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_room_size_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_room_size_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_damping_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_damping_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_spread_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_spread_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_dry_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_dry_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_wet_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_wet_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_hpf_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_hpf_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_AudioEffectReverb = StringName(from: "AudioEffectReverb")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_predelay_msec_373806689_name = StringName(from: "set_predelay_msec")
        self._method_set_predelay_msec_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectReverb._native_ptr(), _method_set_predelay_msec_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectReverb._method_set_predelay_msec_373806689 != nil)
        let _method_get_predelay_msec_1740695150_name = StringName(from: "get_predelay_msec")
        self._method_get_predelay_msec_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectReverb._native_ptr(), _method_get_predelay_msec_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectReverb._method_get_predelay_msec_1740695150 != nil)
        let _method_set_predelay_feedback_373806689_name = StringName(from: "set_predelay_feedback")
        self._method_set_predelay_feedback_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectReverb._native_ptr(), _method_set_predelay_feedback_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectReverb._method_set_predelay_feedback_373806689 != nil)
        let _method_get_predelay_feedback_1740695150_name = StringName(from: "get_predelay_feedback")
        self._method_get_predelay_feedback_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectReverb._native_ptr(), _method_get_predelay_feedback_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectReverb._method_get_predelay_feedback_1740695150 != nil)
        let _method_set_room_size_373806689_name = StringName(from: "set_room_size")
        self._method_set_room_size_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectReverb._native_ptr(), _method_set_room_size_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectReverb._method_set_room_size_373806689 != nil)
        let _method_get_room_size_1740695150_name = StringName(from: "get_room_size")
        self._method_get_room_size_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectReverb._native_ptr(), _method_get_room_size_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectReverb._method_get_room_size_1740695150 != nil)
        let _method_set_damping_373806689_name = StringName(from: "set_damping")
        self._method_set_damping_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectReverb._native_ptr(), _method_set_damping_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectReverb._method_set_damping_373806689 != nil)
        let _method_get_damping_1740695150_name = StringName(from: "get_damping")
        self._method_get_damping_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectReverb._native_ptr(), _method_get_damping_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectReverb._method_get_damping_1740695150 != nil)
        let _method_set_spread_373806689_name = StringName(from: "set_spread")
        self._method_set_spread_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectReverb._native_ptr(), _method_set_spread_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectReverb._method_set_spread_373806689 != nil)
        let _method_get_spread_1740695150_name = StringName(from: "get_spread")
        self._method_get_spread_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectReverb._native_ptr(), _method_get_spread_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectReverb._method_get_spread_1740695150 != nil)
        let _method_set_dry_373806689_name = StringName(from: "set_dry")
        self._method_set_dry_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectReverb._native_ptr(), _method_set_dry_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectReverb._method_set_dry_373806689 != nil)
        let _method_get_dry_1740695150_name = StringName(from: "get_dry")
        self._method_get_dry_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectReverb._native_ptr(), _method_get_dry_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectReverb._method_get_dry_1740695150 != nil)
        let _method_set_wet_373806689_name = StringName(from: "set_wet")
        self._method_set_wet_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectReverb._native_ptr(), _method_set_wet_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectReverb._method_set_wet_373806689 != nil)
        let _method_get_wet_1740695150_name = StringName(from: "get_wet")
        self._method_get_wet_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectReverb._native_ptr(), _method_get_wet_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectReverb._method_get_wet_1740695150 != nil)
        let _method_set_hpf_373806689_name = StringName(from: "set_hpf")
        self._method_set_hpf_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectReverb._native_ptr(), _method_set_hpf_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectReverb._method_set_hpf_373806689 != nil)
        let _method_get_hpf_1740695150_name = StringName(from: "get_hpf")
        self._method_get_hpf_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectReverb._native_ptr(), _method_get_hpf_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectReverb._method_get_hpf_1740695150 != nil)
    }

    public func set_predelay_msec(msec: Float64)  {
        withUnsafePointer(to: msec) { msec_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(msec_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_predelay_msec_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_predelay_msec() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_predelay_msec_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_predelay_feedback(feedback: Float64)  {
        withUnsafePointer(to: feedback) { feedback_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(feedback_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_predelay_feedback_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_predelay_feedback() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_predelay_feedback_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_room_size(size: Float64)  {
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_room_size_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_room_size() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_room_size_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_damping(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_damping_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_damping() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_damping_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_spread(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_spread_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_spread() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_spread_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
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
            return Float64(godot: __resPtr.pointee)
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
            return Float64(godot: __resPtr.pointee)
    }
    public func set_hpf(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_hpf_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_hpf() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_hpf_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
}