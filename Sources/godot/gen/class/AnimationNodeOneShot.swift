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

    static var _method_set_fadein_time_373806689: StringName! = nil
    static var _method_get_fadein_time_1740695150: StringName! = nil
    static var _method_set_fadeout_time_373806689: StringName! = nil
    static var _method_get_fadeout_time_1740695150: StringName! = nil
    static var _method_set_autorestart_2586408642: StringName! = nil
    static var _method_has_autorestart_36873697: StringName! = nil
    static var _method_set_autorestart_delay_373806689: StringName! = nil
    static var _method_get_autorestart_delay_1740695150: StringName! = nil
    static var _method_set_autorestart_random_delay_373806689: StringName! = nil
    static var _method_get_autorestart_random_delay_1740695150: StringName! = nil
    static var _method_set_mix_mode_1018899799: StringName! = nil
    static var _method_get_mix_mode_3076550526: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AnimationNodeOneShot == nil)
        __godot_name_AnimationNodeOneShot = StringName(from: "AnimationNodeOneShot")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_fadein_time_373806689 = StringName(from: "set_fadein_time")
        assert(self._method_set_fadein_time_373806689 != nil)
        self._method_get_fadein_time_1740695150 = StringName(from: "get_fadein_time")
        assert(self._method_get_fadein_time_1740695150 != nil)
        self._method_set_fadeout_time_373806689 = StringName(from: "set_fadeout_time")
        assert(self._method_set_fadeout_time_373806689 != nil)
        self._method_get_fadeout_time_1740695150 = StringName(from: "get_fadeout_time")
        assert(self._method_get_fadeout_time_1740695150 != nil)
        self._method_set_autorestart_2586408642 = StringName(from: "set_autorestart")
        assert(self._method_set_autorestart_2586408642 != nil)
        self._method_has_autorestart_36873697 = StringName(from: "has_autorestart")
        assert(self._method_has_autorestart_36873697 != nil)
        self._method_set_autorestart_delay_373806689 = StringName(from: "set_autorestart_delay")
        assert(self._method_set_autorestart_delay_373806689 != nil)
        self._method_get_autorestart_delay_1740695150 = StringName(from: "get_autorestart_delay")
        assert(self._method_get_autorestart_delay_1740695150 != nil)
        self._method_set_autorestart_random_delay_373806689 = StringName(from: "set_autorestart_random_delay")
        assert(self._method_set_autorestart_random_delay_373806689 != nil)
        self._method_get_autorestart_random_delay_1740695150 = StringName(from: "get_autorestart_random_delay")
        assert(self._method_get_autorestart_random_delay_1740695150 != nil)
        self._method_set_mix_mode_1018899799 = StringName(from: "set_mix_mode")
        assert(self._method_set_mix_mode_1018899799 != nil)
        self._method_get_mix_mode_3076550526 = StringName(from: "get_mix_mode")
        assert(self._method_get_mix_mode_3076550526 != nil)
    }

    public func set_fadein_time(time: Float64)  {
        withUnsafePointer(to: time) { time_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(time_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fadein_time_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fadein_time_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fadeout_time_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fadeout_time_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_autorestart_2586408642._native_ptr(),
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
    public func has_autorestart() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_autorestart_36873697._native_ptr(),
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
    public func set_autorestart_delay(enable: Float64)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_autorestart_delay_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_autorestart_delay_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_autorestart_random_delay_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_autorestart_random_delay_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_mix_mode_1018899799._native_ptr(),
                    1018899799)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_mix_mode_3076550526._native_ptr(),
                    3076550526)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AnimationNodeOneShot.MixMode(godot: __resPtr.pointee)
    }
}