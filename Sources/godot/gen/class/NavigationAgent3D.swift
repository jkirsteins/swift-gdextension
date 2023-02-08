import godot_native

fileprivate var __godot_name_NavigationAgent3D: StringName! = nil

/// 3D Agent used in navigation for collision avoidance.
/// 
/// 3D Agent that is used in navigation to reach a position while avoiding static and dynamic obstacles. The dynamic obstacles are avoided using RVO collision avoidance. The agent needs navigation data to work correctly. [NavigationAgent3D] is physics safe.
///  
/// [b]Note:[/b] After setting [member target_position] it is required to use the [method get_next_path_position] function once every physics frame to update the internal path logic of the NavigationAgent. The returned vector position from this function should be used as the next movement position for the agent's parent Node.
open class NavigationAgent3D : Node {

    

    public override class var __godot_name: StringName { __godot_name_NavigationAgent3D }

    static var _method_get_rid_2944877500: GDExtensionMethodBindPtr! = nil
    static var _method_set_avoidance_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_avoidance_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_path_desired_distance_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_path_desired_distance_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_target_desired_distance_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_target_desired_distance_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_radius_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_radius_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_agent_height_offset_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_agent_height_offset_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_ignore_y_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_ignore_y_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_neighbor_distance_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_neighbor_distance_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_max_neighbors_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_neighbors_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_time_horizon_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_time_horizon_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_max_speed_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_speed_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_path_max_distance_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_path_max_distance_191475506: GDExtensionMethodBindPtr! = nil
    static var _method_set_navigation_layers_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_navigation_layers_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_navigation_layer_value_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_get_navigation_layer_value_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_path_metadata_flags_2713846708: GDExtensionMethodBindPtr! = nil
    static var _method_get_path_metadata_flags_1582332802: GDExtensionMethodBindPtr! = nil
    static var _method_set_navigation_map_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_get_navigation_map_2944877500: GDExtensionMethodBindPtr! = nil
    static var _method_set_target_position_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_target_position_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_get_next_path_position_3783033775: GDExtensionMethodBindPtr! = nil
    static var _method_distance_to_target_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_velocity_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_current_navigation_result_728825684: GDExtensionMethodBindPtr! = nil
    static var _method_get_current_navigation_path_497664490: GDExtensionMethodBindPtr! = nil
    static var _method_get_current_navigation_path_index_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_is_target_reached_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_is_target_reachable_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_is_navigation_finished_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_get_final_position_3783033775: GDExtensionMethodBindPtr! = nil
    static var _method_set_debug_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_debug_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_debug_use_custom_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_debug_use_custom_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_debug_path_custom_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_debug_path_custom_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_debug_path_custom_point_size_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_debug_path_custom_point_size_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_NavigationAgent3D = StringName(from: "NavigationAgent3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_get_rid_2944877500_name = StringName(from: "get_rid")
        self._method_get_rid_2944877500 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_get_rid_2944877500_name._native_ptr(), 2944877500)
        assert(NavigationAgent3D._method_get_rid_2944877500 != nil)
        let _method_set_avoidance_enabled_2586408642_name = StringName(from: "set_avoidance_enabled")
        self._method_set_avoidance_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_set_avoidance_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(NavigationAgent3D._method_set_avoidance_enabled_2586408642 != nil)
        let _method_get_avoidance_enabled_36873697_name = StringName(from: "get_avoidance_enabled")
        self._method_get_avoidance_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_get_avoidance_enabled_36873697_name._native_ptr(), 36873697)
        assert(NavigationAgent3D._method_get_avoidance_enabled_36873697 != nil)
        let _method_set_path_desired_distance_373806689_name = StringName(from: "set_path_desired_distance")
        self._method_set_path_desired_distance_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_set_path_desired_distance_373806689_name._native_ptr(), 373806689)
        assert(NavigationAgent3D._method_set_path_desired_distance_373806689 != nil)
        let _method_get_path_desired_distance_1740695150_name = StringName(from: "get_path_desired_distance")
        self._method_get_path_desired_distance_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_get_path_desired_distance_1740695150_name._native_ptr(), 1740695150)
        assert(NavigationAgent3D._method_get_path_desired_distance_1740695150 != nil)
        let _method_set_target_desired_distance_373806689_name = StringName(from: "set_target_desired_distance")
        self._method_set_target_desired_distance_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_set_target_desired_distance_373806689_name._native_ptr(), 373806689)
        assert(NavigationAgent3D._method_set_target_desired_distance_373806689 != nil)
        let _method_get_target_desired_distance_1740695150_name = StringName(from: "get_target_desired_distance")
        self._method_get_target_desired_distance_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_get_target_desired_distance_1740695150_name._native_ptr(), 1740695150)
        assert(NavigationAgent3D._method_get_target_desired_distance_1740695150 != nil)
        let _method_set_radius_373806689_name = StringName(from: "set_radius")
        self._method_set_radius_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_set_radius_373806689_name._native_ptr(), 373806689)
        assert(NavigationAgent3D._method_set_radius_373806689 != nil)
        let _method_get_radius_1740695150_name = StringName(from: "get_radius")
        self._method_get_radius_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_get_radius_1740695150_name._native_ptr(), 1740695150)
        assert(NavigationAgent3D._method_get_radius_1740695150 != nil)
        let _method_set_agent_height_offset_373806689_name = StringName(from: "set_agent_height_offset")
        self._method_set_agent_height_offset_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_set_agent_height_offset_373806689_name._native_ptr(), 373806689)
        assert(NavigationAgent3D._method_set_agent_height_offset_373806689 != nil)
        let _method_get_agent_height_offset_1740695150_name = StringName(from: "get_agent_height_offset")
        self._method_get_agent_height_offset_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_get_agent_height_offset_1740695150_name._native_ptr(), 1740695150)
        assert(NavigationAgent3D._method_get_agent_height_offset_1740695150 != nil)
        let _method_set_ignore_y_2586408642_name = StringName(from: "set_ignore_y")
        self._method_set_ignore_y_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_set_ignore_y_2586408642_name._native_ptr(), 2586408642)
        assert(NavigationAgent3D._method_set_ignore_y_2586408642 != nil)
        let _method_get_ignore_y_36873697_name = StringName(from: "get_ignore_y")
        self._method_get_ignore_y_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_get_ignore_y_36873697_name._native_ptr(), 36873697)
        assert(NavigationAgent3D._method_get_ignore_y_36873697 != nil)
        let _method_set_neighbor_distance_373806689_name = StringName(from: "set_neighbor_distance")
        self._method_set_neighbor_distance_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_set_neighbor_distance_373806689_name._native_ptr(), 373806689)
        assert(NavigationAgent3D._method_set_neighbor_distance_373806689 != nil)
        let _method_get_neighbor_distance_1740695150_name = StringName(from: "get_neighbor_distance")
        self._method_get_neighbor_distance_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_get_neighbor_distance_1740695150_name._native_ptr(), 1740695150)
        assert(NavigationAgent3D._method_get_neighbor_distance_1740695150 != nil)
        let _method_set_max_neighbors_1286410249_name = StringName(from: "set_max_neighbors")
        self._method_set_max_neighbors_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_set_max_neighbors_1286410249_name._native_ptr(), 1286410249)
        assert(NavigationAgent3D._method_set_max_neighbors_1286410249 != nil)
        let _method_get_max_neighbors_3905245786_name = StringName(from: "get_max_neighbors")
        self._method_get_max_neighbors_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_get_max_neighbors_3905245786_name._native_ptr(), 3905245786)
        assert(NavigationAgent3D._method_get_max_neighbors_3905245786 != nil)
        let _method_set_time_horizon_373806689_name = StringName(from: "set_time_horizon")
        self._method_set_time_horizon_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_set_time_horizon_373806689_name._native_ptr(), 373806689)
        assert(NavigationAgent3D._method_set_time_horizon_373806689 != nil)
        let _method_get_time_horizon_1740695150_name = StringName(from: "get_time_horizon")
        self._method_get_time_horizon_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_get_time_horizon_1740695150_name._native_ptr(), 1740695150)
        assert(NavigationAgent3D._method_get_time_horizon_1740695150 != nil)
        let _method_set_max_speed_373806689_name = StringName(from: "set_max_speed")
        self._method_set_max_speed_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_set_max_speed_373806689_name._native_ptr(), 373806689)
        assert(NavigationAgent3D._method_set_max_speed_373806689 != nil)
        let _method_get_max_speed_1740695150_name = StringName(from: "get_max_speed")
        self._method_get_max_speed_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_get_max_speed_1740695150_name._native_ptr(), 1740695150)
        assert(NavigationAgent3D._method_get_max_speed_1740695150 != nil)
        let _method_set_path_max_distance_373806689_name = StringName(from: "set_path_max_distance")
        self._method_set_path_max_distance_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_set_path_max_distance_373806689_name._native_ptr(), 373806689)
        assert(NavigationAgent3D._method_set_path_max_distance_373806689 != nil)
        let _method_get_path_max_distance_191475506_name = StringName(from: "get_path_max_distance")
        self._method_get_path_max_distance_191475506 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_get_path_max_distance_191475506_name._native_ptr(), 191475506)
        assert(NavigationAgent3D._method_get_path_max_distance_191475506 != nil)
        let _method_set_navigation_layers_1286410249_name = StringName(from: "set_navigation_layers")
        self._method_set_navigation_layers_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_set_navigation_layers_1286410249_name._native_ptr(), 1286410249)
        assert(NavigationAgent3D._method_set_navigation_layers_1286410249 != nil)
        let _method_get_navigation_layers_3905245786_name = StringName(from: "get_navigation_layers")
        self._method_get_navigation_layers_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_get_navigation_layers_3905245786_name._native_ptr(), 3905245786)
        assert(NavigationAgent3D._method_get_navigation_layers_3905245786 != nil)
        let _method_set_navigation_layer_value_300928843_name = StringName(from: "set_navigation_layer_value")
        self._method_set_navigation_layer_value_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_set_navigation_layer_value_300928843_name._native_ptr(), 300928843)
        assert(NavigationAgent3D._method_set_navigation_layer_value_300928843 != nil)
        let _method_get_navigation_layer_value_1116898809_name = StringName(from: "get_navigation_layer_value")
        self._method_get_navigation_layer_value_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_get_navigation_layer_value_1116898809_name._native_ptr(), 1116898809)
        assert(NavigationAgent3D._method_get_navigation_layer_value_1116898809 != nil)
        let _method_set_path_metadata_flags_2713846708_name = StringName(from: "set_path_metadata_flags")
        self._method_set_path_metadata_flags_2713846708 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_set_path_metadata_flags_2713846708_name._native_ptr(), 2713846708)
        assert(NavigationAgent3D._method_set_path_metadata_flags_2713846708 != nil)
        let _method_get_path_metadata_flags_1582332802_name = StringName(from: "get_path_metadata_flags")
        self._method_get_path_metadata_flags_1582332802 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_get_path_metadata_flags_1582332802_name._native_ptr(), 1582332802)
        assert(NavigationAgent3D._method_get_path_metadata_flags_1582332802 != nil)
        let _method_set_navigation_map_2722037293_name = StringName(from: "set_navigation_map")
        self._method_set_navigation_map_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_set_navigation_map_2722037293_name._native_ptr(), 2722037293)
        assert(NavigationAgent3D._method_set_navigation_map_2722037293 != nil)
        let _method_get_navigation_map_2944877500_name = StringName(from: "get_navigation_map")
        self._method_get_navigation_map_2944877500 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_get_navigation_map_2944877500_name._native_ptr(), 2944877500)
        assert(NavigationAgent3D._method_get_navigation_map_2944877500 != nil)
        let _method_set_target_position_3460891852_name = StringName(from: "set_target_position")
        self._method_set_target_position_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_set_target_position_3460891852_name._native_ptr(), 3460891852)
        assert(NavigationAgent3D._method_set_target_position_3460891852 != nil)
        let _method_get_target_position_3360562783_name = StringName(from: "get_target_position")
        self._method_get_target_position_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_get_target_position_3360562783_name._native_ptr(), 3360562783)
        assert(NavigationAgent3D._method_get_target_position_3360562783 != nil)
        let _method_get_next_path_position_3783033775_name = StringName(from: "get_next_path_position")
        self._method_get_next_path_position_3783033775 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_get_next_path_position_3783033775_name._native_ptr(), 3783033775)
        assert(NavigationAgent3D._method_get_next_path_position_3783033775 != nil)
        let _method_distance_to_target_1740695150_name = StringName(from: "distance_to_target")
        self._method_distance_to_target_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_distance_to_target_1740695150_name._native_ptr(), 1740695150)
        assert(NavigationAgent3D._method_distance_to_target_1740695150 != nil)
        let _method_set_velocity_3460891852_name = StringName(from: "set_velocity")
        self._method_set_velocity_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_set_velocity_3460891852_name._native_ptr(), 3460891852)
        assert(NavigationAgent3D._method_set_velocity_3460891852 != nil)
        let _method_get_current_navigation_result_728825684_name = StringName(from: "get_current_navigation_result")
        self._method_get_current_navigation_result_728825684 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_get_current_navigation_result_728825684_name._native_ptr(), 728825684)
        assert(NavigationAgent3D._method_get_current_navigation_result_728825684 != nil)
        let _method_get_current_navigation_path_497664490_name = StringName(from: "get_current_navigation_path")
        self._method_get_current_navigation_path_497664490 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_get_current_navigation_path_497664490_name._native_ptr(), 497664490)
        assert(NavigationAgent3D._method_get_current_navigation_path_497664490 != nil)
        let _method_get_current_navigation_path_index_3905245786_name = StringName(from: "get_current_navigation_path_index")
        self._method_get_current_navigation_path_index_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_get_current_navigation_path_index_3905245786_name._native_ptr(), 3905245786)
        assert(NavigationAgent3D._method_get_current_navigation_path_index_3905245786 != nil)
        let _method_is_target_reached_36873697_name = StringName(from: "is_target_reached")
        self._method_is_target_reached_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_is_target_reached_36873697_name._native_ptr(), 36873697)
        assert(NavigationAgent3D._method_is_target_reached_36873697 != nil)
        let _method_is_target_reachable_2240911060_name = StringName(from: "is_target_reachable")
        self._method_is_target_reachable_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_is_target_reachable_2240911060_name._native_ptr(), 2240911060)
        assert(NavigationAgent3D._method_is_target_reachable_2240911060 != nil)
        let _method_is_navigation_finished_2240911060_name = StringName(from: "is_navigation_finished")
        self._method_is_navigation_finished_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_is_navigation_finished_2240911060_name._native_ptr(), 2240911060)
        assert(NavigationAgent3D._method_is_navigation_finished_2240911060 != nil)
        let _method_get_final_position_3783033775_name = StringName(from: "get_final_position")
        self._method_get_final_position_3783033775 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_get_final_position_3783033775_name._native_ptr(), 3783033775)
        assert(NavigationAgent3D._method_get_final_position_3783033775 != nil)
        let _method_set_debug_enabled_2586408642_name = StringName(from: "set_debug_enabled")
        self._method_set_debug_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_set_debug_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(NavigationAgent3D._method_set_debug_enabled_2586408642 != nil)
        let _method_get_debug_enabled_36873697_name = StringName(from: "get_debug_enabled")
        self._method_get_debug_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_get_debug_enabled_36873697_name._native_ptr(), 36873697)
        assert(NavigationAgent3D._method_get_debug_enabled_36873697 != nil)
        let _method_set_debug_use_custom_2586408642_name = StringName(from: "set_debug_use_custom")
        self._method_set_debug_use_custom_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_set_debug_use_custom_2586408642_name._native_ptr(), 2586408642)
        assert(NavigationAgent3D._method_set_debug_use_custom_2586408642 != nil)
        let _method_get_debug_use_custom_36873697_name = StringName(from: "get_debug_use_custom")
        self._method_get_debug_use_custom_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_get_debug_use_custom_36873697_name._native_ptr(), 36873697)
        assert(NavigationAgent3D._method_get_debug_use_custom_36873697 != nil)
        let _method_set_debug_path_custom_color_2920490490_name = StringName(from: "set_debug_path_custom_color")
        self._method_set_debug_path_custom_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_set_debug_path_custom_color_2920490490_name._native_ptr(), 2920490490)
        assert(NavigationAgent3D._method_set_debug_path_custom_color_2920490490 != nil)
        let _method_get_debug_path_custom_color_3444240500_name = StringName(from: "get_debug_path_custom_color")
        self._method_get_debug_path_custom_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_get_debug_path_custom_color_3444240500_name._native_ptr(), 3444240500)
        assert(NavigationAgent3D._method_get_debug_path_custom_color_3444240500 != nil)
        let _method_set_debug_path_custom_point_size_373806689_name = StringName(from: "set_debug_path_custom_point_size")
        self._method_set_debug_path_custom_point_size_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_set_debug_path_custom_point_size_373806689_name._native_ptr(), 373806689)
        assert(NavigationAgent3D._method_set_debug_path_custom_point_size_373806689 != nil)
        let _method_get_debug_path_custom_point_size_1740695150_name = StringName(from: "get_debug_path_custom_point_size")
        self._method_get_debug_path_custom_point_size_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationAgent3D._native_ptr(), _method_get_debug_path_custom_point_size_1740695150_name._native_ptr(), 1740695150)
        assert(NavigationAgent3D._method_get_debug_path_custom_point_size_1740695150 != nil)
    }

    public func get_rid() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_rid_2944877500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
    }
    public func set_avoidance_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_avoidance_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_avoidance_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_avoidance_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_path_desired_distance(desired_distance: Float64)  {
        withUnsafePointer(to: desired_distance) { desired_distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(desired_distance_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_path_desired_distance_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_path_desired_distance() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_path_desired_distance_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_target_desired_distance(desired_distance: Float64)  {
        withUnsafePointer(to: desired_distance) { desired_distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(desired_distance_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_target_desired_distance_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_target_desired_distance() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_target_desired_distance_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_radius(radius: Float64)  {
        withUnsafePointer(to: radius) { radius_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(radius_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_radius_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_radius() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_radius_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_agent_height_offset(agent_height_offset: Float64)  {
        withUnsafePointer(to: agent_height_offset) { agent_height_offset_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(agent_height_offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_agent_height_offset_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_agent_height_offset() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_agent_height_offset_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_ignore_y(ignore: UInt8)  {
        withUnsafePointer(to: ignore) { ignore_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ignore_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ignore_y_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_ignore_y() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ignore_y_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_neighbor_distance(neighbor_distance: Float64)  {
        withUnsafePointer(to: neighbor_distance) { neighbor_distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(neighbor_distance_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_neighbor_distance_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_neighbor_distance() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_neighbor_distance_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_max_neighbors(max_neighbors: Int64)  {
        withUnsafePointer(to: max_neighbors) { max_neighbors_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_neighbors_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_max_neighbors_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_max_neighbors() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_max_neighbors_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_time_horizon(time_horizon: Float64)  {
        withUnsafePointer(to: time_horizon) { time_horizon_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(time_horizon_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_time_horizon_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_time_horizon() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_time_horizon_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_max_speed(max_speed: Float64)  {
        withUnsafePointer(to: max_speed) { max_speed_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_speed_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_max_speed_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_max_speed() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_max_speed_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_path_max_distance(max_speed: Float64)  {
        withUnsafePointer(to: max_speed) { max_speed_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_speed_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_path_max_distance_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_path_max_distance() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_path_max_distance_191475506,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_navigation_layers(navigation_layers: Int64)  {
        withUnsafePointer(to: navigation_layers) { navigation_layers_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(navigation_layers_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_navigation_layers_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_navigation_layers() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_navigation_layers_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_navigation_layer_value(layer_number: Int64, value: UInt8)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: layer_number) { layer_number_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_number_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_navigation_layer_value_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_navigation_layer_value(layer_number: Int64) -> UInt8 {
        withUnsafePointer(to: layer_number) { layer_number_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_number_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_navigation_layer_value_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func set_path_metadata_flags(flags: NavigationPathQueryParameters3D.PathMetadataFlags)  {
        withUnsafePointer(to: flags.rawValue) { flags_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flags_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_path_metadata_flags_2713846708,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_path_metadata_flags() -> NavigationPathQueryParameters3D.PathMetadataFlags {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_path_metadata_flags_1582332802,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NavigationPathQueryParameters3D.PathMetadataFlags(godot: __resPtr.pointee)
    }
    public func set_navigation_map(navigation_map: RID)  {
        let navigation_map_native = navigation_map._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(navigation_map_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_navigation_map_2722037293,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_navigation_map() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_navigation_map_2944877500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
    }
    public func set_target_position(position: Vector3)  {
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_target_position_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_target_position() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_target_position_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func get_next_path_position() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_next_path_position_3783033775,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func distance_to_target() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_distance_to_target_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_velocity(velocity: Vector3)  {
        let velocity_native = velocity._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(velocity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_velocity_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_current_navigation_result() -> NavigationPathQueryResult3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_current_navigation_result_728825684,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NavigationPathQueryResult3D(godot: __resPtr.pointee)
    }
    public func get_current_navigation_path() -> PackedVector3Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_current_navigation_path_497664490,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector3Array(godot: __resPtr.pointee)
    }
    public func get_current_navigation_path_index() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_current_navigation_path_index_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func is_target_reached() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_target_reached_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func is_target_reachable() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_target_reachable_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func is_navigation_finished() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_navigation_finished_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_final_position() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_final_position_3783033775,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func set_debug_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_debug_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_debug_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_debug_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_debug_use_custom(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_debug_use_custom_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_debug_use_custom() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_debug_use_custom_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_debug_path_custom_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_debug_path_custom_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_debug_path_custom_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_debug_path_custom_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
    public func set_debug_path_custom_point_size(point_size: Float64)  {
        withUnsafePointer(to: point_size) { point_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(point_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_debug_path_custom_point_size_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_debug_path_custom_point_size() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_debug_path_custom_point_size_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
}