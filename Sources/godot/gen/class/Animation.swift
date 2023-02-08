import godot_native

fileprivate var __godot_name_Animation: StringName! = nil

/// Contains data used to animate everything in the engine.
/// 
/// An Animation resource contains data used to animate everything in the engine. Animations are divided into tracks, and each track must be linked to a node. The state of that node can be changed through time, by adding timed keys (events) to the track.
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// # This creates an animation that makes the node "Enemy" move to the right by
///  
/// # 100 pixels in 0.5 seconds.
///  
/// var animation = Animation.new()
///  
/// var track_index = animation.add_track(Animation.TYPE_VALUE)
///  
/// animation.track_set_path(track_index, "Enemy:position:x")
///  
/// animation.track_insert_key(track_index, 0.0, 0)
///  
/// animation.track_insert_key(track_index, 0.5, 100)
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// // This creates an animation that makes the node "Enemy" move to the right by
///  
/// // 100 pixels in 0.5 seconds.
///  
/// var animation = new Animation();
///  
/// int trackIndex = animation.AddTrack(Animation.TrackType.Value);
///  
/// animation.TrackSetPath(trackIndex, "Enemy:position:x");
///  
/// animation.TrackInsertKey(trackIndex, 0.0f, 0);
///  
/// animation.TrackInsertKey(trackIndex, 0.5f, 100);
///  
/// [/csharp]
///  
/// [/codeblocks]
///  
/// Animations are just data containers, and must be added to nodes such as an [AnimationPlayer] to be played back. Animation tracks have different types, each with its own set of dedicated methods. Check [enum TrackType] to see available types.
///  
/// [b]Note:[/b] For 3D position/rotation/scale, using the dedicated [constant TYPE_POSITION_3D], [constant TYPE_ROTATION_3D] and [constant TYPE_SCALE_3D] track types instead of [constant TYPE_VALUE] is recommended for performance reasons.
open class Animation : Resource {

    public enum TrackType : Int32 {
        case TYPE_VALUE = 0
        case TYPE_POSITION_3D = 1
        case TYPE_ROTATION_3D = 2
        case TYPE_SCALE_3D = 3
        case TYPE_BLEND_SHAPE = 4
        case TYPE_METHOD = 5
        case TYPE_BEZIER = 6
        case TYPE_AUDIO = 7
        case TYPE_ANIMATION = 8
    }
    public enum InterpolationType : Int32 {
        case INTERPOLATION_NEAREST = 0
        case INTERPOLATION_LINEAR = 1
        case INTERPOLATION_CUBIC = 2
        case INTERPOLATION_LINEAR_ANGLE = 3
        case INTERPOLATION_CUBIC_ANGLE = 4
    }
    public enum UpdateMode : Int32 {
        case UPDATE_CONTINUOUS = 0
        case UPDATE_DISCRETE = 1
        case UPDATE_CAPTURE = 2
    }
    public enum LoopMode : Int32 {
        case LOOP_NONE = 0
        case LOOP_LINEAR = 1
        case LOOP_PINGPONG = 2
    }
    public enum LoopedFlag : Int32 {
        case LOOPED_FLAG_NONE = 0
        case LOOPED_FLAG_END = 1
        case LOOPED_FLAG_START = 2
    }
    public enum FindMode : Int32 {
        case FIND_MODE_NEAREST = 0
        case FIND_MODE_APPROX = 1
        case FIND_MODE_EXACT = 2
    }

    public override class var __godot_name: StringName { __godot_name_Animation }

    static var _method_add_track_2393815928: GDExtensionMethodBindPtr! = nil
    static var _method_remove_track_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_track_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_track_get_type_3445944217: GDExtensionMethodBindPtr! = nil
    static var _method_track_get_path_408788394: GDExtensionMethodBindPtr! = nil
    static var _method_track_set_path_2761262315: GDExtensionMethodBindPtr! = nil
    static var _method_find_track_245376003: GDExtensionMethodBindPtr! = nil
    static var _method_track_move_up_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_track_move_down_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_track_move_to_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_track_swap_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_track_set_imported_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_track_is_imported_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_track_set_enabled_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_track_is_enabled_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_position_track_insert_key_2540608232: GDExtensionMethodBindPtr! = nil
    static var _method_rotation_track_insert_key_4165004800: GDExtensionMethodBindPtr! = nil
    static var _method_scale_track_insert_key_2540608232: GDExtensionMethodBindPtr! = nil
    static var _method_blend_shape_track_insert_key_1534913637: GDExtensionMethodBindPtr! = nil
    static var _method_track_insert_key_1985425300: GDExtensionMethodBindPtr! = nil
    static var _method_track_remove_key_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_track_remove_key_at_time_1602489585: GDExtensionMethodBindPtr! = nil
    static var _method_track_set_key_value_2060538656: GDExtensionMethodBindPtr! = nil
    static var _method_track_set_key_transition_3506521499: GDExtensionMethodBindPtr! = nil
    static var _method_track_set_key_time_3506521499: GDExtensionMethodBindPtr! = nil
    static var _method_track_get_key_transition_3085491603: GDExtensionMethodBindPtr! = nil
    static var _method_track_get_key_count_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_track_get_key_value_678354945: GDExtensionMethodBindPtr! = nil
    static var _method_track_get_key_time_3085491603: GDExtensionMethodBindPtr! = nil
    static var _method_track_find_key_3898229885: GDExtensionMethodBindPtr! = nil
    static var _method_track_set_interpolation_type_4112932513: GDExtensionMethodBindPtr! = nil
    static var _method_track_get_interpolation_type_1530756894: GDExtensionMethodBindPtr! = nil
    static var _method_track_set_interpolation_loop_wrap_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_track_get_interpolation_loop_wrap_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_track_is_compressed_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_value_track_set_update_mode_2854058312: GDExtensionMethodBindPtr! = nil
    static var _method_value_track_get_update_mode_1440326473: GDExtensionMethodBindPtr! = nil
    static var _method_value_track_interpolate_491147702: GDExtensionMethodBindPtr! = nil
    static var _method_method_track_get_name_351665558: GDExtensionMethodBindPtr! = nil
    static var _method_method_track_get_params_2345056839: GDExtensionMethodBindPtr! = nil
    static var _method_bezier_track_insert_key_1057544502: GDExtensionMethodBindPtr! = nil
    static var _method_bezier_track_set_key_value_3506521499: GDExtensionMethodBindPtr! = nil
    static var _method_bezier_track_set_key_in_handle_1028302688: GDExtensionMethodBindPtr! = nil
    static var _method_bezier_track_set_key_out_handle_1028302688: GDExtensionMethodBindPtr! = nil
    static var _method_bezier_track_get_key_value_3085491603: GDExtensionMethodBindPtr! = nil
    static var _method_bezier_track_get_key_in_handle_3016396712: GDExtensionMethodBindPtr! = nil
    static var _method_bezier_track_get_key_out_handle_3016396712: GDExtensionMethodBindPtr! = nil
    static var _method_bezier_track_interpolate_1900462983: GDExtensionMethodBindPtr! = nil
    static var _method_audio_track_insert_key_3489962123: GDExtensionMethodBindPtr! = nil
    static var _method_audio_track_set_key_stream_3886397084: GDExtensionMethodBindPtr! = nil
    static var _method_audio_track_set_key_start_offset_3506521499: GDExtensionMethodBindPtr! = nil
    static var _method_audio_track_set_key_end_offset_3506521499: GDExtensionMethodBindPtr! = nil
    static var _method_audio_track_get_key_stream_635277205: GDExtensionMethodBindPtr! = nil
    static var _method_audio_track_get_key_start_offset_3085491603: GDExtensionMethodBindPtr! = nil
    static var _method_audio_track_get_key_end_offset_3085491603: GDExtensionMethodBindPtr! = nil
    static var _method_audio_track_set_use_blend_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_audio_track_is_use_blend_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_animation_track_insert_key_158676774: GDExtensionMethodBindPtr! = nil
    static var _method_animation_track_set_key_animation_117615382: GDExtensionMethodBindPtr! = nil
    static var _method_animation_track_get_key_animation_351665558: GDExtensionMethodBindPtr! = nil
    static var _method_set_length_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_length_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_loop_mode_3155355575: GDExtensionMethodBindPtr! = nil
    static var _method_get_loop_mode_1988889481: GDExtensionMethodBindPtr! = nil
    static var _method_set_step_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_step_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_clear_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_copy_track_148001024: GDExtensionMethodBindPtr! = nil
    static var _method_compress_1804059263: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_Animation = StringName(from: "Animation")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_add_track_2393815928_name = StringName(from: "add_track")
        self._method_add_track_2393815928 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_add_track_2393815928_name._native_ptr(), 2393815928)
        assert(Animation._method_add_track_2393815928 != nil)
        let _method_remove_track_1286410249_name = StringName(from: "remove_track")
        self._method_remove_track_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_remove_track_1286410249_name._native_ptr(), 1286410249)
        assert(Animation._method_remove_track_1286410249 != nil)
        let _method_get_track_count_3905245786_name = StringName(from: "get_track_count")
        self._method_get_track_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_get_track_count_3905245786_name._native_ptr(), 3905245786)
        assert(Animation._method_get_track_count_3905245786 != nil)
        let _method_track_get_type_3445944217_name = StringName(from: "track_get_type")
        self._method_track_get_type_3445944217 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_track_get_type_3445944217_name._native_ptr(), 3445944217)
        assert(Animation._method_track_get_type_3445944217 != nil)
        let _method_track_get_path_408788394_name = StringName(from: "track_get_path")
        self._method_track_get_path_408788394 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_track_get_path_408788394_name._native_ptr(), 408788394)
        assert(Animation._method_track_get_path_408788394 != nil)
        let _method_track_set_path_2761262315_name = StringName(from: "track_set_path")
        self._method_track_set_path_2761262315 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_track_set_path_2761262315_name._native_ptr(), 2761262315)
        assert(Animation._method_track_set_path_2761262315 != nil)
        let _method_find_track_245376003_name = StringName(from: "find_track")
        self._method_find_track_245376003 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_find_track_245376003_name._native_ptr(), 245376003)
        assert(Animation._method_find_track_245376003 != nil)
        let _method_track_move_up_1286410249_name = StringName(from: "track_move_up")
        self._method_track_move_up_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_track_move_up_1286410249_name._native_ptr(), 1286410249)
        assert(Animation._method_track_move_up_1286410249 != nil)
        let _method_track_move_down_1286410249_name = StringName(from: "track_move_down")
        self._method_track_move_down_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_track_move_down_1286410249_name._native_ptr(), 1286410249)
        assert(Animation._method_track_move_down_1286410249 != nil)
        let _method_track_move_to_3937882851_name = StringName(from: "track_move_to")
        self._method_track_move_to_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_track_move_to_3937882851_name._native_ptr(), 3937882851)
        assert(Animation._method_track_move_to_3937882851 != nil)
        let _method_track_swap_3937882851_name = StringName(from: "track_swap")
        self._method_track_swap_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_track_swap_3937882851_name._native_ptr(), 3937882851)
        assert(Animation._method_track_swap_3937882851 != nil)
        let _method_track_set_imported_300928843_name = StringName(from: "track_set_imported")
        self._method_track_set_imported_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_track_set_imported_300928843_name._native_ptr(), 300928843)
        assert(Animation._method_track_set_imported_300928843 != nil)
        let _method_track_is_imported_1116898809_name = StringName(from: "track_is_imported")
        self._method_track_is_imported_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_track_is_imported_1116898809_name._native_ptr(), 1116898809)
        assert(Animation._method_track_is_imported_1116898809 != nil)
        let _method_track_set_enabled_300928843_name = StringName(from: "track_set_enabled")
        self._method_track_set_enabled_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_track_set_enabled_300928843_name._native_ptr(), 300928843)
        assert(Animation._method_track_set_enabled_300928843 != nil)
        let _method_track_is_enabled_1116898809_name = StringName(from: "track_is_enabled")
        self._method_track_is_enabled_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_track_is_enabled_1116898809_name._native_ptr(), 1116898809)
        assert(Animation._method_track_is_enabled_1116898809 != nil)
        let _method_position_track_insert_key_2540608232_name = StringName(from: "position_track_insert_key")
        self._method_position_track_insert_key_2540608232 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_position_track_insert_key_2540608232_name._native_ptr(), 2540608232)
        assert(Animation._method_position_track_insert_key_2540608232 != nil)
        let _method_rotation_track_insert_key_4165004800_name = StringName(from: "rotation_track_insert_key")
        self._method_rotation_track_insert_key_4165004800 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_rotation_track_insert_key_4165004800_name._native_ptr(), 4165004800)
        assert(Animation._method_rotation_track_insert_key_4165004800 != nil)
        let _method_scale_track_insert_key_2540608232_name = StringName(from: "scale_track_insert_key")
        self._method_scale_track_insert_key_2540608232 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_scale_track_insert_key_2540608232_name._native_ptr(), 2540608232)
        assert(Animation._method_scale_track_insert_key_2540608232 != nil)
        let _method_blend_shape_track_insert_key_1534913637_name = StringName(from: "blend_shape_track_insert_key")
        self._method_blend_shape_track_insert_key_1534913637 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_blend_shape_track_insert_key_1534913637_name._native_ptr(), 1534913637)
        assert(Animation._method_blend_shape_track_insert_key_1534913637 != nil)
        let _method_track_insert_key_1985425300_name = StringName(from: "track_insert_key")
        self._method_track_insert_key_1985425300 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_track_insert_key_1985425300_name._native_ptr(), 1985425300)
        assert(Animation._method_track_insert_key_1985425300 != nil)
        let _method_track_remove_key_3937882851_name = StringName(from: "track_remove_key")
        self._method_track_remove_key_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_track_remove_key_3937882851_name._native_ptr(), 3937882851)
        assert(Animation._method_track_remove_key_3937882851 != nil)
        let _method_track_remove_key_at_time_1602489585_name = StringName(from: "track_remove_key_at_time")
        self._method_track_remove_key_at_time_1602489585 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_track_remove_key_at_time_1602489585_name._native_ptr(), 1602489585)
        assert(Animation._method_track_remove_key_at_time_1602489585 != nil)
        let _method_track_set_key_value_2060538656_name = StringName(from: "track_set_key_value")
        self._method_track_set_key_value_2060538656 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_track_set_key_value_2060538656_name._native_ptr(), 2060538656)
        assert(Animation._method_track_set_key_value_2060538656 != nil)
        let _method_track_set_key_transition_3506521499_name = StringName(from: "track_set_key_transition")
        self._method_track_set_key_transition_3506521499 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_track_set_key_transition_3506521499_name._native_ptr(), 3506521499)
        assert(Animation._method_track_set_key_transition_3506521499 != nil)
        let _method_track_set_key_time_3506521499_name = StringName(from: "track_set_key_time")
        self._method_track_set_key_time_3506521499 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_track_set_key_time_3506521499_name._native_ptr(), 3506521499)
        assert(Animation._method_track_set_key_time_3506521499 != nil)
        let _method_track_get_key_transition_3085491603_name = StringName(from: "track_get_key_transition")
        self._method_track_get_key_transition_3085491603 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_track_get_key_transition_3085491603_name._native_ptr(), 3085491603)
        assert(Animation._method_track_get_key_transition_3085491603 != nil)
        let _method_track_get_key_count_923996154_name = StringName(from: "track_get_key_count")
        self._method_track_get_key_count_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_track_get_key_count_923996154_name._native_ptr(), 923996154)
        assert(Animation._method_track_get_key_count_923996154 != nil)
        let _method_track_get_key_value_678354945_name = StringName(from: "track_get_key_value")
        self._method_track_get_key_value_678354945 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_track_get_key_value_678354945_name._native_ptr(), 678354945)
        assert(Animation._method_track_get_key_value_678354945 != nil)
        let _method_track_get_key_time_3085491603_name = StringName(from: "track_get_key_time")
        self._method_track_get_key_time_3085491603 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_track_get_key_time_3085491603_name._native_ptr(), 3085491603)
        assert(Animation._method_track_get_key_time_3085491603 != nil)
        let _method_track_find_key_3898229885_name = StringName(from: "track_find_key")
        self._method_track_find_key_3898229885 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_track_find_key_3898229885_name._native_ptr(), 3898229885)
        assert(Animation._method_track_find_key_3898229885 != nil)
        let _method_track_set_interpolation_type_4112932513_name = StringName(from: "track_set_interpolation_type")
        self._method_track_set_interpolation_type_4112932513 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_track_set_interpolation_type_4112932513_name._native_ptr(), 4112932513)
        assert(Animation._method_track_set_interpolation_type_4112932513 != nil)
        let _method_track_get_interpolation_type_1530756894_name = StringName(from: "track_get_interpolation_type")
        self._method_track_get_interpolation_type_1530756894 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_track_get_interpolation_type_1530756894_name._native_ptr(), 1530756894)
        assert(Animation._method_track_get_interpolation_type_1530756894 != nil)
        let _method_track_set_interpolation_loop_wrap_300928843_name = StringName(from: "track_set_interpolation_loop_wrap")
        self._method_track_set_interpolation_loop_wrap_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_track_set_interpolation_loop_wrap_300928843_name._native_ptr(), 300928843)
        assert(Animation._method_track_set_interpolation_loop_wrap_300928843 != nil)
        let _method_track_get_interpolation_loop_wrap_1116898809_name = StringName(from: "track_get_interpolation_loop_wrap")
        self._method_track_get_interpolation_loop_wrap_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_track_get_interpolation_loop_wrap_1116898809_name._native_ptr(), 1116898809)
        assert(Animation._method_track_get_interpolation_loop_wrap_1116898809 != nil)
        let _method_track_is_compressed_1116898809_name = StringName(from: "track_is_compressed")
        self._method_track_is_compressed_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_track_is_compressed_1116898809_name._native_ptr(), 1116898809)
        assert(Animation._method_track_is_compressed_1116898809 != nil)
        let _method_value_track_set_update_mode_2854058312_name = StringName(from: "value_track_set_update_mode")
        self._method_value_track_set_update_mode_2854058312 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_value_track_set_update_mode_2854058312_name._native_ptr(), 2854058312)
        assert(Animation._method_value_track_set_update_mode_2854058312 != nil)
        let _method_value_track_get_update_mode_1440326473_name = StringName(from: "value_track_get_update_mode")
        self._method_value_track_get_update_mode_1440326473 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_value_track_get_update_mode_1440326473_name._native_ptr(), 1440326473)
        assert(Animation._method_value_track_get_update_mode_1440326473 != nil)
        let _method_value_track_interpolate_491147702_name = StringName(from: "value_track_interpolate")
        self._method_value_track_interpolate_491147702 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_value_track_interpolate_491147702_name._native_ptr(), 491147702)
        assert(Animation._method_value_track_interpolate_491147702 != nil)
        let _method_method_track_get_name_351665558_name = StringName(from: "method_track_get_name")
        self._method_method_track_get_name_351665558 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_method_track_get_name_351665558_name._native_ptr(), 351665558)
        assert(Animation._method_method_track_get_name_351665558 != nil)
        let _method_method_track_get_params_2345056839_name = StringName(from: "method_track_get_params")
        self._method_method_track_get_params_2345056839 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_method_track_get_params_2345056839_name._native_ptr(), 2345056839)
        assert(Animation._method_method_track_get_params_2345056839 != nil)
        let _method_bezier_track_insert_key_1057544502_name = StringName(from: "bezier_track_insert_key")
        self._method_bezier_track_insert_key_1057544502 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_bezier_track_insert_key_1057544502_name._native_ptr(), 1057544502)
        assert(Animation._method_bezier_track_insert_key_1057544502 != nil)
        let _method_bezier_track_set_key_value_3506521499_name = StringName(from: "bezier_track_set_key_value")
        self._method_bezier_track_set_key_value_3506521499 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_bezier_track_set_key_value_3506521499_name._native_ptr(), 3506521499)
        assert(Animation._method_bezier_track_set_key_value_3506521499 != nil)
        let _method_bezier_track_set_key_in_handle_1028302688_name = StringName(from: "bezier_track_set_key_in_handle")
        self._method_bezier_track_set_key_in_handle_1028302688 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_bezier_track_set_key_in_handle_1028302688_name._native_ptr(), 1028302688)
        assert(Animation._method_bezier_track_set_key_in_handle_1028302688 != nil)
        let _method_bezier_track_set_key_out_handle_1028302688_name = StringName(from: "bezier_track_set_key_out_handle")
        self._method_bezier_track_set_key_out_handle_1028302688 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_bezier_track_set_key_out_handle_1028302688_name._native_ptr(), 1028302688)
        assert(Animation._method_bezier_track_set_key_out_handle_1028302688 != nil)
        let _method_bezier_track_get_key_value_3085491603_name = StringName(from: "bezier_track_get_key_value")
        self._method_bezier_track_get_key_value_3085491603 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_bezier_track_get_key_value_3085491603_name._native_ptr(), 3085491603)
        assert(Animation._method_bezier_track_get_key_value_3085491603 != nil)
        let _method_bezier_track_get_key_in_handle_3016396712_name = StringName(from: "bezier_track_get_key_in_handle")
        self._method_bezier_track_get_key_in_handle_3016396712 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_bezier_track_get_key_in_handle_3016396712_name._native_ptr(), 3016396712)
        assert(Animation._method_bezier_track_get_key_in_handle_3016396712 != nil)
        let _method_bezier_track_get_key_out_handle_3016396712_name = StringName(from: "bezier_track_get_key_out_handle")
        self._method_bezier_track_get_key_out_handle_3016396712 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_bezier_track_get_key_out_handle_3016396712_name._native_ptr(), 3016396712)
        assert(Animation._method_bezier_track_get_key_out_handle_3016396712 != nil)
        let _method_bezier_track_interpolate_1900462983_name = StringName(from: "bezier_track_interpolate")
        self._method_bezier_track_interpolate_1900462983 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_bezier_track_interpolate_1900462983_name._native_ptr(), 1900462983)
        assert(Animation._method_bezier_track_interpolate_1900462983 != nil)
        let _method_audio_track_insert_key_3489962123_name = StringName(from: "audio_track_insert_key")
        self._method_audio_track_insert_key_3489962123 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_audio_track_insert_key_3489962123_name._native_ptr(), 3489962123)
        assert(Animation._method_audio_track_insert_key_3489962123 != nil)
        let _method_audio_track_set_key_stream_3886397084_name = StringName(from: "audio_track_set_key_stream")
        self._method_audio_track_set_key_stream_3886397084 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_audio_track_set_key_stream_3886397084_name._native_ptr(), 3886397084)
        assert(Animation._method_audio_track_set_key_stream_3886397084 != nil)
        let _method_audio_track_set_key_start_offset_3506521499_name = StringName(from: "audio_track_set_key_start_offset")
        self._method_audio_track_set_key_start_offset_3506521499 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_audio_track_set_key_start_offset_3506521499_name._native_ptr(), 3506521499)
        assert(Animation._method_audio_track_set_key_start_offset_3506521499 != nil)
        let _method_audio_track_set_key_end_offset_3506521499_name = StringName(from: "audio_track_set_key_end_offset")
        self._method_audio_track_set_key_end_offset_3506521499 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_audio_track_set_key_end_offset_3506521499_name._native_ptr(), 3506521499)
        assert(Animation._method_audio_track_set_key_end_offset_3506521499 != nil)
        let _method_audio_track_get_key_stream_635277205_name = StringName(from: "audio_track_get_key_stream")
        self._method_audio_track_get_key_stream_635277205 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_audio_track_get_key_stream_635277205_name._native_ptr(), 635277205)
        assert(Animation._method_audio_track_get_key_stream_635277205 != nil)
        let _method_audio_track_get_key_start_offset_3085491603_name = StringName(from: "audio_track_get_key_start_offset")
        self._method_audio_track_get_key_start_offset_3085491603 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_audio_track_get_key_start_offset_3085491603_name._native_ptr(), 3085491603)
        assert(Animation._method_audio_track_get_key_start_offset_3085491603 != nil)
        let _method_audio_track_get_key_end_offset_3085491603_name = StringName(from: "audio_track_get_key_end_offset")
        self._method_audio_track_get_key_end_offset_3085491603 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_audio_track_get_key_end_offset_3085491603_name._native_ptr(), 3085491603)
        assert(Animation._method_audio_track_get_key_end_offset_3085491603 != nil)
        let _method_audio_track_set_use_blend_300928843_name = StringName(from: "audio_track_set_use_blend")
        self._method_audio_track_set_use_blend_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_audio_track_set_use_blend_300928843_name._native_ptr(), 300928843)
        assert(Animation._method_audio_track_set_use_blend_300928843 != nil)
        let _method_audio_track_is_use_blend_1116898809_name = StringName(from: "audio_track_is_use_blend")
        self._method_audio_track_is_use_blend_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_audio_track_is_use_blend_1116898809_name._native_ptr(), 1116898809)
        assert(Animation._method_audio_track_is_use_blend_1116898809 != nil)
        let _method_animation_track_insert_key_158676774_name = StringName(from: "animation_track_insert_key")
        self._method_animation_track_insert_key_158676774 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_animation_track_insert_key_158676774_name._native_ptr(), 158676774)
        assert(Animation._method_animation_track_insert_key_158676774 != nil)
        let _method_animation_track_set_key_animation_117615382_name = StringName(from: "animation_track_set_key_animation")
        self._method_animation_track_set_key_animation_117615382 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_animation_track_set_key_animation_117615382_name._native_ptr(), 117615382)
        assert(Animation._method_animation_track_set_key_animation_117615382 != nil)
        let _method_animation_track_get_key_animation_351665558_name = StringName(from: "animation_track_get_key_animation")
        self._method_animation_track_get_key_animation_351665558 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_animation_track_get_key_animation_351665558_name._native_ptr(), 351665558)
        assert(Animation._method_animation_track_get_key_animation_351665558 != nil)
        let _method_set_length_373806689_name = StringName(from: "set_length")
        self._method_set_length_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_set_length_373806689_name._native_ptr(), 373806689)
        assert(Animation._method_set_length_373806689 != nil)
        let _method_get_length_1740695150_name = StringName(from: "get_length")
        self._method_get_length_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_get_length_1740695150_name._native_ptr(), 1740695150)
        assert(Animation._method_get_length_1740695150 != nil)
        let _method_set_loop_mode_3155355575_name = StringName(from: "set_loop_mode")
        self._method_set_loop_mode_3155355575 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_set_loop_mode_3155355575_name._native_ptr(), 3155355575)
        assert(Animation._method_set_loop_mode_3155355575 != nil)
        let _method_get_loop_mode_1988889481_name = StringName(from: "get_loop_mode")
        self._method_get_loop_mode_1988889481 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_get_loop_mode_1988889481_name._native_ptr(), 1988889481)
        assert(Animation._method_get_loop_mode_1988889481 != nil)
        let _method_set_step_373806689_name = StringName(from: "set_step")
        self._method_set_step_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_set_step_373806689_name._native_ptr(), 373806689)
        assert(Animation._method_set_step_373806689 != nil)
        let _method_get_step_1740695150_name = StringName(from: "get_step")
        self._method_get_step_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_get_step_1740695150_name._native_ptr(), 1740695150)
        assert(Animation._method_get_step_1740695150 != nil)
        let _method_clear_3218959716_name = StringName(from: "clear")
        self._method_clear_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_clear_3218959716_name._native_ptr(), 3218959716)
        assert(Animation._method_clear_3218959716 != nil)
        let _method_copy_track_148001024_name = StringName(from: "copy_track")
        self._method_copy_track_148001024 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_copy_track_148001024_name._native_ptr(), 148001024)
        assert(Animation._method_copy_track_148001024 != nil)
        let _method_compress_1804059263_name = StringName(from: "compress")
        self._method_compress_1804059263 = self.interface.pointee.classdb_get_method_bind(__godot_name_Animation._native_ptr(), _method_compress_1804059263_name._native_ptr(), 1804059263)
        assert(Animation._method_compress_1804059263 != nil)
    }

    public func add_track(`type`: Animation.TrackType, at_position: Int64) -> Int64 {
        withUnsafePointer(to: at_position) { at_position_native in
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native), .init(at_position_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_track_2393815928,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
        }
    }
    public func remove_track(track_idx: Int64)  {
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_track_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_track_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_track_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func track_get_type(track_idx: Int64) -> Animation.TrackType {
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_track_get_type_3445944217,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Animation.TrackType(godot: __resPtr.pointee)
        }
    }
    public func track_get_path(track_idx: Int64) -> NodePath {
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_track_get_path_408788394,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(godot: __resPtr.pointee)
        }
    }
    public func track_set_path(track_idx: Int64, path: NodePath)  {
        withUnsafePointer(to: track_idx) { track_idx_native in
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_track_set_path_2761262315,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func find_track(path: NodePath, `type`: Animation.TrackType) -> Int64 {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_find_track_245376003,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func track_move_up(track_idx: Int64)  {
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_track_move_up_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func track_move_down(track_idx: Int64)  {
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_track_move_down_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func track_move_to(track_idx: Int64, to_idx: Int64)  {
        withUnsafePointer(to: to_idx) { to_idx_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(to_idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_track_move_to_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func track_swap(track_idx: Int64, with_idx: Int64)  {
        withUnsafePointer(to: with_idx) { with_idx_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(with_idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_track_swap_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func track_set_imported(track_idx: Int64, imported: UInt8)  {
        withUnsafePointer(to: imported) { imported_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(imported_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_track_set_imported_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func track_is_imported(track_idx: Int64) -> UInt8 {
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_track_is_imported_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func track_set_enabled(track_idx: Int64, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_track_set_enabled_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func track_is_enabled(track_idx: Int64) -> UInt8 {
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_track_is_enabled_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func position_track_insert_key(track_idx: Int64, time: Float64, position: Vector3) -> Int64 {
        withUnsafePointer(to: time) { time_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(time_native), .init(position_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_position_track_insert_key_2540608232,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
        }
    }
    public func rotation_track_insert_key(track_idx: Int64, time: Float64, rotation: Quaternion) -> Int64 {
        withUnsafePointer(to: time) { time_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let rotation_native = rotation._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(time_native), .init(rotation_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_rotation_track_insert_key_4165004800,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
        }
    }
    public func scale_track_insert_key(track_idx: Int64, time: Float64, scale: Vector3) -> Int64 {
        withUnsafePointer(to: time) { time_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let scale_native = scale._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(time_native), .init(scale_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_scale_track_insert_key_2540608232,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
        }
    }
    public func blend_shape_track_insert_key(track_idx: Int64, time: Float64, amount: Float64) -> Int64 {
        withUnsafePointer(to: amount) { amount_native in
        withUnsafePointer(to: time) { time_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(time_native), .init(amount_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_blend_shape_track_insert_key_1534913637,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
        }
        }
    }
    public func track_insert_key(track_idx: Int64, time: Float64, key: Variant, transition: Float64) -> Int64 {
        withUnsafePointer(to: transition) { transition_native in
        withUnsafePointer(to: time) { time_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let key_native = key._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(time_native), .init(key_native), .init(transition_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_track_insert_key_1985425300,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
        }
        }
    }
    public func track_remove_key(track_idx: Int64, key_idx: Int64)  {
        withUnsafePointer(to: key_idx) { key_idx_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(key_idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_track_remove_key_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func track_remove_key_at_time(track_idx: Int64, time: Float64)  {
        withUnsafePointer(to: time) { time_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(time_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_track_remove_key_at_time_1602489585,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func track_set_key_value(track_idx: Int64, key: Int64, value: Variant)  {
        withUnsafePointer(to: key) { key_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let value_native = value._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(key_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_track_set_key_value_2060538656,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func track_set_key_transition(track_idx: Int64, key_idx: Int64, transition: Float64)  {
        withUnsafePointer(to: transition) { transition_native in
        withUnsafePointer(to: key_idx) { key_idx_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(key_idx_native), .init(transition_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_track_set_key_transition_3506521499,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func track_set_key_time(track_idx: Int64, key_idx: Int64, time: Float64)  {
        withUnsafePointer(to: time) { time_native in
        withUnsafePointer(to: key_idx) { key_idx_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(key_idx_native), .init(time_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_track_set_key_time_3506521499,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func track_get_key_transition(track_idx: Int64, key_idx: Int64) -> Float64 {
        withUnsafePointer(to: key_idx) { key_idx_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(key_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_track_get_key_transition_3085491603,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
        }
    }
    public func track_get_key_count(track_idx: Int64) -> Int64 {
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_track_get_key_count_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func track_get_key_value(track_idx: Int64, key_idx: Int64) -> Variant {
        withUnsafePointer(to: key_idx) { key_idx_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(key_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_track_get_key_value_678354945,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
        }
        }
    }
    public func track_get_key_time(track_idx: Int64, key_idx: Int64) -> Float64 {
        withUnsafePointer(to: key_idx) { key_idx_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(key_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_track_get_key_time_3085491603,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
        }
    }
    public func track_find_key(track_idx: Int64, time: Float64, find_mode: Animation.FindMode) -> Int64 {
        withUnsafePointer(to: time) { time_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        withUnsafePointer(to: find_mode.rawValue) { find_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(time_native), .init(find_mode_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_track_find_key_3898229885,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
        }
        }
    }
    public func track_set_interpolation_type(track_idx: Int64, interpolation: Animation.InterpolationType)  {
        withUnsafePointer(to: track_idx) { track_idx_native in
        withUnsafePointer(to: interpolation.rawValue) { interpolation_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(interpolation_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_track_set_interpolation_type_4112932513,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func track_get_interpolation_type(track_idx: Int64) -> Animation.InterpolationType {
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_track_get_interpolation_type_1530756894,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Animation.InterpolationType(godot: __resPtr.pointee)
        }
    }
    public func track_set_interpolation_loop_wrap(track_idx: Int64, interpolation: UInt8)  {
        withUnsafePointer(to: interpolation) { interpolation_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(interpolation_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_track_set_interpolation_loop_wrap_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func track_get_interpolation_loop_wrap(track_idx: Int64) -> UInt8 {
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_track_get_interpolation_loop_wrap_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func track_is_compressed(track_idx: Int64) -> UInt8 {
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_track_is_compressed_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func value_track_set_update_mode(track_idx: Int64, mode: Animation.UpdateMode)  {
        withUnsafePointer(to: track_idx) { track_idx_native in
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_value_track_set_update_mode_2854058312,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func value_track_get_update_mode(track_idx: Int64) -> Animation.UpdateMode {
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_value_track_get_update_mode_1440326473,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Animation.UpdateMode(godot: __resPtr.pointee)
        }
    }
    public func value_track_interpolate(track_idx: Int64, time_sec: Float64) -> Variant {
        withUnsafePointer(to: time_sec) { time_sec_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(time_sec_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_value_track_interpolate_491147702,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
        }
        }
    }
    public func method_track_get_name(track_idx: Int64, key_idx: Int64) -> StringName {
        withUnsafePointer(to: key_idx) { key_idx_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(key_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_method_track_get_name_351665558,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
        }
        }
    }
    public func method_track_get_params(track_idx: Int64, key_idx: Int64) -> Array {
        withUnsafePointer(to: key_idx) { key_idx_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(key_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_method_track_get_params_2345056839,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(godot: __resPtr.pointee)
        }
        }
    }
    public func bezier_track_insert_key(track_idx: Int64, time: Float64, value: Float64, in_handle: Vector2, out_handle: Vector2) -> Int64 {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: time) { time_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let out_handle_native = out_handle._native_ptr()
        let in_handle_native = in_handle._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(time_native), .init(value_native), .init(in_handle_native), .init(out_handle_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_bezier_track_insert_key_1057544502,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
        }
        }
    }
    public func bezier_track_set_key_value(track_idx: Int64, key_idx: Int64, value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: key_idx) { key_idx_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(key_idx_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_bezier_track_set_key_value_3506521499,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func bezier_track_set_key_in_handle(track_idx: Int64, key_idx: Int64, in_handle: Vector2, balanced_value_time_ratio: Float64)  {
        withUnsafePointer(to: balanced_value_time_ratio) { balanced_value_time_ratio_native in
        withUnsafePointer(to: key_idx) { key_idx_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let in_handle_native = in_handle._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(key_idx_native), .init(in_handle_native), .init(balanced_value_time_ratio_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_bezier_track_set_key_in_handle_1028302688,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func bezier_track_set_key_out_handle(track_idx: Int64, key_idx: Int64, out_handle: Vector2, balanced_value_time_ratio: Float64)  {
        withUnsafePointer(to: balanced_value_time_ratio) { balanced_value_time_ratio_native in
        withUnsafePointer(to: key_idx) { key_idx_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let out_handle_native = out_handle._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(key_idx_native), .init(out_handle_native), .init(balanced_value_time_ratio_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_bezier_track_set_key_out_handle_1028302688,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func bezier_track_get_key_value(track_idx: Int64, key_idx: Int64) -> Float64 {
        withUnsafePointer(to: key_idx) { key_idx_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(key_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_bezier_track_get_key_value_3085491603,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
        }
    }
    public func bezier_track_get_key_in_handle(track_idx: Int64, key_idx: Int64) -> Vector2 {
        withUnsafePointer(to: key_idx) { key_idx_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(key_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_bezier_track_get_key_in_handle_3016396712,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
        }
        }
    }
    public func bezier_track_get_key_out_handle(track_idx: Int64, key_idx: Int64) -> Vector2 {
        withUnsafePointer(to: key_idx) { key_idx_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(key_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_bezier_track_get_key_out_handle_3016396712,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
        }
        }
    }
    public func bezier_track_interpolate(track_idx: Int64, time: Float64) -> Float64 {
        withUnsafePointer(to: time) { time_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(time_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_bezier_track_interpolate_1900462983,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
        }
    }
    public func audio_track_insert_key(track_idx: Int64, time: Float64, stream: Resource, start_offset: Float64, end_offset: Float64) -> Int64 {
        withUnsafePointer(to: end_offset) { end_offset_native in
        withUnsafePointer(to: start_offset) { start_offset_native in
        withUnsafePointer(to: time) { time_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let stream_native = stream._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(time_native), .init(stream_native), .init(start_offset_native), .init(end_offset_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_audio_track_insert_key_3489962123,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
        }
        }
        }
    }
    public func audio_track_set_key_stream(track_idx: Int64, key_idx: Int64, stream: Resource)  {
        withUnsafePointer(to: key_idx) { key_idx_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let stream_native = stream._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(key_idx_native), .init(stream_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_audio_track_set_key_stream_3886397084,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func audio_track_set_key_start_offset(track_idx: Int64, key_idx: Int64, offset: Float64)  {
        withUnsafePointer(to: offset) { offset_native in
        withUnsafePointer(to: key_idx) { key_idx_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(key_idx_native), .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_audio_track_set_key_start_offset_3506521499,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func audio_track_set_key_end_offset(track_idx: Int64, key_idx: Int64, offset: Float64)  {
        withUnsafePointer(to: offset) { offset_native in
        withUnsafePointer(to: key_idx) { key_idx_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(key_idx_native), .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_audio_track_set_key_end_offset_3506521499,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func audio_track_get_key_stream(track_idx: Int64, key_idx: Int64) -> Resource {
        withUnsafePointer(to: key_idx) { key_idx_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(key_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_audio_track_get_key_stream_635277205,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Resource(godot: __resPtr.pointee)
        }
        }
    }
    public func audio_track_get_key_start_offset(track_idx: Int64, key_idx: Int64) -> Float64 {
        withUnsafePointer(to: key_idx) { key_idx_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(key_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_audio_track_get_key_start_offset_3085491603,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
        }
    }
    public func audio_track_get_key_end_offset(track_idx: Int64, key_idx: Int64) -> Float64 {
        withUnsafePointer(to: key_idx) { key_idx_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(key_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_audio_track_get_key_end_offset_3085491603,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
        }
    }
    public func audio_track_set_use_blend(track_idx: Int64, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_audio_track_set_use_blend_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func audio_track_is_use_blend(track_idx: Int64) -> UInt8 {
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_audio_track_is_use_blend_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func animation_track_insert_key(track_idx: Int64, time: Float64, animation: StringName) -> Int64 {
        withUnsafePointer(to: time) { time_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let animation_native = animation._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(time_native), .init(animation_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_animation_track_insert_key_158676774,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
        }
    }
    public func animation_track_set_key_animation(track_idx: Int64, key_idx: Int64, animation: StringName)  {
        withUnsafePointer(to: key_idx) { key_idx_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let animation_native = animation._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(key_idx_native), .init(animation_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_animation_track_set_key_animation_117615382,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func animation_track_get_key_animation(track_idx: Int64, key_idx: Int64) -> StringName {
        withUnsafePointer(to: key_idx) { key_idx_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(key_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_animation_track_get_key_animation_351665558,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
        }
        }
    }
    public func set_length(time_sec: Float64)  {
        withUnsafePointer(to: time_sec) { time_sec_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(time_sec_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_length_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_length() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_length_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_loop_mode(loop_mode: Animation.LoopMode)  {
        withUnsafePointer(to: loop_mode.rawValue) { loop_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(loop_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_loop_mode_3155355575,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_loop_mode() -> Animation.LoopMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_loop_mode_1988889481,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Animation.LoopMode(godot: __resPtr.pointee)
    }
    public func set_step(size_sec: Float64)  {
        withUnsafePointer(to: size_sec) { size_sec_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_sec_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_step_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_step() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_step_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func clear()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func copy_track(track_idx: Int64, to_animation: Animation)  {
        withUnsafePointer(to: track_idx) { track_idx_native in
        let to_animation_native = to_animation._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(to_animation_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_copy_track_148001024,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func compress(page_size: Int64, fps: Int64, split_tolerance: Float64)  {
        withUnsafePointer(to: split_tolerance) { split_tolerance_native in
        withUnsafePointer(to: fps) { fps_native in
        withUnsafePointer(to: page_size) { page_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(page_size_native), .init(fps_native), .init(split_tolerance_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_compress_1804059263,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
}