import godot_native

fileprivate var __godot_name_AudioEffectLimiter: StringName! = nil

/// Adds a soft-clip limiter audio effect to an Audio bus.
/// 
/// A limiter is similar to a compressor, but it's less flexible and designed to disallow sound going over a given dB threshold. Adding one in the Master bus is always recommended to reduce the effects of clipping.
///  
/// Soft clipping starts to reduce the peaks a little below the threshold level and progressively increases its effect as the input level increases such that the threshold is never exceeded.
open class AudioEffectLimiter : AudioEffect {

    

    public override class var __godot_name: StringName { __godot_name_AudioEffectLimiter }

    static var _method_set_ceiling_db_373806689: StringName! = nil
    static var _method_get_ceiling_db_1740695150: StringName! = nil
    static var _method_set_threshold_db_373806689: StringName! = nil
    static var _method_get_threshold_db_1740695150: StringName! = nil
    static var _method_set_soft_clip_db_373806689: StringName! = nil
    static var _method_get_soft_clip_db_1740695150: StringName! = nil
    static var _method_set_soft_clip_ratio_373806689: StringName! = nil
    static var _method_get_soft_clip_ratio_1740695150: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AudioEffectLimiter == nil)
        __godot_name_AudioEffectLimiter = StringName(from: "AudioEffectLimiter")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_ceiling_db_373806689 = StringName(from: "set_ceiling_db")
        assert(self._method_set_ceiling_db_373806689 != nil)
        self._method_get_ceiling_db_1740695150 = StringName(from: "get_ceiling_db")
        assert(self._method_get_ceiling_db_1740695150 != nil)
        self._method_set_threshold_db_373806689 = StringName(from: "set_threshold_db")
        assert(self._method_set_threshold_db_373806689 != nil)
        self._method_get_threshold_db_1740695150 = StringName(from: "get_threshold_db")
        assert(self._method_get_threshold_db_1740695150 != nil)
        self._method_set_soft_clip_db_373806689 = StringName(from: "set_soft_clip_db")
        assert(self._method_set_soft_clip_db_373806689 != nil)
        self._method_get_soft_clip_db_1740695150 = StringName(from: "get_soft_clip_db")
        assert(self._method_get_soft_clip_db_1740695150 != nil)
        self._method_set_soft_clip_ratio_373806689 = StringName(from: "set_soft_clip_ratio")
        assert(self._method_set_soft_clip_ratio_373806689 != nil)
        self._method_get_soft_clip_ratio_1740695150 = StringName(from: "get_soft_clip_ratio")
        assert(self._method_get_soft_clip_ratio_1740695150 != nil)
    }

    public func set_ceiling_db(ceiling: Float64)  {
        withUnsafePointer(to: ceiling) { ceiling_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ceiling_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ceiling_db_373806689._native_ptr(),
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
    public func get_ceiling_db() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_ceiling_db_1740695150._native_ptr(),
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
    public func set_threshold_db(threshold: Float64)  {
        withUnsafePointer(to: threshold) { threshold_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(threshold_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_threshold_db_373806689._native_ptr(),
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
    public func get_threshold_db() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_threshold_db_1740695150._native_ptr(),
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
    public func set_soft_clip_db(soft_clip: Float64)  {
        withUnsafePointer(to: soft_clip) { soft_clip_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(soft_clip_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_soft_clip_db_373806689._native_ptr(),
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
    public func get_soft_clip_db() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_soft_clip_db_1740695150._native_ptr(),
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
    public func set_soft_clip_ratio(soft_clip: Float64)  {
        withUnsafePointer(to: soft_clip) { soft_clip_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(soft_clip_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_soft_clip_ratio_373806689._native_ptr(),
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
    public func get_soft_clip_ratio() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_soft_clip_ratio_1740695150._native_ptr(),
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
}