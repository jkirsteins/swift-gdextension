import godot_native

fileprivate var __godot_name_AudioStreamMP3: StringName! = nil

/// MISSING
/// 
/// MISSING
open class AudioStreamMP3 : AudioStream {

    

    public override class var __godot_name: StringName { __godot_name_AudioStreamMP3 }

    static var _method_set_data_2971499966: GDExtensionMethodBindPtr! = nil
    static var _method_get_data_2362200018: GDExtensionMethodBindPtr! = nil
    static var _method_set_loop_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_has_loop_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_loop_offset_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_loop_offset_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_bpm_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_bpm_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_beat_count_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_beat_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_bar_beats_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_bar_beats_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_AudioStreamMP3 = StringName(from: "AudioStreamMP3")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_data_2971499966_name = StringName(from: "set_data")
        self._method_set_data_2971499966 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioStreamMP3._native_ptr(), _method_set_data_2971499966_name._native_ptr(), 2971499966)
        assert(AudioStreamMP3._method_set_data_2971499966 != nil)
        let _method_get_data_2362200018_name = StringName(from: "get_data")
        self._method_get_data_2362200018 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioStreamMP3._native_ptr(), _method_get_data_2362200018_name._native_ptr(), 2362200018)
        assert(AudioStreamMP3._method_get_data_2362200018 != nil)
        let _method_set_loop_2586408642_name = StringName(from: "set_loop")
        self._method_set_loop_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioStreamMP3._native_ptr(), _method_set_loop_2586408642_name._native_ptr(), 2586408642)
        assert(AudioStreamMP3._method_set_loop_2586408642 != nil)
        let _method_has_loop_36873697_name = StringName(from: "has_loop")
        self._method_has_loop_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioStreamMP3._native_ptr(), _method_has_loop_36873697_name._native_ptr(), 36873697)
        assert(AudioStreamMP3._method_has_loop_36873697 != nil)
        let _method_set_loop_offset_373806689_name = StringName(from: "set_loop_offset")
        self._method_set_loop_offset_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioStreamMP3._native_ptr(), _method_set_loop_offset_373806689_name._native_ptr(), 373806689)
        assert(AudioStreamMP3._method_set_loop_offset_373806689 != nil)
        let _method_get_loop_offset_1740695150_name = StringName(from: "get_loop_offset")
        self._method_get_loop_offset_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioStreamMP3._native_ptr(), _method_get_loop_offset_1740695150_name._native_ptr(), 1740695150)
        assert(AudioStreamMP3._method_get_loop_offset_1740695150 != nil)
        let _method_set_bpm_373806689_name = StringName(from: "set_bpm")
        self._method_set_bpm_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioStreamMP3._native_ptr(), _method_set_bpm_373806689_name._native_ptr(), 373806689)
        assert(AudioStreamMP3._method_set_bpm_373806689 != nil)
        let _method_get_bpm_1740695150_name = StringName(from: "get_bpm")
        self._method_get_bpm_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioStreamMP3._native_ptr(), _method_get_bpm_1740695150_name._native_ptr(), 1740695150)
        assert(AudioStreamMP3._method_get_bpm_1740695150 != nil)
        let _method_set_beat_count_1286410249_name = StringName(from: "set_beat_count")
        self._method_set_beat_count_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioStreamMP3._native_ptr(), _method_set_beat_count_1286410249_name._native_ptr(), 1286410249)
        assert(AudioStreamMP3._method_set_beat_count_1286410249 != nil)
        let _method_get_beat_count_3905245786_name = StringName(from: "get_beat_count")
        self._method_get_beat_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioStreamMP3._native_ptr(), _method_get_beat_count_3905245786_name._native_ptr(), 3905245786)
        assert(AudioStreamMP3._method_get_beat_count_3905245786 != nil)
        let _method_set_bar_beats_1286410249_name = StringName(from: "set_bar_beats")
        self._method_set_bar_beats_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioStreamMP3._native_ptr(), _method_set_bar_beats_1286410249_name._native_ptr(), 1286410249)
        assert(AudioStreamMP3._method_set_bar_beats_1286410249 != nil)
        let _method_get_bar_beats_3905245786_name = StringName(from: "get_bar_beats")
        self._method_get_bar_beats_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_AudioStreamMP3._native_ptr(), _method_get_bar_beats_3905245786_name._native_ptr(), 3905245786)
        assert(AudioStreamMP3._method_get_bar_beats_3905245786 != nil)
    }

    public func set_data(data: PackedByteArray)  {
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(data_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_data_2971499966,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_data() -> PackedByteArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_data_2362200018,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(godot: __resPtr.pointee)
    }
    public func set_loop(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_loop_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func has_loop() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_loop_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_loop_offset(seconds: Float64)  {
        withUnsafePointer(to: seconds) { seconds_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(seconds_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_loop_offset_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_loop_offset() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_loop_offset_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_bpm(bpm: Float64)  {
        withUnsafePointer(to: bpm) { bpm_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bpm_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bpm_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_bpm() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bpm_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_beat_count(count: Int64)  {
        withUnsafePointer(to: count) { count_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(count_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_beat_count_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_beat_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_beat_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_bar_beats(count: Int64)  {
        withUnsafePointer(to: count) { count_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(count_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bar_beats_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_bar_beats() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bar_beats_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
}