import godot_native

fileprivate var __godot_name_ArrayMesh: StringName! = nil

/// [Mesh] type that provides utility for constructing a surface from arrays.
/// 
/// The [ArrayMesh] is used to construct a [Mesh] by specifying the attributes as arrays.
///  
/// The most basic example is the creation of a single triangle:
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// var vertices = PackedVector3Array()
///  
/// vertices.push_back(Vector3(0, 1, 0))
///  
/// vertices.push_back(Vector3(1, 0, 0))
///  
/// vertices.push_back(Vector3(0, 0, 1))
///  
///  
/// # Initialize the ArrayMesh.
///  
/// var arr_mesh = ArrayMesh.new()
///  
/// var arrays = []
///  
/// arrays.resize(Mesh.ARRAY_MAX)
///  
/// arrays[Mesh.ARRAY_VERTEX] = vertices
///  
///  
/// # Create the Mesh.
///  
/// arr_mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, arrays)
///  
/// var m = MeshInstance3D.new()
///  
/// m.mesh = arr_mesh
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// var vertices = new Vector3[]
///  
/// {
///  
///     new Vector3(0, 1, 0),
///  
///     new Vector3(1, 0, 0),
///  
///     new Vector3(0, 0, 1),
///  
/// };
///  
///  
/// // Initialize the ArrayMesh.
///  
/// var arrMesh = new ArrayMesh();
///  
/// var arrays = new Godot.Collections.Array();
///  
/// arrays.Resize((int)Mesh.ArrayType.Max);
///  
/// arrays[(int)Mesh.ArrayType.Vertex] = vertices;
///  
///  
/// // Create the Mesh.
///  
/// arrMesh.AddSurfaceFromArrays(Mesh.PrimitiveType.Triangles, arrays);
///  
/// var m = new MeshInstance3D();
///  
/// m.Mesh = arrMesh;
///  
/// [/csharp]
///  
/// [/codeblocks]
///  
/// The [MeshInstance3D] is ready to be added to the [SceneTree] to be shown.
///  
/// See also [ImmediateMesh], [MeshDataTool] and [SurfaceTool] for procedural geometry generation.
///  
/// [b]Note:[/b] Godot uses clockwise [url=https://learnopengl.com/Advanced-OpenGL/Face-culling]winding order[/url] for front faces of triangle primitive modes.
open class ArrayMesh : Mesh {

    

    public override class var __godot_name: StringName { __godot_name_ArrayMesh }

    static var _method_add_blend_shape_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_get_blend_shape_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_blend_shape_name_659327637: GDExtensionMethodBindPtr! = nil
    static var _method_set_blend_shape_name_3780747571: GDExtensionMethodBindPtr! = nil
    static var _method_clear_blend_shapes_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_blend_shape_mode_227983991: GDExtensionMethodBindPtr! = nil
    static var _method_get_blend_shape_mode_836485024: GDExtensionMethodBindPtr! = nil
    static var _method_add_surface_from_arrays_172284304: GDExtensionMethodBindPtr! = nil
    static var _method_clear_surfaces_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_surface_update_vertex_region_3837166854: GDExtensionMethodBindPtr! = nil
    static var _method_surface_update_attribute_region_3837166854: GDExtensionMethodBindPtr! = nil
    static var _method_surface_update_skin_region_3837166854: GDExtensionMethodBindPtr! = nil
    static var _method_surface_get_array_len_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_surface_get_array_index_len_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_surface_get_format_3718287884: GDExtensionMethodBindPtr! = nil
    static var _method_surface_get_primitive_type_4141943888: GDExtensionMethodBindPtr! = nil
    static var _method_surface_find_by_name_1321353865: GDExtensionMethodBindPtr! = nil
    static var _method_surface_set_name_501894301: GDExtensionMethodBindPtr! = nil
    static var _method_surface_get_name_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_regen_normal_maps_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_lightmap_unwrap_1476641071: GDExtensionMethodBindPtr! = nil
    static var _method_set_custom_aabb_259215842: GDExtensionMethodBindPtr! = nil
    static var _method_get_custom_aabb_1068685055: GDExtensionMethodBindPtr! = nil
    static var _method_set_shadow_mesh_3377897901: GDExtensionMethodBindPtr! = nil
    static var _method_get_shadow_mesh_3206942465: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_ArrayMesh = StringName(from: "ArrayMesh")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_add_blend_shape_3304788590_name = StringName(from: "add_blend_shape")
        self._method_add_blend_shape_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name_ArrayMesh._native_ptr(), _method_add_blend_shape_3304788590_name._native_ptr(), 3304788590)
        assert(ArrayMesh._method_add_blend_shape_3304788590 != nil)
        let _method_get_blend_shape_count_3905245786_name = StringName(from: "get_blend_shape_count")
        self._method_get_blend_shape_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_ArrayMesh._native_ptr(), _method_get_blend_shape_count_3905245786_name._native_ptr(), 3905245786)
        assert(ArrayMesh._method_get_blend_shape_count_3905245786 != nil)
        let _method_get_blend_shape_name_659327637_name = StringName(from: "get_blend_shape_name")
        self._method_get_blend_shape_name_659327637 = self.interface.pointee.classdb_get_method_bind(__godot_name_ArrayMesh._native_ptr(), _method_get_blend_shape_name_659327637_name._native_ptr(), 659327637)
        assert(ArrayMesh._method_get_blend_shape_name_659327637 != nil)
        let _method_set_blend_shape_name_3780747571_name = StringName(from: "set_blend_shape_name")
        self._method_set_blend_shape_name_3780747571 = self.interface.pointee.classdb_get_method_bind(__godot_name_ArrayMesh._native_ptr(), _method_set_blend_shape_name_3780747571_name._native_ptr(), 3780747571)
        assert(ArrayMesh._method_set_blend_shape_name_3780747571 != nil)
        let _method_clear_blend_shapes_3218959716_name = StringName(from: "clear_blend_shapes")
        self._method_clear_blend_shapes_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_ArrayMesh._native_ptr(), _method_clear_blend_shapes_3218959716_name._native_ptr(), 3218959716)
        assert(ArrayMesh._method_clear_blend_shapes_3218959716 != nil)
        let _method_set_blend_shape_mode_227983991_name = StringName(from: "set_blend_shape_mode")
        self._method_set_blend_shape_mode_227983991 = self.interface.pointee.classdb_get_method_bind(__godot_name_ArrayMesh._native_ptr(), _method_set_blend_shape_mode_227983991_name._native_ptr(), 227983991)
        assert(ArrayMesh._method_set_blend_shape_mode_227983991 != nil)
        let _method_get_blend_shape_mode_836485024_name = StringName(from: "get_blend_shape_mode")
        self._method_get_blend_shape_mode_836485024 = self.interface.pointee.classdb_get_method_bind(__godot_name_ArrayMesh._native_ptr(), _method_get_blend_shape_mode_836485024_name._native_ptr(), 836485024)
        assert(ArrayMesh._method_get_blend_shape_mode_836485024 != nil)
        let _method_add_surface_from_arrays_172284304_name = StringName(from: "add_surface_from_arrays")
        self._method_add_surface_from_arrays_172284304 = self.interface.pointee.classdb_get_method_bind(__godot_name_ArrayMesh._native_ptr(), _method_add_surface_from_arrays_172284304_name._native_ptr(), 172284304)
        assert(ArrayMesh._method_add_surface_from_arrays_172284304 != nil)
        let _method_clear_surfaces_3218959716_name = StringName(from: "clear_surfaces")
        self._method_clear_surfaces_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_ArrayMesh._native_ptr(), _method_clear_surfaces_3218959716_name._native_ptr(), 3218959716)
        assert(ArrayMesh._method_clear_surfaces_3218959716 != nil)
        let _method_surface_update_vertex_region_3837166854_name = StringName(from: "surface_update_vertex_region")
        self._method_surface_update_vertex_region_3837166854 = self.interface.pointee.classdb_get_method_bind(__godot_name_ArrayMesh._native_ptr(), _method_surface_update_vertex_region_3837166854_name._native_ptr(), 3837166854)
        assert(ArrayMesh._method_surface_update_vertex_region_3837166854 != nil)
        let _method_surface_update_attribute_region_3837166854_name = StringName(from: "surface_update_attribute_region")
        self._method_surface_update_attribute_region_3837166854 = self.interface.pointee.classdb_get_method_bind(__godot_name_ArrayMesh._native_ptr(), _method_surface_update_attribute_region_3837166854_name._native_ptr(), 3837166854)
        assert(ArrayMesh._method_surface_update_attribute_region_3837166854 != nil)
        let _method_surface_update_skin_region_3837166854_name = StringName(from: "surface_update_skin_region")
        self._method_surface_update_skin_region_3837166854 = self.interface.pointee.classdb_get_method_bind(__godot_name_ArrayMesh._native_ptr(), _method_surface_update_skin_region_3837166854_name._native_ptr(), 3837166854)
        assert(ArrayMesh._method_surface_update_skin_region_3837166854 != nil)
        let _method_surface_get_array_len_923996154_name = StringName(from: "surface_get_array_len")
        self._method_surface_get_array_len_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name_ArrayMesh._native_ptr(), _method_surface_get_array_len_923996154_name._native_ptr(), 923996154)
        assert(ArrayMesh._method_surface_get_array_len_923996154 != nil)
        let _method_surface_get_array_index_len_923996154_name = StringName(from: "surface_get_array_index_len")
        self._method_surface_get_array_index_len_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name_ArrayMesh._native_ptr(), _method_surface_get_array_index_len_923996154_name._native_ptr(), 923996154)
        assert(ArrayMesh._method_surface_get_array_index_len_923996154 != nil)
        let _method_surface_get_format_3718287884_name = StringName(from: "surface_get_format")
        self._method_surface_get_format_3718287884 = self.interface.pointee.classdb_get_method_bind(__godot_name_ArrayMesh._native_ptr(), _method_surface_get_format_3718287884_name._native_ptr(), 3718287884)
        assert(ArrayMesh._method_surface_get_format_3718287884 != nil)
        let _method_surface_get_primitive_type_4141943888_name = StringName(from: "surface_get_primitive_type")
        self._method_surface_get_primitive_type_4141943888 = self.interface.pointee.classdb_get_method_bind(__godot_name_ArrayMesh._native_ptr(), _method_surface_get_primitive_type_4141943888_name._native_ptr(), 4141943888)
        assert(ArrayMesh._method_surface_get_primitive_type_4141943888 != nil)
        let _method_surface_find_by_name_1321353865_name = StringName(from: "surface_find_by_name")
        self._method_surface_find_by_name_1321353865 = self.interface.pointee.classdb_get_method_bind(__godot_name_ArrayMesh._native_ptr(), _method_surface_find_by_name_1321353865_name._native_ptr(), 1321353865)
        assert(ArrayMesh._method_surface_find_by_name_1321353865 != nil)
        let _method_surface_set_name_501894301_name = StringName(from: "surface_set_name")
        self._method_surface_set_name_501894301 = self.interface.pointee.classdb_get_method_bind(__godot_name_ArrayMesh._native_ptr(), _method_surface_set_name_501894301_name._native_ptr(), 501894301)
        assert(ArrayMesh._method_surface_set_name_501894301 != nil)
        let _method_surface_get_name_844755477_name = StringName(from: "surface_get_name")
        self._method_surface_get_name_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name_ArrayMesh._native_ptr(), _method_surface_get_name_844755477_name._native_ptr(), 844755477)
        assert(ArrayMesh._method_surface_get_name_844755477 != nil)
        let _method_regen_normal_maps_3218959716_name = StringName(from: "regen_normal_maps")
        self._method_regen_normal_maps_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_ArrayMesh._native_ptr(), _method_regen_normal_maps_3218959716_name._native_ptr(), 3218959716)
        assert(ArrayMesh._method_regen_normal_maps_3218959716 != nil)
        let _method_lightmap_unwrap_1476641071_name = StringName(from: "lightmap_unwrap")
        self._method_lightmap_unwrap_1476641071 = self.interface.pointee.classdb_get_method_bind(__godot_name_ArrayMesh._native_ptr(), _method_lightmap_unwrap_1476641071_name._native_ptr(), 1476641071)
        assert(ArrayMesh._method_lightmap_unwrap_1476641071 != nil)
        let _method_set_custom_aabb_259215842_name = StringName(from: "set_custom_aabb")
        self._method_set_custom_aabb_259215842 = self.interface.pointee.classdb_get_method_bind(__godot_name_ArrayMesh._native_ptr(), _method_set_custom_aabb_259215842_name._native_ptr(), 259215842)
        assert(ArrayMesh._method_set_custom_aabb_259215842 != nil)
        let _method_get_custom_aabb_1068685055_name = StringName(from: "get_custom_aabb")
        self._method_get_custom_aabb_1068685055 = self.interface.pointee.classdb_get_method_bind(__godot_name_ArrayMesh._native_ptr(), _method_get_custom_aabb_1068685055_name._native_ptr(), 1068685055)
        assert(ArrayMesh._method_get_custom_aabb_1068685055 != nil)
        let _method_set_shadow_mesh_3377897901_name = StringName(from: "set_shadow_mesh")
        self._method_set_shadow_mesh_3377897901 = self.interface.pointee.classdb_get_method_bind(__godot_name_ArrayMesh._native_ptr(), _method_set_shadow_mesh_3377897901_name._native_ptr(), 3377897901)
        assert(ArrayMesh._method_set_shadow_mesh_3377897901 != nil)
        let _method_get_shadow_mesh_3206942465_name = StringName(from: "get_shadow_mesh")
        self._method_get_shadow_mesh_3206942465 = self.interface.pointee.classdb_get_method_bind(__godot_name_ArrayMesh._native_ptr(), _method_get_shadow_mesh_3206942465_name._native_ptr(), 3206942465)
        assert(ArrayMesh._method_get_shadow_mesh_3206942465 != nil)
    }

    public func add_blend_shape(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_blend_shape_3304788590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_blend_shape_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_blend_shape_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_blend_shape_name(index: Int64) -> StringName {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_blend_shape_name_659327637,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
        }
    }
    public func set_blend_shape_name(index: Int64, name: StringName)  {
        withUnsafePointer(to: index) { index_native in
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_blend_shape_name_3780747571,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func clear_blend_shapes()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_blend_shapes_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_blend_shape_mode(mode: Mesh.BlendShapeMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_blend_shape_mode_227983991,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_blend_shape_mode() -> Mesh.BlendShapeMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_blend_shape_mode_836485024,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Mesh.BlendShapeMode(godot: __resPtr.pointee)
    }
    public func add_surface_from_arrays(primitive: Mesh.PrimitiveType, arrays: Array, blend_shapes: [Array], lods: Dictionary, flags: Mesh.ArrayFormat)  {
        withUnsafePointer(to: flags.rawValue) { flags_native in
        withUnsafePointer(to: primitive.rawValue) { primitive_native in
        let lods_native = lods._native_ptr()
        let blend_shapes_native = blend_shapes._native_ptr()
        let arrays_native = arrays._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(primitive_native), .init(arrays_native), .init(blend_shapes_native), .init(lods_native), .init(flags_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_surface_from_arrays_172284304,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func clear_surfaces()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_surfaces_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func surface_update_vertex_region(surf_idx: Int64, offset: Int64, data: PackedByteArray)  {
        withUnsafePointer(to: offset) { offset_native in
        withUnsafePointer(to: surf_idx) { surf_idx_native in
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(surf_idx_native), .init(offset_native), .init(data_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_surface_update_vertex_region_3837166854,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func surface_update_attribute_region(surf_idx: Int64, offset: Int64, data: PackedByteArray)  {
        withUnsafePointer(to: offset) { offset_native in
        withUnsafePointer(to: surf_idx) { surf_idx_native in
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(surf_idx_native), .init(offset_native), .init(data_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_surface_update_attribute_region_3837166854,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func surface_update_skin_region(surf_idx: Int64, offset: Int64, data: PackedByteArray)  {
        withUnsafePointer(to: offset) { offset_native in
        withUnsafePointer(to: surf_idx) { surf_idx_native in
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(surf_idx_native), .init(offset_native), .init(data_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_surface_update_skin_region_3837166854,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func surface_get_array_len(surf_idx: Int64) -> Int64 {
        withUnsafePointer(to: surf_idx) { surf_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(surf_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_surface_get_array_len_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func surface_get_array_index_len(surf_idx: Int64) -> Int64 {
        withUnsafePointer(to: surf_idx) { surf_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(surf_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_surface_get_array_index_len_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func surface_get_format(surf_idx: Int64) -> Mesh.ArrayFormat {
        withUnsafePointer(to: surf_idx) { surf_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(surf_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_surface_get_format_3718287884,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Mesh.ArrayFormat(godot: __resPtr.pointee)
        }
    }
    public func surface_get_primitive_type(surf_idx: Int64) -> Mesh.PrimitiveType {
        withUnsafePointer(to: surf_idx) { surf_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(surf_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_surface_get_primitive_type_4141943888,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Mesh.PrimitiveType(godot: __resPtr.pointee)
        }
    }
    public func surface_find_by_name(name: godot.String) -> Int64 {
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
                    Self._method_surface_find_by_name_1321353865,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func surface_set_name(surf_idx: Int64, name: godot.String)  {
        withUnsafePointer(to: surf_idx) { surf_idx_native in
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(surf_idx_native), .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_surface_set_name_501894301,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func surface_get_name(surf_idx: Int64) -> godot.String {
        withUnsafePointer(to: surf_idx) { surf_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(surf_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_surface_get_name_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func regen_normal_maps()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_regen_normal_maps_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func lightmap_unwrap(transform: Transform3D, texel_size: Float64) -> Error {
        withUnsafePointer(to: texel_size) { texel_size_native in
        let transform_native = transform._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(transform_native), .init(texel_size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_lightmap_unwrap_1476641071,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
    }
    public func set_custom_aabb(aabb: AABB)  {
        let aabb_native = aabb._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(aabb_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_custom_aabb_259215842,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_custom_aabb() -> AABB {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_custom_aabb_1068685055,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AABB(godot: __resPtr.pointee)
    }
    public func set_shadow_mesh(mesh: ArrayMesh)  {
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_shadow_mesh_3377897901,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_shadow_mesh() -> ArrayMesh {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_shadow_mesh_3206942465,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ArrayMesh(godot: __resPtr.pointee)
    }
}