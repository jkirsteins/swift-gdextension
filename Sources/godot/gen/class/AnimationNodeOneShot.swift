import godot_native

fileprivate var __godot_name_AnimationNodeOneShot: StringName! = nil

/// Plays an animation once in [AnimationNodeBlendTree].
/// 
/// A resource to add to an [AnimationNodeBlendTree]. This node will execute a sub-animation and return once it finishes. Blend times for fading in and out can be customized, as well as filters.
open class AnimationNodeOneShot : AnimationNodeSync {

    public enum OneShotRequest : Int32 {
        case ONE_SHOT_REQUEST_NONE = 0
        case ONE_SHOT_REQUEST_FIRE = 1
        case ONE_SHOT_REQUEST_ABORT = 2
    }
    public enum MixMode : Int32 {
        case MIX_MODE_BLEND = 0
        case MIX_MODE_ADD = 1
    }

    public override class var __godot_name: StringName { __godot_name_AnimationNodeOneShot }

    static var _method_set_fadein_time_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_fadein_time_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_fadeout_time_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_fadeout_time_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_autorestart_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_has_autorestart_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_autorestart_delay_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_autorestart_delay_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_autorestart_random_delay_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_autorestart_random_delay_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_mix_mode_1018899799: GDExtensionMethodBindPtr! = nil
    static var _method_get_mix_mode_3076550526: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_AnimationNodeOneShot = StringName(from: "AnimationNodeOneShot")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_fadein_time_373806689_name = StringName(from: "set_fadein_time")
        self._method_set_fadein_time_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeOneShot._native_ptr(), _method_set_fadein_time_373806689_name._native_ptr(), 373806689)
        assert(AnimationNodeOneShot._method_set_fadein_time_373806689 != nil)
        let _method_get_fadein_time_1740695150_name = StringName(from: "get_fadein_time")
        self._method_get_fadein_time_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeOneShot._native_ptr(), _method_get_fadein_time_1740695150_name._native_ptr(), 1740695150)
        assert(AnimationNodeOneShot._method_get_fadein_time_1740695150 != nil)
        let _method_set_fadeout_time_373806689_name = StringName(from: "set_fadeout_time")
        self._method_set_fadeout_time_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeOneShot._native_ptr(), _method_set_fadeout_time_373806689_name._native_ptr(), 373806689)
        assert(AnimationNodeOneShot._method_set_fadeout_time_373806689 != nil)
        let _method_get_fadeout_time_1740695150_name = StringName(from: "get_fadeout_time")
        self._method_get_fadeout_time_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeOneShot._native_ptr(), _method_get_fadeout_time_1740695150_name._native_ptr(), 1740695150)
        assert(AnimationNodeOneShot._method_get_fadeout_time_1740695150 != nil)
        let _method_set_autorestart_2586408642_name = StringName(from: "set_autorestart")
        self._method_set_autorestart_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeOneShot._native_ptr(), _method_set_autorestart_2586408642_name._native_ptr(), 2586408642)
        assert(AnimationNodeOneShot._method_set_autorestart_2586408642 != nil)
        let _method_has_autorestart_36873697_name = StringName(from: "has_autorestart")
        self._method_has_autorestart_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeOneShot._native_ptr(), _method_has_autorestart_36873697_name._native_ptr(), 36873697)
        assert(AnimationNodeOneShot._method_has_autorestart_36873697 != nil)
        let _method_set_autorestart_delay_373806689_name = StringName(from: "set_autorestart_delay")
        self._method_set_autorestart_delay_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeOneShot._native_ptr(), _method_set_autorestart_delay_373806689_name._native_ptr(), 373806689)
        assert(AnimationNodeOneShot._method_set_autorestart_delay_373806689 != nil)
        let _method_get_autorestart_delay_1740695150_name = StringName(from: "get_autorestart_delay")
        self._method_get_autorestart_delay_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeOneShot._native_ptr(), _method_get_autorestart_delay_1740695150_name._native_ptr(), 1740695150)
        assert(AnimationNodeOneShot._method_get_autorestart_delay_1740695150 != nil)
        let _method_set_autorestart_random_delay_373806689_name = StringName(from: "set_autorestart_random_delay")
        self._method_set_autorestart_random_delay_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeOneShot._native_ptr(), _method_set_autorestart_random_delay_373806689_name._native_ptr(), 373806689)
        assert(AnimationNodeOneShot._method_set_autorestart_random_delay_373806689 != nil)
        let _method_get_autorestart_random_delay_1740695150_name = StringName(from: "get_autorestart_random_delay")
        self._method_get_autorestart_random_delay_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeOneShot._native_ptr(), _method_get_autorestart_random_delay_1740695150_name._native_ptr(), 1740695150)
        assert(AnimationNodeOneShot._method_get_autorestart_random_delay_1740695150 != nil)
        let _method_set_mix_mode_1018899799_name = StringName(from: "set_mix_mode")
        self._method_set_mix_mode_1018899799 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeOneShot._native_ptr(), _method_set_mix_mode_1018899799_name._native_ptr(), 1018899799)
        assert(AnimationNodeOneShot._method_set_mix_mode_1018899799 != nil)
        let _method_get_mix_mode_3076550526_name = StringName(from: "get_mix_mode")
        self._method_get_mix_mode_3076550526 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeOneShot._native_ptr(), _method_get_mix_mode_3076550526_name._native_ptr(), 3076550526)
        assert(AnimationNodeOneShot._method_get_mix_mode_3076550526 != nil)
    }

    public func set_fadein_time(time: Float64)  {
        withUnsafePointer(to: time) { time_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(time_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fadein_time_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_fadein_time() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_fadein_time_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_fadeout_time(time: Float64)  {
        withUnsafePointer(to: time) { time_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(time_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fadeout_time_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_fadeout_time() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_fadeout_time_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_autorestart(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_autorestart_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func has_autorestart() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_autorestart_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_autorestart_delay(enable: Float64)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_autorestart_delay_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_autorestart_delay() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_autorestart_delay_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_autorestart_random_delay(enable: Float64)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_autorestart_random_delay_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_autorestart_random_delay() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_autorestart_random_delay_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_mix_mode(mode: AnimationNodeOneShot.MixMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_mix_mode_1018899799,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_mix_mode() -> AnimationNodeOneShot.MixMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mix_mode_3076550526,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AnimationNodeOneShot.MixMode(godot: __resPtr.pointee)
    }
}