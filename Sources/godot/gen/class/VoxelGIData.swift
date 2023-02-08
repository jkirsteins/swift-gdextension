import godot_native

fileprivate var __godot_name_VoxelGIData: StringName! = nil

/// Contains baked voxel global illumination data for use in a [VoxelGI] node.
/// 
/// [VoxelGIData] contains baked voxel global illumination for use in a [VoxelGI] node. [VoxelGIData] also offers several properties to adjust the final appearance of the global illumination. These properties can be adjusted at run-time without having to bake the [VoxelGI] node again.
///  
/// [b]Note:[/b] To prevent text-based scene files ([code].tscn[/code]) from growing too much and becoming slow to load and save, always save [VoxelGIData] to an external binary resource file ([code].res[/code]) instead of embedding it within the scene. This can be done by clicking the dropdown arrow next to the [VoxelGIData] resource, choosing [b]Edit[/b], clicking the floppy disk icon at the top of the Inspector then choosing [b]Save As...[/b].
open class VoxelGIData : Resource {

    

    public override class var __godot_name: StringName { __godot_name_VoxelGIData }

    static var _method_allocate_4041601946: GDExtensionMethodBindPtr! = nil
    static var _method_get_bounds_1068685055: GDExtensionMethodBindPtr! = nil
    static var _method_get_octree_size_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_get_to_cell_xform_3229777777: GDExtensionMethodBindPtr! = nil
    static var _method_get_octree_cells_2362200018: GDExtensionMethodBindPtr! = nil
    static var _method_get_data_cells_2362200018: GDExtensionMethodBindPtr! = nil
    static var _method_get_level_counts_1930428628: GDExtensionMethodBindPtr! = nil
    static var _method_set_dynamic_range_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_dynamic_range_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_energy_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_energy_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_bias_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_bias_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_normal_bias_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_normal_bias_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_propagation_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_propagation_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_interior_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_interior_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_two_bounces_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_using_two_bounces_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VoxelGIData = StringName(from: "VoxelGIData")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_allocate_4041601946_name = StringName(from: "allocate")
        self._method_allocate_4041601946 = self.interface.pointee.classdb_get_method_bind(__godot_name_VoxelGIData._native_ptr(), _method_allocate_4041601946_name._native_ptr(), 4041601946)
        assert(VoxelGIData._method_allocate_4041601946 != nil)
        let _method_get_bounds_1068685055_name = StringName(from: "get_bounds")
        self._method_get_bounds_1068685055 = self.interface.pointee.classdb_get_method_bind(__godot_name_VoxelGIData._native_ptr(), _method_get_bounds_1068685055_name._native_ptr(), 1068685055)
        assert(VoxelGIData._method_get_bounds_1068685055 != nil)
        let _method_get_octree_size_3360562783_name = StringName(from: "get_octree_size")
        self._method_get_octree_size_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name_VoxelGIData._native_ptr(), _method_get_octree_size_3360562783_name._native_ptr(), 3360562783)
        assert(VoxelGIData._method_get_octree_size_3360562783 != nil)
        let _method_get_to_cell_xform_3229777777_name = StringName(from: "get_to_cell_xform")
        self._method_get_to_cell_xform_3229777777 = self.interface.pointee.classdb_get_method_bind(__godot_name_VoxelGIData._native_ptr(), _method_get_to_cell_xform_3229777777_name._native_ptr(), 3229777777)
        assert(VoxelGIData._method_get_to_cell_xform_3229777777 != nil)
        let _method_get_octree_cells_2362200018_name = StringName(from: "get_octree_cells")
        self._method_get_octree_cells_2362200018 = self.interface.pointee.classdb_get_method_bind(__godot_name_VoxelGIData._native_ptr(), _method_get_octree_cells_2362200018_name._native_ptr(), 2362200018)
        assert(VoxelGIData._method_get_octree_cells_2362200018 != nil)
        let _method_get_data_cells_2362200018_name = StringName(from: "get_data_cells")
        self._method_get_data_cells_2362200018 = self.interface.pointee.classdb_get_method_bind(__godot_name_VoxelGIData._native_ptr(), _method_get_data_cells_2362200018_name._native_ptr(), 2362200018)
        assert(VoxelGIData._method_get_data_cells_2362200018 != nil)
        let _method_get_level_counts_1930428628_name = StringName(from: "get_level_counts")
        self._method_get_level_counts_1930428628 = self.interface.pointee.classdb_get_method_bind(__godot_name_VoxelGIData._native_ptr(), _method_get_level_counts_1930428628_name._native_ptr(), 1930428628)
        assert(VoxelGIData._method_get_level_counts_1930428628 != nil)
        let _method_set_dynamic_range_373806689_name = StringName(from: "set_dynamic_range")
        self._method_set_dynamic_range_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_VoxelGIData._native_ptr(), _method_set_dynamic_range_373806689_name._native_ptr(), 373806689)
        assert(VoxelGIData._method_set_dynamic_range_373806689 != nil)
        let _method_get_dynamic_range_1740695150_name = StringName(from: "get_dynamic_range")
        self._method_get_dynamic_range_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_VoxelGIData._native_ptr(), _method_get_dynamic_range_1740695150_name._native_ptr(), 1740695150)
        assert(VoxelGIData._method_get_dynamic_range_1740695150 != nil)
        let _method_set_energy_373806689_name = StringName(from: "set_energy")
        self._method_set_energy_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_VoxelGIData._native_ptr(), _method_set_energy_373806689_name._native_ptr(), 373806689)
        assert(VoxelGIData._method_set_energy_373806689 != nil)
        let _method_get_energy_1740695150_name = StringName(from: "get_energy")
        self._method_get_energy_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_VoxelGIData._native_ptr(), _method_get_energy_1740695150_name._native_ptr(), 1740695150)
        assert(VoxelGIData._method_get_energy_1740695150 != nil)
        let _method_set_bias_373806689_name = StringName(from: "set_bias")
        self._method_set_bias_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_VoxelGIData._native_ptr(), _method_set_bias_373806689_name._native_ptr(), 373806689)
        assert(VoxelGIData._method_set_bias_373806689 != nil)
        let _method_get_bias_1740695150_name = StringName(from: "get_bias")
        self._method_get_bias_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_VoxelGIData._native_ptr(), _method_get_bias_1740695150_name._native_ptr(), 1740695150)
        assert(VoxelGIData._method_get_bias_1740695150 != nil)
        let _method_set_normal_bias_373806689_name = StringName(from: "set_normal_bias")
        self._method_set_normal_bias_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_VoxelGIData._native_ptr(), _method_set_normal_bias_373806689_name._native_ptr(), 373806689)
        assert(VoxelGIData._method_set_normal_bias_373806689 != nil)
        let _method_get_normal_bias_1740695150_name = StringName(from: "get_normal_bias")
        self._method_get_normal_bias_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_VoxelGIData._native_ptr(), _method_get_normal_bias_1740695150_name._native_ptr(), 1740695150)
        assert(VoxelGIData._method_get_normal_bias_1740695150 != nil)
        let _method_set_propagation_373806689_name = StringName(from: "set_propagation")
        self._method_set_propagation_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_VoxelGIData._native_ptr(), _method_set_propagation_373806689_name._native_ptr(), 373806689)
        assert(VoxelGIData._method_set_propagation_373806689 != nil)
        let _method_get_propagation_1740695150_name = StringName(from: "get_propagation")
        self._method_get_propagation_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_VoxelGIData._native_ptr(), _method_get_propagation_1740695150_name._native_ptr(), 1740695150)
        assert(VoxelGIData._method_get_propagation_1740695150 != nil)
        let _method_set_interior_2586408642_name = StringName(from: "set_interior")
        self._method_set_interior_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_VoxelGIData._native_ptr(), _method_set_interior_2586408642_name._native_ptr(), 2586408642)
        assert(VoxelGIData._method_set_interior_2586408642 != nil)
        let _method_is_interior_36873697_name = StringName(from: "is_interior")
        self._method_is_interior_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_VoxelGIData._native_ptr(), _method_is_interior_36873697_name._native_ptr(), 36873697)
        assert(VoxelGIData._method_is_interior_36873697 != nil)
        let _method_set_use_two_bounces_2586408642_name = StringName(from: "set_use_two_bounces")
        self._method_set_use_two_bounces_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_VoxelGIData._native_ptr(), _method_set_use_two_bounces_2586408642_name._native_ptr(), 2586408642)
        assert(VoxelGIData._method_set_use_two_bounces_2586408642 != nil)
        let _method_is_using_two_bounces_36873697_name = StringName(from: "is_using_two_bounces")
        self._method_is_using_two_bounces_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_VoxelGIData._native_ptr(), _method_is_using_two_bounces_36873697_name._native_ptr(), 36873697)
        assert(VoxelGIData._method_is_using_two_bounces_36873697 != nil)
    }

    public func allocate(to_cell_xform: Transform3D, aabb: AABB, octree_size: Vector3, octree_cells: PackedByteArray, data_cells: PackedByteArray, distance_field: PackedByteArray, level_counts: PackedInt32Array)  {
        let level_counts_native = level_counts._native_ptr()
        let distance_field_native = distance_field._native_ptr()
        let data_cells_native = data_cells._native_ptr()
        let octree_cells_native = octree_cells._native_ptr()
        let octree_size_native = octree_size._native_ptr()
        let aabb_native = aabb._native_ptr()
        let to_cell_xform_native = to_cell_xform._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 7)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(to_cell_xform_native), .init(aabb_native), .init(octree_size_native), .init(octree_cells_native), .init(data_cells_native), .init(distance_field_native), .init(level_counts_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_allocate_4041601946,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_bounds() -> AABB {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bounds_1068685055,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AABB(godot: __resPtr.pointee)
    }
    public func get_octree_size() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_octree_size_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func get_to_cell_xform() -> Transform3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_to_cell_xform_3229777777,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(godot: __resPtr.pointee)
    }
    public func get_octree_cells() -> PackedByteArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_octree_cells_2362200018,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(godot: __resPtr.pointee)
    }
    public func get_data_cells() -> PackedByteArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_data_cells_2362200018,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(godot: __resPtr.pointee)
    }
    public func get_level_counts() -> PackedInt32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_level_counts_1930428628,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
    }
    public func set_dynamic_range(dynamic_range: Float64)  {
        withUnsafePointer(to: dynamic_range) { dynamic_range_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(dynamic_range_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_dynamic_range_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_dynamic_range() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_dynamic_range_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_energy(energy: Float64)  {
        withUnsafePointer(to: energy) { energy_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(energy_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_energy_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_energy() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_energy_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_bias(bias: Float64)  {
        withUnsafePointer(to: bias) { bias_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bias_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bias_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_bias() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bias_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_normal_bias(bias: Float64)  {
        withUnsafePointer(to: bias) { bias_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bias_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_normal_bias_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_normal_bias() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_normal_bias_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_propagation(propagation: Float64)  {
        withUnsafePointer(to: propagation) { propagation_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(propagation_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_propagation_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_propagation() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_propagation_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_interior(interior: UInt8)  {
        withUnsafePointer(to: interior) { interior_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(interior_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_interior_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_interior() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_interior_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_use_two_bounces(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_use_two_bounces_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_using_two_bounces() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_using_two_bounces_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}