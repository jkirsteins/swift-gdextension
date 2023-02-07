import godot_native

fileprivate var __godot_name_AnimationPlayer: StringName! = nil

/// Player of [Animation] resources.
/// 
/// An animation player is used for general-purpose playback of [Animation] resources. It contains a dictionary of [AnimationLibrary] resources and custom blend times between animation transitions.
///  
/// Some methods and properties use a single key to reference an animation directly. These keys are formatted as the key for the library, followed by a forward slash, then the key for the animation within the library, for example [code]"movement/run"[/code]. If the library's key is an empty string (known as the default library), the forward slash is omitted, being the same key used by the library.
///  
/// [AnimationPlayer] is more suited than [Tween] for animations where you know the final values in advance. For example, fading a screen in and out is more easily done with an [AnimationPlayer] node thanks to the animation tools provided by the editor. That particular example can also be implemented with a [Tween], but it requires doing everything by code.
///  
/// Updating the target properties of animations occurs at process time.
public class AnimationPlayer : Node {

    public enum AnimationProcessCallback : Int32 {
        case ANIMATION_PROCESS_PHYSICS = 0
        case ANIMATION_PROCESS_IDLE = 1
        case ANIMATION_PROCESS_MANUAL = 2
    }
    public enum AnimationMethodCallMode : Int32 {
        case ANIMATION_METHOD_CALL_DEFERRED = 0
        case ANIMATION_METHOD_CALL_IMMEDIATE = 1
    }

    public override class var __godot_name: StringName { __godot_name_AnimationPlayer }

    static var _method__post_process_key_value_0: GDExtensionMethodBindPtr! = nil
    static var _method_add_animation_library_618909818: GDExtensionMethodBindPtr! = nil
    static var _method_remove_animation_library_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_rename_animation_library_3740211285: GDExtensionMethodBindPtr! = nil
    static var _method_has_animation_library_2619796661: GDExtensionMethodBindPtr! = nil
    static var _method_get_animation_library_147342321: GDExtensionMethodBindPtr! = nil
    static var _method_get_animation_library_list_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_has_animation_2619796661: GDExtensionMethodBindPtr! = nil
    static var _method_get_animation_2933122410: GDExtensionMethodBindPtr! = nil
    static var _method_get_animation_list_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_animation_set_next_3740211285: GDExtensionMethodBindPtr! = nil
    static var _method_animation_get_next_1965194235: GDExtensionMethodBindPtr! = nil
    static var _method_set_blend_time_3231131886: GDExtensionMethodBindPtr! = nil
    static var _method_get_blend_time_1958752504: GDExtensionMethodBindPtr! = nil
    static var _method_set_default_blend_time_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_default_blend_time_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_play_2221377757: GDExtensionMethodBindPtr! = nil
    static var _method_play_backwards_2787282401: GDExtensionMethodBindPtr! = nil
    static var _method_pause_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_stop_107499316: GDExtensionMethodBindPtr! = nil
    static var _method_is_playing_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_current_animation_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_current_animation_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_assigned_animation_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_assigned_animation_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_queue_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_get_queue_2981934095: GDExtensionMethodBindPtr! = nil
    static var _method_clear_queue_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_active_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_active_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_speed_scale_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_speed_scale_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_playing_speed_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_autoplay_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_autoplay_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_reset_on_save_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_reset_on_save_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_root_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_root_4075236667: GDExtensionMethodBindPtr! = nil
    static var _method_find_animation_1559484580: GDExtensionMethodBindPtr! = nil
    static var _method_find_animation_library_1559484580: GDExtensionMethodBindPtr! = nil
    static var _method_clear_caches_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_process_callback_1663839457: GDExtensionMethodBindPtr! = nil
    static var _method_get_process_callback_4207496604: GDExtensionMethodBindPtr! = nil
    static var _method_set_method_call_mode_3413514846: GDExtensionMethodBindPtr! = nil
    static var _method_get_method_call_mode_3583380054: GDExtensionMethodBindPtr! = nil
    static var _method_set_audio_max_polyphony_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_audio_max_polyphony_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_movie_quit_on_finish_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_movie_quit_on_finish_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_current_animation_position_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_current_animation_length_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_seek_2087892650: GDExtensionMethodBindPtr! = nil
    static var _method_advance_373806689: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_AnimationPlayer = StringName(from: "AnimationPlayer")

        let _method_add_animation_library_618909818_name = StringName(from: "add_animation_library")
        self._method_add_animation_library_618909818 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_animation_library_618909818_name._native_ptr(), 618909818)
        assert(AnimationPlayer._method_add_animation_library_618909818 != nil)
        let _method_remove_animation_library_3304788590_name = StringName(from: "remove_animation_library")
        self._method_remove_animation_library_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_animation_library_3304788590_name._native_ptr(), 3304788590)
        assert(AnimationPlayer._method_remove_animation_library_3304788590 != nil)
        let _method_rename_animation_library_3740211285_name = StringName(from: "rename_animation_library")
        self._method_rename_animation_library_3740211285 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_rename_animation_library_3740211285_name._native_ptr(), 3740211285)
        assert(AnimationPlayer._method_rename_animation_library_3740211285 != nil)
        let _method_has_animation_library_2619796661_name = StringName(from: "has_animation_library")
        self._method_has_animation_library_2619796661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_animation_library_2619796661_name._native_ptr(), 2619796661)
        assert(AnimationPlayer._method_has_animation_library_2619796661 != nil)
        let _method_get_animation_library_147342321_name = StringName(from: "get_animation_library")
        self._method_get_animation_library_147342321 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_animation_library_147342321_name._native_ptr(), 147342321)
        assert(AnimationPlayer._method_get_animation_library_147342321 != nil)
        let _method_get_animation_library_list_3995934104_name = StringName(from: "get_animation_library_list")
        self._method_get_animation_library_list_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_animation_library_list_3995934104_name._native_ptr(), 3995934104)
        assert(AnimationPlayer._method_get_animation_library_list_3995934104 != nil)
        let _method_has_animation_2619796661_name = StringName(from: "has_animation")
        self._method_has_animation_2619796661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_animation_2619796661_name._native_ptr(), 2619796661)
        assert(AnimationPlayer._method_has_animation_2619796661 != nil)
        let _method_get_animation_2933122410_name = StringName(from: "get_animation")
        self._method_get_animation_2933122410 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_animation_2933122410_name._native_ptr(), 2933122410)
        assert(AnimationPlayer._method_get_animation_2933122410 != nil)
        let _method_get_animation_list_1139954409_name = StringName(from: "get_animation_list")
        self._method_get_animation_list_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_animation_list_1139954409_name._native_ptr(), 1139954409)
        assert(AnimationPlayer._method_get_animation_list_1139954409 != nil)
        let _method_animation_set_next_3740211285_name = StringName(from: "animation_set_next")
        self._method_animation_set_next_3740211285 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_animation_set_next_3740211285_name._native_ptr(), 3740211285)
        assert(AnimationPlayer._method_animation_set_next_3740211285 != nil)
        let _method_animation_get_next_1965194235_name = StringName(from: "animation_get_next")
        self._method_animation_get_next_1965194235 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_animation_get_next_1965194235_name._native_ptr(), 1965194235)
        assert(AnimationPlayer._method_animation_get_next_1965194235 != nil)
        let _method_set_blend_time_3231131886_name = StringName(from: "set_blend_time")
        self._method_set_blend_time_3231131886 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_blend_time_3231131886_name._native_ptr(), 3231131886)
        assert(AnimationPlayer._method_set_blend_time_3231131886 != nil)
        let _method_get_blend_time_1958752504_name = StringName(from: "get_blend_time")
        self._method_get_blend_time_1958752504 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_blend_time_1958752504_name._native_ptr(), 1958752504)
        assert(AnimationPlayer._method_get_blend_time_1958752504 != nil)
        let _method_set_default_blend_time_373806689_name = StringName(from: "set_default_blend_time")
        self._method_set_default_blend_time_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_default_blend_time_373806689_name._native_ptr(), 373806689)
        assert(AnimationPlayer._method_set_default_blend_time_373806689 != nil)
        let _method_get_default_blend_time_1740695150_name = StringName(from: "get_default_blend_time")
        self._method_get_default_blend_time_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_default_blend_time_1740695150_name._native_ptr(), 1740695150)
        assert(AnimationPlayer._method_get_default_blend_time_1740695150 != nil)
        let _method_play_2221377757_name = StringName(from: "play")
        self._method_play_2221377757 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_play_2221377757_name._native_ptr(), 2221377757)
        assert(AnimationPlayer._method_play_2221377757 != nil)
        let _method_play_backwards_2787282401_name = StringName(from: "play_backwards")
        self._method_play_backwards_2787282401 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_play_backwards_2787282401_name._native_ptr(), 2787282401)
        assert(AnimationPlayer._method_play_backwards_2787282401 != nil)
        let _method_pause_3218959716_name = StringName(from: "pause")
        self._method_pause_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_pause_3218959716_name._native_ptr(), 3218959716)
        assert(AnimationPlayer._method_pause_3218959716 != nil)
        let _method_stop_107499316_name = StringName(from: "stop")
        self._method_stop_107499316 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_stop_107499316_name._native_ptr(), 107499316)
        assert(AnimationPlayer._method_stop_107499316 != nil)
        let _method_is_playing_36873697_name = StringName(from: "is_playing")
        self._method_is_playing_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_playing_36873697_name._native_ptr(), 36873697)
        assert(AnimationPlayer._method_is_playing_36873697 != nil)
        let _method_set_current_animation_83702148_name = StringName(from: "set_current_animation")
        self._method_set_current_animation_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_current_animation_83702148_name._native_ptr(), 83702148)
        assert(AnimationPlayer._method_set_current_animation_83702148 != nil)
        let _method_get_current_animation_201670096_name = StringName(from: "get_current_animation")
        self._method_get_current_animation_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_current_animation_201670096_name._native_ptr(), 201670096)
        assert(AnimationPlayer._method_get_current_animation_201670096 != nil)
        let _method_set_assigned_animation_83702148_name = StringName(from: "set_assigned_animation")
        self._method_set_assigned_animation_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_assigned_animation_83702148_name._native_ptr(), 83702148)
        assert(AnimationPlayer._method_set_assigned_animation_83702148 != nil)
        let _method_get_assigned_animation_201670096_name = StringName(from: "get_assigned_animation")
        self._method_get_assigned_animation_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_assigned_animation_201670096_name._native_ptr(), 201670096)
        assert(AnimationPlayer._method_get_assigned_animation_201670096 != nil)
        let _method_queue_3304788590_name = StringName(from: "queue")
        self._method_queue_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_queue_3304788590_name._native_ptr(), 3304788590)
        assert(AnimationPlayer._method_queue_3304788590 != nil)
        let _method_get_queue_2981934095_name = StringName(from: "get_queue")
        self._method_get_queue_2981934095 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_queue_2981934095_name._native_ptr(), 2981934095)
        assert(AnimationPlayer._method_get_queue_2981934095 != nil)
        let _method_clear_queue_3218959716_name = StringName(from: "clear_queue")
        self._method_clear_queue_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_queue_3218959716_name._native_ptr(), 3218959716)
        assert(AnimationPlayer._method_clear_queue_3218959716 != nil)
        let _method_set_active_2586408642_name = StringName(from: "set_active")
        self._method_set_active_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_active_2586408642_name._native_ptr(), 2586408642)
        assert(AnimationPlayer._method_set_active_2586408642 != nil)
        let _method_is_active_36873697_name = StringName(from: "is_active")
        self._method_is_active_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_active_36873697_name._native_ptr(), 36873697)
        assert(AnimationPlayer._method_is_active_36873697 != nil)
        let _method_set_speed_scale_373806689_name = StringName(from: "set_speed_scale")
        self._method_set_speed_scale_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_speed_scale_373806689_name._native_ptr(), 373806689)
        assert(AnimationPlayer._method_set_speed_scale_373806689 != nil)
        let _method_get_speed_scale_1740695150_name = StringName(from: "get_speed_scale")
        self._method_get_speed_scale_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_speed_scale_1740695150_name._native_ptr(), 1740695150)
        assert(AnimationPlayer._method_get_speed_scale_1740695150 != nil)
        let _method_get_playing_speed_1740695150_name = StringName(from: "get_playing_speed")
        self._method_get_playing_speed_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_playing_speed_1740695150_name._native_ptr(), 1740695150)
        assert(AnimationPlayer._method_get_playing_speed_1740695150 != nil)
        let _method_set_autoplay_83702148_name = StringName(from: "set_autoplay")
        self._method_set_autoplay_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_autoplay_83702148_name._native_ptr(), 83702148)
        assert(AnimationPlayer._method_set_autoplay_83702148 != nil)
        let _method_get_autoplay_201670096_name = StringName(from: "get_autoplay")
        self._method_get_autoplay_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_autoplay_201670096_name._native_ptr(), 201670096)
        assert(AnimationPlayer._method_get_autoplay_201670096 != nil)
        let _method_set_reset_on_save_enabled_2586408642_name = StringName(from: "set_reset_on_save_enabled")
        self._method_set_reset_on_save_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_reset_on_save_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(AnimationPlayer._method_set_reset_on_save_enabled_2586408642 != nil)
        let _method_is_reset_on_save_enabled_36873697_name = StringName(from: "is_reset_on_save_enabled")
        self._method_is_reset_on_save_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_reset_on_save_enabled_36873697_name._native_ptr(), 36873697)
        assert(AnimationPlayer._method_is_reset_on_save_enabled_36873697 != nil)
        let _method_set_root_1348162250_name = StringName(from: "set_root")
        self._method_set_root_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_root_1348162250_name._native_ptr(), 1348162250)
        assert(AnimationPlayer._method_set_root_1348162250 != nil)
        let _method_get_root_4075236667_name = StringName(from: "get_root")
        self._method_get_root_4075236667 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_root_4075236667_name._native_ptr(), 4075236667)
        assert(AnimationPlayer._method_get_root_4075236667 != nil)
        let _method_find_animation_1559484580_name = StringName(from: "find_animation")
        self._method_find_animation_1559484580 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_find_animation_1559484580_name._native_ptr(), 1559484580)
        assert(AnimationPlayer._method_find_animation_1559484580 != nil)
        let _method_find_animation_library_1559484580_name = StringName(from: "find_animation_library")
        self._method_find_animation_library_1559484580 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_find_animation_library_1559484580_name._native_ptr(), 1559484580)
        assert(AnimationPlayer._method_find_animation_library_1559484580 != nil)
        let _method_clear_caches_3218959716_name = StringName(from: "clear_caches")
        self._method_clear_caches_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_caches_3218959716_name._native_ptr(), 3218959716)
        assert(AnimationPlayer._method_clear_caches_3218959716 != nil)
        let _method_set_process_callback_1663839457_name = StringName(from: "set_process_callback")
        self._method_set_process_callback_1663839457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_process_callback_1663839457_name._native_ptr(), 1663839457)
        assert(AnimationPlayer._method_set_process_callback_1663839457 != nil)
        let _method_get_process_callback_4207496604_name = StringName(from: "get_process_callback")
        self._method_get_process_callback_4207496604 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_process_callback_4207496604_name._native_ptr(), 4207496604)
        assert(AnimationPlayer._method_get_process_callback_4207496604 != nil)
        let _method_set_method_call_mode_3413514846_name = StringName(from: "set_method_call_mode")
        self._method_set_method_call_mode_3413514846 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_method_call_mode_3413514846_name._native_ptr(), 3413514846)
        assert(AnimationPlayer._method_set_method_call_mode_3413514846 != nil)
        let _method_get_method_call_mode_3583380054_name = StringName(from: "get_method_call_mode")
        self._method_get_method_call_mode_3583380054 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_method_call_mode_3583380054_name._native_ptr(), 3583380054)
        assert(AnimationPlayer._method_get_method_call_mode_3583380054 != nil)
        let _method_set_audio_max_polyphony_1286410249_name = StringName(from: "set_audio_max_polyphony")
        self._method_set_audio_max_polyphony_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_audio_max_polyphony_1286410249_name._native_ptr(), 1286410249)
        assert(AnimationPlayer._method_set_audio_max_polyphony_1286410249 != nil)
        let _method_get_audio_max_polyphony_3905245786_name = StringName(from: "get_audio_max_polyphony")
        self._method_get_audio_max_polyphony_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_audio_max_polyphony_3905245786_name._native_ptr(), 3905245786)
        assert(AnimationPlayer._method_get_audio_max_polyphony_3905245786 != nil)
        let _method_set_movie_quit_on_finish_enabled_2586408642_name = StringName(from: "set_movie_quit_on_finish_enabled")
        self._method_set_movie_quit_on_finish_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_movie_quit_on_finish_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(AnimationPlayer._method_set_movie_quit_on_finish_enabled_2586408642 != nil)
        let _method_is_movie_quit_on_finish_enabled_36873697_name = StringName(from: "is_movie_quit_on_finish_enabled")
        self._method_is_movie_quit_on_finish_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_movie_quit_on_finish_enabled_36873697_name._native_ptr(), 36873697)
        assert(AnimationPlayer._method_is_movie_quit_on_finish_enabled_36873697 != nil)
        let _method_get_current_animation_position_1740695150_name = StringName(from: "get_current_animation_position")
        self._method_get_current_animation_position_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_current_animation_position_1740695150_name._native_ptr(), 1740695150)
        assert(AnimationPlayer._method_get_current_animation_position_1740695150 != nil)
        let _method_get_current_animation_length_1740695150_name = StringName(from: "get_current_animation_length")
        self._method_get_current_animation_length_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_current_animation_length_1740695150_name._native_ptr(), 1740695150)
        assert(AnimationPlayer._method_get_current_animation_length_1740695150 != nil)
        let _method_seek_2087892650_name = StringName(from: "seek")
        self._method_seek_2087892650 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_seek_2087892650_name._native_ptr(), 2087892650)
        assert(AnimationPlayer._method_seek_2087892650 != nil)
        let _method_advance_373806689_name = StringName(from: "advance")
        self._method_advance_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_advance_373806689_name._native_ptr(), 373806689)
        assert(AnimationPlayer._method_advance_373806689 != nil)
    }

    public func _post_process_key_value(animation: Animation, track: Int64, value: Variant, object: Object, object_idx: Int64) -> Variant {
        withUnsafePointer(to: object_idx) { object_idx_native in
        withUnsafePointer(to: track) { track_native in
        let object_native = object._native_ptr()
        let value_native = value._native_ptr()
        let animation_native = animation._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(animation_native), .init(track_native), .init(value_native), .init(object_native), .init(object_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__post_process_key_value_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
        }
        }
    }
    public func add_animation_library(name: StringName, library: AnimationLibrary) -> Error {
        let library_native = library._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(library_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_animation_library_618909818,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
    }
    public func remove_animation_library(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_animation_library_3304788590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func rename_animation_library(name: StringName, newname: StringName)  {
        let newname_native = newname._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(newname_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_rename_animation_library_3740211285,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func has_animation_library(name: StringName) -> UInt8 {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_animation_library_2619796661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_animation_library(name: StringName) -> AnimationLibrary {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_animation_library_147342321,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AnimationLibrary(from: __resPtr.pointee)
    }
    public func get_animation_library_list() -> [StringName] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_animation_library_list_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [StringName](from: __resPtr.pointee)
    }
    public func has_animation(name: StringName) -> UInt8 {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_animation_2619796661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_animation(name: StringName) -> Animation {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_animation_2933122410,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Animation(from: __resPtr.pointee)
    }
    public func get_animation_list() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_animation_list_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func animation_set_next(anim_from: StringName, anim_to: StringName)  {
        let anim_to_native = anim_to._native_ptr()
        let anim_from_native = anim_from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(anim_from_native), .init(anim_to_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_animation_set_next_3740211285,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func animation_get_next(anim_from: StringName) -> StringName {
        let anim_from_native = anim_from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(anim_from_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_animation_get_next_1965194235,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(from: __resPtr.pointee)
    }
    public func set_blend_time(anim_from: StringName, anim_to: StringName, sec: Float64)  {
        withUnsafePointer(to: sec) { sec_native in
        let anim_to_native = anim_to._native_ptr()
        let anim_from_native = anim_from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(anim_from_native), .init(anim_to_native), .init(sec_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_blend_time_3231131886,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_blend_time(anim_from: StringName, anim_to: StringName) -> Float64 {
        let anim_to_native = anim_to._native_ptr()
        let anim_from_native = anim_from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(anim_from_native), .init(anim_to_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_blend_time_1958752504,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_default_blend_time(sec: Float64)  {
        withUnsafePointer(to: sec) { sec_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sec_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_default_blend_time_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_default_blend_time() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_default_blend_time_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func play(name: StringName, custom_blend: Float64, custom_speed: Float64, from_end: UInt8)  {
        withUnsafePointer(to: from_end) { from_end_native in
        withUnsafePointer(to: custom_speed) { custom_speed_native in
        withUnsafePointer(to: custom_blend) { custom_blend_native in
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(custom_blend_native), .init(custom_speed_native), .init(from_end_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_play_2221377757,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func play_backwards(name: StringName, custom_blend: Float64)  {
        withUnsafePointer(to: custom_blend) { custom_blend_native in
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(custom_blend_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_play_backwards_2787282401,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func pause()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_pause_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func stop(keep_state: UInt8)  {
        withUnsafePointer(to: keep_state) { keep_state_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(keep_state_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_stop_107499316,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
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
    public func set_current_animation(anim: String)  {
        withUnsafePointer(to: anim) { anim_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(anim_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_current_animation_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_current_animation() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_current_animation_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_assigned_animation(anim: String)  {
        withUnsafePointer(to: anim) { anim_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(anim_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_assigned_animation_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_assigned_animation() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_assigned_animation_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func queue(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_queue_3304788590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_queue() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_queue_2981934095,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func clear_queue()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_queue_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_active(active: UInt8)  {
        withUnsafePointer(to: active) { active_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(active_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_active_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_active() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_active_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_speed_scale(speed: Float64)  {
        withUnsafePointer(to: speed) { speed_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(speed_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_speed_scale_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_speed_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_speed_scale_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func get_playing_speed() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_playing_speed_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_autoplay(name: String)  {
        withUnsafePointer(to: name) { name_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_autoplay_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_autoplay() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_autoplay_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_reset_on_save_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_reset_on_save_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_reset_on_save_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_reset_on_save_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_root(path: NodePath)  {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_root_1348162250,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_root() -> NodePath {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_root_4075236667,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(from: __resPtr.pointee)
    }
    public func find_animation(animation: Animation) -> StringName {
        let animation_native = animation._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(animation_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_find_animation_1559484580,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(from: __resPtr.pointee)
    }
    public func find_animation_library(animation: Animation) -> StringName {
        let animation_native = animation._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(animation_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_find_animation_library_1559484580,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(from: __resPtr.pointee)
    }
    public func clear_caches()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_caches_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_process_callback(mode: AnimationPlayer.AnimationProcessCallback)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_process_callback_1663839457,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_process_callback() -> AnimationPlayer.AnimationProcessCallback {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_process_callback_4207496604,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AnimationPlayer.AnimationProcessCallback(from: __resPtr.pointee)
    }
    public func set_method_call_mode(mode: AnimationPlayer.AnimationMethodCallMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_method_call_mode_3413514846,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_method_call_mode() -> AnimationPlayer.AnimationMethodCallMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_method_call_mode_3583380054,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AnimationPlayer.AnimationMethodCallMode(from: __resPtr.pointee)
    }
    public func set_audio_max_polyphony(max_polyphony: Int64)  {
        withUnsafePointer(to: max_polyphony) { max_polyphony_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_polyphony_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_audio_max_polyphony_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_audio_max_polyphony() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_audio_max_polyphony_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_movie_quit_on_finish_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_movie_quit_on_finish_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_movie_quit_on_finish_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_movie_quit_on_finish_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_current_animation_position() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_current_animation_position_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func get_current_animation_length() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_current_animation_length_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func seek(seconds: Float64, update: UInt8)  {
        withUnsafePointer(to: update) { update_native in
        withUnsafePointer(to: seconds) { seconds_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(seconds_native), .init(update_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_seek_2087892650,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func advance(delta: Float64)  {
        withUnsafePointer(to: delta) { delta_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(delta_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_advance_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}