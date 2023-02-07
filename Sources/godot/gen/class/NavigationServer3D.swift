import godot_native

fileprivate var __godot_name_NavigationServer3D: StringName! = nil

/// Server interface for low-level 3D navigation access
/// 
/// NavigationServer3D is the server responsible for all 3D navigation. It handles several objects, namely maps, regions and agents.
///  
/// Maps are made up of regions, which are made of navigation meshes. Together, they define the navigable areas in the 3D world.
///  
/// [b]Note:[/b] Most NavigationServer changes take effect after the next physics frame and not immediately. This includes all changes made to maps, regions or agents by navigation related Nodes in the SceneTree or made through scripts.
///  
/// For two regions to be connected to each other, they must share a similar edge. An edge is considered connected to another if both of its two vertices are at a distance less than [code]edge_connection_margin[/code] to the respective other edge's vertex.
///  
/// You may assign navigation layers to regions with [method NavigationServer3D.region_set_navigation_layers], which then can be checked upon when requesting a path with [method NavigationServer3D.map_get_path]. This allows allowing or forbidding some areas to 3D objects.
///  
/// To use the collision avoidance system, you may use agents. You can set an agent's target velocity, then the servers will emit a callback with a modified velocity.
///  
/// [b]Note:[/b] The collision avoidance system ignores regions. Using the modified velocity as-is might lead to pushing and agent outside of a navigable area. This is a limitation of the collision avoidance system, any more complex situation may require the use of the physics engine.
///  
/// This server keeps tracks of any call and executes them during the sync phase. This means that you can request any change to the map, using any thread, without worrying.
public class NavigationServer3D : Object {

    public enum ProcessInfo : Int32 {
        case INFO_ACTIVE_MAPS = 0
        case INFO_REGION_COUNT = 1
        case INFO_AGENT_COUNT = 2
        case INFO_LINK_COUNT = 3
        case INFO_POLYGON_COUNT = 4
        case INFO_EDGE_COUNT = 5
        case INFO_EDGE_MERGE_COUNT = 6
        case INFO_EDGE_CONNECTION_COUNT = 7
        case INFO_EDGE_FREE_COUNT = 8
    }

    public override class var __godot_name: StringName { __godot_name_NavigationServer3D }

    static var _method_get_maps_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_map_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_map_set_active_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_map_is_active_4155700596: GDExtensionMethodBindPtr! = nil
    static var _method_map_set_up_3227306858: GDExtensionMethodBindPtr! = nil
    static var _method_map_get_up_531438156: GDExtensionMethodBindPtr! = nil
    static var _method_map_set_cell_size_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_map_get_cell_size_866169185: GDExtensionMethodBindPtr! = nil
    static var _method_map_set_edge_connection_margin_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_map_get_edge_connection_margin_866169185: GDExtensionMethodBindPtr! = nil
    static var _method_map_set_link_connection_radius_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_map_get_link_connection_radius_866169185: GDExtensionMethodBindPtr! = nil
    static var _method_map_get_path_2121045993: GDExtensionMethodBindPtr! = nil
    static var _method_map_get_closest_point_to_segment_3830095642: GDExtensionMethodBindPtr! = nil
    static var _method_map_get_closest_point_2056183332: GDExtensionMethodBindPtr! = nil
    static var _method_map_get_closest_point_normal_2056183332: GDExtensionMethodBindPtr! = nil
    static var _method_map_get_closest_point_owner_553364610: GDExtensionMethodBindPtr! = nil
    static var _method_map_get_links_2684255073: GDExtensionMethodBindPtr! = nil
    static var _method_map_get_regions_2684255073: GDExtensionMethodBindPtr! = nil
    static var _method_map_get_agents_2684255073: GDExtensionMethodBindPtr! = nil
    static var _method_map_force_update_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_query_path_3415008901: GDExtensionMethodBindPtr! = nil
    static var _method_region_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_region_set_enter_cost_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_region_get_enter_cost_866169185: GDExtensionMethodBindPtr! = nil
    static var _method_region_set_travel_cost_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_region_get_travel_cost_866169185: GDExtensionMethodBindPtr! = nil
    static var _method_region_set_owner_id_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_region_get_owner_id_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_region_owns_point_2360011153: GDExtensionMethodBindPtr! = nil
    static var _method_region_set_map_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_region_get_map_3814569979: GDExtensionMethodBindPtr! = nil
    static var _method_region_set_navigation_layers_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_region_get_navigation_layers_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_region_set_transform_3935195649: GDExtensionMethodBindPtr! = nil
    static var _method_region_set_navigation_mesh_2764952978: GDExtensionMethodBindPtr! = nil
    static var _method_region_bake_navigation_mesh_1401173477: GDExtensionMethodBindPtr! = nil
    static var _method_region_get_connections_count_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_region_get_connection_pathway_start_3440143363: GDExtensionMethodBindPtr! = nil
    static var _method_region_get_connection_pathway_end_3440143363: GDExtensionMethodBindPtr! = nil
    static var _method_link_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_link_set_map_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_link_get_map_3814569979: GDExtensionMethodBindPtr! = nil
    static var _method_link_set_bidirectional_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_link_is_bidirectional_4155700596: GDExtensionMethodBindPtr! = nil
    static var _method_link_set_navigation_layers_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_link_get_navigation_layers_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_link_set_start_position_3227306858: GDExtensionMethodBindPtr! = nil
    static var _method_link_get_start_position_531438156: GDExtensionMethodBindPtr! = nil
    static var _method_link_set_end_position_3227306858: GDExtensionMethodBindPtr! = nil
    static var _method_link_get_end_position_531438156: GDExtensionMethodBindPtr! = nil
    static var _method_link_set_enter_cost_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_link_get_enter_cost_866169185: GDExtensionMethodBindPtr! = nil
    static var _method_link_set_travel_cost_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_link_get_travel_cost_866169185: GDExtensionMethodBindPtr! = nil
    static var _method_link_set_owner_id_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_link_get_owner_id_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_agent_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_agent_set_map_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_agent_get_map_3814569979: GDExtensionMethodBindPtr! = nil
    static var _method_agent_set_neighbor_distance_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_agent_set_max_neighbors_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_agent_set_time_horizon_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_agent_set_radius_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_agent_set_max_speed_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_agent_set_velocity_3227306858: GDExtensionMethodBindPtr! = nil
    static var _method_agent_set_target_velocity_3227306858: GDExtensionMethodBindPtr! = nil
    static var _method_agent_set_position_3227306858: GDExtensionMethodBindPtr! = nil
    static var _method_agent_is_map_changed_4155700596: GDExtensionMethodBindPtr! = nil
    static var _method_agent_set_callback_3379118538: GDExtensionMethodBindPtr! = nil
    static var _method_free_rid_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_set_active_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_process_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_process_info_1938440894: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_NavigationServer3D = StringName(from: "NavigationServer3D")

        let _method_get_maps_3995934104_name = StringName(from: "get_maps")
        self._method_get_maps_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_maps_3995934104_name._native_ptr(), 3995934104)
        assert(NavigationServer3D._method_get_maps_3995934104 != nil)
        let _method_map_create_529393457_name = StringName(from: "map_create")
        self._method_map_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_create_529393457_name._native_ptr(), 529393457)
        assert(NavigationServer3D._method_map_create_529393457 != nil)
        let _method_map_set_active_1265174801_name = StringName(from: "map_set_active")
        self._method_map_set_active_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_set_active_1265174801_name._native_ptr(), 1265174801)
        assert(NavigationServer3D._method_map_set_active_1265174801 != nil)
        let _method_map_is_active_4155700596_name = StringName(from: "map_is_active")
        self._method_map_is_active_4155700596 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_is_active_4155700596_name._native_ptr(), 4155700596)
        assert(NavigationServer3D._method_map_is_active_4155700596 != nil)
        let _method_map_set_up_3227306858_name = StringName(from: "map_set_up")
        self._method_map_set_up_3227306858 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_set_up_3227306858_name._native_ptr(), 3227306858)
        assert(NavigationServer3D._method_map_set_up_3227306858 != nil)
        let _method_map_get_up_531438156_name = StringName(from: "map_get_up")
        self._method_map_get_up_531438156 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_get_up_531438156_name._native_ptr(), 531438156)
        assert(NavigationServer3D._method_map_get_up_531438156 != nil)
        let _method_map_set_cell_size_1794382983_name = StringName(from: "map_set_cell_size")
        self._method_map_set_cell_size_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_set_cell_size_1794382983_name._native_ptr(), 1794382983)
        assert(NavigationServer3D._method_map_set_cell_size_1794382983 != nil)
        let _method_map_get_cell_size_866169185_name = StringName(from: "map_get_cell_size")
        self._method_map_get_cell_size_866169185 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_get_cell_size_866169185_name._native_ptr(), 866169185)
        assert(NavigationServer3D._method_map_get_cell_size_866169185 != nil)
        let _method_map_set_edge_connection_margin_1794382983_name = StringName(from: "map_set_edge_connection_margin")
        self._method_map_set_edge_connection_margin_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_set_edge_connection_margin_1794382983_name._native_ptr(), 1794382983)
        assert(NavigationServer3D._method_map_set_edge_connection_margin_1794382983 != nil)
        let _method_map_get_edge_connection_margin_866169185_name = StringName(from: "map_get_edge_connection_margin")
        self._method_map_get_edge_connection_margin_866169185 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_get_edge_connection_margin_866169185_name._native_ptr(), 866169185)
        assert(NavigationServer3D._method_map_get_edge_connection_margin_866169185 != nil)
        let _method_map_set_link_connection_radius_1794382983_name = StringName(from: "map_set_link_connection_radius")
        self._method_map_set_link_connection_radius_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_set_link_connection_radius_1794382983_name._native_ptr(), 1794382983)
        assert(NavigationServer3D._method_map_set_link_connection_radius_1794382983 != nil)
        let _method_map_get_link_connection_radius_866169185_name = StringName(from: "map_get_link_connection_radius")
        self._method_map_get_link_connection_radius_866169185 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_get_link_connection_radius_866169185_name._native_ptr(), 866169185)
        assert(NavigationServer3D._method_map_get_link_connection_radius_866169185 != nil)
        let _method_map_get_path_2121045993_name = StringName(from: "map_get_path")
        self._method_map_get_path_2121045993 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_get_path_2121045993_name._native_ptr(), 2121045993)
        assert(NavigationServer3D._method_map_get_path_2121045993 != nil)
        let _method_map_get_closest_point_to_segment_3830095642_name = StringName(from: "map_get_closest_point_to_segment")
        self._method_map_get_closest_point_to_segment_3830095642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_get_closest_point_to_segment_3830095642_name._native_ptr(), 3830095642)
        assert(NavigationServer3D._method_map_get_closest_point_to_segment_3830095642 != nil)
        let _method_map_get_closest_point_2056183332_name = StringName(from: "map_get_closest_point")
        self._method_map_get_closest_point_2056183332 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_get_closest_point_2056183332_name._native_ptr(), 2056183332)
        assert(NavigationServer3D._method_map_get_closest_point_2056183332 != nil)
        let _method_map_get_closest_point_normal_2056183332_name = StringName(from: "map_get_closest_point_normal")
        self._method_map_get_closest_point_normal_2056183332 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_get_closest_point_normal_2056183332_name._native_ptr(), 2056183332)
        assert(NavigationServer3D._method_map_get_closest_point_normal_2056183332 != nil)
        let _method_map_get_closest_point_owner_553364610_name = StringName(from: "map_get_closest_point_owner")
        self._method_map_get_closest_point_owner_553364610 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_get_closest_point_owner_553364610_name._native_ptr(), 553364610)
        assert(NavigationServer3D._method_map_get_closest_point_owner_553364610 != nil)
        let _method_map_get_links_2684255073_name = StringName(from: "map_get_links")
        self._method_map_get_links_2684255073 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_get_links_2684255073_name._native_ptr(), 2684255073)
        assert(NavigationServer3D._method_map_get_links_2684255073 != nil)
        let _method_map_get_regions_2684255073_name = StringName(from: "map_get_regions")
        self._method_map_get_regions_2684255073 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_get_regions_2684255073_name._native_ptr(), 2684255073)
        assert(NavigationServer3D._method_map_get_regions_2684255073 != nil)
        let _method_map_get_agents_2684255073_name = StringName(from: "map_get_agents")
        self._method_map_get_agents_2684255073 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_get_agents_2684255073_name._native_ptr(), 2684255073)
        assert(NavigationServer3D._method_map_get_agents_2684255073 != nil)
        let _method_map_force_update_2722037293_name = StringName(from: "map_force_update")
        self._method_map_force_update_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_force_update_2722037293_name._native_ptr(), 2722037293)
        assert(NavigationServer3D._method_map_force_update_2722037293 != nil)
        let _method_query_path_3415008901_name = StringName(from: "query_path")
        self._method_query_path_3415008901 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_query_path_3415008901_name._native_ptr(), 3415008901)
        assert(NavigationServer3D._method_query_path_3415008901 != nil)
        let _method_region_create_529393457_name = StringName(from: "region_create")
        self._method_region_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_create_529393457_name._native_ptr(), 529393457)
        assert(NavigationServer3D._method_region_create_529393457 != nil)
        let _method_region_set_enter_cost_1794382983_name = StringName(from: "region_set_enter_cost")
        self._method_region_set_enter_cost_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_set_enter_cost_1794382983_name._native_ptr(), 1794382983)
        assert(NavigationServer3D._method_region_set_enter_cost_1794382983 != nil)
        let _method_region_get_enter_cost_866169185_name = StringName(from: "region_get_enter_cost")
        self._method_region_get_enter_cost_866169185 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_get_enter_cost_866169185_name._native_ptr(), 866169185)
        assert(NavigationServer3D._method_region_get_enter_cost_866169185 != nil)
        let _method_region_set_travel_cost_1794382983_name = StringName(from: "region_set_travel_cost")
        self._method_region_set_travel_cost_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_set_travel_cost_1794382983_name._native_ptr(), 1794382983)
        assert(NavigationServer3D._method_region_set_travel_cost_1794382983 != nil)
        let _method_region_get_travel_cost_866169185_name = StringName(from: "region_get_travel_cost")
        self._method_region_get_travel_cost_866169185 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_get_travel_cost_866169185_name._native_ptr(), 866169185)
        assert(NavigationServer3D._method_region_get_travel_cost_866169185 != nil)
        let _method_region_set_owner_id_3411492887_name = StringName(from: "region_set_owner_id")
        self._method_region_set_owner_id_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_set_owner_id_3411492887_name._native_ptr(), 3411492887)
        assert(NavigationServer3D._method_region_set_owner_id_3411492887 != nil)
        let _method_region_get_owner_id_2198884583_name = StringName(from: "region_get_owner_id")
        self._method_region_get_owner_id_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_get_owner_id_2198884583_name._native_ptr(), 2198884583)
        assert(NavigationServer3D._method_region_get_owner_id_2198884583 != nil)
        let _method_region_owns_point_2360011153_name = StringName(from: "region_owns_point")
        self._method_region_owns_point_2360011153 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_owns_point_2360011153_name._native_ptr(), 2360011153)
        assert(NavigationServer3D._method_region_owns_point_2360011153 != nil)
        let _method_region_set_map_395945892_name = StringName(from: "region_set_map")
        self._method_region_set_map_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_set_map_395945892_name._native_ptr(), 395945892)
        assert(NavigationServer3D._method_region_set_map_395945892 != nil)
        let _method_region_get_map_3814569979_name = StringName(from: "region_get_map")
        self._method_region_get_map_3814569979 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_get_map_3814569979_name._native_ptr(), 3814569979)
        assert(NavigationServer3D._method_region_get_map_3814569979 != nil)
        let _method_region_set_navigation_layers_3411492887_name = StringName(from: "region_set_navigation_layers")
        self._method_region_set_navigation_layers_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_set_navigation_layers_3411492887_name._native_ptr(), 3411492887)
        assert(NavigationServer3D._method_region_set_navigation_layers_3411492887 != nil)
        let _method_region_get_navigation_layers_2198884583_name = StringName(from: "region_get_navigation_layers")
        self._method_region_get_navigation_layers_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_get_navigation_layers_2198884583_name._native_ptr(), 2198884583)
        assert(NavigationServer3D._method_region_get_navigation_layers_2198884583 != nil)
        let _method_region_set_transform_3935195649_name = StringName(from: "region_set_transform")
        self._method_region_set_transform_3935195649 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_set_transform_3935195649_name._native_ptr(), 3935195649)
        assert(NavigationServer3D._method_region_set_transform_3935195649 != nil)
        let _method_region_set_navigation_mesh_2764952978_name = StringName(from: "region_set_navigation_mesh")
        self._method_region_set_navigation_mesh_2764952978 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_set_navigation_mesh_2764952978_name._native_ptr(), 2764952978)
        assert(NavigationServer3D._method_region_set_navigation_mesh_2764952978 != nil)
        let _method_region_bake_navigation_mesh_1401173477_name = StringName(from: "region_bake_navigation_mesh")
        self._method_region_bake_navigation_mesh_1401173477 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_bake_navigation_mesh_1401173477_name._native_ptr(), 1401173477)
        assert(NavigationServer3D._method_region_bake_navigation_mesh_1401173477 != nil)
        let _method_region_get_connections_count_2198884583_name = StringName(from: "region_get_connections_count")
        self._method_region_get_connections_count_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_get_connections_count_2198884583_name._native_ptr(), 2198884583)
        assert(NavigationServer3D._method_region_get_connections_count_2198884583 != nil)
        let _method_region_get_connection_pathway_start_3440143363_name = StringName(from: "region_get_connection_pathway_start")
        self._method_region_get_connection_pathway_start_3440143363 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_get_connection_pathway_start_3440143363_name._native_ptr(), 3440143363)
        assert(NavigationServer3D._method_region_get_connection_pathway_start_3440143363 != nil)
        let _method_region_get_connection_pathway_end_3440143363_name = StringName(from: "region_get_connection_pathway_end")
        self._method_region_get_connection_pathway_end_3440143363 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_get_connection_pathway_end_3440143363_name._native_ptr(), 3440143363)
        assert(NavigationServer3D._method_region_get_connection_pathway_end_3440143363 != nil)
        let _method_link_create_529393457_name = StringName(from: "link_create")
        self._method_link_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_create_529393457_name._native_ptr(), 529393457)
        assert(NavigationServer3D._method_link_create_529393457 != nil)
        let _method_link_set_map_395945892_name = StringName(from: "link_set_map")
        self._method_link_set_map_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_set_map_395945892_name._native_ptr(), 395945892)
        assert(NavigationServer3D._method_link_set_map_395945892 != nil)
        let _method_link_get_map_3814569979_name = StringName(from: "link_get_map")
        self._method_link_get_map_3814569979 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_get_map_3814569979_name._native_ptr(), 3814569979)
        assert(NavigationServer3D._method_link_get_map_3814569979 != nil)
        let _method_link_set_bidirectional_1265174801_name = StringName(from: "link_set_bidirectional")
        self._method_link_set_bidirectional_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_set_bidirectional_1265174801_name._native_ptr(), 1265174801)
        assert(NavigationServer3D._method_link_set_bidirectional_1265174801 != nil)
        let _method_link_is_bidirectional_4155700596_name = StringName(from: "link_is_bidirectional")
        self._method_link_is_bidirectional_4155700596 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_is_bidirectional_4155700596_name._native_ptr(), 4155700596)
        assert(NavigationServer3D._method_link_is_bidirectional_4155700596 != nil)
        let _method_link_set_navigation_layers_3411492887_name = StringName(from: "link_set_navigation_layers")
        self._method_link_set_navigation_layers_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_set_navigation_layers_3411492887_name._native_ptr(), 3411492887)
        assert(NavigationServer3D._method_link_set_navigation_layers_3411492887 != nil)
        let _method_link_get_navigation_layers_2198884583_name = StringName(from: "link_get_navigation_layers")
        self._method_link_get_navigation_layers_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_get_navigation_layers_2198884583_name._native_ptr(), 2198884583)
        assert(NavigationServer3D._method_link_get_navigation_layers_2198884583 != nil)
        let _method_link_set_start_position_3227306858_name = StringName(from: "link_set_start_position")
        self._method_link_set_start_position_3227306858 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_set_start_position_3227306858_name._native_ptr(), 3227306858)
        assert(NavigationServer3D._method_link_set_start_position_3227306858 != nil)
        let _method_link_get_start_position_531438156_name = StringName(from: "link_get_start_position")
        self._method_link_get_start_position_531438156 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_get_start_position_531438156_name._native_ptr(), 531438156)
        assert(NavigationServer3D._method_link_get_start_position_531438156 != nil)
        let _method_link_set_end_position_3227306858_name = StringName(from: "link_set_end_position")
        self._method_link_set_end_position_3227306858 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_set_end_position_3227306858_name._native_ptr(), 3227306858)
        assert(NavigationServer3D._method_link_set_end_position_3227306858 != nil)
        let _method_link_get_end_position_531438156_name = StringName(from: "link_get_end_position")
        self._method_link_get_end_position_531438156 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_get_end_position_531438156_name._native_ptr(), 531438156)
        assert(NavigationServer3D._method_link_get_end_position_531438156 != nil)
        let _method_link_set_enter_cost_1794382983_name = StringName(from: "link_set_enter_cost")
        self._method_link_set_enter_cost_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_set_enter_cost_1794382983_name._native_ptr(), 1794382983)
        assert(NavigationServer3D._method_link_set_enter_cost_1794382983 != nil)
        let _method_link_get_enter_cost_866169185_name = StringName(from: "link_get_enter_cost")
        self._method_link_get_enter_cost_866169185 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_get_enter_cost_866169185_name._native_ptr(), 866169185)
        assert(NavigationServer3D._method_link_get_enter_cost_866169185 != nil)
        let _method_link_set_travel_cost_1794382983_name = StringName(from: "link_set_travel_cost")
        self._method_link_set_travel_cost_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_set_travel_cost_1794382983_name._native_ptr(), 1794382983)
        assert(NavigationServer3D._method_link_set_travel_cost_1794382983 != nil)
        let _method_link_get_travel_cost_866169185_name = StringName(from: "link_get_travel_cost")
        self._method_link_get_travel_cost_866169185 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_get_travel_cost_866169185_name._native_ptr(), 866169185)
        assert(NavigationServer3D._method_link_get_travel_cost_866169185 != nil)
        let _method_link_set_owner_id_3411492887_name = StringName(from: "link_set_owner_id")
        self._method_link_set_owner_id_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_set_owner_id_3411492887_name._native_ptr(), 3411492887)
        assert(NavigationServer3D._method_link_set_owner_id_3411492887 != nil)
        let _method_link_get_owner_id_2198884583_name = StringName(from: "link_get_owner_id")
        self._method_link_get_owner_id_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_get_owner_id_2198884583_name._native_ptr(), 2198884583)
        assert(NavigationServer3D._method_link_get_owner_id_2198884583 != nil)
        let _method_agent_create_529393457_name = StringName(from: "agent_create")
        self._method_agent_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_agent_create_529393457_name._native_ptr(), 529393457)
        assert(NavigationServer3D._method_agent_create_529393457 != nil)
        let _method_agent_set_map_395945892_name = StringName(from: "agent_set_map")
        self._method_agent_set_map_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_agent_set_map_395945892_name._native_ptr(), 395945892)
        assert(NavigationServer3D._method_agent_set_map_395945892 != nil)
        let _method_agent_get_map_3814569979_name = StringName(from: "agent_get_map")
        self._method_agent_get_map_3814569979 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_agent_get_map_3814569979_name._native_ptr(), 3814569979)
        assert(NavigationServer3D._method_agent_get_map_3814569979 != nil)
        let _method_agent_set_neighbor_distance_1794382983_name = StringName(from: "agent_set_neighbor_distance")
        self._method_agent_set_neighbor_distance_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_agent_set_neighbor_distance_1794382983_name._native_ptr(), 1794382983)
        assert(NavigationServer3D._method_agent_set_neighbor_distance_1794382983 != nil)
        let _method_agent_set_max_neighbors_3411492887_name = StringName(from: "agent_set_max_neighbors")
        self._method_agent_set_max_neighbors_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_agent_set_max_neighbors_3411492887_name._native_ptr(), 3411492887)
        assert(NavigationServer3D._method_agent_set_max_neighbors_3411492887 != nil)
        let _method_agent_set_time_horizon_1794382983_name = StringName(from: "agent_set_time_horizon")
        self._method_agent_set_time_horizon_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_agent_set_time_horizon_1794382983_name._native_ptr(), 1794382983)
        assert(NavigationServer3D._method_agent_set_time_horizon_1794382983 != nil)
        let _method_agent_set_radius_1794382983_name = StringName(from: "agent_set_radius")
        self._method_agent_set_radius_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_agent_set_radius_1794382983_name._native_ptr(), 1794382983)
        assert(NavigationServer3D._method_agent_set_radius_1794382983 != nil)
        let _method_agent_set_max_speed_1794382983_name = StringName(from: "agent_set_max_speed")
        self._method_agent_set_max_speed_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_agent_set_max_speed_1794382983_name._native_ptr(), 1794382983)
        assert(NavigationServer3D._method_agent_set_max_speed_1794382983 != nil)
        let _method_agent_set_velocity_3227306858_name = StringName(from: "agent_set_velocity")
        self._method_agent_set_velocity_3227306858 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_agent_set_velocity_3227306858_name._native_ptr(), 3227306858)
        assert(NavigationServer3D._method_agent_set_velocity_3227306858 != nil)
        let _method_agent_set_target_velocity_3227306858_name = StringName(from: "agent_set_target_velocity")
        self._method_agent_set_target_velocity_3227306858 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_agent_set_target_velocity_3227306858_name._native_ptr(), 3227306858)
        assert(NavigationServer3D._method_agent_set_target_velocity_3227306858 != nil)
        let _method_agent_set_position_3227306858_name = StringName(from: "agent_set_position")
        self._method_agent_set_position_3227306858 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_agent_set_position_3227306858_name._native_ptr(), 3227306858)
        assert(NavigationServer3D._method_agent_set_position_3227306858 != nil)
        let _method_agent_is_map_changed_4155700596_name = StringName(from: "agent_is_map_changed")
        self._method_agent_is_map_changed_4155700596 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_agent_is_map_changed_4155700596_name._native_ptr(), 4155700596)
        assert(NavigationServer3D._method_agent_is_map_changed_4155700596 != nil)
        let _method_agent_set_callback_3379118538_name = StringName(from: "agent_set_callback")
        self._method_agent_set_callback_3379118538 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_agent_set_callback_3379118538_name._native_ptr(), 3379118538)
        assert(NavigationServer3D._method_agent_set_callback_3379118538 != nil)
        let _method_free_rid_2722037293_name = StringName(from: "free_rid")
        self._method_free_rid_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_free_rid_2722037293_name._native_ptr(), 2722037293)
        assert(NavigationServer3D._method_free_rid_2722037293 != nil)
        let _method_set_active_2586408642_name = StringName(from: "set_active")
        self._method_set_active_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_active_2586408642_name._native_ptr(), 2586408642)
        assert(NavigationServer3D._method_set_active_2586408642 != nil)
        let _method_process_373806689_name = StringName(from: "process")
        self._method_process_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_process_373806689_name._native_ptr(), 373806689)
        assert(NavigationServer3D._method_process_373806689 != nil)
        let _method_get_process_info_1938440894_name = StringName(from: "get_process_info")
        self._method_get_process_info_1938440894 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_process_info_1938440894_name._native_ptr(), 1938440894)
        assert(NavigationServer3D._method_get_process_info_1938440894 != nil)
    }

    public func get_maps() -> [RID] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_maps_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [RID](from: __resPtr.pointee)
    }
    public func map_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_map_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func map_set_active(map: RID, active: UInt8)  {
        withUnsafePointer(to: active) { active_native in
        let map_native = map._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(map_native), .init(active_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_map_set_active_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func map_is_active(map: RID) -> UInt8 {
        let map_native = map._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(map_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_map_is_active_4155700596,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func map_set_up(map: RID, up: Vector3)  {
        let up_native = up._native_ptr()
        let map_native = map._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(map_native), .init(up_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_map_set_up_3227306858,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func map_get_up(map: RID) -> Vector3 {
        let map_native = map._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(map_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_map_get_up_531438156,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func map_set_cell_size(map: RID, cell_size: Float64)  {
        withUnsafePointer(to: cell_size) { cell_size_native in
        let map_native = map._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(map_native), .init(cell_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_map_set_cell_size_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func map_get_cell_size(map: RID) -> Float64 {
        let map_native = map._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(map_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_map_get_cell_size_866169185,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func map_set_edge_connection_margin(map: RID, margin: Float64)  {
        withUnsafePointer(to: margin) { margin_native in
        let map_native = map._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(map_native), .init(margin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_map_set_edge_connection_margin_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func map_get_edge_connection_margin(map: RID) -> Float64 {
        let map_native = map._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(map_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_map_get_edge_connection_margin_866169185,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func map_set_link_connection_radius(map: RID, radius: Float64)  {
        withUnsafePointer(to: radius) { radius_native in
        let map_native = map._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(map_native), .init(radius_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_map_set_link_connection_radius_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func map_get_link_connection_radius(map: RID) -> Float64 {
        let map_native = map._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(map_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_map_get_link_connection_radius_866169185,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func map_get_path(map: RID, origin: Vector3, destination: Vector3, optimize: UInt8, navigation_layers: Int64) -> PackedVector3Array {
        withUnsafePointer(to: navigation_layers) { navigation_layers_native in
        withUnsafePointer(to: optimize) { optimize_native in
        let destination_native = destination._native_ptr()
        let origin_native = origin._native_ptr()
        let map_native = map._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(map_native), .init(origin_native), .init(destination_native), .init(optimize_native), .init(navigation_layers_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_map_get_path_2121045993,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector3Array(from: __resPtr.pointee)
        }
        }
    }
    public func map_get_closest_point_to_segment(map: RID, start: Vector3, end: Vector3, use_collision: UInt8) -> Vector3 {
        withUnsafePointer(to: use_collision) { use_collision_native in
        let end_native = end._native_ptr()
        let start_native = start._native_ptr()
        let map_native = map._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(map_native), .init(start_native), .init(end_native), .init(use_collision_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_map_get_closest_point_to_segment_3830095642,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
        }
    }
    public func map_get_closest_point(map: RID, to_point: Vector3) -> Vector3 {
        let to_point_native = to_point._native_ptr()
        let map_native = map._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(map_native), .init(to_point_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_map_get_closest_point_2056183332,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func map_get_closest_point_normal(map: RID, to_point: Vector3) -> Vector3 {
        let to_point_native = to_point._native_ptr()
        let map_native = map._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(map_native), .init(to_point_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_map_get_closest_point_normal_2056183332,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func map_get_closest_point_owner(map: RID, to_point: Vector3) -> RID {
        let to_point_native = to_point._native_ptr()
        let map_native = map._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(map_native), .init(to_point_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_map_get_closest_point_owner_553364610,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func map_get_links(map: RID) -> [RID] {
        let map_native = map._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(map_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_map_get_links_2684255073,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [RID](from: __resPtr.pointee)
    }
    public func map_get_regions(map: RID) -> [RID] {
        let map_native = map._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(map_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_map_get_regions_2684255073,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [RID](from: __resPtr.pointee)
    }
    public func map_get_agents(map: RID) -> [RID] {
        let map_native = map._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(map_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_map_get_agents_2684255073,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [RID](from: __resPtr.pointee)
    }
    public func map_force_update(map: RID)  {
        let map_native = map._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(map_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_map_force_update_2722037293,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func query_path(parameters: NavigationPathQueryParameters3D, result: NavigationPathQueryResult3D)  {
        let result_native = result._native_ptr()
        let parameters_native = parameters._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(parameters_native), .init(result_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_query_path_3415008901,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func region_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_region_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func region_set_enter_cost(region: RID, enter_cost: Float64)  {
        withUnsafePointer(to: enter_cost) { enter_cost_native in
        let region_native = region._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(region_native), .init(enter_cost_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_region_set_enter_cost_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func region_get_enter_cost(region: RID) -> Float64 {
        let region_native = region._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(region_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_region_get_enter_cost_866169185,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func region_set_travel_cost(region: RID, travel_cost: Float64)  {
        withUnsafePointer(to: travel_cost) { travel_cost_native in
        let region_native = region._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(region_native), .init(travel_cost_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_region_set_travel_cost_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func region_get_travel_cost(region: RID) -> Float64 {
        let region_native = region._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(region_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_region_get_travel_cost_866169185,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func region_set_owner_id(region: RID, owner_id: Int64)  {
        withUnsafePointer(to: owner_id) { owner_id_native in
        let region_native = region._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(region_native), .init(owner_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_region_set_owner_id_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func region_get_owner_id(region: RID) -> Int64 {
        let region_native = region._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(region_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_region_get_owner_id_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func region_owns_point(region: RID, point: Vector3) -> UInt8 {
        let point_native = point._native_ptr()
        let region_native = region._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(region_native), .init(point_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_region_owns_point_2360011153,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func region_set_map(region: RID, map: RID)  {
        let map_native = map._native_ptr()
        let region_native = region._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(region_native), .init(map_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_region_set_map_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func region_get_map(region: RID) -> RID {
        let region_native = region._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(region_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_region_get_map_3814569979,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func region_set_navigation_layers(region: RID, navigation_layers: Int64)  {
        withUnsafePointer(to: navigation_layers) { navigation_layers_native in
        let region_native = region._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(region_native), .init(navigation_layers_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_region_set_navigation_layers_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func region_get_navigation_layers(region: RID) -> Int64 {
        let region_native = region._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(region_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_region_get_navigation_layers_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func region_set_transform(region: RID, transform: Transform3D)  {
        let transform_native = transform._native_ptr()
        let region_native = region._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(region_native), .init(transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_region_set_transform_3935195649,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func region_set_navigation_mesh(region: RID, navigation_mesh: NavigationMesh)  {
        let navigation_mesh_native = navigation_mesh._native_ptr()
        let region_native = region._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(region_native), .init(navigation_mesh_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_region_set_navigation_mesh_2764952978,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func region_bake_navigation_mesh(navigation_mesh: NavigationMesh, root_node: Node)  {
        let root_node_native = root_node._native_ptr()
        let navigation_mesh_native = navigation_mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(navigation_mesh_native), .init(root_node_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_region_bake_navigation_mesh_1401173477,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func region_get_connections_count(region: RID) -> Int64 {
        let region_native = region._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(region_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_region_get_connections_count_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func region_get_connection_pathway_start(region: RID, connection: Int64) -> Vector3 {
        withUnsafePointer(to: connection) { connection_native in
        let region_native = region._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(region_native), .init(connection_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_region_get_connection_pathway_start_3440143363,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
        }
    }
    public func region_get_connection_pathway_end(region: RID, connection: Int64) -> Vector3 {
        withUnsafePointer(to: connection) { connection_native in
        let region_native = region._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(region_native), .init(connection_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_region_get_connection_pathway_end_3440143363,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
        }
    }
    public func link_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_link_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func link_set_map(link: RID, map: RID)  {
        let map_native = map._native_ptr()
        let link_native = link._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(link_native), .init(map_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_link_set_map_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func link_get_map(link: RID) -> RID {
        let link_native = link._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(link_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_link_get_map_3814569979,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func link_set_bidirectional(link: RID, bidirectional: UInt8)  {
        withUnsafePointer(to: bidirectional) { bidirectional_native in
        let link_native = link._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(link_native), .init(bidirectional_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_link_set_bidirectional_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func link_is_bidirectional(link: RID) -> UInt8 {
        let link_native = link._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(link_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_link_is_bidirectional_4155700596,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func link_set_navigation_layers(link: RID, navigation_layers: Int64)  {
        withUnsafePointer(to: navigation_layers) { navigation_layers_native in
        let link_native = link._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(link_native), .init(navigation_layers_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_link_set_navigation_layers_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func link_get_navigation_layers(link: RID) -> Int64 {
        let link_native = link._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(link_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_link_get_navigation_layers_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func link_set_start_position(link: RID, position: Vector3)  {
        let position_native = position._native_ptr()
        let link_native = link._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(link_native), .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_link_set_start_position_3227306858,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func link_get_start_position(link: RID) -> Vector3 {
        let link_native = link._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(link_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_link_get_start_position_531438156,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func link_set_end_position(link: RID, position: Vector3)  {
        let position_native = position._native_ptr()
        let link_native = link._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(link_native), .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_link_set_end_position_3227306858,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func link_get_end_position(link: RID) -> Vector3 {
        let link_native = link._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(link_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_link_get_end_position_531438156,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func link_set_enter_cost(link: RID, enter_cost: Float64)  {
        withUnsafePointer(to: enter_cost) { enter_cost_native in
        let link_native = link._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(link_native), .init(enter_cost_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_link_set_enter_cost_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func link_get_enter_cost(link: RID) -> Float64 {
        let link_native = link._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(link_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_link_get_enter_cost_866169185,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func link_set_travel_cost(link: RID, travel_cost: Float64)  {
        withUnsafePointer(to: travel_cost) { travel_cost_native in
        let link_native = link._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(link_native), .init(travel_cost_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_link_set_travel_cost_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func link_get_travel_cost(link: RID) -> Float64 {
        let link_native = link._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(link_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_link_get_travel_cost_866169185,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func link_set_owner_id(link: RID, owner_id: Int64)  {
        withUnsafePointer(to: owner_id) { owner_id_native in
        let link_native = link._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(link_native), .init(owner_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_link_set_owner_id_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func link_get_owner_id(link: RID) -> Int64 {
        let link_native = link._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(link_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_link_get_owner_id_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func agent_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_agent_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func agent_set_map(agent: RID, map: RID)  {
        let map_native = map._native_ptr()
        let agent_native = agent._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(agent_native), .init(map_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_agent_set_map_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func agent_get_map(agent: RID) -> RID {
        let agent_native = agent._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(agent_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_agent_get_map_3814569979,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func agent_set_neighbor_distance(agent: RID, distance: Float64)  {
        withUnsafePointer(to: distance) { distance_native in
        let agent_native = agent._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(agent_native), .init(distance_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_agent_set_neighbor_distance_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func agent_set_max_neighbors(agent: RID, count: Int64)  {
        withUnsafePointer(to: count) { count_native in
        let agent_native = agent._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(agent_native), .init(count_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_agent_set_max_neighbors_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func agent_set_time_horizon(agent: RID, time: Float64)  {
        withUnsafePointer(to: time) { time_native in
        let agent_native = agent._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(agent_native), .init(time_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_agent_set_time_horizon_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func agent_set_radius(agent: RID, radius: Float64)  {
        withUnsafePointer(to: radius) { radius_native in
        let agent_native = agent._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(agent_native), .init(radius_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_agent_set_radius_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func agent_set_max_speed(agent: RID, max_speed: Float64)  {
        withUnsafePointer(to: max_speed) { max_speed_native in
        let agent_native = agent._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(agent_native), .init(max_speed_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_agent_set_max_speed_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func agent_set_velocity(agent: RID, velocity: Vector3)  {
        let velocity_native = velocity._native_ptr()
        let agent_native = agent._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(agent_native), .init(velocity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_agent_set_velocity_3227306858,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func agent_set_target_velocity(agent: RID, target_velocity: Vector3)  {
        let target_velocity_native = target_velocity._native_ptr()
        let agent_native = agent._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(agent_native), .init(target_velocity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_agent_set_target_velocity_3227306858,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func agent_set_position(agent: RID, position: Vector3)  {
        let position_native = position._native_ptr()
        let agent_native = agent._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(agent_native), .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_agent_set_position_3227306858,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func agent_is_map_changed(agent: RID) -> UInt8 {
        let agent_native = agent._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(agent_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_agent_is_map_changed_4155700596,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func agent_set_callback(agent: RID, callback: Callable)  {
        let callback_native = callback._native_ptr()
        let agent_native = agent._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(agent_native), .init(callback_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_agent_set_callback_3379118538,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func free_rid(rid: RID)  {
        let rid_native = rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rid_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_free_rid_2722037293,
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
    public func process(delta_time: Float64)  {
        withUnsafePointer(to: delta_time) { delta_time_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(delta_time_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_process_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_process_info(process_info: NavigationServer3D.ProcessInfo) -> Int64 {
        withUnsafePointer(to: process_info.rawValue) { process_info_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(process_info_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_process_info_1938440894,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
}