import godot_native

fileprivate var __godot_name_GridMap: StringName! = nil

/// MISSING
/// 
/// MISSING
open class GridMap : Node3D {

    

    public override class var __godot_name: StringName { __godot_name_GridMap }

    static var _method_set_collision_layer_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_layer_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_collision_mask_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_mask_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_collision_mask_value_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_mask_value_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_collision_layer_value_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_layer_value_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_collision_priority_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_priority_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_physics_material_1784508650: GDExtensionMethodBindPtr! = nil
    static var _method_get_physics_material_2521850424: GDExtensionMethodBindPtr! = nil
    static var _method_set_bake_navigation_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_baking_navigation_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_set_navigation_map_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_get_navigation_map_2944877500: GDExtensionMethodBindPtr! = nil
    static var _method_set_mesh_library_1488083439: GDExtensionMethodBindPtr! = nil
    static var _method_get_mesh_library_3350993772: GDExtensionMethodBindPtr! = nil
    static var _method_set_cell_size_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_cell_size_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_cell_scale_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_cell_scale_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_octant_size_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_octant_size_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_cell_item_4177201334: GDExtensionMethodBindPtr! = nil
    static var _method_get_cell_item_3724960147: GDExtensionMethodBindPtr! = nil
    static var _method_get_cell_item_orientation_3724960147: GDExtensionMethodBindPtr! = nil
    static var _method_get_cell_item_basis_3493604918: GDExtensionMethodBindPtr! = nil
    static var _method_get_basis_with_orthogonal_index_2816196998: GDExtensionMethodBindPtr! = nil
    static var _method_get_orthogonal_index_from_basis_4210359952: GDExtensionMethodBindPtr! = nil
    static var _method_local_to_map_1257687843: GDExtensionMethodBindPtr! = nil
    static var _method_map_to_local_1088329196: GDExtensionMethodBindPtr! = nil
    static var _method_resource_changed_968641751: GDExtensionMethodBindPtr! = nil
    static var _method_set_center_x_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_center_x_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_center_y_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_center_y_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_center_z_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_center_z_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_clear_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_used_cells_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_get_used_cells_by_item_663333327: GDExtensionMethodBindPtr! = nil
    static var _method_get_meshes_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_get_bake_meshes_2915620761: GDExtensionMethodBindPtr! = nil
    static var _method_get_bake_mesh_instance_937000113: GDExtensionMethodBindPtr! = nil
    static var _method_clear_baked_meshes_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_make_baked_meshes_1135556294: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_GridMap = StringName(from: "GridMap")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_collision_layer_1286410249_name = StringName(from: "set_collision_layer")
        self._method_set_collision_layer_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_set_collision_layer_1286410249_name._native_ptr(), 1286410249)
        assert(GridMap._method_set_collision_layer_1286410249 != nil)
        let _method_get_collision_layer_3905245786_name = StringName(from: "get_collision_layer")
        self._method_get_collision_layer_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_get_collision_layer_3905245786_name._native_ptr(), 3905245786)
        assert(GridMap._method_get_collision_layer_3905245786 != nil)
        let _method_set_collision_mask_1286410249_name = StringName(from: "set_collision_mask")
        self._method_set_collision_mask_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_set_collision_mask_1286410249_name._native_ptr(), 1286410249)
        assert(GridMap._method_set_collision_mask_1286410249 != nil)
        let _method_get_collision_mask_3905245786_name = StringName(from: "get_collision_mask")
        self._method_get_collision_mask_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_get_collision_mask_3905245786_name._native_ptr(), 3905245786)
        assert(GridMap._method_get_collision_mask_3905245786 != nil)
        let _method_set_collision_mask_value_300928843_name = StringName(from: "set_collision_mask_value")
        self._method_set_collision_mask_value_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_set_collision_mask_value_300928843_name._native_ptr(), 300928843)
        assert(GridMap._method_set_collision_mask_value_300928843 != nil)
        let _method_get_collision_mask_value_1116898809_name = StringName(from: "get_collision_mask_value")
        self._method_get_collision_mask_value_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_get_collision_mask_value_1116898809_name._native_ptr(), 1116898809)
        assert(GridMap._method_get_collision_mask_value_1116898809 != nil)
        let _method_set_collision_layer_value_300928843_name = StringName(from: "set_collision_layer_value")
        self._method_set_collision_layer_value_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_set_collision_layer_value_300928843_name._native_ptr(), 300928843)
        assert(GridMap._method_set_collision_layer_value_300928843 != nil)
        let _method_get_collision_layer_value_1116898809_name = StringName(from: "get_collision_layer_value")
        self._method_get_collision_layer_value_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_get_collision_layer_value_1116898809_name._native_ptr(), 1116898809)
        assert(GridMap._method_get_collision_layer_value_1116898809 != nil)
        let _method_set_collision_priority_373806689_name = StringName(from: "set_collision_priority")
        self._method_set_collision_priority_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_set_collision_priority_373806689_name._native_ptr(), 373806689)
        assert(GridMap._method_set_collision_priority_373806689 != nil)
        let _method_get_collision_priority_1740695150_name = StringName(from: "get_collision_priority")
        self._method_get_collision_priority_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_get_collision_priority_1740695150_name._native_ptr(), 1740695150)
        assert(GridMap._method_get_collision_priority_1740695150 != nil)
        let _method_set_physics_material_1784508650_name = StringName(from: "set_physics_material")
        self._method_set_physics_material_1784508650 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_set_physics_material_1784508650_name._native_ptr(), 1784508650)
        assert(GridMap._method_set_physics_material_1784508650 != nil)
        let _method_get_physics_material_2521850424_name = StringName(from: "get_physics_material")
        self._method_get_physics_material_2521850424 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_get_physics_material_2521850424_name._native_ptr(), 2521850424)
        assert(GridMap._method_get_physics_material_2521850424 != nil)
        let _method_set_bake_navigation_2586408642_name = StringName(from: "set_bake_navigation")
        self._method_set_bake_navigation_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_set_bake_navigation_2586408642_name._native_ptr(), 2586408642)
        assert(GridMap._method_set_bake_navigation_2586408642 != nil)
        let _method_is_baking_navigation_2240911060_name = StringName(from: "is_baking_navigation")
        self._method_is_baking_navigation_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_is_baking_navigation_2240911060_name._native_ptr(), 2240911060)
        assert(GridMap._method_is_baking_navigation_2240911060 != nil)
        let _method_set_navigation_map_2722037293_name = StringName(from: "set_navigation_map")
        self._method_set_navigation_map_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_set_navigation_map_2722037293_name._native_ptr(), 2722037293)
        assert(GridMap._method_set_navigation_map_2722037293 != nil)
        let _method_get_navigation_map_2944877500_name = StringName(from: "get_navigation_map")
        self._method_get_navigation_map_2944877500 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_get_navigation_map_2944877500_name._native_ptr(), 2944877500)
        assert(GridMap._method_get_navigation_map_2944877500 != nil)
        let _method_set_mesh_library_1488083439_name = StringName(from: "set_mesh_library")
        self._method_set_mesh_library_1488083439 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_set_mesh_library_1488083439_name._native_ptr(), 1488083439)
        assert(GridMap._method_set_mesh_library_1488083439 != nil)
        let _method_get_mesh_library_3350993772_name = StringName(from: "get_mesh_library")
        self._method_get_mesh_library_3350993772 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_get_mesh_library_3350993772_name._native_ptr(), 3350993772)
        assert(GridMap._method_get_mesh_library_3350993772 != nil)
        let _method_set_cell_size_3460891852_name = StringName(from: "set_cell_size")
        self._method_set_cell_size_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_set_cell_size_3460891852_name._native_ptr(), 3460891852)
        assert(GridMap._method_set_cell_size_3460891852 != nil)
        let _method_get_cell_size_3360562783_name = StringName(from: "get_cell_size")
        self._method_get_cell_size_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_get_cell_size_3360562783_name._native_ptr(), 3360562783)
        assert(GridMap._method_get_cell_size_3360562783 != nil)
        let _method_set_cell_scale_373806689_name = StringName(from: "set_cell_scale")
        self._method_set_cell_scale_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_set_cell_scale_373806689_name._native_ptr(), 373806689)
        assert(GridMap._method_set_cell_scale_373806689 != nil)
        let _method_get_cell_scale_1740695150_name = StringName(from: "get_cell_scale")
        self._method_get_cell_scale_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_get_cell_scale_1740695150_name._native_ptr(), 1740695150)
        assert(GridMap._method_get_cell_scale_1740695150 != nil)
        let _method_set_octant_size_1286410249_name = StringName(from: "set_octant_size")
        self._method_set_octant_size_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_set_octant_size_1286410249_name._native_ptr(), 1286410249)
        assert(GridMap._method_set_octant_size_1286410249 != nil)
        let _method_get_octant_size_3905245786_name = StringName(from: "get_octant_size")
        self._method_get_octant_size_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_get_octant_size_3905245786_name._native_ptr(), 3905245786)
        assert(GridMap._method_get_octant_size_3905245786 != nil)
        let _method_set_cell_item_4177201334_name = StringName(from: "set_cell_item")
        self._method_set_cell_item_4177201334 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_set_cell_item_4177201334_name._native_ptr(), 4177201334)
        assert(GridMap._method_set_cell_item_4177201334 != nil)
        let _method_get_cell_item_3724960147_name = StringName(from: "get_cell_item")
        self._method_get_cell_item_3724960147 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_get_cell_item_3724960147_name._native_ptr(), 3724960147)
        assert(GridMap._method_get_cell_item_3724960147 != nil)
        let _method_get_cell_item_orientation_3724960147_name = StringName(from: "get_cell_item_orientation")
        self._method_get_cell_item_orientation_3724960147 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_get_cell_item_orientation_3724960147_name._native_ptr(), 3724960147)
        assert(GridMap._method_get_cell_item_orientation_3724960147 != nil)
        let _method_get_cell_item_basis_3493604918_name = StringName(from: "get_cell_item_basis")
        self._method_get_cell_item_basis_3493604918 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_get_cell_item_basis_3493604918_name._native_ptr(), 3493604918)
        assert(GridMap._method_get_cell_item_basis_3493604918 != nil)
        let _method_get_basis_with_orthogonal_index_2816196998_name = StringName(from: "get_basis_with_orthogonal_index")
        self._method_get_basis_with_orthogonal_index_2816196998 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_get_basis_with_orthogonal_index_2816196998_name._native_ptr(), 2816196998)
        assert(GridMap._method_get_basis_with_orthogonal_index_2816196998 != nil)
        let _method_get_orthogonal_index_from_basis_4210359952_name = StringName(from: "get_orthogonal_index_from_basis")
        self._method_get_orthogonal_index_from_basis_4210359952 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_get_orthogonal_index_from_basis_4210359952_name._native_ptr(), 4210359952)
        assert(GridMap._method_get_orthogonal_index_from_basis_4210359952 != nil)
        let _method_local_to_map_1257687843_name = StringName(from: "local_to_map")
        self._method_local_to_map_1257687843 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_local_to_map_1257687843_name._native_ptr(), 1257687843)
        assert(GridMap._method_local_to_map_1257687843 != nil)
        let _method_map_to_local_1088329196_name = StringName(from: "map_to_local")
        self._method_map_to_local_1088329196 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_map_to_local_1088329196_name._native_ptr(), 1088329196)
        assert(GridMap._method_map_to_local_1088329196 != nil)
        let _method_resource_changed_968641751_name = StringName(from: "resource_changed")
        self._method_resource_changed_968641751 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_resource_changed_968641751_name._native_ptr(), 968641751)
        assert(GridMap._method_resource_changed_968641751 != nil)
        let _method_set_center_x_2586408642_name = StringName(from: "set_center_x")
        self._method_set_center_x_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_set_center_x_2586408642_name._native_ptr(), 2586408642)
        assert(GridMap._method_set_center_x_2586408642 != nil)
        let _method_get_center_x_36873697_name = StringName(from: "get_center_x")
        self._method_get_center_x_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_get_center_x_36873697_name._native_ptr(), 36873697)
        assert(GridMap._method_get_center_x_36873697 != nil)
        let _method_set_center_y_2586408642_name = StringName(from: "set_center_y")
        self._method_set_center_y_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_set_center_y_2586408642_name._native_ptr(), 2586408642)
        assert(GridMap._method_set_center_y_2586408642 != nil)
        let _method_get_center_y_36873697_name = StringName(from: "get_center_y")
        self._method_get_center_y_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_get_center_y_36873697_name._native_ptr(), 36873697)
        assert(GridMap._method_get_center_y_36873697 != nil)
        let _method_set_center_z_2586408642_name = StringName(from: "set_center_z")
        self._method_set_center_z_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_set_center_z_2586408642_name._native_ptr(), 2586408642)
        assert(GridMap._method_set_center_z_2586408642 != nil)
        let _method_get_center_z_36873697_name = StringName(from: "get_center_z")
        self._method_get_center_z_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_get_center_z_36873697_name._native_ptr(), 36873697)
        assert(GridMap._method_get_center_z_36873697 != nil)
        let _method_clear_3218959716_name = StringName(from: "clear")
        self._method_clear_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_clear_3218959716_name._native_ptr(), 3218959716)
        assert(GridMap._method_clear_3218959716 != nil)
        let _method_get_used_cells_3995934104_name = StringName(from: "get_used_cells")
        self._method_get_used_cells_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_get_used_cells_3995934104_name._native_ptr(), 3995934104)
        assert(GridMap._method_get_used_cells_3995934104 != nil)
        let _method_get_used_cells_by_item_663333327_name = StringName(from: "get_used_cells_by_item")
        self._method_get_used_cells_by_item_663333327 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_get_used_cells_by_item_663333327_name._native_ptr(), 663333327)
        assert(GridMap._method_get_used_cells_by_item_663333327 != nil)
        let _method_get_meshes_3995934104_name = StringName(from: "get_meshes")
        self._method_get_meshes_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_get_meshes_3995934104_name._native_ptr(), 3995934104)
        assert(GridMap._method_get_meshes_3995934104 != nil)
        let _method_get_bake_meshes_2915620761_name = StringName(from: "get_bake_meshes")
        self._method_get_bake_meshes_2915620761 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_get_bake_meshes_2915620761_name._native_ptr(), 2915620761)
        assert(GridMap._method_get_bake_meshes_2915620761 != nil)
        let _method_get_bake_mesh_instance_937000113_name = StringName(from: "get_bake_mesh_instance")
        self._method_get_bake_mesh_instance_937000113 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_get_bake_mesh_instance_937000113_name._native_ptr(), 937000113)
        assert(GridMap._method_get_bake_mesh_instance_937000113 != nil)
        let _method_clear_baked_meshes_3218959716_name = StringName(from: "clear_baked_meshes")
        self._method_clear_baked_meshes_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_clear_baked_meshes_3218959716_name._native_ptr(), 3218959716)
        assert(GridMap._method_clear_baked_meshes_3218959716 != nil)
        let _method_make_baked_meshes_1135556294_name = StringName(from: "make_baked_meshes")
        self._method_make_baked_meshes_1135556294 = self.interface.pointee.classdb_get_method_bind(__godot_name_GridMap._native_ptr(), _method_make_baked_meshes_1135556294_name._native_ptr(), 1135556294)
        assert(GridMap._method_make_baked_meshes_1135556294 != nil)
    }

    public func set_collision_layer(layer: Int64)  {
        withUnsafePointer(to: layer) { layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_collision_layer_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_collision_layer() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collision_layer_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
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
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func set_collision_layer_value(layer_number: Int64, value: UInt8)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: layer_number) { layer_number_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_number_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_collision_layer_value_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_collision_layer_value(layer_number: Int64) -> UInt8 {
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
                    Self._method_get_collision_layer_value_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func set_collision_priority(priority: Float64)  {
        withUnsafePointer(to: priority) { priority_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(priority_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_collision_priority_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_collision_priority() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collision_priority_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_physics_material(material: PhysicsMaterial)  {
        let material_native = material._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(material_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_physics_material_1784508650,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_physics_material() -> PhysicsMaterial {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_physics_material_2521850424,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PhysicsMaterial(godot: __resPtr.pointee)
    }
    public func set_bake_navigation(bake_navigation: UInt8)  {
        withUnsafePointer(to: bake_navigation) { bake_navigation_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bake_navigation_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bake_navigation_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_baking_navigation() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_baking_navigation_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
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
    public func set_mesh_library(mesh_library: MeshLibrary)  {
        let mesh_library_native = mesh_library._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_library_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_mesh_library_1488083439,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_mesh_library() -> MeshLibrary {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mesh_library_3350993772,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return MeshLibrary(godot: __resPtr.pointee)
    }
    public func set_cell_size(size: Vector3)  {
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cell_size_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_cell_size() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cell_size_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func set_cell_scale(scale: Float64)  {
        withUnsafePointer(to: scale) { scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cell_scale_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_cell_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cell_scale_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_octant_size(size: Int64)  {
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_octant_size_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_octant_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_octant_size_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_cell_item(position: Vector3i, item: Int64, orientation: Int64)  {
        withUnsafePointer(to: orientation) { orientation_native in
        withUnsafePointer(to: item) { item_native in
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native), .init(item_native), .init(orientation_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cell_item_4177201334,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_cell_item(position: Vector3i) -> Int64 {
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cell_item_3724960147,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_cell_item_orientation(position: Vector3i) -> Int64 {
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cell_item_orientation_3724960147,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_cell_item_basis(position: Vector3i) -> Basis {
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cell_item_basis_3493604918,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Basis(godot: __resPtr.pointee)
    }
    public func get_basis_with_orthogonal_index(index: Int64) -> Basis {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_basis_with_orthogonal_index_2816196998,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Basis(godot: __resPtr.pointee)
        }
    }
    public func get_orthogonal_index_from_basis(basis: Basis) -> Int64 {
        let basis_native = basis._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(basis_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_orthogonal_index_from_basis_4210359952,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func local_to_map(local_position: Vector3) -> Vector3i {
        let local_position_native = local_position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(local_position_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_local_to_map_1257687843,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3i(godot: __resPtr.pointee)
    }
    public func map_to_local(map_position: Vector3i) -> Vector3 {
        let map_position_native = map_position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(map_position_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_map_to_local_1088329196,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func resource_changed(resource: Resource)  {
        let resource_native = resource._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(resource_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_resource_changed_968641751,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_center_x(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_center_x_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_center_x() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_center_x_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_center_y(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_center_y_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_center_y() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_center_y_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_center_z(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_center_z_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_center_z() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_center_z_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
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
    public func get_used_cells() -> [Vector3i] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_used_cells_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Vector3i](godot: __resPtr.pointee)
    }
    public func get_used_cells_by_item(item: Int64) -> [Vector3i] {
        withUnsafePointer(to: item) { item_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_used_cells_by_item_663333327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Vector3i](godot: __resPtr.pointee)
        }
    }
    public func get_meshes() -> Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_meshes_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(godot: __resPtr.pointee)
    }
    public func get_bake_meshes() -> Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bake_meshes_2915620761,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(godot: __resPtr.pointee)
    }
    public func get_bake_mesh_instance(idx: Int64) -> RID {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bake_mesh_instance_937000113,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
        }
    }
    public func clear_baked_meshes()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_baked_meshes_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func make_baked_meshes(gen_lightmap_uv: UInt8, lightmap_uv_texel_size: Float64)  {
        withUnsafePointer(to: lightmap_uv_texel_size) { lightmap_uv_texel_size_native in
        withUnsafePointer(to: gen_lightmap_uv) { gen_lightmap_uv_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gen_lightmap_uv_native), .init(lightmap_uv_texel_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_make_baked_meshes_1135556294,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
}