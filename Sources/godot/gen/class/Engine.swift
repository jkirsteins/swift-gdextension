import godot_native

fileprivate var __godot_name_Engine: StringName! = nil

/// Access to engine properties.
/// 
/// The [Engine] singleton allows you to query and modify the project's run-time parameters, such as frames per second, time scale, and others.
open class Engine : Object {

    

    public override class var __godot_name: StringName { __godot_name_Engine }

    static var _method_set_physics_ticks_per_second_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_physics_ticks_per_second_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_max_physics_steps_per_frame_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_physics_steps_per_frame_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_physics_jitter_fix_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_physics_jitter_fix_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_physics_interpolation_fraction_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_max_fps_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_fps_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_time_scale_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_time_scale_191475506: GDExtensionMethodBindPtr! = nil
    static var _method_get_frames_drawn_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_get_frames_per_second_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_physics_frames_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_process_frames_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_main_loop_1016888095: GDExtensionMethodBindPtr! = nil
    static var _method_get_version_info_3102165223: GDExtensionMethodBindPtr! = nil
    static var _method_get_author_info_3102165223: GDExtensionMethodBindPtr! = nil
    static var _method_get_copyright_info_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_get_donor_info_3102165223: GDExtensionMethodBindPtr! = nil
    static var _method_get_license_info_3102165223: GDExtensionMethodBindPtr! = nil
    static var _method_get_license_text_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_architecture_name_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_is_in_physics_frame_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_has_singleton_2619796661: GDExtensionMethodBindPtr! = nil
    static var _method_get_singleton_1371597918: GDExtensionMethodBindPtr! = nil
    static var _method_register_singleton_965313290: GDExtensionMethodBindPtr! = nil
    static var _method_unregister_singleton_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_get_singleton_list_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_register_script_language_1327703655: GDExtensionMethodBindPtr! = nil
    static var _method_get_script_language_count_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_get_script_language_2151255799: GDExtensionMethodBindPtr! = nil
    static var _method_is_editor_hint_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_write_movie_path_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_print_error_messages_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_printing_error_messages_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_Engine = StringName(from: "Engine")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_physics_ticks_per_second_1286410249_name = StringName(from: "set_physics_ticks_per_second")
        self._method_set_physics_ticks_per_second_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_set_physics_ticks_per_second_1286410249_name._native_ptr(), 1286410249)
        assert(Engine._method_set_physics_ticks_per_second_1286410249 != nil)
        let _method_get_physics_ticks_per_second_3905245786_name = StringName(from: "get_physics_ticks_per_second")
        self._method_get_physics_ticks_per_second_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_get_physics_ticks_per_second_3905245786_name._native_ptr(), 3905245786)
        assert(Engine._method_get_physics_ticks_per_second_3905245786 != nil)
        let _method_set_max_physics_steps_per_frame_1286410249_name = StringName(from: "set_max_physics_steps_per_frame")
        self._method_set_max_physics_steps_per_frame_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_set_max_physics_steps_per_frame_1286410249_name._native_ptr(), 1286410249)
        assert(Engine._method_set_max_physics_steps_per_frame_1286410249 != nil)
        let _method_get_max_physics_steps_per_frame_3905245786_name = StringName(from: "get_max_physics_steps_per_frame")
        self._method_get_max_physics_steps_per_frame_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_get_max_physics_steps_per_frame_3905245786_name._native_ptr(), 3905245786)
        assert(Engine._method_get_max_physics_steps_per_frame_3905245786 != nil)
        let _method_set_physics_jitter_fix_373806689_name = StringName(from: "set_physics_jitter_fix")
        self._method_set_physics_jitter_fix_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_set_physics_jitter_fix_373806689_name._native_ptr(), 373806689)
        assert(Engine._method_set_physics_jitter_fix_373806689 != nil)
        let _method_get_physics_jitter_fix_1740695150_name = StringName(from: "get_physics_jitter_fix")
        self._method_get_physics_jitter_fix_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_get_physics_jitter_fix_1740695150_name._native_ptr(), 1740695150)
        assert(Engine._method_get_physics_jitter_fix_1740695150 != nil)
        let _method_get_physics_interpolation_fraction_1740695150_name = StringName(from: "get_physics_interpolation_fraction")
        self._method_get_physics_interpolation_fraction_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_get_physics_interpolation_fraction_1740695150_name._native_ptr(), 1740695150)
        assert(Engine._method_get_physics_interpolation_fraction_1740695150 != nil)
        let _method_set_max_fps_1286410249_name = StringName(from: "set_max_fps")
        self._method_set_max_fps_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_set_max_fps_1286410249_name._native_ptr(), 1286410249)
        assert(Engine._method_set_max_fps_1286410249 != nil)
        let _method_get_max_fps_3905245786_name = StringName(from: "get_max_fps")
        self._method_get_max_fps_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_get_max_fps_3905245786_name._native_ptr(), 3905245786)
        assert(Engine._method_get_max_fps_3905245786 != nil)
        let _method_set_time_scale_373806689_name = StringName(from: "set_time_scale")
        self._method_set_time_scale_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_set_time_scale_373806689_name._native_ptr(), 373806689)
        assert(Engine._method_set_time_scale_373806689 != nil)
        let _method_get_time_scale_191475506_name = StringName(from: "get_time_scale")
        self._method_get_time_scale_191475506 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_get_time_scale_191475506_name._native_ptr(), 191475506)
        assert(Engine._method_get_time_scale_191475506 != nil)
        let _method_get_frames_drawn_2455072627_name = StringName(from: "get_frames_drawn")
        self._method_get_frames_drawn_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_get_frames_drawn_2455072627_name._native_ptr(), 2455072627)
        assert(Engine._method_get_frames_drawn_2455072627 != nil)
        let _method_get_frames_per_second_1740695150_name = StringName(from: "get_frames_per_second")
        self._method_get_frames_per_second_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_get_frames_per_second_1740695150_name._native_ptr(), 1740695150)
        assert(Engine._method_get_frames_per_second_1740695150 != nil)
        let _method_get_physics_frames_3905245786_name = StringName(from: "get_physics_frames")
        self._method_get_physics_frames_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_get_physics_frames_3905245786_name._native_ptr(), 3905245786)
        assert(Engine._method_get_physics_frames_3905245786 != nil)
        let _method_get_process_frames_3905245786_name = StringName(from: "get_process_frames")
        self._method_get_process_frames_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_get_process_frames_3905245786_name._native_ptr(), 3905245786)
        assert(Engine._method_get_process_frames_3905245786 != nil)
        let _method_get_main_loop_1016888095_name = StringName(from: "get_main_loop")
        self._method_get_main_loop_1016888095 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_get_main_loop_1016888095_name._native_ptr(), 1016888095)
        assert(Engine._method_get_main_loop_1016888095 != nil)
        let _method_get_version_info_3102165223_name = StringName(from: "get_version_info")
        self._method_get_version_info_3102165223 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_get_version_info_3102165223_name._native_ptr(), 3102165223)
        assert(Engine._method_get_version_info_3102165223 != nil)
        let _method_get_author_info_3102165223_name = StringName(from: "get_author_info")
        self._method_get_author_info_3102165223 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_get_author_info_3102165223_name._native_ptr(), 3102165223)
        assert(Engine._method_get_author_info_3102165223 != nil)
        let _method_get_copyright_info_3995934104_name = StringName(from: "get_copyright_info")
        self._method_get_copyright_info_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_get_copyright_info_3995934104_name._native_ptr(), 3995934104)
        assert(Engine._method_get_copyright_info_3995934104 != nil)
        let _method_get_donor_info_3102165223_name = StringName(from: "get_donor_info")
        self._method_get_donor_info_3102165223 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_get_donor_info_3102165223_name._native_ptr(), 3102165223)
        assert(Engine._method_get_donor_info_3102165223 != nil)
        let _method_get_license_info_3102165223_name = StringName(from: "get_license_info")
        self._method_get_license_info_3102165223 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_get_license_info_3102165223_name._native_ptr(), 3102165223)
        assert(Engine._method_get_license_info_3102165223 != nil)
        let _method_get_license_text_201670096_name = StringName(from: "get_license_text")
        self._method_get_license_text_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_get_license_text_201670096_name._native_ptr(), 201670096)
        assert(Engine._method_get_license_text_201670096 != nil)
        let _method_get_architecture_name_201670096_name = StringName(from: "get_architecture_name")
        self._method_get_architecture_name_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_get_architecture_name_201670096_name._native_ptr(), 201670096)
        assert(Engine._method_get_architecture_name_201670096 != nil)
        let _method_is_in_physics_frame_36873697_name = StringName(from: "is_in_physics_frame")
        self._method_is_in_physics_frame_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_is_in_physics_frame_36873697_name._native_ptr(), 36873697)
        assert(Engine._method_is_in_physics_frame_36873697 != nil)
        let _method_has_singleton_2619796661_name = StringName(from: "has_singleton")
        self._method_has_singleton_2619796661 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_has_singleton_2619796661_name._native_ptr(), 2619796661)
        assert(Engine._method_has_singleton_2619796661 != nil)
        let _method_get_singleton_1371597918_name = StringName(from: "get_singleton")
        self._method_get_singleton_1371597918 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_get_singleton_1371597918_name._native_ptr(), 1371597918)
        assert(Engine._method_get_singleton_1371597918 != nil)
        let _method_register_singleton_965313290_name = StringName(from: "register_singleton")
        self._method_register_singleton_965313290 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_register_singleton_965313290_name._native_ptr(), 965313290)
        assert(Engine._method_register_singleton_965313290 != nil)
        let _method_unregister_singleton_3304788590_name = StringName(from: "unregister_singleton")
        self._method_unregister_singleton_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_unregister_singleton_3304788590_name._native_ptr(), 3304788590)
        assert(Engine._method_unregister_singleton_3304788590 != nil)
        let _method_get_singleton_list_1139954409_name = StringName(from: "get_singleton_list")
        self._method_get_singleton_list_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_get_singleton_list_1139954409_name._native_ptr(), 1139954409)
        assert(Engine._method_get_singleton_list_1139954409 != nil)
        let _method_register_script_language_1327703655_name = StringName(from: "register_script_language")
        self._method_register_script_language_1327703655 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_register_script_language_1327703655_name._native_ptr(), 1327703655)
        assert(Engine._method_register_script_language_1327703655 != nil)
        let _method_get_script_language_count_2455072627_name = StringName(from: "get_script_language_count")
        self._method_get_script_language_count_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_get_script_language_count_2455072627_name._native_ptr(), 2455072627)
        assert(Engine._method_get_script_language_count_2455072627 != nil)
        let _method_get_script_language_2151255799_name = StringName(from: "get_script_language")
        self._method_get_script_language_2151255799 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_get_script_language_2151255799_name._native_ptr(), 2151255799)
        assert(Engine._method_get_script_language_2151255799 != nil)
        let _method_is_editor_hint_36873697_name = StringName(from: "is_editor_hint")
        self._method_is_editor_hint_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_is_editor_hint_36873697_name._native_ptr(), 36873697)
        assert(Engine._method_is_editor_hint_36873697 != nil)
        let _method_get_write_movie_path_201670096_name = StringName(from: "get_write_movie_path")
        self._method_get_write_movie_path_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_get_write_movie_path_201670096_name._native_ptr(), 201670096)
        assert(Engine._method_get_write_movie_path_201670096 != nil)
        let _method_set_print_error_messages_2586408642_name = StringName(from: "set_print_error_messages")
        self._method_set_print_error_messages_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_set_print_error_messages_2586408642_name._native_ptr(), 2586408642)
        assert(Engine._method_set_print_error_messages_2586408642 != nil)
        let _method_is_printing_error_messages_36873697_name = StringName(from: "is_printing_error_messages")
        self._method_is_printing_error_messages_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_Engine._native_ptr(), _method_is_printing_error_messages_36873697_name._native_ptr(), 36873697)
        assert(Engine._method_is_printing_error_messages_36873697 != nil)
    }

    public func set_physics_ticks_per_second(physics_ticks_per_second: Int64)  {
        withUnsafePointer(to: physics_ticks_per_second) { physics_ticks_per_second_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(physics_ticks_per_second_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_physics_ticks_per_second_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_physics_ticks_per_second() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_physics_ticks_per_second_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_max_physics_steps_per_frame(max_physics_steps: Int64)  {
        withUnsafePointer(to: max_physics_steps) { max_physics_steps_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_physics_steps_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_max_physics_steps_per_frame_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_max_physics_steps_per_frame() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_max_physics_steps_per_frame_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_physics_jitter_fix(physics_jitter_fix: Float64)  {
        withUnsafePointer(to: physics_jitter_fix) { physics_jitter_fix_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(physics_jitter_fix_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_physics_jitter_fix_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_physics_jitter_fix() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_physics_jitter_fix_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func get_physics_interpolation_fraction() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_physics_interpolation_fraction_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_max_fps(max_fps: Int64)  {
        withUnsafePointer(to: max_fps) { max_fps_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_fps_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_max_fps_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_max_fps() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_max_fps_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_time_scale(time_scale: Float64)  {
        withUnsafePointer(to: time_scale) { time_scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(time_scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_time_scale_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_time_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_time_scale_191475506,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func get_frames_drawn() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_frames_drawn_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_frames_per_second() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_frames_per_second_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func get_physics_frames() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_physics_frames_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_process_frames() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_process_frames_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_main_loop() -> MainLoop {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_main_loop_1016888095,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return MainLoop(godot: __resPtr.pointee)
    }
    public func get_version_info() -> Dictionary {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_version_info_3102165223,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
    }
    public func get_author_info() -> Dictionary {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_author_info_3102165223,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
    }
    public func get_copyright_info() -> [Dictionary] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_copyright_info_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](godot: __resPtr.pointee)
    }
    public func get_donor_info() -> Dictionary {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_donor_info_3102165223,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
    }
    public func get_license_info() -> Dictionary {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_license_info_3102165223,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
    }
    public func get_license_text() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_license_text_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_architecture_name() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_architecture_name_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func is_in_physics_frame() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_in_physics_frame_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func has_singleton(name: StringName) -> UInt8 {
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
                    Self._method_has_singleton_2619796661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_singleton(name: StringName) -> Object {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_singleton_1371597918,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Object(godot: __resPtr.pointee)
    }
    public func register_singleton(name: StringName, instance: Object)  {
        let instance_native = instance._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(instance_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_register_singleton_965313290,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func unregister_singleton(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_unregister_singleton_3304788590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_singleton_list() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_singleton_list_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func register_script_language(language: ScriptLanguage)  {
        let language_native = language._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(language_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_register_script_language_1327703655,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_script_language_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_script_language_count_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_script_language(index: Int64) -> ScriptLanguage {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_script_language_2151255799,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ScriptLanguage(godot: __resPtr.pointee)
        }
    }
    public func is_editor_hint() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_editor_hint_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_write_movie_path() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_write_movie_path_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func set_print_error_messages(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_print_error_messages_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_printing_error_messages() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_printing_error_messages_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}