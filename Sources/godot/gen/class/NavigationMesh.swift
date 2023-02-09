import godot_native

fileprivate var __godot_name_NavigationMesh: StringName! = nil

/// A mesh to approximate the walkable areas and obstacles.
/// 
/// A navigation mesh is a collection of polygons that define which areas of an environment are traversable to aid agents in pathfinding through complicated spaces.
open class NavigationMesh : Resource {

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

    static var _method_set_sample_partition_type_2472437533: StringName! = nil
    static var _method_get_sample_partition_type_833513918: StringName! = nil
    static var _method_set_parsed_geometry_type_3064713163: StringName! = nil
    static var _method_get_parsed_geometry_type_3928011953: StringName! = nil
    static var _method_set_collision_mask_1286410249: StringName! = nil
    static var _method_get_collision_mask_3905245786: StringName! = nil
    static var _method_set_collision_mask_value_300928843: StringName! = nil
    static var _method_get_collision_mask_value_1116898809: StringName! = nil
    static var _method_set_source_geometry_mode_2700825194: StringName! = nil
    static var _method_get_source_geometry_mode_2770484141: StringName! = nil
    static var _method_set_source_group_name_3304788590: StringName! = nil
    static var _method_get_source_group_name_2002593661: StringName! = nil
    static var _method_set_cell_size_373806689: StringName! = nil
    static var _method_get_cell_size_1740695150: StringName! = nil
    static var _method_set_cell_height_373806689: StringName! = nil
    static var _method_get_cell_height_1740695150: StringName! = nil
    static var _method_set_agent_height_373806689: StringName! = nil
    static var _method_get_agent_height_1740695150: StringName! = nil
    static var _method_set_agent_radius_373806689: StringName! = nil
    static var _method_get_agent_radius_191475506: StringName! = nil
    static var _method_set_agent_max_climb_373806689: StringName! = nil
    static var _method_get_agent_max_climb_1740695150: StringName! = nil
    static var _method_set_agent_max_slope_373806689: StringName! = nil
    static var _method_get_agent_max_slope_1740695150: StringName! = nil
    static var _method_set_region_min_size_373806689: StringName! = nil
    static var _method_get_region_min_size_1740695150: StringName! = nil
    static var _method_set_region_merge_size_373806689: StringName! = nil
    static var _method_get_region_merge_size_1740695150: StringName! = nil
    static var _method_set_edge_max_length_373806689: StringName! = nil
    static var _method_get_edge_max_length_1740695150: StringName! = nil
    static var _method_set_edge_max_error_373806689: StringName! = nil
    static var _method_get_edge_max_error_1740695150: StringName! = nil
    static var _method_set_vertices_per_polygon_373806689: StringName! = nil
    static var _method_get_vertices_per_polygon_1740695150: StringName! = nil
    static var _method_set_detail_sample_distance_373806689: StringName! = nil
    static var _method_get_detail_sample_distance_1740695150: StringName! = nil
    static var _method_set_detail_sample_max_error_373806689: StringName! = nil
    static var _method_get_detail_sample_max_error_1740695150: StringName! = nil
    static var _method_set_filter_low_hanging_obstacles_2586408642: StringName! = nil
    static var _method_get_filter_low_hanging_obstacles_36873697: StringName! = nil
    static var _method_set_filter_ledge_spans_2586408642: StringName! = nil
    static var _method_get_filter_ledge_spans_36873697: StringName! = nil
    static var _method_set_filter_walkable_low_height_spans_2586408642: StringName! = nil
    static var _method_get_filter_walkable_low_height_spans_36873697: StringName! = nil
    static var _method_set_filter_baking_aabb_259215842: StringName! = nil
    static var _method_get_filter_baking_aabb_1068685055: StringName! = nil
    static var _method_set_filter_baking_aabb_offset_3460891852: StringName! = nil
    static var _method_get_filter_baking_aabb_offset_3360562783: StringName! = nil
    static var _method_set_vertices_334873810: StringName! = nil
    static var _method_get_vertices_497664490: StringName! = nil
    static var _method_add_polygon_3614634198: StringName! = nil
    static var _method_get_polygon_count_3905245786: StringName! = nil
    static var _method_get_polygon_3668444399: StringName! = nil
    static var _method_clear_polygons_3218959716: StringName! = nil
    static var _method_create_from_mesh_194775623: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_NavigationMesh == nil)
        __godot_name_NavigationMesh = StringName(from: "NavigationMesh")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_sample_partition_type_2472437533 = StringName(from: "set_sample_partition_type")
        assert(self._method_set_sample_partition_type_2472437533 != nil)
        self._method_get_sample_partition_type_833513918 = StringName(from: "get_sample_partition_type")
        assert(self._method_get_sample_partition_type_833513918 != nil)
        self._method_set_parsed_geometry_type_3064713163 = StringName(from: "set_parsed_geometry_type")
        assert(self._method_set_parsed_geometry_type_3064713163 != nil)
        self._method_get_parsed_geometry_type_3928011953 = StringName(from: "get_parsed_geometry_type")
        assert(self._method_get_parsed_geometry_type_3928011953 != nil)
        self._method_set_collision_mask_1286410249 = StringName(from: "set_collision_mask")
        assert(self._method_set_collision_mask_1286410249 != nil)
        self._method_get_collision_mask_3905245786 = StringName(from: "get_collision_mask")
        assert(self._method_get_collision_mask_3905245786 != nil)
        self._method_set_collision_mask_value_300928843 = StringName(from: "set_collision_mask_value")
        assert(self._method_set_collision_mask_value_300928843 != nil)
        self._method_get_collision_mask_value_1116898809 = StringName(from: "get_collision_mask_value")
        assert(self._method_get_collision_mask_value_1116898809 != nil)
        self._method_set_source_geometry_mode_2700825194 = StringName(from: "set_source_geometry_mode")
        assert(self._method_set_source_geometry_mode_2700825194 != nil)
        self._method_get_source_geometry_mode_2770484141 = StringName(from: "get_source_geometry_mode")
        assert(self._method_get_source_geometry_mode_2770484141 != nil)
        self._method_set_source_group_name_3304788590 = StringName(from: "set_source_group_name")
        assert(self._method_set_source_group_name_3304788590 != nil)
        self._method_get_source_group_name_2002593661 = StringName(from: "get_source_group_name")
        assert(self._method_get_source_group_name_2002593661 != nil)
        self._method_set_cell_size_373806689 = StringName(from: "set_cell_size")
        assert(self._method_set_cell_size_373806689 != nil)
        self._method_get_cell_size_1740695150 = StringName(from: "get_cell_size")
        assert(self._method_get_cell_size_1740695150 != nil)
        self._method_set_cell_height_373806689 = StringName(from: "set_cell_height")
        assert(self._method_set_cell_height_373806689 != nil)
        self._method_get_cell_height_1740695150 = StringName(from: "get_cell_height")
        assert(self._method_get_cell_height_1740695150 != nil)
        self._method_set_agent_height_373806689 = StringName(from: "set_agent_height")
        assert(self._method_set_agent_height_373806689 != nil)
        self._method_get_agent_height_1740695150 = StringName(from: "get_agent_height")
        assert(self._method_get_agent_height_1740695150 != nil)
        self._method_set_agent_radius_373806689 = StringName(from: "set_agent_radius")
        assert(self._method_set_agent_radius_373806689 != nil)
        self._method_get_agent_radius_191475506 = StringName(from: "get_agent_radius")
        assert(self._method_get_agent_radius_191475506 != nil)
        self._method_set_agent_max_climb_373806689 = StringName(from: "set_agent_max_climb")
        assert(self._method_set_agent_max_climb_373806689 != nil)
        self._method_get_agent_max_climb_1740695150 = StringName(from: "get_agent_max_climb")
        assert(self._method_get_agent_max_climb_1740695150 != nil)
        self._method_set_agent_max_slope_373806689 = StringName(from: "set_agent_max_slope")
        assert(self._method_set_agent_max_slope_373806689 != nil)
        self._method_get_agent_max_slope_1740695150 = StringName(from: "get_agent_max_slope")
        assert(self._method_get_agent_max_slope_1740695150 != nil)
        self._method_set_region_min_size_373806689 = StringName(from: "set_region_min_size")
        assert(self._method_set_region_min_size_373806689 != nil)
        self._method_get_region_min_size_1740695150 = StringName(from: "get_region_min_size")
        assert(self._method_get_region_min_size_1740695150 != nil)
        self._method_set_region_merge_size_373806689 = StringName(from: "set_region_merge_size")
        assert(self._method_set_region_merge_size_373806689 != nil)
        self._method_get_region_merge_size_1740695150 = StringName(from: "get_region_merge_size")
        assert(self._method_get_region_merge_size_1740695150 != nil)
        self._method_set_edge_max_length_373806689 = StringName(from: "set_edge_max_length")
        assert(self._method_set_edge_max_length_373806689 != nil)
        self._method_get_edge_max_length_1740695150 = StringName(from: "get_edge_max_length")
        assert(self._method_get_edge_max_length_1740695150 != nil)
        self._method_set_edge_max_error_373806689 = StringName(from: "set_edge_max_error")
        assert(self._method_set_edge_max_error_373806689 != nil)
        self._method_get_edge_max_error_1740695150 = StringName(from: "get_edge_max_error")
        assert(self._method_get_edge_max_error_1740695150 != nil)
        self._method_set_vertices_per_polygon_373806689 = StringName(from: "set_vertices_per_polygon")
        assert(self._method_set_vertices_per_polygon_373806689 != nil)
        self._method_get_vertices_per_polygon_1740695150 = StringName(from: "get_vertices_per_polygon")
        assert(self._method_get_vertices_per_polygon_1740695150 != nil)
        self._method_set_detail_sample_distance_373806689 = StringName(from: "set_detail_sample_distance")
        assert(self._method_set_detail_sample_distance_373806689 != nil)
        self._method_get_detail_sample_distance_1740695150 = StringName(from: "get_detail_sample_distance")
        assert(self._method_get_detail_sample_distance_1740695150 != nil)
        self._method_set_detail_sample_max_error_373806689 = StringName(from: "set_detail_sample_max_error")
        assert(self._method_set_detail_sample_max_error_373806689 != nil)
        self._method_get_detail_sample_max_error_1740695150 = StringName(from: "get_detail_sample_max_error")
        assert(self._method_get_detail_sample_max_error_1740695150 != nil)
        self._method_set_filter_low_hanging_obstacles_2586408642 = StringName(from: "set_filter_low_hanging_obstacles")
        assert(self._method_set_filter_low_hanging_obstacles_2586408642 != nil)
        self._method_get_filter_low_hanging_obstacles_36873697 = StringName(from: "get_filter_low_hanging_obstacles")
        assert(self._method_get_filter_low_hanging_obstacles_36873697 != nil)
        self._method_set_filter_ledge_spans_2586408642 = StringName(from: "set_filter_ledge_spans")
        assert(self._method_set_filter_ledge_spans_2586408642 != nil)
        self._method_get_filter_ledge_spans_36873697 = StringName(from: "get_filter_ledge_spans")
        assert(self._method_get_filter_ledge_spans_36873697 != nil)
        self._method_set_filter_walkable_low_height_spans_2586408642 = StringName(from: "set_filter_walkable_low_height_spans")
        assert(self._method_set_filter_walkable_low_height_spans_2586408642 != nil)
        self._method_get_filter_walkable_low_height_spans_36873697 = StringName(from: "get_filter_walkable_low_height_spans")
        assert(self._method_get_filter_walkable_low_height_spans_36873697 != nil)
        self._method_set_filter_baking_aabb_259215842 = StringName(from: "set_filter_baking_aabb")
        assert(self._method_set_filter_baking_aabb_259215842 != nil)
        self._method_get_filter_baking_aabb_1068685055 = StringName(from: "get_filter_baking_aabb")
        assert(self._method_get_filter_baking_aabb_1068685055 != nil)
        self._method_set_filter_baking_aabb_offset_3460891852 = StringName(from: "set_filter_baking_aabb_offset")
        assert(self._method_set_filter_baking_aabb_offset_3460891852 != nil)
        self._method_get_filter_baking_aabb_offset_3360562783 = StringName(from: "get_filter_baking_aabb_offset")
        assert(self._method_get_filter_baking_aabb_offset_3360562783 != nil)
        self._method_set_vertices_334873810 = StringName(from: "set_vertices")
        assert(self._method_set_vertices_334873810 != nil)
        self._method_get_vertices_497664490 = StringName(from: "get_vertices")
        assert(self._method_get_vertices_497664490 != nil)
        self._method_add_polygon_3614634198 = StringName(from: "add_polygon")
        assert(self._method_add_polygon_3614634198 != nil)
        self._method_get_polygon_count_3905245786 = StringName(from: "get_polygon_count")
        assert(self._method_get_polygon_count_3905245786 != nil)
        self._method_get_polygon_3668444399 = StringName(from: "get_polygon")
        assert(self._method_get_polygon_3668444399 != nil)
        self._method_clear_polygons_3218959716 = StringName(from: "clear_polygons")
        assert(self._method_clear_polygons_3218959716 != nil)
        self._method_create_from_mesh_194775623 = StringName(from: "create_from_mesh")
        assert(self._method_create_from_mesh_194775623 != nil)
    }

    public func set_sample_partition_type(sample_partition_type: NavigationMesh.SamplePartitionType)  {
        withUnsafePointer(to: sample_partition_type.rawValue) { sample_partition_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sample_partition_type_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_sample_partition_type_2472437533._native_ptr(),
                    2472437533)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_sample_partition_type_833513918._native_ptr(),
                    833513918)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NavigationMesh.SamplePartitionType(godot: __resPtr.pointee)
    }
    public func set_parsed_geometry_type(geometry_type: NavigationMesh.ParsedGeometryType)  {
        withUnsafePointer(to: geometry_type.rawValue) { geometry_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(geometry_type_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_parsed_geometry_type_3064713163._native_ptr(),
                    3064713163)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_parsed_geometry_type_3928011953._native_ptr(),
                    3928011953)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NavigationMesh.ParsedGeometryType(godot: __resPtr.pointee)
    }
    public func set_collision_mask(mask: Int64)  {
        withUnsafePointer(to: mask) { mask_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mask_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_collision_mask_1286410249._native_ptr(),
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
    public func get_collision_mask() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_collision_mask_3905245786._native_ptr(),
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
    public func set_collision_mask_value(layer_number: Int64, value: UInt8)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: layer_number) { layer_number_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_number_native), .init(value_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_collision_mask_value_300928843._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_collision_mask_value_1116898809._native_ptr(),
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
    public func set_source_geometry_mode(mask: NavigationMesh.SourceGeometryMode)  {
        withUnsafePointer(to: mask.rawValue) { mask_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mask_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_source_geometry_mode_2700825194._native_ptr(),
                    2700825194)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_source_geometry_mode_2770484141._native_ptr(),
                    2770484141)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NavigationMesh.SourceGeometryMode(godot: __resPtr.pointee)
    }
    public func set_source_group_name(mask: StringName)  {
        let mask_native = mask._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mask_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_source_group_name_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_source_group_name_2002593661._native_ptr(),
                    2002593661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
    }
    public func set_cell_size(cell_size: Float64)  {
        withUnsafePointer(to: cell_size) { cell_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cell_size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_cell_size_373806689._native_ptr(),
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
    public func get_cell_size() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_cell_size_1740695150._native_ptr(),
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
    public func set_cell_height(cell_height: Float64)  {
        withUnsafePointer(to: cell_height) { cell_height_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cell_height_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_cell_height_373806689._native_ptr(),
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
    public func get_cell_height() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_cell_height_1740695150._native_ptr(),
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
    public func set_agent_height(agent_height: Float64)  {
        withUnsafePointer(to: agent_height) { agent_height_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(agent_height_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_agent_height_373806689._native_ptr(),
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
    public func get_agent_height() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_agent_height_1740695150._native_ptr(),
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
    public func set_agent_radius(agent_radius: Float64)  {
        withUnsafePointer(to: agent_radius) { agent_radius_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(agent_radius_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_agent_radius_373806689._native_ptr(),
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
    public func get_agent_radius() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_agent_radius_191475506._native_ptr(),
                    191475506)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_agent_max_climb(agent_max_climb: Float64)  {
        withUnsafePointer(to: agent_max_climb) { agent_max_climb_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(agent_max_climb_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_agent_max_climb_373806689._native_ptr(),
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
    public func get_agent_max_climb() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_agent_max_climb_1740695150._native_ptr(),
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
    public func set_agent_max_slope(agent_max_slope: Float64)  {
        withUnsafePointer(to: agent_max_slope) { agent_max_slope_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(agent_max_slope_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_agent_max_slope_373806689._native_ptr(),
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
    public func get_agent_max_slope() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_agent_max_slope_1740695150._native_ptr(),
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
    public func set_region_min_size(region_min_size: Float64)  {
        withUnsafePointer(to: region_min_size) { region_min_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(region_min_size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_region_min_size_373806689._native_ptr(),
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
    public func get_region_min_size() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_region_min_size_1740695150._native_ptr(),
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
    public func set_region_merge_size(region_merge_size: Float64)  {
        withUnsafePointer(to: region_merge_size) { region_merge_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(region_merge_size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_region_merge_size_373806689._native_ptr(),
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
    public func get_region_merge_size() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_region_merge_size_1740695150._native_ptr(),
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
    public func set_edge_max_length(edge_max_length: Float64)  {
        withUnsafePointer(to: edge_max_length) { edge_max_length_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(edge_max_length_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_edge_max_length_373806689._native_ptr(),
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
    public func get_edge_max_length() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_edge_max_length_1740695150._native_ptr(),
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
    public func set_edge_max_error(edge_max_error: Float64)  {
        withUnsafePointer(to: edge_max_error) { edge_max_error_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(edge_max_error_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_edge_max_error_373806689._native_ptr(),
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
    public func get_edge_max_error() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_edge_max_error_1740695150._native_ptr(),
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
    public func set_vertices_per_polygon(vertices_per_polygon: Float64)  {
        withUnsafePointer(to: vertices_per_polygon) { vertices_per_polygon_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(vertices_per_polygon_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_vertices_per_polygon_373806689._native_ptr(),
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
    public func get_vertices_per_polygon() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_vertices_per_polygon_1740695150._native_ptr(),
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
    public func set_detail_sample_distance(detail_sample_dist: Float64)  {
        withUnsafePointer(to: detail_sample_dist) { detail_sample_dist_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(detail_sample_dist_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_detail_sample_distance_373806689._native_ptr(),
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
    public func get_detail_sample_distance() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_detail_sample_distance_1740695150._native_ptr(),
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
    public func set_detail_sample_max_error(detail_sample_max_error: Float64)  {
        withUnsafePointer(to: detail_sample_max_error) { detail_sample_max_error_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(detail_sample_max_error_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_detail_sample_max_error_373806689._native_ptr(),
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
    public func get_detail_sample_max_error() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_detail_sample_max_error_1740695150._native_ptr(),
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
    public func set_filter_low_hanging_obstacles(filter_low_hanging_obstacles: UInt8)  {
        withUnsafePointer(to: filter_low_hanging_obstacles) { filter_low_hanging_obstacles_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(filter_low_hanging_obstacles_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_filter_low_hanging_obstacles_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_filter_low_hanging_obstacles_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_filter_ledge_spans(filter_ledge_spans: UInt8)  {
        withUnsafePointer(to: filter_ledge_spans) { filter_ledge_spans_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(filter_ledge_spans_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_filter_ledge_spans_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_filter_ledge_spans_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_filter_walkable_low_height_spans(filter_walkable_low_height_spans: UInt8)  {
        withUnsafePointer(to: filter_walkable_low_height_spans) { filter_walkable_low_height_spans_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(filter_walkable_low_height_spans_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_filter_walkable_low_height_spans_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_filter_walkable_low_height_spans_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_filter_baking_aabb(baking_aabb: AABB)  {
        let baking_aabb_native = baking_aabb._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(baking_aabb_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_filter_baking_aabb_259215842._native_ptr(),
                    259215842)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_filter_baking_aabb_1068685055._native_ptr(),
                    1068685055)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AABB(godot: __resPtr.pointee)
    }
    public func set_filter_baking_aabb_offset(baking_aabb_offset: Vector3)  {
        let baking_aabb_offset_native = baking_aabb_offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(baking_aabb_offset_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_filter_baking_aabb_offset_3460891852._native_ptr(),
                    3460891852)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_filter_baking_aabb_offset_3360562783._native_ptr(),
                    3360562783)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func set_vertices(vertices: PackedVector3Array)  {
        let vertices_native = vertices._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(vertices_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_vertices_334873810._native_ptr(),
                    334873810)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_vertices_497664490._native_ptr(),
                    497664490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector3Array(godot: __resPtr.pointee)
    }
    public func add_polygon(polygon: PackedInt32Array)  {
        let polygon_native = polygon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(polygon_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_polygon_3614634198._native_ptr(),
                    3614634198)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_polygon_count_3905245786._native_ptr(),
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
    public func get_polygon(idx: Int64) -> PackedInt32Array {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_polygon_3668444399._native_ptr(),
                    3668444399)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
        }
    }
    public func clear_polygons()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_polygons_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_from_mesh_194775623._native_ptr(),
                    194775623)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}