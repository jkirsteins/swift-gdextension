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

    static var _method_add_track_2393815928: StringName! = nil
    static var _method_remove_track_1286410249: StringName! = nil
    static var _method_get_track_count_3905245786: StringName! = nil
    static var _method_track_get_type_3445944217: StringName! = nil
    static var _method_track_get_path_408788394: StringName! = nil
    static var _method_track_set_path_2761262315: StringName! = nil
    static var _method_find_track_245376003: StringName! = nil
    static var _method_track_move_up_1286410249: StringName! = nil
    static var _method_track_move_down_1286410249: StringName! = nil
    static var _method_track_move_to_3937882851: StringName! = nil
    static var _method_track_swap_3937882851: StringName! = nil
    static var _method_track_set_imported_300928843: StringName! = nil
    static var _method_track_is_imported_1116898809: StringName! = nil
    static var _method_track_set_enabled_300928843: StringName! = nil
    static var _method_track_is_enabled_1116898809: StringName! = nil
    static var _method_position_track_insert_key_2540608232: StringName! = nil
    static var _method_rotation_track_insert_key_4165004800: StringName! = nil
    static var _method_scale_track_insert_key_2540608232: StringName! = nil
    static var _method_blend_shape_track_insert_key_1534913637: StringName! = nil
    static var _method_track_insert_key_1985425300: StringName! = nil
    static var _method_track_remove_key_3937882851: StringName! = nil
    static var _method_track_remove_key_at_time_1602489585: StringName! = nil
    static var _method_track_set_key_value_2060538656: StringName! = nil
    static var _method_track_set_key_transition_3506521499: StringName! = nil
    static var _method_track_set_key_time_3506521499: StringName! = nil
    static var _method_track_get_key_transition_3085491603: StringName! = nil
    static var _method_track_get_key_count_923996154: StringName! = nil
    static var _method_track_get_key_value_678354945: StringName! = nil
    static var _method_track_get_key_time_3085491603: StringName! = nil
    static var _method_track_find_key_3898229885: StringName! = nil
    static var _method_track_set_interpolation_type_4112932513: StringName! = nil
    static var _method_track_get_interpolation_type_1530756894: StringName! = nil
    static var _method_track_set_interpolation_loop_wrap_300928843: StringName! = nil
    static var _method_track_get_interpolation_loop_wrap_1116898809: StringName! = nil
    static var _method_track_is_compressed_1116898809: StringName! = nil
    static var _method_value_track_set_update_mode_2854058312: StringName! = nil
    static var _method_value_track_get_update_mode_1440326473: StringName! = nil
    static var _method_value_track_interpolate_491147702: StringName! = nil
    static var _method_method_track_get_name_351665558: StringName! = nil
    static var _method_method_track_get_params_2345056839: StringName! = nil
    static var _method_bezier_track_insert_key_1057544502: StringName! = nil
    static var _method_bezier_track_set_key_value_3506521499: StringName! = nil
    static var _method_bezier_track_set_key_in_handle_1028302688: StringName! = nil
    static var _method_bezier_track_set_key_out_handle_1028302688: StringName! = nil
    static var _method_bezier_track_get_key_value_3085491603: StringName! = nil
    static var _method_bezier_track_get_key_in_handle_3016396712: StringName! = nil
    static var _method_bezier_track_get_key_out_handle_3016396712: StringName! = nil
    static var _method_bezier_track_interpolate_1900462983: StringName! = nil
    static var _method_audio_track_insert_key_3489962123: StringName! = nil
    static var _method_audio_track_set_key_stream_3886397084: StringName! = nil
    static var _method_audio_track_set_key_start_offset_3506521499: StringName! = nil
    static var _method_audio_track_set_key_end_offset_3506521499: StringName! = nil
    static var _method_audio_track_get_key_stream_635277205: StringName! = nil
    static var _method_audio_track_get_key_start_offset_3085491603: StringName! = nil
    static var _method_audio_track_get_key_end_offset_3085491603: StringName! = nil
    static var _method_audio_track_set_use_blend_300928843: StringName! = nil
    static var _method_audio_track_is_use_blend_1116898809: StringName! = nil
    static var _method_animation_track_insert_key_158676774: StringName! = nil
    static var _method_animation_track_set_key_animation_117615382: StringName! = nil
    static var _method_animation_track_get_key_animation_351665558: StringName! = nil
    static var _method_set_length_373806689: StringName! = nil
    static var _method_get_length_1740695150: StringName! = nil
    static var _method_set_loop_mode_3155355575: StringName! = nil
    static var _method_get_loop_mode_1988889481: StringName! = nil
    static var _method_set_step_373806689: StringName! = nil
    static var _method_get_step_1740695150: StringName! = nil
    static var _method_clear_3218959716: StringName! = nil
    static var _method_copy_track_148001024: StringName! = nil
    static var _method_compress_1804059263: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_Animation == nil)
        __godot_name_Animation = StringName(from: "Animation")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_add_track_2393815928 = StringName(from: "add_track")
        assert(self._method_add_track_2393815928 != nil)
        self._method_remove_track_1286410249 = StringName(from: "remove_track")
        assert(self._method_remove_track_1286410249 != nil)
        self._method_get_track_count_3905245786 = StringName(from: "get_track_count")
        assert(self._method_get_track_count_3905245786 != nil)
        self._method_track_get_type_3445944217 = StringName(from: "track_get_type")
        assert(self._method_track_get_type_3445944217 != nil)
        self._method_track_get_path_408788394 = StringName(from: "track_get_path")
        assert(self._method_track_get_path_408788394 != nil)
        self._method_track_set_path_2761262315 = StringName(from: "track_set_path")
        assert(self._method_track_set_path_2761262315 != nil)
        self._method_find_track_245376003 = StringName(from: "find_track")
        assert(self._method_find_track_245376003 != nil)
        self._method_track_move_up_1286410249 = StringName(from: "track_move_up")
        assert(self._method_track_move_up_1286410249 != nil)
        self._method_track_move_down_1286410249 = StringName(from: "track_move_down")
        assert(self._method_track_move_down_1286410249 != nil)
        self._method_track_move_to_3937882851 = StringName(from: "track_move_to")
        assert(self._method_track_move_to_3937882851 != nil)
        self._method_track_swap_3937882851 = StringName(from: "track_swap")
        assert(self._method_track_swap_3937882851 != nil)
        self._method_track_set_imported_300928843 = StringName(from: "track_set_imported")
        assert(self._method_track_set_imported_300928843 != nil)
        self._method_track_is_imported_1116898809 = StringName(from: "track_is_imported")
        assert(self._method_track_is_imported_1116898809 != nil)
        self._method_track_set_enabled_300928843 = StringName(from: "track_set_enabled")
        assert(self._method_track_set_enabled_300928843 != nil)
        self._method_track_is_enabled_1116898809 = StringName(from: "track_is_enabled")
        assert(self._method_track_is_enabled_1116898809 != nil)
        self._method_position_track_insert_key_2540608232 = StringName(from: "position_track_insert_key")
        assert(self._method_position_track_insert_key_2540608232 != nil)
        self._method_rotation_track_insert_key_4165004800 = StringName(from: "rotation_track_insert_key")
        assert(self._method_rotation_track_insert_key_4165004800 != nil)
        self._method_scale_track_insert_key_2540608232 = StringName(from: "scale_track_insert_key")
        assert(self._method_scale_track_insert_key_2540608232 != nil)
        self._method_blend_shape_track_insert_key_1534913637 = StringName(from: "blend_shape_track_insert_key")
        assert(self._method_blend_shape_track_insert_key_1534913637 != nil)
        self._method_track_insert_key_1985425300 = StringName(from: "track_insert_key")
        assert(self._method_track_insert_key_1985425300 != nil)
        self._method_track_remove_key_3937882851 = StringName(from: "track_remove_key")
        assert(self._method_track_remove_key_3937882851 != nil)
        self._method_track_remove_key_at_time_1602489585 = StringName(from: "track_remove_key_at_time")
        assert(self._method_track_remove_key_at_time_1602489585 != nil)
        self._method_track_set_key_value_2060538656 = StringName(from: "track_set_key_value")
        assert(self._method_track_set_key_value_2060538656 != nil)
        self._method_track_set_key_transition_3506521499 = StringName(from: "track_set_key_transition")
        assert(self._method_track_set_key_transition_3506521499 != nil)
        self._method_track_set_key_time_3506521499 = StringName(from: "track_set_key_time")
        assert(self._method_track_set_key_time_3506521499 != nil)
        self._method_track_get_key_transition_3085491603 = StringName(from: "track_get_key_transition")
        assert(self._method_track_get_key_transition_3085491603 != nil)
        self._method_track_get_key_count_923996154 = StringName(from: "track_get_key_count")
        assert(self._method_track_get_key_count_923996154 != nil)
        self._method_track_get_key_value_678354945 = StringName(from: "track_get_key_value")
        assert(self._method_track_get_key_value_678354945 != nil)
        self._method_track_get_key_time_3085491603 = StringName(from: "track_get_key_time")
        assert(self._method_track_get_key_time_3085491603 != nil)
        self._method_track_find_key_3898229885 = StringName(from: "track_find_key")
        assert(self._method_track_find_key_3898229885 != nil)
        self._method_track_set_interpolation_type_4112932513 = StringName(from: "track_set_interpolation_type")
        assert(self._method_track_set_interpolation_type_4112932513 != nil)
        self._method_track_get_interpolation_type_1530756894 = StringName(from: "track_get_interpolation_type")
        assert(self._method_track_get_interpolation_type_1530756894 != nil)
        self._method_track_set_interpolation_loop_wrap_300928843 = StringName(from: "track_set_interpolation_loop_wrap")
        assert(self._method_track_set_interpolation_loop_wrap_300928843 != nil)
        self._method_track_get_interpolation_loop_wrap_1116898809 = StringName(from: "track_get_interpolation_loop_wrap")
        assert(self._method_track_get_interpolation_loop_wrap_1116898809 != nil)
        self._method_track_is_compressed_1116898809 = StringName(from: "track_is_compressed")
        assert(self._method_track_is_compressed_1116898809 != nil)
        self._method_value_track_set_update_mode_2854058312 = StringName(from: "value_track_set_update_mode")
        assert(self._method_value_track_set_update_mode_2854058312 != nil)
        self._method_value_track_get_update_mode_1440326473 = StringName(from: "value_track_get_update_mode")
        assert(self._method_value_track_get_update_mode_1440326473 != nil)
        self._method_value_track_interpolate_491147702 = StringName(from: "value_track_interpolate")
        assert(self._method_value_track_interpolate_491147702 != nil)
        self._method_method_track_get_name_351665558 = StringName(from: "method_track_get_name")
        assert(self._method_method_track_get_name_351665558 != nil)
        self._method_method_track_get_params_2345056839 = StringName(from: "method_track_get_params")
        assert(self._method_method_track_get_params_2345056839 != nil)
        self._method_bezier_track_insert_key_1057544502 = StringName(from: "bezier_track_insert_key")
        assert(self._method_bezier_track_insert_key_1057544502 != nil)
        self._method_bezier_track_set_key_value_3506521499 = StringName(from: "bezier_track_set_key_value")
        assert(self._method_bezier_track_set_key_value_3506521499 != nil)
        self._method_bezier_track_set_key_in_handle_1028302688 = StringName(from: "bezier_track_set_key_in_handle")
        assert(self._method_bezier_track_set_key_in_handle_1028302688 != nil)
        self._method_bezier_track_set_key_out_handle_1028302688 = StringName(from: "bezier_track_set_key_out_handle")
        assert(self._method_bezier_track_set_key_out_handle_1028302688 != nil)
        self._method_bezier_track_get_key_value_3085491603 = StringName(from: "bezier_track_get_key_value")
        assert(self._method_bezier_track_get_key_value_3085491603 != nil)
        self._method_bezier_track_get_key_in_handle_3016396712 = StringName(from: "bezier_track_get_key_in_handle")
        assert(self._method_bezier_track_get_key_in_handle_3016396712 != nil)
        self._method_bezier_track_get_key_out_handle_3016396712 = StringName(from: "bezier_track_get_key_out_handle")
        assert(self._method_bezier_track_get_key_out_handle_3016396712 != nil)
        self._method_bezier_track_interpolate_1900462983 = StringName(from: "bezier_track_interpolate")
        assert(self._method_bezier_track_interpolate_1900462983 != nil)
        self._method_audio_track_insert_key_3489962123 = StringName(from: "audio_track_insert_key")
        assert(self._method_audio_track_insert_key_3489962123 != nil)
        self._method_audio_track_set_key_stream_3886397084 = StringName(from: "audio_track_set_key_stream")
        assert(self._method_audio_track_set_key_stream_3886397084 != nil)
        self._method_audio_track_set_key_start_offset_3506521499 = StringName(from: "audio_track_set_key_start_offset")
        assert(self._method_audio_track_set_key_start_offset_3506521499 != nil)
        self._method_audio_track_set_key_end_offset_3506521499 = StringName(from: "audio_track_set_key_end_offset")
        assert(self._method_audio_track_set_key_end_offset_3506521499 != nil)
        self._method_audio_track_get_key_stream_635277205 = StringName(from: "audio_track_get_key_stream")
        assert(self._method_audio_track_get_key_stream_635277205 != nil)
        self._method_audio_track_get_key_start_offset_3085491603 = StringName(from: "audio_track_get_key_start_offset")
        assert(self._method_audio_track_get_key_start_offset_3085491603 != nil)
        self._method_audio_track_get_key_end_offset_3085491603 = StringName(from: "audio_track_get_key_end_offset")
        assert(self._method_audio_track_get_key_end_offset_3085491603 != nil)
        self._method_audio_track_set_use_blend_300928843 = StringName(from: "audio_track_set_use_blend")
        assert(self._method_audio_track_set_use_blend_300928843 != nil)
        self._method_audio_track_is_use_blend_1116898809 = StringName(from: "audio_track_is_use_blend")
        assert(self._method_audio_track_is_use_blend_1116898809 != nil)
        self._method_animation_track_insert_key_158676774 = StringName(from: "animation_track_insert_key")
        assert(self._method_animation_track_insert_key_158676774 != nil)
        self._method_animation_track_set_key_animation_117615382 = StringName(from: "animation_track_set_key_animation")
        assert(self._method_animation_track_set_key_animation_117615382 != nil)
        self._method_animation_track_get_key_animation_351665558 = StringName(from: "animation_track_get_key_animation")
        assert(self._method_animation_track_get_key_animation_351665558 != nil)
        self._method_set_length_373806689 = StringName(from: "set_length")
        assert(self._method_set_length_373806689 != nil)
        self._method_get_length_1740695150 = StringName(from: "get_length")
        assert(self._method_get_length_1740695150 != nil)
        self._method_set_loop_mode_3155355575 = StringName(from: "set_loop_mode")
        assert(self._method_set_loop_mode_3155355575 != nil)
        self._method_get_loop_mode_1988889481 = StringName(from: "get_loop_mode")
        assert(self._method_get_loop_mode_1988889481 != nil)
        self._method_set_step_373806689 = StringName(from: "set_step")
        assert(self._method_set_step_373806689 != nil)
        self._method_get_step_1740695150 = StringName(from: "get_step")
        assert(self._method_get_step_1740695150 != nil)
        self._method_clear_3218959716 = StringName(from: "clear")
        assert(self._method_clear_3218959716 != nil)
        self._method_copy_track_148001024 = StringName(from: "copy_track")
        assert(self._method_copy_track_148001024 != nil)
        self._method_compress_1804059263 = StringName(from: "compress")
        assert(self._method_compress_1804059263 != nil)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_track_2393815928._native_ptr(),
                    2393815928)
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
    }
    public func remove_track(track_idx: Int64)  {
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_track_1286410249._native_ptr(),
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
    public func get_track_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_track_count_3905245786._native_ptr(),
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
    public func track_get_type(track_idx: Int64) -> Animation.TrackType {
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_track_get_type_3445944217._native_ptr(),
                    3445944217)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_track_get_path_408788394._native_ptr(),
                    408788394)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_track_set_path_2761262315._native_ptr(),
                    2761262315)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_find_track_245376003._native_ptr(),
                    245376003)
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
    public func track_move_up(track_idx: Int64)  {
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_track_move_up_1286410249._native_ptr(),
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
    public func track_move_down(track_idx: Int64)  {
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_track_move_down_1286410249._native_ptr(),
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
    public func track_move_to(track_idx: Int64, to_idx: Int64)  {
        withUnsafePointer(to: to_idx) { to_idx_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(to_idx_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_track_move_to_3937882851._native_ptr(),
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
    public func track_swap(track_idx: Int64, with_idx: Int64)  {
        withUnsafePointer(to: with_idx) { with_idx_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(with_idx_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_track_swap_3937882851._native_ptr(),
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
    public func track_set_imported(track_idx: Int64, imported: UInt8)  {
        withUnsafePointer(to: imported) { imported_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(imported_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_track_set_imported_300928843._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_track_is_imported_1116898809._native_ptr(),
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
    public func track_set_enabled(track_idx: Int64, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_track_set_enabled_300928843._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_track_is_enabled_1116898809._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_position_track_insert_key_2540608232._native_ptr(),
                    2540608232)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_rotation_track_insert_key_4165004800._native_ptr(),
                    4165004800)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_scale_track_insert_key_2540608232._native_ptr(),
                    2540608232)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_blend_shape_track_insert_key_1534913637._native_ptr(),
                    1534913637)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_track_insert_key_1985425300._native_ptr(),
                    1985425300)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_track_remove_key_3937882851._native_ptr(),
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
    public func track_remove_key_at_time(track_idx: Int64, time: Float64)  {
        withUnsafePointer(to: time) { time_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(time_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_track_remove_key_at_time_1602489585._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_track_set_key_value_2060538656._native_ptr(),
                    2060538656)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_track_set_key_transition_3506521499._native_ptr(),
                    3506521499)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_track_set_key_time_3506521499._native_ptr(),
                    3506521499)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_track_get_key_transition_3085491603._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_track_get_key_count_923996154._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_track_get_key_value_678354945._native_ptr(),
                    678354945)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_track_get_key_time_3085491603._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_track_find_key_3898229885._native_ptr(),
                    3898229885)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_track_set_interpolation_type_4112932513._native_ptr(),
                    4112932513)
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
    public func track_get_interpolation_type(track_idx: Int64) -> Animation.InterpolationType {
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_track_get_interpolation_type_1530756894._native_ptr(),
                    1530756894)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_track_set_interpolation_loop_wrap_300928843._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_track_get_interpolation_loop_wrap_1116898809._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_track_is_compressed_1116898809._native_ptr(),
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
    public func value_track_set_update_mode(track_idx: Int64, mode: Animation.UpdateMode)  {
        withUnsafePointer(to: track_idx) { track_idx_native in
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_value_track_set_update_mode_2854058312._native_ptr(),
                    2854058312)
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
    public func value_track_get_update_mode(track_idx: Int64) -> Animation.UpdateMode {
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_value_track_get_update_mode_1440326473._native_ptr(),
                    1440326473)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_value_track_interpolate_491147702._native_ptr(),
                    491147702)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_method_track_get_name_351665558._native_ptr(),
                    351665558)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_method_track_get_params_2345056839._native_ptr(),
                    2345056839)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_bezier_track_insert_key_1057544502._native_ptr(),
                    1057544502)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_bezier_track_set_key_value_3506521499._native_ptr(),
                    3506521499)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_bezier_track_set_key_in_handle_1028302688._native_ptr(),
                    1028302688)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_bezier_track_set_key_out_handle_1028302688._native_ptr(),
                    1028302688)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_bezier_track_get_key_value_3085491603._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_bezier_track_get_key_in_handle_3016396712._native_ptr(),
                    3016396712)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_bezier_track_get_key_out_handle_3016396712._native_ptr(),
                    3016396712)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_bezier_track_interpolate_1900462983._native_ptr(),
                    1900462983)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_audio_track_insert_key_3489962123._native_ptr(),
                    3489962123)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_audio_track_set_key_stream_3886397084._native_ptr(),
                    3886397084)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_audio_track_set_key_start_offset_3506521499._native_ptr(),
                    3506521499)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_audio_track_set_key_end_offset_3506521499._native_ptr(),
                    3506521499)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_audio_track_get_key_stream_635277205._native_ptr(),
                    635277205)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_audio_track_get_key_start_offset_3085491603._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_audio_track_get_key_end_offset_3085491603._native_ptr(),
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
    public func audio_track_set_use_blend(track_idx: Int64, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        withUnsafePointer(to: track_idx) { track_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_idx_native), .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_audio_track_set_use_blend_300928843._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_audio_track_is_use_blend_1116898809._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_animation_track_insert_key_158676774._native_ptr(),
                    158676774)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_animation_track_set_key_animation_117615382._native_ptr(),
                    117615382)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_animation_track_get_key_animation_351665558._native_ptr(),
                    351665558)
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
    }
    public func set_length(time_sec: Float64)  {
        withUnsafePointer(to: time_sec) { time_sec_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(time_sec_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_length_373806689._native_ptr(),
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
    public func get_length() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_length_1740695150._native_ptr(),
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
    public func set_loop_mode(loop_mode: Animation.LoopMode)  {
        withUnsafePointer(to: loop_mode.rawValue) { loop_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(loop_mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_loop_mode_3155355575._native_ptr(),
                    3155355575)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_loop_mode_1988889481._native_ptr(),
                    1988889481)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_step_373806689._native_ptr(),
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
    public func get_step() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_step_1740695150._native_ptr(),
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
    public func clear()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_copy_track_148001024._native_ptr(),
                    148001024)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_compress_1804059263._native_ptr(),
                    1804059263)
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
}