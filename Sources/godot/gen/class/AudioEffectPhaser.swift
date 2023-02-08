import godot_native

fileprivate var __godot_name_AudioEffectPhaser: StringName! = nil

/// Adds a phaser audio effect to an audio bus.
///  
/// Combines the original signal with a copy that is slightly out of phase with the original.
/// 
/// Combines phase-shifted signals with the original signal. The movement of the phase-shifted signals is controlled using a low-frequency oscillator.
open class AudioEffectPhaser : AudioEffect {

    

    public override class var __godot_name: StringName { __godot_name_AudioEffectPhaser }

    static var _method_set_range_min_hz_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_range_min_hz_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_range_max_hz_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_range_max_hz_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_rate_hz_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_rate_hz_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_feedback_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_feedback_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_depth_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_depth_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_AudioEffectPhaser = StringName(from: "AudioEffectPhaser")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_range_min_hz_373806689_name = StringName(from: "set_range_min_hz")
        self._method_set_range_min_hz_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectPhaser._native_ptr(), _method_set_range_min_hz_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectPhaser._method_set_range_min_hz_373806689 != nil)
        let _method_get_range_min_hz_1740695150_name = StringName(from: "get_range_min_hz")
        self._method_get_range_min_hz_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectPhaser._native_ptr(), _method_get_range_min_hz_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectPhaser._method_get_range_min_hz_1740695150 != nil)
        let _method_set_range_max_hz_373806689_name = StringName(from: "set_range_max_hz")
        self._method_set_range_max_hz_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectPhaser._native_ptr(), _method_set_range_max_hz_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectPhaser._method_set_range_max_hz_373806689 != nil)
        let _method_get_range_max_hz_1740695150_name = StringName(from: "get_range_max_hz")
        self._method_get_range_max_hz_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectPhaser._native_ptr(), _method_get_range_max_hz_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectPhaser._method_get_range_max_hz_1740695150 != nil)
        let _method_set_rate_hz_373806689_name = StringName(from: "set_rate_hz")
        self._method_set_rate_hz_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectPhaser._native_ptr(), _method_set_rate_hz_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectPhaser._method_set_rate_hz_373806689 != nil)
        let _method_get_rate_hz_1740695150_name = StringName(from: "get_rate_hz")
        self._method_get_rate_hz_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectPhaser._native_ptr(), _method_get_rate_hz_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectPhaser._method_get_rate_hz_1740695150 != nil)
        let _method_set_feedback_373806689_name = StringName(from: "set_feedback")
        self._method_set_feedback_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectPhaser._native_ptr(), _method_set_feedback_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectPhaser._method_set_feedback_373806689 != nil)
        let _method_get_feedback_1740695150_name = StringName(from: "get_feedback")
        self._method_get_feedback_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectPhaser._native_ptr(), _method_get_feedback_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectPhaser._method_get_feedback_1740695150 != nil)
        let _method_set_depth_373806689_name = StringName(from: "set_depth")
        self._method_set_depth_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectPhaser._native_ptr(), _method_set_depth_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectPhaser._method_set_depth_373806689 != nil)
        let _method_get_depth_1740695150_name = StringName(from: "get_depth")
        self._method_get_depth_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioEffectPhaser._native_ptr(), _method_get_depth_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectPhaser._method_get_depth_1740695150 != nil)
    }

    public func set_range_min_hz(hz: Float64)  {
        withUnsafePointer(to: hz) { hz_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(hz_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_range_min_hz_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_range_min_hz() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_range_min_hz_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_range_max_hz(hz: Float64)  {
        withUnsafePointer(to: hz) { hz_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(hz_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_range_max_hz_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_range_max_hz() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_range_max_hz_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_rate_hz(hz: Float64)  {
        withUnsafePointer(to: hz) { hz_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(hz_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_rate_hz_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_rate_hz() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_rate_hz_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_feedback(fbk: Float64)  {
        withUnsafePointer(to: fbk) { fbk_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(fbk_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_feedback_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_feedback() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_feedback_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_depth(depth: Float64)  {
        withUnsafePointer(to: depth) { depth_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(depth_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_depth_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_depth() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_depth_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
}