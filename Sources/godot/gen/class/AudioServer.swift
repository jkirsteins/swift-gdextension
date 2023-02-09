import godot_native

fileprivate var __godot_name_AudioServer: StringName! = nil

/// Server interface for low-level audio access.
/// 
/// [AudioServer] is a low-level server interface for audio access. It is in charge of creating sample data (playable audio) as well as its playback via a voice interface.
open class AudioServer : Object {

    public enum SpeakerMode : Int32 {
        case SPEAKER_MODE_STEREO = 0
        case SPEAKER_SURROUND_31 = 1
        case SPEAKER_SURROUND_51 = 2
        case SPEAKER_SURROUND_71 = 3
    }

    public override class var __godot_name: StringName { __godot_name_AudioServer }

    static var _method_set_bus_count_1286410249: StringName! = nil
    static var _method_get_bus_count_3905245786: StringName! = nil
    static var _method_remove_bus_1286410249: StringName! = nil
    static var _method_add_bus_1025054187: StringName! = nil
    static var _method_move_bus_3937882851: StringName! = nil
    static var _method_set_bus_name_501894301: StringName! = nil
    static var _method_get_bus_name_844755477: StringName! = nil
    static var _method_get_bus_index_2458036349: StringName! = nil
    static var _method_get_bus_channels_923996154: StringName! = nil
    static var _method_set_bus_volume_db_1602489585: StringName! = nil
    static var _method_get_bus_volume_db_2339986948: StringName! = nil
    static var _method_set_bus_send_3780747571: StringName! = nil
    static var _method_get_bus_send_659327637: StringName! = nil
    static var _method_set_bus_solo_300928843: StringName! = nil
    static var _method_is_bus_solo_1116898809: StringName! = nil
    static var _method_set_bus_mute_300928843: StringName! = nil
    static var _method_is_bus_mute_1116898809: StringName! = nil
    static var _method_set_bus_bypass_effects_300928843: StringName! = nil
    static var _method_is_bus_bypassing_effects_1116898809: StringName! = nil
    static var _method_add_bus_effect_4147765248: StringName! = nil
    static var _method_remove_bus_effect_3937882851: StringName! = nil
    static var _method_get_bus_effect_count_3744713108: StringName! = nil
    static var _method_get_bus_effect_726064442: StringName! = nil
    static var _method_get_bus_effect_instance_2887144608: StringName! = nil
    static var _method_swap_bus_effects_1649997291: StringName! = nil
    static var _method_set_bus_effect_enabled_1383440665: StringName! = nil
    static var _method_is_bus_effect_enabled_2522259332: StringName! = nil
    static var _method_get_bus_peak_volume_left_db_3085491603: StringName! = nil
    static var _method_get_bus_peak_volume_right_db_3085491603: StringName! = nil
    static var _method_set_playback_speed_scale_373806689: StringName! = nil
    static var _method_get_playback_speed_scale_1740695150: StringName! = nil
    static var _method_lock_3218959716: StringName! = nil
    static var _method_unlock_3218959716: StringName! = nil
    static var _method_get_speaker_mode_2549190337: StringName! = nil
    static var _method_get_mix_rate_1740695150: StringName! = nil
    static var _method_get_output_device_list_2981934095: StringName! = nil
    static var _method_get_output_device_2841200299: StringName! = nil
    static var _method_set_output_device_83702148: StringName! = nil
    static var _method_get_time_to_next_mix_1740695150: StringName! = nil
    static var _method_get_time_since_last_mix_1740695150: StringName! = nil
    static var _method_get_output_latency_1740695150: StringName! = nil
    static var _method_get_input_device_list_2981934095: StringName! = nil
    static var _method_get_input_device_2841200299: StringName! = nil
    static var _method_set_input_device_83702148: StringName! = nil
    static var _method_set_bus_layout_3319058824: StringName! = nil
    static var _method_generate_bus_layout_3769973890: StringName! = nil
    static var _method_set_enable_tagging_used_audio_streams_2586408642: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AudioServer == nil)
        __godot_name_AudioServer = StringName(from: "AudioServer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_bus_count_1286410249 = StringName(from: "set_bus_count")
        assert(self._method_set_bus_count_1286410249 != nil)
        self._method_get_bus_count_3905245786 = StringName(from: "get_bus_count")
        assert(self._method_get_bus_count_3905245786 != nil)
        self._method_remove_bus_1286410249 = StringName(from: "remove_bus")
        assert(self._method_remove_bus_1286410249 != nil)
        self._method_add_bus_1025054187 = StringName(from: "add_bus")
        assert(self._method_add_bus_1025054187 != nil)
        self._method_move_bus_3937882851 = StringName(from: "move_bus")
        assert(self._method_move_bus_3937882851 != nil)
        self._method_set_bus_name_501894301 = StringName(from: "set_bus_name")
        assert(self._method_set_bus_name_501894301 != nil)
        self._method_get_bus_name_844755477 = StringName(from: "get_bus_name")
        assert(self._method_get_bus_name_844755477 != nil)
        self._method_get_bus_index_2458036349 = StringName(from: "get_bus_index")
        assert(self._method_get_bus_index_2458036349 != nil)
        self._method_get_bus_channels_923996154 = StringName(from: "get_bus_channels")
        assert(self._method_get_bus_channels_923996154 != nil)
        self._method_set_bus_volume_db_1602489585 = StringName(from: "set_bus_volume_db")
        assert(self._method_set_bus_volume_db_1602489585 != nil)
        self._method_get_bus_volume_db_2339986948 = StringName(from: "get_bus_volume_db")
        assert(self._method_get_bus_volume_db_2339986948 != nil)
        self._method_set_bus_send_3780747571 = StringName(from: "set_bus_send")
        assert(self._method_set_bus_send_3780747571 != nil)
        self._method_get_bus_send_659327637 = StringName(from: "get_bus_send")
        assert(self._method_get_bus_send_659327637 != nil)
        self._method_set_bus_solo_300928843 = StringName(from: "set_bus_solo")
        assert(self._method_set_bus_solo_300928843 != nil)
        self._method_is_bus_solo_1116898809 = StringName(from: "is_bus_solo")
        assert(self._method_is_bus_solo_1116898809 != nil)
        self._method_set_bus_mute_300928843 = StringName(from: "set_bus_mute")
        assert(self._method_set_bus_mute_300928843 != nil)
        self._method_is_bus_mute_1116898809 = StringName(from: "is_bus_mute")
        assert(self._method_is_bus_mute_1116898809 != nil)
        self._method_set_bus_bypass_effects_300928843 = StringName(from: "set_bus_bypass_effects")
        assert(self._method_set_bus_bypass_effects_300928843 != nil)
        self._method_is_bus_bypassing_effects_1116898809 = StringName(from: "is_bus_bypassing_effects")
        assert(self._method_is_bus_bypassing_effects_1116898809 != nil)
        self._method_add_bus_effect_4147765248 = StringName(from: "add_bus_effect")
        assert(self._method_add_bus_effect_4147765248 != nil)
        self._method_remove_bus_effect_3937882851 = StringName(from: "remove_bus_effect")
        assert(self._method_remove_bus_effect_3937882851 != nil)
        self._method_get_bus_effect_count_3744713108 = StringName(from: "get_bus_effect_count")
        assert(self._method_get_bus_effect_count_3744713108 != nil)
        self._method_get_bus_effect_726064442 = StringName(from: "get_bus_effect")
        assert(self._method_get_bus_effect_726064442 != nil)
        self._method_get_bus_effect_instance_2887144608 = StringName(from: "get_bus_effect_instance")
        assert(self._method_get_bus_effect_instance_2887144608 != nil)
        self._method_swap_bus_effects_1649997291 = StringName(from: "swap_bus_effects")
        assert(self._method_swap_bus_effects_1649997291 != nil)
        self._method_set_bus_effect_enabled_1383440665 = StringName(from: "set_bus_effect_enabled")
        assert(self._method_set_bus_effect_enabled_1383440665 != nil)
        self._method_is_bus_effect_enabled_2522259332 = StringName(from: "is_bus_effect_enabled")
        assert(self._method_is_bus_effect_enabled_2522259332 != nil)
        self._method_get_bus_peak_volume_left_db_3085491603 = StringName(from: "get_bus_peak_volume_left_db")
        assert(self._method_get_bus_peak_volume_left_db_3085491603 != nil)
        self._method_get_bus_peak_volume_right_db_3085491603 = StringName(from: "get_bus_peak_volume_right_db")
        assert(self._method_get_bus_peak_volume_right_db_3085491603 != nil)
        self._method_set_playback_speed_scale_373806689 = StringName(from: "set_playback_speed_scale")
        assert(self._method_set_playback_speed_scale_373806689 != nil)
        self._method_get_playback_speed_scale_1740695150 = StringName(from: "get_playback_speed_scale")
        assert(self._method_get_playback_speed_scale_1740695150 != nil)
        self._method_lock_3218959716 = StringName(from: "lock")
        assert(self._method_lock_3218959716 != nil)
        self._method_unlock_3218959716 = StringName(from: "unlock")
        assert(self._method_unlock_3218959716 != nil)
        self._method_get_speaker_mode_2549190337 = StringName(from: "get_speaker_mode")
        assert(self._method_get_speaker_mode_2549190337 != nil)
        self._method_get_mix_rate_1740695150 = StringName(from: "get_mix_rate")
        assert(self._method_get_mix_rate_1740695150 != nil)
        self._method_get_output_device_list_2981934095 = StringName(from: "get_output_device_list")
        assert(self._method_get_output_device_list_2981934095 != nil)
        self._method_get_output_device_2841200299 = StringName(from: "get_output_device")
        assert(self._method_get_output_device_2841200299 != nil)
        self._method_set_output_device_83702148 = StringName(from: "set_output_device")
        assert(self._method_set_output_device_83702148 != nil)
        self._method_get_time_to_next_mix_1740695150 = StringName(from: "get_time_to_next_mix")
        assert(self._method_get_time_to_next_mix_1740695150 != nil)
        self._method_get_time_since_last_mix_1740695150 = StringName(from: "get_time_since_last_mix")
        assert(self._method_get_time_since_last_mix_1740695150 != nil)
        self._method_get_output_latency_1740695150 = StringName(from: "get_output_latency")
        assert(self._method_get_output_latency_1740695150 != nil)
        self._method_get_input_device_list_2981934095 = StringName(from: "get_input_device_list")
        assert(self._method_get_input_device_list_2981934095 != nil)
        self._method_get_input_device_2841200299 = StringName(from: "get_input_device")
        assert(self._method_get_input_device_2841200299 != nil)
        self._method_set_input_device_83702148 = StringName(from: "set_input_device")
        assert(self._method_set_input_device_83702148 != nil)
        self._method_set_bus_layout_3319058824 = StringName(from: "set_bus_layout")
        assert(self._method_set_bus_layout_3319058824 != nil)
        self._method_generate_bus_layout_3769973890 = StringName(from: "generate_bus_layout")
        assert(self._method_generate_bus_layout_3769973890 != nil)
        self._method_set_enable_tagging_used_audio_streams_2586408642 = StringName(from: "set_enable_tagging_used_audio_streams")
        assert(self._method_set_enable_tagging_used_audio_streams_2586408642 != nil)
    }

    public func set_bus_count(amount: Int64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_bus_count_1286410249._native_ptr(),
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
    public func get_bus_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_bus_count_3905245786._native_ptr(),
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
    public func remove_bus(index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_bus_1286410249._native_ptr(),
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
    public func add_bus(at_position: Int64)  {
        withUnsafePointer(to: at_position) { at_position_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(at_position_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_bus_1025054187._native_ptr(),
                    1025054187)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func move_bus(index: Int64, to_index: Int64)  {
        withUnsafePointer(to: to_index) { to_index_native in
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(to_index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_move_bus_3937882851._native_ptr(),
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
    public func set_bus_name(bus_idx: Int64, name: godot.String)  {
        withUnsafePointer(to: bus_idx) { bus_idx_native in
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bus_idx_native), .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_bus_name_501894301._native_ptr(),
                    501894301)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_bus_name(bus_idx: Int64) -> godot.String {
        withUnsafePointer(to: bus_idx) { bus_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bus_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_bus_name_844755477._native_ptr(),
                    844755477)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func get_bus_index(bus_name: StringName) -> Int64 {
        let bus_name_native = bus_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bus_name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_bus_index_2458036349._native_ptr(),
                    2458036349)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_bus_channels(bus_idx: Int64) -> Int64 {
        withUnsafePointer(to: bus_idx) { bus_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bus_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_bus_channels_923996154._native_ptr(),
                    923996154)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func set_bus_volume_db(bus_idx: Int64, volume_db: Float64)  {
        withUnsafePointer(to: volume_db) { volume_db_native in
        withUnsafePointer(to: bus_idx) { bus_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bus_idx_native), .init(volume_db_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_bus_volume_db_1602489585._native_ptr(),
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
    public func get_bus_volume_db(bus_idx: Int64) -> Float64 {
        withUnsafePointer(to: bus_idx) { bus_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bus_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_bus_volume_db_2339986948._native_ptr(),
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
    public func set_bus_send(bus_idx: Int64, send: StringName)  {
        withUnsafePointer(to: bus_idx) { bus_idx_native in
        let send_native = send._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bus_idx_native), .init(send_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_bus_send_3780747571._native_ptr(),
                    3780747571)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_bus_send(bus_idx: Int64) -> StringName {
        withUnsafePointer(to: bus_idx) { bus_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bus_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_bus_send_659327637._native_ptr(),
                    659327637)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
        }
    }
    public func set_bus_solo(bus_idx: Int64, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        withUnsafePointer(to: bus_idx) { bus_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bus_idx_native), .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_bus_solo_300928843._native_ptr(),
                    300928843)
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
    public func is_bus_solo(bus_idx: Int64) -> UInt8 {
        withUnsafePointer(to: bus_idx) { bus_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bus_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_bus_solo_1116898809._native_ptr(),
                    1116898809)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func set_bus_mute(bus_idx: Int64, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        withUnsafePointer(to: bus_idx) { bus_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bus_idx_native), .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_bus_mute_300928843._native_ptr(),
                    300928843)
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
    public func is_bus_mute(bus_idx: Int64) -> UInt8 {
        withUnsafePointer(to: bus_idx) { bus_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bus_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_bus_mute_1116898809._native_ptr(),
                    1116898809)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func set_bus_bypass_effects(bus_idx: Int64, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        withUnsafePointer(to: bus_idx) { bus_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bus_idx_native), .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_bus_bypass_effects_300928843._native_ptr(),
                    300928843)
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
    public func is_bus_bypassing_effects(bus_idx: Int64) -> UInt8 {
        withUnsafePointer(to: bus_idx) { bus_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bus_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_bus_bypassing_effects_1116898809._native_ptr(),
                    1116898809)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func add_bus_effect(bus_idx: Int64, effect: AudioEffect, at_position: Int64)  {
        withUnsafePointer(to: at_position) { at_position_native in
        withUnsafePointer(to: bus_idx) { bus_idx_native in
        let effect_native = effect._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bus_idx_native), .init(effect_native), .init(at_position_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_bus_effect_4147765248._native_ptr(),
                    4147765248)
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
    public func remove_bus_effect(bus_idx: Int64, effect_idx: Int64)  {
        withUnsafePointer(to: effect_idx) { effect_idx_native in
        withUnsafePointer(to: bus_idx) { bus_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bus_idx_native), .init(effect_idx_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_bus_effect_3937882851._native_ptr(),
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
    public func get_bus_effect_count(bus_idx: Int64) -> Int64 {
        withUnsafePointer(to: bus_idx) { bus_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bus_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_bus_effect_count_3744713108._native_ptr(),
                    3744713108)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func get_bus_effect(bus_idx: Int64, effect_idx: Int64) -> AudioEffect {
        withUnsafePointer(to: effect_idx) { effect_idx_native in
        withUnsafePointer(to: bus_idx) { bus_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bus_idx_native), .init(effect_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_bus_effect_726064442._native_ptr(),
                    726064442)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AudioEffect(godot: __resPtr.pointee)
        }
        }
    }
    public func get_bus_effect_instance(bus_idx: Int64, effect_idx: Int64, channel: Int64) -> AudioEffectInstance {
        withUnsafePointer(to: channel) { channel_native in
        withUnsafePointer(to: effect_idx) { effect_idx_native in
        withUnsafePointer(to: bus_idx) { bus_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bus_idx_native), .init(effect_idx_native), .init(channel_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_bus_effect_instance_2887144608._native_ptr(),
                    2887144608)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AudioEffectInstance(godot: __resPtr.pointee)
        }
        }
        }
    }
    public func swap_bus_effects(bus_idx: Int64, effect_idx: Int64, by_effect_idx: Int64)  {
        withUnsafePointer(to: by_effect_idx) { by_effect_idx_native in
        withUnsafePointer(to: effect_idx) { effect_idx_native in
        withUnsafePointer(to: bus_idx) { bus_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bus_idx_native), .init(effect_idx_native), .init(by_effect_idx_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_swap_bus_effects_1649997291._native_ptr(),
                    1649997291)
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
    }
    public func set_bus_effect_enabled(bus_idx: Int64, effect_idx: Int64, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        withUnsafePointer(to: effect_idx) { effect_idx_native in
        withUnsafePointer(to: bus_idx) { bus_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bus_idx_native), .init(effect_idx_native), .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_bus_effect_enabled_1383440665._native_ptr(),
                    1383440665)
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
    }
    public func is_bus_effect_enabled(bus_idx: Int64, effect_idx: Int64) -> UInt8 {
        withUnsafePointer(to: effect_idx) { effect_idx_native in
        withUnsafePointer(to: bus_idx) { bus_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bus_idx_native), .init(effect_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_bus_effect_enabled_2522259332._native_ptr(),
                    2522259332)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
        }
    }
    public func get_bus_peak_volume_left_db(bus_idx: Int64, channel: Int64) -> Float64 {
        withUnsafePointer(to: channel) { channel_native in
        withUnsafePointer(to: bus_idx) { bus_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bus_idx_native), .init(channel_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_bus_peak_volume_left_db_3085491603._native_ptr(),
                    3085491603)
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
    }
    public func get_bus_peak_volume_right_db(bus_idx: Int64, channel: Int64) -> Float64 {
        withUnsafePointer(to: channel) { channel_native in
        withUnsafePointer(to: bus_idx) { bus_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bus_idx_native), .init(channel_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_bus_peak_volume_right_db_3085491603._native_ptr(),
                    3085491603)
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
    }
    public func set_playback_speed_scale(scale: Float64)  {
        withUnsafePointer(to: scale) { scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_playback_speed_scale_373806689._native_ptr(),
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
    public func get_playback_speed_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_playback_speed_scale_1740695150._native_ptr(),
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
    public func lock()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_lock_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func unlock()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_unlock_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_speaker_mode() -> AudioServer.SpeakerMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_speaker_mode_2549190337._native_ptr(),
                    2549190337)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AudioServer.SpeakerMode(godot: __resPtr.pointee)
    }
    public func get_mix_rate() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_mix_rate_1740695150._native_ptr(),
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
    public func get_output_device_list() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_output_device_list_2981934095._native_ptr(),
                    2981934095)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func get_output_device() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_output_device_2841200299._native_ptr(),
                    2841200299)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func set_output_device(output_device: godot.String)  {
        let output_device_native = output_device._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(output_device_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_output_device_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_time_to_next_mix() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_time_to_next_mix_1740695150._native_ptr(),
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
    public func get_time_since_last_mix() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_time_since_last_mix_1740695150._native_ptr(),
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
    public func get_output_latency() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_output_latency_1740695150._native_ptr(),
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
    public func get_input_device_list() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_input_device_list_2981934095._native_ptr(),
                    2981934095)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func get_input_device() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_input_device_2841200299._native_ptr(),
                    2841200299)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func set_input_device(name: godot.String)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_input_device_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_bus_layout(bus_layout: AudioBusLayout)  {
        let bus_layout_native = bus_layout._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bus_layout_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_bus_layout_3319058824._native_ptr(),
                    3319058824)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func generate_bus_layout() -> AudioBusLayout {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_generate_bus_layout_3769973890._native_ptr(),
                    3769973890)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AudioBusLayout(godot: __resPtr.pointee)
    }
    public func set_enable_tagging_used_audio_streams(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_enable_tagging_used_audio_streams_2586408642._native_ptr(),
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
}