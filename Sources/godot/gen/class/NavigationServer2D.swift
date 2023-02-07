import godot_native

fileprivate var __godot_name_NavigationServer2D: StringName! = nil

/// Server interface for low-level 2D navigation access
/// 
/// NavigationServer2D is the server responsible for all 2D navigation. It handles several objects, namely maps, regions and agents.
///  
/// Maps are made up of regions, which are made of navigation polygons. Together, they define the navigable areas in the 2D world.
///  
/// [b]Note:[/b] Most NavigationServer changes take effect after the next physics frame and not immediately. This includes all changes made to maps, regions or agents by navigation related Nodes in the SceneTree or made through scripts.
///  
/// For two regions to be connected to each other, they must share a similar edge. An edge is considered connected to another if both of its two vertices are at a distance less than [code]edge_connection_margin[/code] to the respective other edge's vertex.
///  
/// You may assign navigation layers to regions with [method NavigationServer2D.region_set_navigation_layers], which then can be checked upon when requesting a path with [method NavigationServer2D.map_get_path]. This allows allowing or forbidding some areas to 2D objects.
///  
/// To use the collision avoidance system, you may use agents. You can set an agent's target velocity, then the servers will emit a callback with a modified velocity.
///  
/// [b]Note:[/b] The collision avoidance system ignores regions. Using the modified velocity as-is might lead to pushing and agent outside of a navigable area. This is a limitation of the collision avoidance system, any more complex situation may require the use of the physics engine.
///  
/// This server keeps tracks of any call and executes them during the sync phase. This means that you can request any change to the map, using any thread, without worrying.
public class NavigationServer2D : Object {

    

    public override class var __godot_name: StringName { __godot_name_NavigationServer2D }

    static var _method_get_maps_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_map_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_map_set_active_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_map_is_active_4155700596: GDExtensionMethodBindPtr! = nil
    static var _method_map_set_cell_size_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_map_get_cell_size_866169185: GDExtensionMethodBindPtr! = nil
    static var _method_map_set_edge_connection_margin_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_map_get_edge_connection_margin_866169185: GDExtensionMethodBindPtr! = nil
    static var _method_map_set_link_connection_radius_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_map_get_link_connection_radius_866169185: GDExtensionMethodBindPtr! = nil
    static var _method_map_get_path_56240621: GDExtensionMethodBindPtr! = nil
    static var _method_map_get_closest_point_1358334418: GDExtensionMethodBindPtr! = nil
    static var _method_map_get_closest_point_owner_1353467510: GDExtensionMethodBindPtr! = nil
    static var _method_map_get_links_2684255073: GDExtensionMethodBindPtr! = nil
    static var _method_map_get_regions_2684255073: GDExtensionMethodBindPtr! = nil
    static var _method_map_get_agents_2684255073: GDExtensionMethodBindPtr! = nil
    static var _method_map_force_update_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_query_path_3394638789: GDExtensionMethodBindPtr! = nil
    static var _method_region_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_region_set_enter_cost_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_region_get_enter_cost_866169185: GDExtensionMethodBindPtr! = nil
    static var _method_region_set_travel_cost_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_region_get_travel_cost_866169185: GDExtensionMethodBindPtr! = nil
    static var _method_region_set_owner_id_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_region_get_owner_id_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_region_owns_point_219849798: GDExtensionMethodBindPtr! = nil
    static var _method_region_set_map_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_region_get_map_3814569979: GDExtensionMethodBindPtr! = nil
    static var _method_region_set_navigation_layers_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_region_get_navigation_layers_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_region_set_transform_1246044741: GDExtensionMethodBindPtr! = nil
    static var _method_region_set_navigation_polygon_3633623451: GDExtensionMethodBindPtr! = nil
    static var _method_region_get_connections_count_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_region_get_connection_pathway_start_2546185844: GDExtensionMethodBindPtr! = nil
    static var _method_region_get_connection_pathway_end_2546185844: GDExtensionMethodBindPtr! = nil
    static var _method_link_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_link_set_map_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_link_get_map_3814569979: GDExtensionMethodBindPtr! = nil
    static var _method_link_set_bidirectional_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_link_is_bidirectional_4155700596: GDExtensionMethodBindPtr! = nil
    static var _method_link_set_navigation_layers_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_link_get_navigation_layers_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_link_set_start_position_3201125042: GDExtensionMethodBindPtr! = nil
    static var _method_link_get_start_position_2440833711: GDExtensionMethodBindPtr! = nil
    static var _method_link_set_end_position_3201125042: GDExtensionMethodBindPtr! = nil
    static var _method_link_get_end_position_2440833711: GDExtensionMethodBindPtr! = nil
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
    static var _method_agent_set_velocity_3201125042: GDExtensionMethodBindPtr! = nil
    static var _method_agent_set_target_velocity_3201125042: GDExtensionMethodBindPtr! = nil
    static var _method_agent_set_position_3201125042: GDExtensionMethodBindPtr! = nil
    static var _method_agent_is_map_changed_4155700596: GDExtensionMethodBindPtr! = nil
    static var _method_agent_set_callback_3379118538: GDExtensionMethodBindPtr! = nil
    static var _method_free_rid_2722037293: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_NavigationServer2D = StringName(from: "NavigationServer2D")

        let _method_get_maps_3995934104_name = StringName(from: "get_maps")
        self._method_get_maps_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_maps_3995934104_name._native_ptr(), 3995934104)
        assert(NavigationServer2D._method_get_maps_3995934104 != nil)
        let _method_map_create_529393457_name = StringName(from: "map_create")
        self._method_map_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_create_529393457_name._native_ptr(), 529393457)
        assert(NavigationServer2D._method_map_create_529393457 != nil)
        let _method_map_set_active_1265174801_name = StringName(from: "map_set_active")
        self._method_map_set_active_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_set_active_1265174801_name._native_ptr(), 1265174801)
        assert(NavigationServer2D._method_map_set_active_1265174801 != nil)
        let _method_map_is_active_4155700596_name = StringName(from: "map_is_active")
        self._method_map_is_active_4155700596 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_is_active_4155700596_name._native_ptr(), 4155700596)
        assert(NavigationServer2D._method_map_is_active_4155700596 != nil)
        let _method_map_set_cell_size_1794382983_name = StringName(from: "map_set_cell_size")
        self._method_map_set_cell_size_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_set_cell_size_1794382983_name._native_ptr(), 1794382983)
        assert(NavigationServer2D._method_map_set_cell_size_1794382983 != nil)
        let _method_map_get_cell_size_866169185_name = StringName(from: "map_get_cell_size")
        self._method_map_get_cell_size_866169185 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_get_cell_size_866169185_name._native_ptr(), 866169185)
        assert(NavigationServer2D._method_map_get_cell_size_866169185 != nil)
        let _method_map_set_edge_connection_margin_1794382983_name = StringName(from: "map_set_edge_connection_margin")
        self._method_map_set_edge_connection_margin_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_set_edge_connection_margin_1794382983_name._native_ptr(), 1794382983)
        assert(NavigationServer2D._method_map_set_edge_connection_margin_1794382983 != nil)
        let _method_map_get_edge_connection_margin_866169185_name = StringName(from: "map_get_edge_connection_margin")
        self._method_map_get_edge_connection_margin_866169185 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_get_edge_connection_margin_866169185_name._native_ptr(), 866169185)
        assert(NavigationServer2D._method_map_get_edge_connection_margin_866169185 != nil)
        let _method_map_set_link_connection_radius_1794382983_name = StringName(from: "map_set_link_connection_radius")
        self._method_map_set_link_connection_radius_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_set_link_connection_radius_1794382983_name._native_ptr(), 1794382983)
        assert(NavigationServer2D._method_map_set_link_connection_radius_1794382983 != nil)
        let _method_map_get_link_connection_radius_866169185_name = StringName(from: "map_get_link_connection_radius")
        self._method_map_get_link_connection_radius_866169185 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_get_link_connection_radius_866169185_name._native_ptr(), 866169185)
        assert(NavigationServer2D._method_map_get_link_connection_radius_866169185 != nil)
        let _method_map_get_path_56240621_name = StringName(from: "map_get_path")
        self._method_map_get_path_56240621 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_get_path_56240621_name._native_ptr(), 56240621)
        assert(NavigationServer2D._method_map_get_path_56240621 != nil)
        let _method_map_get_closest_point_1358334418_name = StringName(from: "map_get_closest_point")
        self._method_map_get_closest_point_1358334418 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_get_closest_point_1358334418_name._native_ptr(), 1358334418)
        assert(NavigationServer2D._method_map_get_closest_point_1358334418 != nil)
        let _method_map_get_closest_point_owner_1353467510_name = StringName(from: "map_get_closest_point_owner")
        self._method_map_get_closest_point_owner_1353467510 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_get_closest_point_owner_1353467510_name._native_ptr(), 1353467510)
        assert(NavigationServer2D._method_map_get_closest_point_owner_1353467510 != nil)
        let _method_map_get_links_2684255073_name = StringName(from: "map_get_links")
        self._method_map_get_links_2684255073 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_get_links_2684255073_name._native_ptr(), 2684255073)
        assert(NavigationServer2D._method_map_get_links_2684255073 != nil)
        let _method_map_get_regions_2684255073_name = StringName(from: "map_get_regions")
        self._method_map_get_regions_2684255073 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_get_regions_2684255073_name._native_ptr(), 2684255073)
        assert(NavigationServer2D._method_map_get_regions_2684255073 != nil)
        let _method_map_get_agents_2684255073_name = StringName(from: "map_get_agents")
        self._method_map_get_agents_2684255073 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_get_agents_2684255073_name._native_ptr(), 2684255073)
        assert(NavigationServer2D._method_map_get_agents_2684255073 != nil)
        let _method_map_force_update_2722037293_name = StringName(from: "map_force_update")
        self._method_map_force_update_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_map_force_update_2722037293_name._native_ptr(), 2722037293)
        assert(NavigationServer2D._method_map_force_update_2722037293 != nil)
        let _method_query_path_3394638789_name = StringName(from: "query_path")
        self._method_query_path_3394638789 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_query_path_3394638789_name._native_ptr(), 3394638789)
        assert(NavigationServer2D._method_query_path_3394638789 != nil)
        let _method_region_create_529393457_name = StringName(from: "region_create")
        self._method_region_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_create_529393457_name._native_ptr(), 529393457)
        assert(NavigationServer2D._method_region_create_529393457 != nil)
        let _method_region_set_enter_cost_1794382983_name = StringName(from: "region_set_enter_cost")
        self._method_region_set_enter_cost_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_set_enter_cost_1794382983_name._native_ptr(), 1794382983)
        assert(NavigationServer2D._method_region_set_enter_cost_1794382983 != nil)
        let _method_region_get_enter_cost_866169185_name = StringName(from: "region_get_enter_cost")
        self._method_region_get_enter_cost_866169185 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_get_enter_cost_866169185_name._native_ptr(), 866169185)
        assert(NavigationServer2D._method_region_get_enter_cost_866169185 != nil)
        let _method_region_set_travel_cost_1794382983_name = StringName(from: "region_set_travel_cost")
        self._method_region_set_travel_cost_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_set_travel_cost_1794382983_name._native_ptr(), 1794382983)
        assert(NavigationServer2D._method_region_set_travel_cost_1794382983 != nil)
        let _method_region_get_travel_cost_866169185_name = StringName(from: "region_get_travel_cost")
        self._method_region_get_travel_cost_866169185 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_get_travel_cost_866169185_name._native_ptr(), 866169185)
        assert(NavigationServer2D._method_region_get_travel_cost_866169185 != nil)
        let _method_region_set_owner_id_3411492887_name = StringName(from: "region_set_owner_id")
        self._method_region_set_owner_id_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_set_owner_id_3411492887_name._native_ptr(), 3411492887)
        assert(NavigationServer2D._method_region_set_owner_id_3411492887 != nil)
        let _method_region_get_owner_id_2198884583_name = StringName(from: "region_get_owner_id")
        self._method_region_get_owner_id_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_get_owner_id_2198884583_name._native_ptr(), 2198884583)
        assert(NavigationServer2D._method_region_get_owner_id_2198884583 != nil)
        let _method_region_owns_point_219849798_name = StringName(from: "region_owns_point")
        self._method_region_owns_point_219849798 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_owns_point_219849798_name._native_ptr(), 219849798)
        assert(NavigationServer2D._method_region_owns_point_219849798 != nil)
        let _method_region_set_map_395945892_name = StringName(from: "region_set_map")
        self._method_region_set_map_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_set_map_395945892_name._native_ptr(), 395945892)
        assert(NavigationServer2D._method_region_set_map_395945892 != nil)
        let _method_region_get_map_3814569979_name = StringName(from: "region_get_map")
        self._method_region_get_map_3814569979 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_get_map_3814569979_name._native_ptr(), 3814569979)
        assert(NavigationServer2D._method_region_get_map_3814569979 != nil)
        let _method_region_set_navigation_layers_3411492887_name = StringName(from: "region_set_navigation_layers")
        self._method_region_set_navigation_layers_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_set_navigation_layers_3411492887_name._native_ptr(), 3411492887)
        assert(NavigationServer2D._method_region_set_navigation_layers_3411492887 != nil)
        let _method_region_get_navigation_layers_2198884583_name = StringName(from: "region_get_navigation_layers")
        self._method_region_get_navigation_layers_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_get_navigation_layers_2198884583_name._native_ptr(), 2198884583)
        assert(NavigationServer2D._method_region_get_navigation_layers_2198884583 != nil)
        let _method_region_set_transform_1246044741_name = StringName(from: "region_set_transform")
        self._method_region_set_transform_1246044741 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_set_transform_1246044741_name._native_ptr(), 1246044741)
        assert(NavigationServer2D._method_region_set_transform_1246044741 != nil)
        let _method_region_set_navigation_polygon_3633623451_name = StringName(from: "region_set_navigation_polygon")
        self._method_region_set_navigation_polygon_3633623451 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_set_navigation_polygon_3633623451_name._native_ptr(), 3633623451)
        assert(NavigationServer2D._method_region_set_navigation_polygon_3633623451 != nil)
        let _method_region_get_connections_count_2198884583_name = StringName(from: "region_get_connections_count")
        self._method_region_get_connections_count_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_get_connections_count_2198884583_name._native_ptr(), 2198884583)
        assert(NavigationServer2D._method_region_get_connections_count_2198884583 != nil)
        let _method_region_get_connection_pathway_start_2546185844_name = StringName(from: "region_get_connection_pathway_start")
        self._method_region_get_connection_pathway_start_2546185844 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_get_connection_pathway_start_2546185844_name._native_ptr(), 2546185844)
        assert(NavigationServer2D._method_region_get_connection_pathway_start_2546185844 != nil)
        let _method_region_get_connection_pathway_end_2546185844_name = StringName(from: "region_get_connection_pathway_end")
        self._method_region_get_connection_pathway_end_2546185844 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_region_get_connection_pathway_end_2546185844_name._native_ptr(), 2546185844)
        assert(NavigationServer2D._method_region_get_connection_pathway_end_2546185844 != nil)
        let _method_link_create_529393457_name = StringName(from: "link_create")
        self._method_link_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_create_529393457_name._native_ptr(), 529393457)
        assert(NavigationServer2D._method_link_create_529393457 != nil)
        let _method_link_set_map_395945892_name = StringName(from: "link_set_map")
        self._method_link_set_map_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_set_map_395945892_name._native_ptr(), 395945892)
        assert(NavigationServer2D._method_link_set_map_395945892 != nil)
        let _method_link_get_map_3814569979_name = StringName(from: "link_get_map")
        self._method_link_get_map_3814569979 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_get_map_3814569979_name._native_ptr(), 3814569979)
        assert(NavigationServer2D._method_link_get_map_3814569979 != nil)
        let _method_link_set_bidirectional_1265174801_name = StringName(from: "link_set_bidirectional")
        self._method_link_set_bidirectional_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_set_bidirectional_1265174801_name._native_ptr(), 1265174801)
        assert(NavigationServer2D._method_link_set_bidirectional_1265174801 != nil)
        let _method_link_is_bidirectional_4155700596_name = StringName(from: "link_is_bidirectional")
        self._method_link_is_bidirectional_4155700596 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_is_bidirectional_4155700596_name._native_ptr(), 4155700596)
        assert(NavigationServer2D._method_link_is_bidirectional_4155700596 != nil)
        let _method_link_set_navigation_layers_3411492887_name = StringName(from: "link_set_navigation_layers")
        self._method_link_set_navigation_layers_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_set_navigation_layers_3411492887_name._native_ptr(), 3411492887)
        assert(NavigationServer2D._method_link_set_navigation_layers_3411492887 != nil)
        let _method_link_get_navigation_layers_2198884583_name = StringName(from: "link_get_navigation_layers")
        self._method_link_get_navigation_layers_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_get_navigation_layers_2198884583_name._native_ptr(), 2198884583)
        assert(NavigationServer2D._method_link_get_navigation_layers_2198884583 != nil)
        let _method_link_set_start_position_3201125042_name = StringName(from: "link_set_start_position")
        self._method_link_set_start_position_3201125042 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_set_start_position_3201125042_name._native_ptr(), 3201125042)
        assert(NavigationServer2D._method_link_set_start_position_3201125042 != nil)
        let _method_link_get_start_position_2440833711_name = StringName(from: "link_get_start_position")
        self._method_link_get_start_position_2440833711 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_get_start_position_2440833711_name._native_ptr(), 2440833711)
        assert(NavigationServer2D._method_link_get_start_position_2440833711 != nil)
        let _method_link_set_end_position_3201125042_name = StringName(from: "link_set_end_position")
        self._method_link_set_end_position_3201125042 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_set_end_position_3201125042_name._native_ptr(), 3201125042)
        assert(NavigationServer2D._method_link_set_end_position_3201125042 != nil)
        let _method_link_get_end_position_2440833711_name = StringName(from: "link_get_end_position")
        self._method_link_get_end_position_2440833711 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_get_end_position_2440833711_name._native_ptr(), 2440833711)
        assert(NavigationServer2D._method_link_get_end_position_2440833711 != nil)
        let _method_link_set_enter_cost_1794382983_name = StringName(from: "link_set_enter_cost")
        self._method_link_set_enter_cost_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_set_enter_cost_1794382983_name._native_ptr(), 1794382983)
        assert(NavigationServer2D._method_link_set_enter_cost_1794382983 != nil)
        let _method_link_get_enter_cost_866169185_name = StringName(from: "link_get_enter_cost")
        self._method_link_get_enter_cost_866169185 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_get_enter_cost_866169185_name._native_ptr(), 866169185)
        assert(NavigationServer2D._method_link_get_enter_cost_866169185 != nil)
        let _method_link_set_travel_cost_1794382983_name = StringName(from: "link_set_travel_cost")
        self._method_link_set_travel_cost_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_set_travel_cost_1794382983_name._native_ptr(), 1794382983)
        assert(NavigationServer2D._method_link_set_travel_cost_1794382983 != nil)
        let _method_link_get_travel_cost_866169185_name = StringName(from: "link_get_travel_cost")
        self._method_link_get_travel_cost_866169185 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_get_travel_cost_866169185_name._native_ptr(), 866169185)
        assert(NavigationServer2D._method_link_get_travel_cost_866169185 != nil)
        let _method_link_set_owner_id_3411492887_name = StringName(from: "link_set_owner_id")
        self._method_link_set_owner_id_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_set_owner_id_3411492887_name._native_ptr(), 3411492887)
        assert(NavigationServer2D._method_link_set_owner_id_3411492887 != nil)
        let _method_link_get_owner_id_2198884583_name = StringName(from: "link_get_owner_id")
        self._method_link_get_owner_id_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_link_get_owner_id_2198884583_name._native_ptr(), 2198884583)
        assert(NavigationServer2D._method_link_get_owner_id_2198884583 != nil)
        let _method_agent_create_529393457_name = StringName(from: "agent_create")
        self._method_agent_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_agent_create_529393457_name._native_ptr(), 529393457)
        assert(NavigationServer2D._method_agent_create_529393457 != nil)
        let _method_agent_set_map_395945892_name = StringName(from: "agent_set_map")
        self._method_agent_set_map_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_agent_set_map_395945892_name._native_ptr(), 395945892)
        assert(NavigationServer2D._method_agent_set_map_395945892 != nil)
        let _method_agent_get_map_3814569979_name = StringName(from: "agent_get_map")
        self._method_agent_get_map_3814569979 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_agent_get_map_3814569979_name._native_ptr(), 3814569979)
        assert(NavigationServer2D._method_agent_get_map_3814569979 != nil)
        let _method_agent_set_neighbor_distance_1794382983_name = StringName(from: "agent_set_neighbor_distance")
        self._method_agent_set_neighbor_distance_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_agent_set_neighbor_distance_1794382983_name._native_ptr(), 1794382983)
        assert(NavigationServer2D._method_agent_set_neighbor_distance_1794382983 != nil)
        let _method_agent_set_max_neighbors_3411492887_name = StringName(from: "agent_set_max_neighbors")
        self._method_agent_set_max_neighbors_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_agent_set_max_neighbors_3411492887_name._native_ptr(), 3411492887)
        assert(NavigationServer2D._method_agent_set_max_neighbors_3411492887 != nil)
        let _method_agent_set_time_horizon_1794382983_name = StringName(from: "agent_set_time_horizon")
        self._method_agent_set_time_horizon_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_agent_set_time_horizon_1794382983_name._native_ptr(), 1794382983)
        assert(NavigationServer2D._method_agent_set_time_horizon_1794382983 != nil)
        let _method_agent_set_radius_1794382983_name = StringName(from: "agent_set_radius")
        self._method_agent_set_radius_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_agent_set_radius_1794382983_name._native_ptr(), 1794382983)
        assert(NavigationServer2D._method_agent_set_radius_1794382983 != nil)
        let _method_agent_set_max_speed_1794382983_name = StringName(from: "agent_set_max_speed")
        self._method_agent_set_max_speed_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_agent_set_max_speed_1794382983_name._native_ptr(), 1794382983)
        assert(NavigationServer2D._method_agent_set_max_speed_1794382983 != nil)
        let _method_agent_set_velocity_3201125042_name = StringName(from: "agent_set_velocity")
        self._method_agent_set_velocity_3201125042 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_agent_set_velocity_3201125042_name._native_ptr(), 3201125042)
        assert(NavigationServer2D._method_agent_set_velocity_3201125042 != nil)
        let _method_agent_set_target_velocity_3201125042_name = StringName(from: "agent_set_target_velocity")
        self._method_agent_set_target_velocity_3201125042 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_agent_set_target_velocity_3201125042_name._native_ptr(), 3201125042)
        assert(NavigationServer2D._method_agent_set_target_velocity_3201125042 != nil)
        let _method_agent_set_position_3201125042_name = StringName(from: "agent_set_position")
        self._method_agent_set_position_3201125042 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_agent_set_position_3201125042_name._native_ptr(), 3201125042)
        assert(NavigationServer2D._method_agent_set_position_3201125042 != nil)
        let _method_agent_is_map_changed_4155700596_name = StringName(from: "agent_is_map_changed")
        self._method_agent_is_map_changed_4155700596 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_agent_is_map_changed_4155700596_name._native_ptr(), 4155700596)
        assert(NavigationServer2D._method_agent_is_map_changed_4155700596 != nil)
        let _method_agent_set_callback_3379118538_name = StringName(from: "agent_set_callback")
        self._method_agent_set_callback_3379118538 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_agent_set_callback_3379118538_name._native_ptr(), 3379118538)
        assert(NavigationServer2D._method_agent_set_callback_3379118538 != nil)
        let _method_free_rid_2722037293_name = StringName(from: "free_rid")
        self._method_free_rid_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_free_rid_2722037293_name._native_ptr(), 2722037293)
        assert(NavigationServer2D._method_free_rid_2722037293 != nil)
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
    public func map_get_path(map: RID, origin: Vector2, destination: Vector2, optimize: UInt8, navigation_layers: Int64) -> PackedVector2Array {
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
                    Self._method_map_get_path_56240621,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(from: __resPtr.pointee)
        }
        }
    }
    public func map_get_closest_point(map: RID, to_point: Vector2) -> Vector2 {
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
                    Self._method_map_get_closest_point_1358334418,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func map_get_closest_point_owner(map: RID, to_point: Vector2) -> RID {
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
                    Self._method_map_get_closest_point_owner_1353467510,
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
    public func query_path(parameters: NavigationPathQueryParameters2D, result: NavigationPathQueryResult2D)  {
        let result_native = result._native_ptr()
        let parameters_native = parameters._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(parameters_native), .init(result_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_query_path_3394638789,
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
    public func region_owns_point(region: RID, point: Vector2) -> UInt8 {
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
                    Self._method_region_owns_point_219849798,
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
    public func region_set_transform(region: RID, transform: Transform2D)  {
        let transform_native = transform._native_ptr()
        let region_native = region._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(region_native), .init(transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_region_set_transform_1246044741,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func region_set_navigation_polygon(region: RID, navigation_polygon: NavigationPolygon)  {
        let navigation_polygon_native = navigation_polygon._native_ptr()
        let region_native = region._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(region_native), .init(navigation_polygon_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_region_set_navigation_polygon_3633623451,
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
    public func region_get_connection_pathway_start(region: RID, connection: Int64) -> Vector2 {
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
                    Self._method_region_get_connection_pathway_start_2546185844,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
        }
    }
    public func region_get_connection_pathway_end(region: RID, connection: Int64) -> Vector2 {
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
                    Self._method_region_get_connection_pathway_end_2546185844,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
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
    public func link_set_start_position(link: RID, position: Vector2)  {
        let position_native = position._native_ptr()
        let link_native = link._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(link_native), .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_link_set_start_position_3201125042,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func link_get_start_position(link: RID) -> Vector2 {
        let link_native = link._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(link_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_link_get_start_position_2440833711,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func link_set_end_position(link: RID, position: Vector2)  {
        let position_native = position._native_ptr()
        let link_native = link._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(link_native), .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_link_set_end_position_3201125042,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func link_get_end_position(link: RID) -> Vector2 {
        let link_native = link._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(link_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_link_get_end_position_2440833711,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
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
    public func agent_set_velocity(agent: RID, velocity: Vector2)  {
        let velocity_native = velocity._native_ptr()
        let agent_native = agent._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(agent_native), .init(velocity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_agent_set_velocity_3201125042,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func agent_set_target_velocity(agent: RID, target_velocity: Vector2)  {
        let target_velocity_native = target_velocity._native_ptr()
        let agent_native = agent._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(agent_native), .init(target_velocity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_agent_set_target_velocity_3201125042,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func agent_set_position(agent: RID, position: Vector2)  {
        let position_native = position._native_ptr()
        let agent_native = agent._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(agent_native), .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_agent_set_position_3201125042,
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
}