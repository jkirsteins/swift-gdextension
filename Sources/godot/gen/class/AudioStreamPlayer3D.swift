import godot_native

fileprivate var __godot_name_AudioStreamPlayer3D: StringName! = nil

/// Plays positional sound in 3D space.
/// 
/// Plays a sound effect with directed sound effects, dampens with distance if needed, generates effect of hearable position in space. For greater realism, a low-pass filter is automatically applied to distant sounds. This can be disabled by setting [member attenuation_filter_cutoff_hz] to [code]20500[/code].
///  
/// By default, audio is heard from the camera position. This can be changed by adding an [AudioListener3D] node to the scene and enabling it by calling [method AudioListener3D.make_current] on it.
///  
/// See also [AudioStreamPlayer] to play a sound non-positionally.
///  
/// [b]Note:[/b] Hiding an [AudioStreamPlayer3D] node does not disable its audio output. To temporarily disable an [AudioStreamPlayer3D]'s audio output, set [member volume_db] to a very low value like [code]-100[/code] (which isn't audible to human hearing).
public class AudioStreamPlayer3D : Node3D {

    public enum AttenuationModel : Int32 {
        case ATTENUATION_INVERSE_DISTANCE = 0
        case ATTENUATION_INVERSE_SQUARE_DISTANCE = 1
        case ATTENUATION_LOGARITHMIC = 2
        case ATTENUATION_DISABLED = 3
    }
    public enum DopplerTracking : Int32 {
        case DOPPLER_TRACKING_DISABLED = 0
        case DOPPLER_TRACKING_IDLE_STEP = 1
        case DOPPLER_TRACKING_PHYSICS_STEP = 2
    }

    public override class var __godot_name: StringName { __godot_name_AudioStreamPlayer3D }

    static var _method_set_stream_2210767741: GDExtensionMethodBindPtr! = nil
    static var _method_get_stream_160907539: GDExtensionMethodBindPtr! = nil
    static var _method_set_volume_db_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_volume_db_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_unit_size_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_unit_size_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_max_db_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_db_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_pitch_scale_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_pitch_scale_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_play_3041634712: GDExtensionMethodBindPtr! = nil
    static var _method_seek_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_stop_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_is_playing_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_playback_position_191475506: GDExtensionMethodBindPtr! = nil
    static var _method_set_bus_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_get_bus_2002593661: GDExtensionMethodBindPtr! = nil
    static var _method_set_autoplay_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_autoplay_enabled_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_set_max_distance_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_distance_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_area_mask_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_area_mask_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_emission_angle_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_emission_angle_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_emission_angle_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_emission_angle_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_emission_angle_filter_attenuation_db_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_emission_angle_filter_attenuation_db_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_attenuation_filter_cutoff_hz_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_attenuation_filter_cutoff_hz_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_attenuation_filter_db_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_attenuation_filter_db_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_attenuation_model_2988086229: GDExtensionMethodBindPtr! = nil
    static var _method_get_attenuation_model_3035106060: GDExtensionMethodBindPtr! = nil
    static var _method_set_doppler_tracking_3968161450: GDExtensionMethodBindPtr! = nil
    static var _method_get_doppler_tracking_1702418664: GDExtensionMethodBindPtr! = nil
    static var _method_set_stream_paused_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_stream_paused_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_max_polyphony_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_polyphony_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_panning_strength_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_panning_strength_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_has_stream_playback_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_get_stream_playback_210135309: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_AudioStreamPlayer3D = StringName(from: "AudioStreamPlayer3D")

        let _method_set_stream_2210767741_name = StringName(from: "set_stream")
        self._method_set_stream_2210767741 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_stream_2210767741_name._native_ptr(), 2210767741)
        assert(AudioStreamPlayer3D._method_set_stream_2210767741 != nil)
        let _method_get_stream_160907539_name = StringName(from: "get_stream")
        self._method_get_stream_160907539 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_stream_160907539_name._native_ptr(), 160907539)
        assert(AudioStreamPlayer3D._method_get_stream_160907539 != nil)
        let _method_set_volume_db_373806689_name = StringName(from: "set_volume_db")
        self._method_set_volume_db_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_volume_db_373806689_name._native_ptr(), 373806689)
        assert(AudioStreamPlayer3D._method_set_volume_db_373806689 != nil)
        let _method_get_volume_db_1740695150_name = StringName(from: "get_volume_db")
        self._method_get_volume_db_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_volume_db_1740695150_name._native_ptr(), 1740695150)
        assert(AudioStreamPlayer3D._method_get_volume_db_1740695150 != nil)
        let _method_set_unit_size_373806689_name = StringName(from: "set_unit_size")
        self._method_set_unit_size_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_unit_size_373806689_name._native_ptr(), 373806689)
        assert(AudioStreamPlayer3D._method_set_unit_size_373806689 != nil)
        let _method_get_unit_size_1740695150_name = StringName(from: "get_unit_size")
        self._method_get_unit_size_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_unit_size_1740695150_name._native_ptr(), 1740695150)
        assert(AudioStreamPlayer3D._method_get_unit_size_1740695150 != nil)
        let _method_set_max_db_373806689_name = StringName(from: "set_max_db")
        self._method_set_max_db_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_max_db_373806689_name._native_ptr(), 373806689)
        assert(AudioStreamPlayer3D._method_set_max_db_373806689 != nil)
        let _method_get_max_db_1740695150_name = StringName(from: "get_max_db")
        self._method_get_max_db_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_max_db_1740695150_name._native_ptr(), 1740695150)
        assert(AudioStreamPlayer3D._method_get_max_db_1740695150 != nil)
        let _method_set_pitch_scale_373806689_name = StringName(from: "set_pitch_scale")
        self._method_set_pitch_scale_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_pitch_scale_373806689_name._native_ptr(), 373806689)
        assert(AudioStreamPlayer3D._method_set_pitch_scale_373806689 != nil)
        let _method_get_pitch_scale_1740695150_name = StringName(from: "get_pitch_scale")
        self._method_get_pitch_scale_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_pitch_scale_1740695150_name._native_ptr(), 1740695150)
        assert(AudioStreamPlayer3D._method_get_pitch_scale_1740695150 != nil)
        let _method_play_3041634712_name = StringName(from: "play")
        self._method_play_3041634712 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_play_3041634712_name._native_ptr(), 3041634712)
        assert(AudioStreamPlayer3D._method_play_3041634712 != nil)
        let _method_seek_373806689_name = StringName(from: "seek")
        self._method_seek_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_seek_373806689_name._native_ptr(), 373806689)
        assert(AudioStreamPlayer3D._method_seek_373806689 != nil)
        let _method_stop_3218959716_name = StringName(from: "stop")
        self._method_stop_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_stop_3218959716_name._native_ptr(), 3218959716)
        assert(AudioStreamPlayer3D._method_stop_3218959716 != nil)
        let _method_is_playing_36873697_name = StringName(from: "is_playing")
        self._method_is_playing_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_playing_36873697_name._native_ptr(), 36873697)
        assert(AudioStreamPlayer3D._method_is_playing_36873697 != nil)
        let _method_get_playback_position_191475506_name = StringName(from: "get_playback_position")
        self._method_get_playback_position_191475506 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_playback_position_191475506_name._native_ptr(), 191475506)
        assert(AudioStreamPlayer3D._method_get_playback_position_191475506 != nil)
        let _method_set_bus_3304788590_name = StringName(from: "set_bus")
        self._method_set_bus_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_bus_3304788590_name._native_ptr(), 3304788590)
        assert(AudioStreamPlayer3D._method_set_bus_3304788590 != nil)
        let _method_get_bus_2002593661_name = StringName(from: "get_bus")
        self._method_get_bus_2002593661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_bus_2002593661_name._native_ptr(), 2002593661)
        assert(AudioStreamPlayer3D._method_get_bus_2002593661 != nil)
        let _method_set_autoplay_2586408642_name = StringName(from: "set_autoplay")
        self._method_set_autoplay_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_autoplay_2586408642_name._native_ptr(), 2586408642)
        assert(AudioStreamPlayer3D._method_set_autoplay_2586408642 != nil)
        let _method_is_autoplay_enabled_2240911060_name = StringName(from: "is_autoplay_enabled")
        self._method_is_autoplay_enabled_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_autoplay_enabled_2240911060_name._native_ptr(), 2240911060)
        assert(AudioStreamPlayer3D._method_is_autoplay_enabled_2240911060 != nil)
        let _method_set_max_distance_373806689_name = StringName(from: "set_max_distance")
        self._method_set_max_distance_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_max_distance_373806689_name._native_ptr(), 373806689)
        assert(AudioStreamPlayer3D._method_set_max_distance_373806689 != nil)
        let _method_get_max_distance_1740695150_name = StringName(from: "get_max_distance")
        self._method_get_max_distance_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_max_distance_1740695150_name._native_ptr(), 1740695150)
        assert(AudioStreamPlayer3D._method_get_max_distance_1740695150 != nil)
        let _method_set_area_mask_1286410249_name = StringName(from: "set_area_mask")
        self._method_set_area_mask_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_area_mask_1286410249_name._native_ptr(), 1286410249)
        assert(AudioStreamPlayer3D._method_set_area_mask_1286410249 != nil)
        let _method_get_area_mask_3905245786_name = StringName(from: "get_area_mask")
        self._method_get_area_mask_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_area_mask_3905245786_name._native_ptr(), 3905245786)
        assert(AudioStreamPlayer3D._method_get_area_mask_3905245786 != nil)
        let _method_set_emission_angle_373806689_name = StringName(from: "set_emission_angle")
        self._method_set_emission_angle_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_emission_angle_373806689_name._native_ptr(), 373806689)
        assert(AudioStreamPlayer3D._method_set_emission_angle_373806689 != nil)
        let _method_get_emission_angle_1740695150_name = StringName(from: "get_emission_angle")
        self._method_get_emission_angle_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_emission_angle_1740695150_name._native_ptr(), 1740695150)
        assert(AudioStreamPlayer3D._method_get_emission_angle_1740695150 != nil)
        let _method_set_emission_angle_enabled_2586408642_name = StringName(from: "set_emission_angle_enabled")
        self._method_set_emission_angle_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_emission_angle_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(AudioStreamPlayer3D._method_set_emission_angle_enabled_2586408642 != nil)
        let _method_is_emission_angle_enabled_36873697_name = StringName(from: "is_emission_angle_enabled")
        self._method_is_emission_angle_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_emission_angle_enabled_36873697_name._native_ptr(), 36873697)
        assert(AudioStreamPlayer3D._method_is_emission_angle_enabled_36873697 != nil)
        let _method_set_emission_angle_filter_attenuation_db_373806689_name = StringName(from: "set_emission_angle_filter_attenuation_db")
        self._method_set_emission_angle_filter_attenuation_db_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_emission_angle_filter_attenuation_db_373806689_name._native_ptr(), 373806689)
        assert(AudioStreamPlayer3D._method_set_emission_angle_filter_attenuation_db_373806689 != nil)
        let _method_get_emission_angle_filter_attenuation_db_1740695150_name = StringName(from: "get_emission_angle_filter_attenuation_db")
        self._method_get_emission_angle_filter_attenuation_db_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_emission_angle_filter_attenuation_db_1740695150_name._native_ptr(), 1740695150)
        assert(AudioStreamPlayer3D._method_get_emission_angle_filter_attenuation_db_1740695150 != nil)
        let _method_set_attenuation_filter_cutoff_hz_373806689_name = StringName(from: "set_attenuation_filter_cutoff_hz")
        self._method_set_attenuation_filter_cutoff_hz_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_attenuation_filter_cutoff_hz_373806689_name._native_ptr(), 373806689)
        assert(AudioStreamPlayer3D._method_set_attenuation_filter_cutoff_hz_373806689 != nil)
        let _method_get_attenuation_filter_cutoff_hz_1740695150_name = StringName(from: "get_attenuation_filter_cutoff_hz")
        self._method_get_attenuation_filter_cutoff_hz_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_attenuation_filter_cutoff_hz_1740695150_name._native_ptr(), 1740695150)
        assert(AudioStreamPlayer3D._method_get_attenuation_filter_cutoff_hz_1740695150 != nil)
        let _method_set_attenuation_filter_db_373806689_name = StringName(from: "set_attenuation_filter_db")
        self._method_set_attenuation_filter_db_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_attenuation_filter_db_373806689_name._native_ptr(), 373806689)
        assert(AudioStreamPlayer3D._method_set_attenuation_filter_db_373806689 != nil)
        let _method_get_attenuation_filter_db_1740695150_name = StringName(from: "get_attenuation_filter_db")
        self._method_get_attenuation_filter_db_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_attenuation_filter_db_1740695150_name._native_ptr(), 1740695150)
        assert(AudioStreamPlayer3D._method_get_attenuation_filter_db_1740695150 != nil)
        let _method_set_attenuation_model_2988086229_name = StringName(from: "set_attenuation_model")
        self._method_set_attenuation_model_2988086229 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_attenuation_model_2988086229_name._native_ptr(), 2988086229)
        assert(AudioStreamPlayer3D._method_set_attenuation_model_2988086229 != nil)
        let _method_get_attenuation_model_3035106060_name = StringName(from: "get_attenuation_model")
        self._method_get_attenuation_model_3035106060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_attenuation_model_3035106060_name._native_ptr(), 3035106060)
        assert(AudioStreamPlayer3D._method_get_attenuation_model_3035106060 != nil)
        let _method_set_doppler_tracking_3968161450_name = StringName(from: "set_doppler_tracking")
        self._method_set_doppler_tracking_3968161450 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_doppler_tracking_3968161450_name._native_ptr(), 3968161450)
        assert(AudioStreamPlayer3D._method_set_doppler_tracking_3968161450 != nil)
        let _method_get_doppler_tracking_1702418664_name = StringName(from: "get_doppler_tracking")
        self._method_get_doppler_tracking_1702418664 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_doppler_tracking_1702418664_name._native_ptr(), 1702418664)
        assert(AudioStreamPlayer3D._method_get_doppler_tracking_1702418664 != nil)
        let _method_set_stream_paused_2586408642_name = StringName(from: "set_stream_paused")
        self._method_set_stream_paused_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_stream_paused_2586408642_name._native_ptr(), 2586408642)
        assert(AudioStreamPlayer3D._method_set_stream_paused_2586408642 != nil)
        let _method_get_stream_paused_36873697_name = StringName(from: "get_stream_paused")
        self._method_get_stream_paused_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_stream_paused_36873697_name._native_ptr(), 36873697)
        assert(AudioStreamPlayer3D._method_get_stream_paused_36873697 != nil)
        let _method_set_max_polyphony_1286410249_name = StringName(from: "set_max_polyphony")
        self._method_set_max_polyphony_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_max_polyphony_1286410249_name._native_ptr(), 1286410249)
        assert(AudioStreamPlayer3D._method_set_max_polyphony_1286410249 != nil)
        let _method_get_max_polyphony_3905245786_name = StringName(from: "get_max_polyphony")
        self._method_get_max_polyphony_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_max_polyphony_3905245786_name._native_ptr(), 3905245786)
        assert(AudioStreamPlayer3D._method_get_max_polyphony_3905245786 != nil)
        let _method_set_panning_strength_373806689_name = StringName(from: "set_panning_strength")
        self._method_set_panning_strength_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_panning_strength_373806689_name._native_ptr(), 373806689)
        assert(AudioStreamPlayer3D._method_set_panning_strength_373806689 != nil)
        let _method_get_panning_strength_1740695150_name = StringName(from: "get_panning_strength")
        self._method_get_panning_strength_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_panning_strength_1740695150_name._native_ptr(), 1740695150)
        assert(AudioStreamPlayer3D._method_get_panning_strength_1740695150 != nil)
        let _method_has_stream_playback_2240911060_name = StringName(from: "has_stream_playback")
        self._method_has_stream_playback_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_stream_playback_2240911060_name._native_ptr(), 2240911060)
        assert(AudioStreamPlayer3D._method_has_stream_playback_2240911060 != nil)
        let _method_get_stream_playback_210135309_name = StringName(from: "get_stream_playback")
        self._method_get_stream_playback_210135309 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_stream_playback_210135309_name._native_ptr(), 210135309)
        assert(AudioStreamPlayer3D._method_get_stream_playback_210135309 != nil)
    }

    public func set_stream(stream: AudioStream)  {
        let stream_native = stream._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(stream_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_stream_2210767741,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_stream() -> AudioStream {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_stream_160907539,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AudioStream(from: __resPtr.pointee)
    }
    public func set_volume_db(volume_db: Float64)  {
        withUnsafePointer(to: volume_db) { volume_db_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(volume_db_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_volume_db_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_volume_db() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_volume_db_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_unit_size(unit_size: Float64)  {
        withUnsafePointer(to: unit_size) { unit_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(unit_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_unit_size_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_unit_size() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_unit_size_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_max_db(max_db: Float64)  {
        withUnsafePointer(to: max_db) { max_db_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_db_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_max_db_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_max_db() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_max_db_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_pitch_scale(pitch_scale: Float64)  {
        withUnsafePointer(to: pitch_scale) { pitch_scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pitch_scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_pitch_scale_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_pitch_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_pitch_scale_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func play(from_position: Float64)  {
        withUnsafePointer(to: from_position) { from_position_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_play_3041634712,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func seek(to_position: Float64)  {
        withUnsafePointer(to: to_position) { to_position_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(to_position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_seek_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func stop()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_stop_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func is_playing() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_playing_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_playback_position() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_playback_position_191475506,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_bus(bus: StringName)  {
        let bus_native = bus._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bus_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bus_3304788590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_bus() -> StringName {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bus_2002593661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(from: __resPtr.pointee)
    }
    public func set_autoplay(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_autoplay_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_autoplay_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_autoplay_enabled_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_max_distance(meters: Float64)  {
        withUnsafePointer(to: meters) { meters_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(meters_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_max_distance_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_max_distance() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_max_distance_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_area_mask(mask: Int64)  {
        withUnsafePointer(to: mask) { mask_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_area_mask_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_area_mask() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_area_mask_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_emission_angle(degrees: Float64)  {
        withUnsafePointer(to: degrees) { degrees_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(degrees_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_emission_angle_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_emission_angle() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_emission_angle_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_emission_angle_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_emission_angle_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_emission_angle_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_emission_angle_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_emission_angle_filter_attenuation_db(db: Float64)  {
        withUnsafePointer(to: db) { db_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(db_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_emission_angle_filter_attenuation_db_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_emission_angle_filter_attenuation_db() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_emission_angle_filter_attenuation_db_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_attenuation_filter_cutoff_hz(degrees: Float64)  {
        withUnsafePointer(to: degrees) { degrees_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(degrees_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_attenuation_filter_cutoff_hz_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_attenuation_filter_cutoff_hz() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_attenuation_filter_cutoff_hz_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_attenuation_filter_db(db: Float64)  {
        withUnsafePointer(to: db) { db_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(db_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_attenuation_filter_db_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_attenuation_filter_db() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_attenuation_filter_db_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_attenuation_model(model: AudioStreamPlayer3D.AttenuationModel)  {
        withUnsafePointer(to: model.rawValue) { model_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(model_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_attenuation_model_2988086229,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_attenuation_model() -> AudioStreamPlayer3D.AttenuationModel {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_attenuation_model_3035106060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AudioStreamPlayer3D.AttenuationModel(from: __resPtr.pointee)
    }
    public func set_doppler_tracking(mode: AudioStreamPlayer3D.DopplerTracking)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_doppler_tracking_3968161450,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_doppler_tracking() -> AudioStreamPlayer3D.DopplerTracking {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_doppler_tracking_1702418664,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AudioStreamPlayer3D.DopplerTracking(from: __resPtr.pointee)
    }
    public func set_stream_paused(pause: UInt8)  {
        withUnsafePointer(to: pause) { pause_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pause_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_stream_paused_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_stream_paused() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_stream_paused_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_max_polyphony(max_polyphony: Int64)  {
        withUnsafePointer(to: max_polyphony) { max_polyphony_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_polyphony_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_max_polyphony_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_max_polyphony() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_max_polyphony_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_panning_strength(panning_strength: Float64)  {
        withUnsafePointer(to: panning_strength) { panning_strength_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(panning_strength_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_panning_strength_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_panning_strength() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_panning_strength_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func has_stream_playback() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_stream_playback_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_stream_playback() -> AudioStreamPlayback {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_stream_playback_210135309,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AudioStreamPlayback(from: __resPtr.pointee)
    }
}