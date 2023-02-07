import godot_native

fileprivate var __godot_name_NavigationMesh: StringName! = nil

/// A mesh to approximate the walkable areas and obstacles.
/// 
/// A navigation mesh is a collection of polygons that define which areas of an environment are traversable to aid agents in pathfinding through complicated spaces.
public class NavigationMesh : Resource {

    public enum SamplePartitionType : Int32 {
        case SAMPLE_PARTITION_WATERSHED = 0
        case SAMPLE_PARTITION_MONOTONE = 1
        case SAMPLE_PARTITION_LAYERS = 2
        case SAMPLE_PARTITION_MAX = 3
    }
    public enum ParsedGeometryType : Int32 {
        case PARSED_GEOMETRY_MESH_INSTANCES = 0
        case PARSED_GEOMETRY_STATIC_COLLIDERS = 1
        case PARSED_GEOMETRY_BOTH = 2
        case PARSED_GEOMETRY_MAX = 3
    }
    public enum SourceGeometryMode : Int32 {
        case SOURCE_GEOMETRY_ROOT_NODE_CHILDREN = 0
        case SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN = 1
        case SOURCE_GEOMETRY_GROUPS_EXPLICIT = 2
        case SOURCE_GEOMETRY_MAX = 3
    }

    public override class var __godot_name: StringName { __godot_name_NavigationMesh }

    static var _method_set_sample_partition_type_2472437533: GDExtensionMethodBindPtr! = nil
    static var _method_get_sample_partition_type_833513918: GDExtensionMethodBindPtr! = nil
    static var _method_set_parsed_geometry_type_3064713163: GDExtensionMethodBindPtr! = nil
    static var _method_get_parsed_geometry_type_3928011953: GDExtensionMethodBindPtr! = nil
    static var _method_set_collision_mask_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_mask_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_collision_mask_value_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_mask_value_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_source_geometry_mode_2700825194: GDExtensionMethodBindPtr! = nil
    static var _method_get_source_geometry_mode_2770484141: GDExtensionMethodBindPtr! = nil
    static var _method_set_source_group_name_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_get_source_group_name_2002593661: GDExtensionMethodBindPtr! = nil
    static var _method_set_cell_size_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_cell_size_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_cell_height_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_cell_height_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_agent_height_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_agent_height_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_agent_radius_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_agent_radius_191475506: GDExtensionMethodBindPtr! = nil
    static var _method_set_agent_max_climb_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_agent_max_climb_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_agent_max_slope_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_agent_max_slope_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_region_min_size_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_region_min_size_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_region_merge_size_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_region_merge_size_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_edge_max_length_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_edge_max_length_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_edge_max_error_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_edge_max_error_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_vertices_per_polygon_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_vertices_per_polygon_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_detail_sample_distance_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_detail_sample_distance_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_detail_sample_max_error_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_detail_sample_max_error_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_filter_low_hanging_obstacles_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_filter_low_hanging_obstacles_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_filter_ledge_spans_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_filter_ledge_spans_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_filter_walkable_low_height_spans_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_filter_walkable_low_height_spans_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_filter_baking_aabb_259215842: GDExtensionMethodBindPtr! = nil
    static var _method_get_filter_baking_aabb_1068685055: GDExtensionMethodBindPtr! = nil
    static var _method_set_filter_baking_aabb_offset_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_filter_baking_aabb_offset_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_vertices_334873810: GDExtensionMethodBindPtr! = nil
    static var _method_get_vertices_497664490: GDExtensionMethodBindPtr! = nil
    static var _method_add_polygon_3614634198: GDExtensionMethodBindPtr! = nil
    static var _method_get_polygon_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_polygon_3668444399: GDExtensionMethodBindPtr! = nil
    static var _method_clear_polygons_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_create_from_mesh_194775623: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_NavigationMesh = StringName(from: "NavigationMesh")

        let _method_set_sample_partition_type_2472437533_name = StringName(from: "set_sample_partition_type")
        self._method_set_sample_partition_type_2472437533 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_sample_partition_type_2472437533_name._native_ptr(), 2472437533)
        assert(NavigationMesh._method_set_sample_partition_type_2472437533 != nil)
        let _method_get_sample_partition_type_833513918_name = StringName(from: "get_sample_partition_type")
        self._method_get_sample_partition_type_833513918 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_sample_partition_type_833513918_name._native_ptr(), 833513918)
        assert(NavigationMesh._method_get_sample_partition_type_833513918 != nil)
        let _method_set_parsed_geometry_type_3064713163_name = StringName(from: "set_parsed_geometry_type")
        self._method_set_parsed_geometry_type_3064713163 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_parsed_geometry_type_3064713163_name._native_ptr(), 3064713163)
        assert(NavigationMesh._method_set_parsed_geometry_type_3064713163 != nil)
        let _method_get_parsed_geometry_type_3928011953_name = StringName(from: "get_parsed_geometry_type")
        self._method_get_parsed_geometry_type_3928011953 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_parsed_geometry_type_3928011953_name._native_ptr(), 3928011953)
        assert(NavigationMesh._method_get_parsed_geometry_type_3928011953 != nil)
        let _method_set_collision_mask_1286410249_name = StringName(from: "set_collision_mask")
        self._method_set_collision_mask_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collision_mask_1286410249_name._native_ptr(), 1286410249)
        assert(NavigationMesh._method_set_collision_mask_1286410249 != nil)
        let _method_get_collision_mask_3905245786_name = StringName(from: "get_collision_mask")
        self._method_get_collision_mask_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collision_mask_3905245786_name._native_ptr(), 3905245786)
        assert(NavigationMesh._method_get_collision_mask_3905245786 != nil)
        let _method_set_collision_mask_value_300928843_name = StringName(from: "set_collision_mask_value")
        self._method_set_collision_mask_value_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collision_mask_value_300928843_name._native_ptr(), 300928843)
        assert(NavigationMesh._method_set_collision_mask_value_300928843 != nil)
        let _method_get_collision_mask_value_1116898809_name = StringName(from: "get_collision_mask_value")
        self._method_get_collision_mask_value_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collision_mask_value_1116898809_name._native_ptr(), 1116898809)
        assert(NavigationMesh._method_get_collision_mask_value_1116898809 != nil)
        let _method_set_source_geometry_mode_2700825194_name = StringName(from: "set_source_geometry_mode")
        self._method_set_source_geometry_mode_2700825194 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_source_geometry_mode_2700825194_name._native_ptr(), 2700825194)
        assert(NavigationMesh._method_set_source_geometry_mode_2700825194 != nil)
        let _method_get_source_geometry_mode_2770484141_name = StringName(from: "get_source_geometry_mode")
        self._method_get_source_geometry_mode_2770484141 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_source_geometry_mode_2770484141_name._native_ptr(), 2770484141)
        assert(NavigationMesh._method_get_source_geometry_mode_2770484141 != nil)
        let _method_set_source_group_name_3304788590_name = StringName(from: "set_source_group_name")
        self._method_set_source_group_name_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_source_group_name_3304788590_name._native_ptr(), 3304788590)
        assert(NavigationMesh._method_set_source_group_name_3304788590 != nil)
        let _method_get_source_group_name_2002593661_name = StringName(from: "get_source_group_name")
        self._method_get_source_group_name_2002593661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_source_group_name_2002593661_name._native_ptr(), 2002593661)
        assert(NavigationMesh._method_get_source_group_name_2002593661 != nil)
        let _method_set_cell_size_373806689_name = StringName(from: "set_cell_size")
        self._method_set_cell_size_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_cell_size_373806689_name._native_ptr(), 373806689)
        assert(NavigationMesh._method_set_cell_size_373806689 != nil)
        let _method_get_cell_size_1740695150_name = StringName(from: "get_cell_size")
        self._method_get_cell_size_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_cell_size_1740695150_name._native_ptr(), 1740695150)
        assert(NavigationMesh._method_get_cell_size_1740695150 != nil)
        let _method_set_cell_height_373806689_name = StringName(from: "set_cell_height")
        self._method_set_cell_height_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_cell_height_373806689_name._native_ptr(), 373806689)
        assert(NavigationMesh._method_set_cell_height_373806689 != nil)
        let _method_get_cell_height_1740695150_name = StringName(from: "get_cell_height")
        self._method_get_cell_height_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_cell_height_1740695150_name._native_ptr(), 1740695150)
        assert(NavigationMesh._method_get_cell_height_1740695150 != nil)
        let _method_set_agent_height_373806689_name = StringName(from: "set_agent_height")
        self._method_set_agent_height_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_agent_height_373806689_name._native_ptr(), 373806689)
        assert(NavigationMesh._method_set_agent_height_373806689 != nil)
        let _method_get_agent_height_1740695150_name = StringName(from: "get_agent_height")
        self._method_get_agent_height_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_agent_height_1740695150_name._native_ptr(), 1740695150)
        assert(NavigationMesh._method_get_agent_height_1740695150 != nil)
        let _method_set_agent_radius_373806689_name = StringName(from: "set_agent_radius")
        self._method_set_agent_radius_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_agent_radius_373806689_name._native_ptr(), 373806689)
        assert(NavigationMesh._method_set_agent_radius_373806689 != nil)
        let _method_get_agent_radius_191475506_name = StringName(from: "get_agent_radius")
        self._method_get_agent_radius_191475506 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_agent_radius_191475506_name._native_ptr(), 191475506)
        assert(NavigationMesh._method_get_agent_radius_191475506 != nil)
        let _method_set_agent_max_climb_373806689_name = StringName(from: "set_agent_max_climb")
        self._method_set_agent_max_climb_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_agent_max_climb_373806689_name._native_ptr(), 373806689)
        assert(NavigationMesh._method_set_agent_max_climb_373806689 != nil)
        let _method_get_agent_max_climb_1740695150_name = StringName(from: "get_agent_max_climb")
        self._method_get_agent_max_climb_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_agent_max_climb_1740695150_name._native_ptr(), 1740695150)
        assert(NavigationMesh._method_get_agent_max_climb_1740695150 != nil)
        let _method_set_agent_max_slope_373806689_name = StringName(from: "set_agent_max_slope")
        self._method_set_agent_max_slope_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_agent_max_slope_373806689_name._native_ptr(), 373806689)
        assert(NavigationMesh._method_set_agent_max_slope_373806689 != nil)
        let _method_get_agent_max_slope_1740695150_name = StringName(from: "get_agent_max_slope")
        self._method_get_agent_max_slope_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_agent_max_slope_1740695150_name._native_ptr(), 1740695150)
        assert(NavigationMesh._method_get_agent_max_slope_1740695150 != nil)
        let _method_set_region_min_size_373806689_name = StringName(from: "set_region_min_size")
        self._method_set_region_min_size_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_region_min_size_373806689_name._native_ptr(), 373806689)
        assert(NavigationMesh._method_set_region_min_size_373806689 != nil)
        let _method_get_region_min_size_1740695150_name = StringName(from: "get_region_min_size")
        self._method_get_region_min_size_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_region_min_size_1740695150_name._native_ptr(), 1740695150)
        assert(NavigationMesh._method_get_region_min_size_1740695150 != nil)
        let _method_set_region_merge_size_373806689_name = StringName(from: "set_region_merge_size")
        self._method_set_region_merge_size_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_region_merge_size_373806689_name._native_ptr(), 373806689)
        assert(NavigationMesh._method_set_region_merge_size_373806689 != nil)
        let _method_get_region_merge_size_1740695150_name = StringName(from: "get_region_merge_size")
        self._method_get_region_merge_size_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_region_merge_size_1740695150_name._native_ptr(), 1740695150)
        assert(NavigationMesh._method_get_region_merge_size_1740695150 != nil)
        let _method_set_edge_max_length_373806689_name = StringName(from: "set_edge_max_length")
        self._method_set_edge_max_length_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_edge_max_length_373806689_name._native_ptr(), 373806689)
        assert(NavigationMesh._method_set_edge_max_length_373806689 != nil)
        let _method_get_edge_max_length_1740695150_name = StringName(from: "get_edge_max_length")
        self._method_get_edge_max_length_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_edge_max_length_1740695150_name._native_ptr(), 1740695150)
        assert(NavigationMesh._method_get_edge_max_length_1740695150 != nil)
        let _method_set_edge_max_error_373806689_name = StringName(from: "set_edge_max_error")
        self._method_set_edge_max_error_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_edge_max_error_373806689_name._native_ptr(), 373806689)
        assert(NavigationMesh._method_set_edge_max_error_373806689 != nil)
        let _method_get_edge_max_error_1740695150_name = StringName(from: "get_edge_max_error")
        self._method_get_edge_max_error_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_edge_max_error_1740695150_name._native_ptr(), 1740695150)
        assert(NavigationMesh._method_get_edge_max_error_1740695150 != nil)
        let _method_set_vertices_per_polygon_373806689_name = StringName(from: "set_vertices_per_polygon")
        self._method_set_vertices_per_polygon_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_vertices_per_polygon_373806689_name._native_ptr(), 373806689)
        assert(NavigationMesh._method_set_vertices_per_polygon_373806689 != nil)
        let _method_get_vertices_per_polygon_1740695150_name = StringName(from: "get_vertices_per_polygon")
        self._method_get_vertices_per_polygon_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_vertices_per_polygon_1740695150_name._native_ptr(), 1740695150)
        assert(NavigationMesh._method_get_vertices_per_polygon_1740695150 != nil)
        let _method_set_detail_sample_distance_373806689_name = StringName(from: "set_detail_sample_distance")
        self._method_set_detail_sample_distance_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_detail_sample_distance_373806689_name._native_ptr(), 373806689)
        assert(NavigationMesh._method_set_detail_sample_distance_373806689 != nil)
        let _method_get_detail_sample_distance_1740695150_name = StringName(from: "get_detail_sample_distance")
        self._method_get_detail_sample_distance_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_detail_sample_distance_1740695150_name._native_ptr(), 1740695150)
        assert(NavigationMesh._method_get_detail_sample_distance_1740695150 != nil)
        let _method_set_detail_sample_max_error_373806689_name = StringName(from: "set_detail_sample_max_error")
        self._method_set_detail_sample_max_error_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_detail_sample_max_error_373806689_name._native_ptr(), 373806689)
        assert(NavigationMesh._method_set_detail_sample_max_error_373806689 != nil)
        let _method_get_detail_sample_max_error_1740695150_name = StringName(from: "get_detail_sample_max_error")
        self._method_get_detail_sample_max_error_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_detail_sample_max_error_1740695150_name._native_ptr(), 1740695150)
        assert(NavigationMesh._method_get_detail_sample_max_error_1740695150 != nil)
        let _method_set_filter_low_hanging_obstacles_2586408642_name = StringName(from: "set_filter_low_hanging_obstacles")
        self._method_set_filter_low_hanging_obstacles_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_filter_low_hanging_obstacles_2586408642_name._native_ptr(), 2586408642)
        assert(NavigationMesh._method_set_filter_low_hanging_obstacles_2586408642 != nil)
        let _method_get_filter_low_hanging_obstacles_36873697_name = StringName(from: "get_filter_low_hanging_obstacles")
        self._method_get_filter_low_hanging_obstacles_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_filter_low_hanging_obstacles_36873697_name._native_ptr(), 36873697)
        assert(NavigationMesh._method_get_filter_low_hanging_obstacles_36873697 != nil)
        let _method_set_filter_ledge_spans_2586408642_name = StringName(from: "set_filter_ledge_spans")
        self._method_set_filter_ledge_spans_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_filter_ledge_spans_2586408642_name._native_ptr(), 2586408642)
        assert(NavigationMesh._method_set_filter_ledge_spans_2586408642 != nil)
        let _method_get_filter_ledge_spans_36873697_name = StringName(from: "get_filter_ledge_spans")
        self._method_get_filter_ledge_spans_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_filter_ledge_spans_36873697_name._native_ptr(), 36873697)
        assert(NavigationMesh._method_get_filter_ledge_spans_36873697 != nil)
        let _method_set_filter_walkable_low_height_spans_2586408642_name = StringName(from: "set_filter_walkable_low_height_spans")
        self._method_set_filter_walkable_low_height_spans_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_filter_walkable_low_height_spans_2586408642_name._native_ptr(), 2586408642)
        assert(NavigationMesh._method_set_filter_walkable_low_height_spans_2586408642 != nil)
        let _method_get_filter_walkable_low_height_spans_36873697_name = StringName(from: "get_filter_walkable_low_height_spans")
        self._method_get_filter_walkable_low_height_spans_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_filter_walkable_low_height_spans_36873697_name._native_ptr(), 36873697)
        assert(NavigationMesh._method_get_filter_walkable_low_height_spans_36873697 != nil)
        let _method_set_filter_baking_aabb_259215842_name = StringName(from: "set_filter_baking_aabb")
        self._method_set_filter_baking_aabb_259215842 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_filter_baking_aabb_259215842_name._native_ptr(), 259215842)
        assert(NavigationMesh._method_set_filter_baking_aabb_259215842 != nil)
        let _method_get_filter_baking_aabb_1068685055_name = StringName(from: "get_filter_baking_aabb")
        self._method_get_filter_baking_aabb_1068685055 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_filter_baking_aabb_1068685055_name._native_ptr(), 1068685055)
        assert(NavigationMesh._method_get_filter_baking_aabb_1068685055 != nil)
        let _method_set_filter_baking_aabb_offset_3460891852_name = StringName(from: "set_filter_baking_aabb_offset")
        self._method_set_filter_baking_aabb_offset_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_filter_baking_aabb_offset_3460891852_name._native_ptr(), 3460891852)
        assert(NavigationMesh._method_set_filter_baking_aabb_offset_3460891852 != nil)
        let _method_get_filter_baking_aabb_offset_3360562783_name = StringName(from: "get_filter_baking_aabb_offset")
        self._method_get_filter_baking_aabb_offset_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_filter_baking_aabb_offset_3360562783_name._native_ptr(), 3360562783)
        assert(NavigationMesh._method_get_filter_baking_aabb_offset_3360562783 != nil)
        let _method_set_vertices_334873810_name = StringName(from: "set_vertices")
        self._method_set_vertices_334873810 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_vertices_334873810_name._native_ptr(), 334873810)
        assert(NavigationMesh._method_set_vertices_334873810 != nil)
        let _method_get_vertices_497664490_name = StringName(from: "get_vertices")
        self._method_get_vertices_497664490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_vertices_497664490_name._native_ptr(), 497664490)
        assert(NavigationMesh._method_get_vertices_497664490 != nil)
        let _method_add_polygon_3614634198_name = StringName(from: "add_polygon")
        self._method_add_polygon_3614634198 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_polygon_3614634198_name._native_ptr(), 3614634198)
        assert(NavigationMesh._method_add_polygon_3614634198 != nil)
        let _method_get_polygon_count_3905245786_name = StringName(from: "get_polygon_count")
        self._method_get_polygon_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_polygon_count_3905245786_name._native_ptr(), 3905245786)
        assert(NavigationMesh._method_get_polygon_count_3905245786 != nil)
        let _method_get_polygon_3668444399_name = StringName(from: "get_polygon")
        self._method_get_polygon_3668444399 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_polygon_3668444399_name._native_ptr(), 3668444399)
        assert(NavigationMesh._method_get_polygon_3668444399 != nil)
        let _method_clear_polygons_3218959716_name = StringName(from: "clear_polygons")
        self._method_clear_polygons_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_polygons_3218959716_name._native_ptr(), 3218959716)
        assert(NavigationMesh._method_clear_polygons_3218959716 != nil)
        let _method_create_from_mesh_194775623_name = StringName(from: "create_from_mesh")
        self._method_create_from_mesh_194775623 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_from_mesh_194775623_name._native_ptr(), 194775623)
        assert(NavigationMesh._method_create_from_mesh_194775623 != nil)
    }

    public func set_sample_partition_type(sample_partition_type: NavigationMesh.SamplePartitionType)  {
        withUnsafePointer(to: sample_partition_type.rawValue) { sample_partition_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sample_partition_type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sample_partition_type_2472437533,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_sample_partition_type() -> NavigationMesh.SamplePartitionType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sample_partition_type_833513918,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NavigationMesh.SamplePartitionType(from: __resPtr.pointee)
    }
    public func set_parsed_geometry_type(geometry_type: NavigationMesh.ParsedGeometryType)  {
        withUnsafePointer(to: geometry_type.rawValue) { geometry_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(geometry_type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_parsed_geometry_type_3064713163,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_parsed_geometry_type() -> NavigationMesh.ParsedGeometryType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_parsed_geometry_type_3928011953,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NavigationMesh.ParsedGeometryType(from: __resPtr.pointee)
    }
    public func set_collision_mask(mask: Int64)  {
        withUnsafePointer(to: mask) { mask_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_collision_mask_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_collision_mask() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collision_mask_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_collision_mask_value(layer_number: Int64, value: UInt8)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: layer_number) { layer_number_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_number_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_collision_mask_value_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_collision_mask_value(layer_number: Int64) -> UInt8 {
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
                    Self._method_get_collision_mask_value_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func set_source_geometry_mode(mask: NavigationMesh.SourceGeometryMode)  {
        withUnsafePointer(to: mask.rawValue) { mask_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_source_geometry_mode_2700825194,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_source_geometry_mode() -> NavigationMesh.SourceGeometryMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_source_geometry_mode_2770484141,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NavigationMesh.SourceGeometryMode(from: __resPtr.pointee)
    }
    public func set_source_group_name(mask: StringName)  {
        let mask_native = mask._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_source_group_name_3304788590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_source_group_name() -> StringName {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_source_group_name_2002593661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(from: __resPtr.pointee)
    }
    public func set_cell_size(cell_size: Float64)  {
        withUnsafePointer(to: cell_size) { cell_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cell_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cell_size_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_cell_size() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cell_size_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_cell_height(cell_height: Float64)  {
        withUnsafePointer(to: cell_height) { cell_height_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cell_height_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cell_height_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_cell_height() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cell_height_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_agent_height(agent_height: Float64)  {
        withUnsafePointer(to: agent_height) { agent_height_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(agent_height_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_agent_height_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_agent_height() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_agent_height_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_agent_radius(agent_radius: Float64)  {
        withUnsafePointer(to: agent_radius) { agent_radius_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(agent_radius_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_agent_radius_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_agent_radius() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_agent_radius_191475506,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_agent_max_climb(agent_max_climb: Float64)  {
        withUnsafePointer(to: agent_max_climb) { agent_max_climb_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(agent_max_climb_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_agent_max_climb_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_agent_max_climb() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_agent_max_climb_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_agent_max_slope(agent_max_slope: Float64)  {
        withUnsafePointer(to: agent_max_slope) { agent_max_slope_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(agent_max_slope_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_agent_max_slope_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_agent_max_slope() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_agent_max_slope_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_region_min_size(region_min_size: Float64)  {
        withUnsafePointer(to: region_min_size) { region_min_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(region_min_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_region_min_size_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_region_min_size() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_region_min_size_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_region_merge_size(region_merge_size: Float64)  {
        withUnsafePointer(to: region_merge_size) { region_merge_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(region_merge_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_region_merge_size_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_region_merge_size() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_region_merge_size_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_edge_max_length(edge_max_length: Float64)  {
        withUnsafePointer(to: edge_max_length) { edge_max_length_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(edge_max_length_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_edge_max_length_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_edge_max_length() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_edge_max_length_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_edge_max_error(edge_max_error: Float64)  {
        withUnsafePointer(to: edge_max_error) { edge_max_error_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(edge_max_error_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_edge_max_error_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_edge_max_error() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_edge_max_error_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_vertices_per_polygon(vertices_per_polygon: Float64)  {
        withUnsafePointer(to: vertices_per_polygon) { vertices_per_polygon_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(vertices_per_polygon_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_vertices_per_polygon_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_vertices_per_polygon() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_vertices_per_polygon_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_detail_sample_distance(detail_sample_dist: Float64)  {
        withUnsafePointer(to: detail_sample_dist) { detail_sample_dist_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(detail_sample_dist_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_detail_sample_distance_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_detail_sample_distance() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_detail_sample_distance_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_detail_sample_max_error(detail_sample_max_error: Float64)  {
        withUnsafePointer(to: detail_sample_max_error) { detail_sample_max_error_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(detail_sample_max_error_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_detail_sample_max_error_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_detail_sample_max_error() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_detail_sample_max_error_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_filter_low_hanging_obstacles(filter_low_hanging_obstacles: UInt8)  {
        withUnsafePointer(to: filter_low_hanging_obstacles) { filter_low_hanging_obstacles_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(filter_low_hanging_obstacles_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_filter_low_hanging_obstacles_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_filter_low_hanging_obstacles() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_filter_low_hanging_obstacles_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_filter_ledge_spans(filter_ledge_spans: UInt8)  {
        withUnsafePointer(to: filter_ledge_spans) { filter_ledge_spans_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(filter_ledge_spans_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_filter_ledge_spans_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_filter_ledge_spans() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_filter_ledge_spans_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_filter_walkable_low_height_spans(filter_walkable_low_height_spans: UInt8)  {
        withUnsafePointer(to: filter_walkable_low_height_spans) { filter_walkable_low_height_spans_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(filter_walkable_low_height_spans_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_filter_walkable_low_height_spans_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_filter_walkable_low_height_spans() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_filter_walkable_low_height_spans_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_filter_baking_aabb(baking_aabb: AABB)  {
        let baking_aabb_native = baking_aabb._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(baking_aabb_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_filter_baking_aabb_259215842,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_filter_baking_aabb() -> AABB {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_filter_baking_aabb_1068685055,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AABB(from: __resPtr.pointee)
    }
    public func set_filter_baking_aabb_offset(baking_aabb_offset: Vector3)  {
        let baking_aabb_offset_native = baking_aabb_offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(baking_aabb_offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_filter_baking_aabb_offset_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_filter_baking_aabb_offset() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_filter_baking_aabb_offset_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func set_vertices(vertices: PackedVector3Array)  {
        let vertices_native = vertices._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(vertices_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_vertices_334873810,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_vertices() -> PackedVector3Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_vertices_497664490,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector3Array(from: __resPtr.pointee)
    }
    public func add_polygon(polygon: PackedInt32Array)  {
        let polygon_native = polygon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(polygon_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_polygon_3614634198,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_polygon_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_polygon_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_polygon(idx: Int64) -> PackedInt32Array {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_polygon_3668444399,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(from: __resPtr.pointee)
        }
    }
    public func clear_polygons()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_polygons_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func create_from_mesh(mesh: Mesh)  {
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_from_mesh_194775623,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}