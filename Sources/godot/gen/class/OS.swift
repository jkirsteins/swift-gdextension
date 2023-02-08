import godot_native

fileprivate var __godot_name_OS: StringName! = nil

/// Operating System functions.
/// 
/// Operating System functions. [OS] wraps the most common functionality to communicate with the host operating system, such as the clipboard, video driver, delays, environment variables, execution of binaries, command line, etc.
///  
/// [b]Note:[/b] In Godot 4, [OS] functions related to window management were moved to the [DisplayServer] singleton.
open class OS : Object {

    public enum RenderingDriver : Int32 {
        case RENDERING_DRIVER_VULKAN = 0
        case RENDERING_DRIVER_OPENGL3 = 1
    }
    public enum SystemDir : Int32 {
        case SYSTEM_DIR_DESKTOP = 0
        case SYSTEM_DIR_DCIM = 1
        case SYSTEM_DIR_DOCUMENTS = 2
        case SYSTEM_DIR_DOWNLOADS = 3
        case SYSTEM_DIR_MOVIES = 4
        case SYSTEM_DIR_MUSIC = 5
        case SYSTEM_DIR_PICTURES = 6
        case SYSTEM_DIR_RINGTONES = 7
    }

    public override class var __godot_name: StringName { __godot_name_OS }

    static var _method_get_connected_midi_inputs_2981934095: GDExtensionMethodBindPtr! = nil
    static var _method_open_midi_inputs_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_close_midi_inputs_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_alert_233059325: GDExtensionMethodBindPtr! = nil
    static var _method_crash_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_set_low_processor_usage_mode_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_in_low_processor_usage_mode_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_low_processor_usage_mode_sleep_usec_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_low_processor_usage_mode_sleep_usec_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_processor_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_processor_name_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_system_fonts_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_get_system_font_path_2262142305: GDExtensionMethodBindPtr! = nil
    static var _method_get_system_font_path_for_text_3824042574: GDExtensionMethodBindPtr! = nil
    static var _method_get_executable_path_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_read_string_from_stdin_2841200299: GDExtensionMethodBindPtr! = nil
    static var _method_execute_2881709059: GDExtensionMethodBindPtr! = nil
    static var _method_create_process_2903767230: GDExtensionMethodBindPtr! = nil
    static var _method_create_instance_1080601263: GDExtensionMethodBindPtr! = nil
    static var _method_kill_844576869: GDExtensionMethodBindPtr! = nil
    static var _method_shell_open_166001499: GDExtensionMethodBindPtr! = nil
    static var _method_is_process_running_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_get_process_id_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_has_environment_3927539163: GDExtensionMethodBindPtr! = nil
    static var _method_get_environment_3135753539: GDExtensionMethodBindPtr! = nil
    static var _method_set_environment_3605043004: GDExtensionMethodBindPtr! = nil
    static var _method_unset_environment_3089850668: GDExtensionMethodBindPtr! = nil
    static var _method_get_name_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_distribution_name_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_version_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_cmdline_args_2981934095: GDExtensionMethodBindPtr! = nil
    static var _method_get_cmdline_user_args_2981934095: GDExtensionMethodBindPtr! = nil
    static var _method_get_video_adapter_driver_info_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_set_restart_on_exit_611198603: GDExtensionMethodBindPtr! = nil
    static var _method_is_restart_on_exit_set_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_restart_on_exit_arguments_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_delay_usec_998575451: GDExtensionMethodBindPtr! = nil
    static var _method_delay_msec_998575451: GDExtensionMethodBindPtr! = nil
    static var _method_get_locale_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_locale_language_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_model_name_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_is_userfs_persistent_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_is_stdout_verbose_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_is_debug_build_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_static_memory_usage_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_static_memory_peak_usage_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_move_to_trash_2113323047: GDExtensionMethodBindPtr! = nil
    static var _method_get_user_data_dir_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_system_dir_1965199849: GDExtensionMethodBindPtr! = nil
    static var _method_get_config_dir_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_data_dir_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_cache_dir_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_unique_id_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_keycode_string_2261993717: GDExtensionMethodBindPtr! = nil
    static var _method_is_keycode_unicode_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_find_keycode_from_string_1084858572: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_file_access_save_and_swap_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_set_thread_name_166001499: GDExtensionMethodBindPtr! = nil
    static var _method_get_thread_caller_id_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_main_thread_id_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_has_feature_3927539163: GDExtensionMethodBindPtr! = nil
    static var _method_request_permission_2323990056: GDExtensionMethodBindPtr! = nil
    static var _method_request_permissions_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_get_granted_permissions_1139954409: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_OS = StringName(from: "OS")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_get_connected_midi_inputs_2981934095_name = StringName(from: "get_connected_midi_inputs")
        self._method_get_connected_midi_inputs_2981934095 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_get_connected_midi_inputs_2981934095_name._native_ptr(), 2981934095)
        assert(OS._method_get_connected_midi_inputs_2981934095 != nil)
        let _method_open_midi_inputs_3218959716_name = StringName(from: "open_midi_inputs")
        self._method_open_midi_inputs_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_open_midi_inputs_3218959716_name._native_ptr(), 3218959716)
        assert(OS._method_open_midi_inputs_3218959716 != nil)
        let _method_close_midi_inputs_3218959716_name = StringName(from: "close_midi_inputs")
        self._method_close_midi_inputs_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_close_midi_inputs_3218959716_name._native_ptr(), 3218959716)
        assert(OS._method_close_midi_inputs_3218959716 != nil)
        let _method_alert_233059325_name = StringName(from: "alert")
        self._method_alert_233059325 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_alert_233059325_name._native_ptr(), 233059325)
        assert(OS._method_alert_233059325 != nil)
        let _method_crash_83702148_name = StringName(from: "crash")
        self._method_crash_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_crash_83702148_name._native_ptr(), 83702148)
        assert(OS._method_crash_83702148 != nil)
        let _method_set_low_processor_usage_mode_2586408642_name = StringName(from: "set_low_processor_usage_mode")
        self._method_set_low_processor_usage_mode_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_set_low_processor_usage_mode_2586408642_name._native_ptr(), 2586408642)
        assert(OS._method_set_low_processor_usage_mode_2586408642 != nil)
        let _method_is_in_low_processor_usage_mode_36873697_name = StringName(from: "is_in_low_processor_usage_mode")
        self._method_is_in_low_processor_usage_mode_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_is_in_low_processor_usage_mode_36873697_name._native_ptr(), 36873697)
        assert(OS._method_is_in_low_processor_usage_mode_36873697 != nil)
        let _method_set_low_processor_usage_mode_sleep_usec_1286410249_name = StringName(from: "set_low_processor_usage_mode_sleep_usec")
        self._method_set_low_processor_usage_mode_sleep_usec_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_set_low_processor_usage_mode_sleep_usec_1286410249_name._native_ptr(), 1286410249)
        assert(OS._method_set_low_processor_usage_mode_sleep_usec_1286410249 != nil)
        let _method_get_low_processor_usage_mode_sleep_usec_3905245786_name = StringName(from: "get_low_processor_usage_mode_sleep_usec")
        self._method_get_low_processor_usage_mode_sleep_usec_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_get_low_processor_usage_mode_sleep_usec_3905245786_name._native_ptr(), 3905245786)
        assert(OS._method_get_low_processor_usage_mode_sleep_usec_3905245786 != nil)
        let _method_get_processor_count_3905245786_name = StringName(from: "get_processor_count")
        self._method_get_processor_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_get_processor_count_3905245786_name._native_ptr(), 3905245786)
        assert(OS._method_get_processor_count_3905245786 != nil)
        let _method_get_processor_name_201670096_name = StringName(from: "get_processor_name")
        self._method_get_processor_name_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_get_processor_name_201670096_name._native_ptr(), 201670096)
        assert(OS._method_get_processor_name_201670096 != nil)
        let _method_get_system_fonts_1139954409_name = StringName(from: "get_system_fonts")
        self._method_get_system_fonts_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_get_system_fonts_1139954409_name._native_ptr(), 1139954409)
        assert(OS._method_get_system_fonts_1139954409 != nil)
        let _method_get_system_font_path_2262142305_name = StringName(from: "get_system_font_path")
        self._method_get_system_font_path_2262142305 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_get_system_font_path_2262142305_name._native_ptr(), 2262142305)
        assert(OS._method_get_system_font_path_2262142305 != nil)
        let _method_get_system_font_path_for_text_3824042574_name = StringName(from: "get_system_font_path_for_text")
        self._method_get_system_font_path_for_text_3824042574 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_get_system_font_path_for_text_3824042574_name._native_ptr(), 3824042574)
        assert(OS._method_get_system_font_path_for_text_3824042574 != nil)
        let _method_get_executable_path_201670096_name = StringName(from: "get_executable_path")
        self._method_get_executable_path_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_get_executable_path_201670096_name._native_ptr(), 201670096)
        assert(OS._method_get_executable_path_201670096 != nil)
        let _method_read_string_from_stdin_2841200299_name = StringName(from: "read_string_from_stdin")
        self._method_read_string_from_stdin_2841200299 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_read_string_from_stdin_2841200299_name._native_ptr(), 2841200299)
        assert(OS._method_read_string_from_stdin_2841200299 != nil)
        let _method_execute_2881709059_name = StringName(from: "execute")
        self._method_execute_2881709059 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_execute_2881709059_name._native_ptr(), 2881709059)
        assert(OS._method_execute_2881709059 != nil)
        let _method_create_process_2903767230_name = StringName(from: "create_process")
        self._method_create_process_2903767230 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_create_process_2903767230_name._native_ptr(), 2903767230)
        assert(OS._method_create_process_2903767230 != nil)
        let _method_create_instance_1080601263_name = StringName(from: "create_instance")
        self._method_create_instance_1080601263 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_create_instance_1080601263_name._native_ptr(), 1080601263)
        assert(OS._method_create_instance_1080601263 != nil)
        let _method_kill_844576869_name = StringName(from: "kill")
        self._method_kill_844576869 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_kill_844576869_name._native_ptr(), 844576869)
        assert(OS._method_kill_844576869 != nil)
        let _method_shell_open_166001499_name = StringName(from: "shell_open")
        self._method_shell_open_166001499 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_shell_open_166001499_name._native_ptr(), 166001499)
        assert(OS._method_shell_open_166001499 != nil)
        let _method_is_process_running_1116898809_name = StringName(from: "is_process_running")
        self._method_is_process_running_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_is_process_running_1116898809_name._native_ptr(), 1116898809)
        assert(OS._method_is_process_running_1116898809 != nil)
        let _method_get_process_id_3905245786_name = StringName(from: "get_process_id")
        self._method_get_process_id_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_get_process_id_3905245786_name._native_ptr(), 3905245786)
        assert(OS._method_get_process_id_3905245786 != nil)
        let _method_has_environment_3927539163_name = StringName(from: "has_environment")
        self._method_has_environment_3927539163 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_has_environment_3927539163_name._native_ptr(), 3927539163)
        assert(OS._method_has_environment_3927539163 != nil)
        let _method_get_environment_3135753539_name = StringName(from: "get_environment")
        self._method_get_environment_3135753539 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_get_environment_3135753539_name._native_ptr(), 3135753539)
        assert(OS._method_get_environment_3135753539 != nil)
        let _method_set_environment_3605043004_name = StringName(from: "set_environment")
        self._method_set_environment_3605043004 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_set_environment_3605043004_name._native_ptr(), 3605043004)
        assert(OS._method_set_environment_3605043004 != nil)
        let _method_unset_environment_3089850668_name = StringName(from: "unset_environment")
        self._method_unset_environment_3089850668 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_unset_environment_3089850668_name._native_ptr(), 3089850668)
        assert(OS._method_unset_environment_3089850668 != nil)
        let _method_get_name_201670096_name = StringName(from: "get_name")
        self._method_get_name_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_get_name_201670096_name._native_ptr(), 201670096)
        assert(OS._method_get_name_201670096 != nil)
        let _method_get_distribution_name_201670096_name = StringName(from: "get_distribution_name")
        self._method_get_distribution_name_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_get_distribution_name_201670096_name._native_ptr(), 201670096)
        assert(OS._method_get_distribution_name_201670096 != nil)
        let _method_get_version_201670096_name = StringName(from: "get_version")
        self._method_get_version_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_get_version_201670096_name._native_ptr(), 201670096)
        assert(OS._method_get_version_201670096 != nil)
        let _method_get_cmdline_args_2981934095_name = StringName(from: "get_cmdline_args")
        self._method_get_cmdline_args_2981934095 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_get_cmdline_args_2981934095_name._native_ptr(), 2981934095)
        assert(OS._method_get_cmdline_args_2981934095 != nil)
        let _method_get_cmdline_user_args_2981934095_name = StringName(from: "get_cmdline_user_args")
        self._method_get_cmdline_user_args_2981934095 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_get_cmdline_user_args_2981934095_name._native_ptr(), 2981934095)
        assert(OS._method_get_cmdline_user_args_2981934095 != nil)
        let _method_get_video_adapter_driver_info_1139954409_name = StringName(from: "get_video_adapter_driver_info")
        self._method_get_video_adapter_driver_info_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_get_video_adapter_driver_info_1139954409_name._native_ptr(), 1139954409)
        assert(OS._method_get_video_adapter_driver_info_1139954409 != nil)
        let _method_set_restart_on_exit_611198603_name = StringName(from: "set_restart_on_exit")
        self._method_set_restart_on_exit_611198603 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_set_restart_on_exit_611198603_name._native_ptr(), 611198603)
        assert(OS._method_set_restart_on_exit_611198603 != nil)
        let _method_is_restart_on_exit_set_36873697_name = StringName(from: "is_restart_on_exit_set")
        self._method_is_restart_on_exit_set_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_is_restart_on_exit_set_36873697_name._native_ptr(), 36873697)
        assert(OS._method_is_restart_on_exit_set_36873697 != nil)
        let _method_get_restart_on_exit_arguments_1139954409_name = StringName(from: "get_restart_on_exit_arguments")
        self._method_get_restart_on_exit_arguments_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_get_restart_on_exit_arguments_1139954409_name._native_ptr(), 1139954409)
        assert(OS._method_get_restart_on_exit_arguments_1139954409 != nil)
        let _method_delay_usec_998575451_name = StringName(from: "delay_usec")
        self._method_delay_usec_998575451 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_delay_usec_998575451_name._native_ptr(), 998575451)
        assert(OS._method_delay_usec_998575451 != nil)
        let _method_delay_msec_998575451_name = StringName(from: "delay_msec")
        self._method_delay_msec_998575451 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_delay_msec_998575451_name._native_ptr(), 998575451)
        assert(OS._method_delay_msec_998575451 != nil)
        let _method_get_locale_201670096_name = StringName(from: "get_locale")
        self._method_get_locale_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_get_locale_201670096_name._native_ptr(), 201670096)
        assert(OS._method_get_locale_201670096 != nil)
        let _method_get_locale_language_201670096_name = StringName(from: "get_locale_language")
        self._method_get_locale_language_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_get_locale_language_201670096_name._native_ptr(), 201670096)
        assert(OS._method_get_locale_language_201670096 != nil)
        let _method_get_model_name_201670096_name = StringName(from: "get_model_name")
        self._method_get_model_name_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_get_model_name_201670096_name._native_ptr(), 201670096)
        assert(OS._method_get_model_name_201670096 != nil)
        let _method_is_userfs_persistent_36873697_name = StringName(from: "is_userfs_persistent")
        self._method_is_userfs_persistent_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_is_userfs_persistent_36873697_name._native_ptr(), 36873697)
        assert(OS._method_is_userfs_persistent_36873697 != nil)
        let _method_is_stdout_verbose_36873697_name = StringName(from: "is_stdout_verbose")
        self._method_is_stdout_verbose_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_is_stdout_verbose_36873697_name._native_ptr(), 36873697)
        assert(OS._method_is_stdout_verbose_36873697 != nil)
        let _method_is_debug_build_36873697_name = StringName(from: "is_debug_build")
        self._method_is_debug_build_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_is_debug_build_36873697_name._native_ptr(), 36873697)
        assert(OS._method_is_debug_build_36873697 != nil)
        let _method_get_static_memory_usage_3905245786_name = StringName(from: "get_static_memory_usage")
        self._method_get_static_memory_usage_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_get_static_memory_usage_3905245786_name._native_ptr(), 3905245786)
        assert(OS._method_get_static_memory_usage_3905245786 != nil)
        let _method_get_static_memory_peak_usage_3905245786_name = StringName(from: "get_static_memory_peak_usage")
        self._method_get_static_memory_peak_usage_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_get_static_memory_peak_usage_3905245786_name._native_ptr(), 3905245786)
        assert(OS._method_get_static_memory_peak_usage_3905245786 != nil)
        let _method_move_to_trash_2113323047_name = StringName(from: "move_to_trash")
        self._method_move_to_trash_2113323047 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_move_to_trash_2113323047_name._native_ptr(), 2113323047)
        assert(OS._method_move_to_trash_2113323047 != nil)
        let _method_get_user_data_dir_201670096_name = StringName(from: "get_user_data_dir")
        self._method_get_user_data_dir_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_get_user_data_dir_201670096_name._native_ptr(), 201670096)
        assert(OS._method_get_user_data_dir_201670096 != nil)
        let _method_get_system_dir_1965199849_name = StringName(from: "get_system_dir")
        self._method_get_system_dir_1965199849 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_get_system_dir_1965199849_name._native_ptr(), 1965199849)
        assert(OS._method_get_system_dir_1965199849 != nil)
        let _method_get_config_dir_201670096_name = StringName(from: "get_config_dir")
        self._method_get_config_dir_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_get_config_dir_201670096_name._native_ptr(), 201670096)
        assert(OS._method_get_config_dir_201670096 != nil)
        let _method_get_data_dir_201670096_name = StringName(from: "get_data_dir")
        self._method_get_data_dir_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_get_data_dir_201670096_name._native_ptr(), 201670096)
        assert(OS._method_get_data_dir_201670096 != nil)
        let _method_get_cache_dir_201670096_name = StringName(from: "get_cache_dir")
        self._method_get_cache_dir_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_get_cache_dir_201670096_name._native_ptr(), 201670096)
        assert(OS._method_get_cache_dir_201670096 != nil)
        let _method_get_unique_id_201670096_name = StringName(from: "get_unique_id")
        self._method_get_unique_id_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_get_unique_id_201670096_name._native_ptr(), 201670096)
        assert(OS._method_get_unique_id_201670096 != nil)
        let _method_get_keycode_string_2261993717_name = StringName(from: "get_keycode_string")
        self._method_get_keycode_string_2261993717 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_get_keycode_string_2261993717_name._native_ptr(), 2261993717)
        assert(OS._method_get_keycode_string_2261993717 != nil)
        let _method_is_keycode_unicode_1116898809_name = StringName(from: "is_keycode_unicode")
        self._method_is_keycode_unicode_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_is_keycode_unicode_1116898809_name._native_ptr(), 1116898809)
        assert(OS._method_is_keycode_unicode_1116898809 != nil)
        let _method_find_keycode_from_string_1084858572_name = StringName(from: "find_keycode_from_string")
        self._method_find_keycode_from_string_1084858572 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_find_keycode_from_string_1084858572_name._native_ptr(), 1084858572)
        assert(OS._method_find_keycode_from_string_1084858572 != nil)
        let _method_set_use_file_access_save_and_swap_2586408642_name = StringName(from: "set_use_file_access_save_and_swap")
        self._method_set_use_file_access_save_and_swap_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_set_use_file_access_save_and_swap_2586408642_name._native_ptr(), 2586408642)
        assert(OS._method_set_use_file_access_save_and_swap_2586408642 != nil)
        let _method_set_thread_name_166001499_name = StringName(from: "set_thread_name")
        self._method_set_thread_name_166001499 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_set_thread_name_166001499_name._native_ptr(), 166001499)
        assert(OS._method_set_thread_name_166001499 != nil)
        let _method_get_thread_caller_id_3905245786_name = StringName(from: "get_thread_caller_id")
        self._method_get_thread_caller_id_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_get_thread_caller_id_3905245786_name._native_ptr(), 3905245786)
        assert(OS._method_get_thread_caller_id_3905245786 != nil)
        let _method_get_main_thread_id_3905245786_name = StringName(from: "get_main_thread_id")
        self._method_get_main_thread_id_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_get_main_thread_id_3905245786_name._native_ptr(), 3905245786)
        assert(OS._method_get_main_thread_id_3905245786 != nil)
        let _method_has_feature_3927539163_name = StringName(from: "has_feature")
        self._method_has_feature_3927539163 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_has_feature_3927539163_name._native_ptr(), 3927539163)
        assert(OS._method_has_feature_3927539163 != nil)
        let _method_request_permission_2323990056_name = StringName(from: "request_permission")
        self._method_request_permission_2323990056 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_request_permission_2323990056_name._native_ptr(), 2323990056)
        assert(OS._method_request_permission_2323990056 != nil)
        let _method_request_permissions_2240911060_name = StringName(from: "request_permissions")
        self._method_request_permissions_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_request_permissions_2240911060_name._native_ptr(), 2240911060)
        assert(OS._method_request_permissions_2240911060 != nil)
        let _method_get_granted_permissions_1139954409_name = StringName(from: "get_granted_permissions")
        self._method_get_granted_permissions_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name_OS._native_ptr(), _method_get_granted_permissions_1139954409_name._native_ptr(), 1139954409)
        assert(OS._method_get_granted_permissions_1139954409 != nil)
    }

    public func get_connected_midi_inputs() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_connected_midi_inputs_2981934095,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func open_midi_inputs()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_open_midi_inputs_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func close_midi_inputs()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_close_midi_inputs_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func alert(text: godot.String, title: godot.String)  {
        let title_native = title._native_ptr()
        let text_native = text._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(text_native), .init(title_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_alert_233059325,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func crash(message: godot.String)  {
        let message_native = message._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(message_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_crash_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_low_processor_usage_mode(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_low_processor_usage_mode_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_in_low_processor_usage_mode() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_in_low_processor_usage_mode_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_low_processor_usage_mode_sleep_usec(usec: Int64)  {
        withUnsafePointer(to: usec) { usec_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(usec_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_low_processor_usage_mode_sleep_usec_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_low_processor_usage_mode_sleep_usec() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_low_processor_usage_mode_sleep_usec_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_processor_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_processor_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_processor_name() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_processor_name_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_system_fonts() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_system_fonts_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func get_system_font_path(font_name: godot.String, weight: Int64, stretch: Int64, italic: UInt8) -> godot.String {
        withUnsafePointer(to: italic) { italic_native in
        withUnsafePointer(to: stretch) { stretch_native in
        withUnsafePointer(to: weight) { weight_native in
        let font_name_native = font_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_name_native), .init(weight_native), .init(stretch_native), .init(italic_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_system_font_path_2262142305,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
        }
        }
    }
    public func get_system_font_path_for_text(font_name: godot.String, text: godot.String, locale: godot.String, script: godot.String, weight: Int64, stretch: Int64, italic: UInt8) -> PackedStringArray {
        withUnsafePointer(to: italic) { italic_native in
        withUnsafePointer(to: stretch) { stretch_native in
        withUnsafePointer(to: weight) { weight_native in
        let script_native = script._native_ptr()
        let locale_native = locale._native_ptr()
        let text_native = text._native_ptr()
        let font_name_native = font_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 7)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_name_native), .init(text_native), .init(locale_native), .init(script_native), .init(weight_native), .init(stretch_native), .init(italic_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_system_font_path_for_text_3824042574,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
        }
        }
        }
    }
    public func get_executable_path() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_executable_path_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func read_string_from_stdin() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_read_string_from_stdin_2841200299,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func execute(path: godot.String, arguments: PackedStringArray, output: Array, read_stderr: UInt8, open_console: UInt8) -> Int64 {
        withUnsafePointer(to: open_console) { open_console_native in
        withUnsafePointer(to: read_stderr) { read_stderr_native in
        let output_native = output._native_ptr()
        let arguments_native = arguments._native_ptr()
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(arguments_native), .init(output_native), .init(read_stderr_native), .init(open_console_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_execute_2881709059,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
        }
    }
    public func create_process(path: godot.String, arguments: PackedStringArray, open_console: UInt8) -> Int64 {
        withUnsafePointer(to: open_console) { open_console_native in
        let arguments_native = arguments._native_ptr()
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(arguments_native), .init(open_console_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_process_2903767230,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func create_instance(arguments: PackedStringArray) -> Int64 {
        let arguments_native = arguments._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(arguments_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_instance_1080601263,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func kill(pid: Int64) -> Error {
        withUnsafePointer(to: pid) { pid_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_kill_844576869,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
    }
    public func shell_open(uri: godot.String) -> Error {
        let uri_native = uri._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(uri_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shell_open_166001499,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func is_process_running(pid: Int64) -> UInt8 {
        withUnsafePointer(to: pid) { pid_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pid_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_process_running_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func get_process_id() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_process_id_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func has_environment(variable: godot.String) -> UInt8 {
        let variable_native = variable._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(variable_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_environment_3927539163,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_environment(variable: godot.String) -> godot.String {
        let variable_native = variable._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(variable_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_environment_3135753539,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func set_environment(variable: godot.String, value: godot.String)  {
        let value_native = value._native_ptr()
        let variable_native = variable._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(variable_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_environment_3605043004,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func unset_environment(variable: godot.String)  {
        let variable_native = variable._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(variable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_unset_environment_3089850668,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_name() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_name_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_distribution_name() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_distribution_name_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_version() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_version_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_cmdline_args() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cmdline_args_2981934095,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func get_cmdline_user_args() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cmdline_user_args_2981934095,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func get_video_adapter_driver_info() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_video_adapter_driver_info_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func set_restart_on_exit(restart: UInt8, arguments: PackedStringArray)  {
        withUnsafePointer(to: restart) { restart_native in
        let arguments_native = arguments._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(restart_native), .init(arguments_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_restart_on_exit_611198603,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_restart_on_exit_set() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_restart_on_exit_set_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_restart_on_exit_arguments() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_restart_on_exit_arguments_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func delay_usec(usec: Int64)  {
        withUnsafePointer(to: usec) { usec_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(usec_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_delay_usec_998575451,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func delay_msec(msec: Int64)  {
        withUnsafePointer(to: msec) { msec_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(msec_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_delay_msec_998575451,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_locale() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_locale_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_locale_language() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_locale_language_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_model_name() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_model_name_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func is_userfs_persistent() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_userfs_persistent_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func is_stdout_verbose() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_stdout_verbose_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func is_debug_build() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_debug_build_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_static_memory_usage() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_static_memory_usage_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_static_memory_peak_usage() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_static_memory_peak_usage_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func move_to_trash(path: godot.String) -> Error {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_move_to_trash_2113323047,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func get_user_data_dir() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_user_data_dir_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_system_dir(dir: OS.SystemDir, shared_storage: UInt8) -> godot.String {
        withUnsafePointer(to: shared_storage) { shared_storage_native in
        withUnsafePointer(to: dir.rawValue) { dir_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(dir_native), .init(shared_storage_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_system_dir_1965199849,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
        }
    }
    public func get_config_dir() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_config_dir_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_data_dir() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_data_dir_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_cache_dir() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cache_dir_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_unique_id() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_unique_id_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_keycode_string(code: Key) -> godot.String {
        withUnsafePointer(to: code.rawValue) { code_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(code_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_keycode_string_2261993717,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func is_keycode_unicode(code: Int64) -> UInt8 {
        withUnsafePointer(to: code) { code_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(code_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_keycode_unicode_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func find_keycode_from_string(string: godot.String) -> Key {
        let string_native = string._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(string_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_find_keycode_from_string_1084858572,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Key(godot: __resPtr.pointee)
    }
    public func set_use_file_access_save_and_swap(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_use_file_access_save_and_swap_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_thread_name(name: godot.String) -> Error {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_thread_name_166001499,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func get_thread_caller_id() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_thread_caller_id_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_main_thread_id() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_main_thread_id_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func has_feature(tag_name: godot.String) -> UInt8 {
        let tag_name_native = tag_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tag_name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_feature_3927539163,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func request_permission(name: godot.String) -> UInt8 {
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
                    Self._method_request_permission_2323990056,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func request_permissions() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_request_permissions_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_granted_permissions() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_granted_permissions_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
}