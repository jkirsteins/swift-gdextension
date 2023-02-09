import godot_native

fileprivate var __godot_name_AudioStreamRandomizer: StringName! = nil

/// Wraps a pool of audio streams with pitch and volume shifting.
/// 
/// Picks a random AudioStream from the pool, depending on the playback mode, and applies random pitch shifting and volume shifting during playback.
open class AudioStreamRandomizer : AudioStream {

    public enum PlaybackMode : Int32 {
        case PLAYBACK_RANDOM_NO_REPEATS = 0
        case PLAYBACK_RANDOM = 1
        case PLAYBACK_SEQUENTIAL = 2
    }

    public override class var __godot_name: StringName { __godot_name_AudioStreamRandomizer }

    static var _method_add_stream_3197802065: StringName! = nil
    static var _method_move_stream_3937882851: StringName! = nil
    static var _method_remove_stream_1286410249: StringName! = nil
    static var _method_set_stream_111075094: StringName! = nil
    static var _method_get_stream_2739380747: StringName! = nil
    static var _method_set_stream_probability_weight_1602489585: StringName! = nil
    static var _method_get_stream_probability_weight_2339986948: StringName! = nil
    static var _method_set_streams_count_1286410249: StringName! = nil
    static var _method_get_streams_count_3905245786: StringName! = nil
    static var _method_set_random_pitch_373806689: StringName! = nil
    static var _method_get_random_pitch_1740695150: StringName! = nil
    static var _method_set_random_volume_offset_db_373806689: StringName! = nil
    static var _method_get_random_volume_offset_db_1740695150: StringName! = nil
    static var _method_set_playback_mode_3950967023: StringName! = nil
    static var _method_get_playback_mode_3943055077: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AudioStreamRandomizer == nil)
        __godot_name_AudioStreamRandomizer = StringName(from: "AudioStreamRandomizer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_add_stream_3197802065 = StringName(from: "add_stream")
        assert(self._method_add_stream_3197802065 != nil)
        self._method_move_stream_3937882851 = StringName(from: "move_stream")
        assert(self._method_move_stream_3937882851 != nil)
        self._method_remove_stream_1286410249 = StringName(from: "remove_stream")
        assert(self._method_remove_stream_1286410249 != nil)
        self._method_set_stream_111075094 = StringName(from: "set_stream")
        assert(self._method_set_stream_111075094 != nil)
        self._method_get_stream_2739380747 = StringName(from: "get_stream")
        assert(self._method_get_stream_2739380747 != nil)
        self._method_set_stream_probability_weight_1602489585 = StringName(from: "set_stream_probability_weight")
        assert(self._method_set_stream_probability_weight_1602489585 != nil)
        self._method_get_stream_probability_weight_2339986948 = StringName(from: "get_stream_probability_weight")
        assert(self._method_get_stream_probability_weight_2339986948 != nil)
        self._method_set_streams_count_1286410249 = StringName(from: "set_streams_count")
        assert(self._method_set_streams_count_1286410249 != nil)
        self._method_get_streams_count_3905245786 = StringName(from: "get_streams_count")
        assert(self._method_get_streams_count_3905245786 != nil)
        self._method_set_random_pitch_373806689 = StringName(from: "set_random_pitch")
        assert(self._method_set_random_pitch_373806689 != nil)
        self._method_get_random_pitch_1740695150 = StringName(from: "get_random_pitch")
        assert(self._method_get_random_pitch_1740695150 != nil)
        self._method_set_random_volume_offset_db_373806689 = StringName(from: "set_random_volume_offset_db")
        assert(self._method_set_random_volume_offset_db_373806689 != nil)
        self._method_get_random_volume_offset_db_1740695150 = StringName(from: "get_random_volume_offset_db")
        assert(self._method_get_random_volume_offset_db_1740695150 != nil)
        self._method_set_playback_mode_3950967023 = StringName(from: "set_playback_mode")
        assert(self._method_set_playback_mode_3950967023 != nil)
        self._method_get_playback_mode_3943055077 = StringName(from: "get_playback_mode")
        assert(self._method_get_playback_mode_3943055077 != nil)
    }

    public func add_stream(index: Int64, stream: AudioStream, weight: Float64)  {
        withUnsafePointer(to: weight) { weight_native in
        withUnsafePointer(to: index) { index_native in
        let stream_native = stream._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(stream_native), .init(weight_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_stream_3197802065._native_ptr(),
                    3197802065)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func move_stream(index_from: Int64, index_to: Int64)  {
        withUnsafePointer(to: index_to) { index_to_native in
        withUnsafePointer(to: index_from) { index_from_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_from_native), .init(index_to_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_move_stream_3937882851._native_ptr(),
                    3937882851)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func remove_stream(index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_stream_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_stream(index: Int64, stream: AudioStream)  {
        withUnsafePointer(to: index) { index_native in
        let stream_native = stream._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(stream_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_stream_111075094._native_ptr(),
                    111075094)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_stream(index: Int64) -> AudioStream {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_stream_2739380747._native_ptr(),
                    2739380747)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AudioStream(godot: __resPtr.pointee)
        }
    }
    public func set_stream_probability_weight(index: Int64, weight: Float64)  {
        withUnsafePointer(to: weight) { weight_native in
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(weight_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_stream_probability_weight_1602489585._native_ptr(),
                    1602489585)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_stream_probability_weight(index: Int64) -> Float64 {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_stream_probability_weight_2339986948._native_ptr(),
                    2339986948)
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
    public func set_streams_count(count: Int64)  {
        withUnsafePointer(to: count) { count_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(count_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_streams_count_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_streams_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_streams_count_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_random_pitch(scale: Float64)  {
        withUnsafePointer(to: scale) { scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_random_pitch_373806689._native_ptr(),
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
    public func get_random_pitch() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_random_pitch_1740695150._native_ptr(),
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
    public func set_random_volume_offset_db(db_offset: Float64)  {
        withUnsafePointer(to: db_offset) { db_offset_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(db_offset_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_random_volume_offset_db_373806689._native_ptr(),
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
    public func get_random_volume_offset_db() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_random_volume_offset_db_1740695150._native_ptr(),
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
    public func set_playback_mode(mode: AudioStreamRandomizer.PlaybackMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_playback_mode_3950967023._native_ptr(),
                    3950967023)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_playback_mode() -> AudioStreamRandomizer.PlaybackMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_playback_mode_3943055077._native_ptr(),
                    3943055077)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AudioStreamRandomizer.PlaybackMode(godot: __resPtr.pointee)
    }
}