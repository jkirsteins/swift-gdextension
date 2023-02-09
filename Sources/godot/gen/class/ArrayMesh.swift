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

    static var _method_add_blend_shape_3304788590: StringName! = nil
    static var _method_get_blend_shape_count_3905245786: StringName! = nil
    static var _method_get_blend_shape_name_659327637: StringName! = nil
    static var _method_set_blend_shape_name_3780747571: StringName! = nil
    static var _method_clear_blend_shapes_3218959716: StringName! = nil
    static var _method_set_blend_shape_mode_227983991: StringName! = nil
    static var _method_get_blend_shape_mode_836485024: StringName! = nil
    static var _method_add_surface_from_arrays_172284304: StringName! = nil
    static var _method_clear_surfaces_3218959716: StringName! = nil
    static var _method_surface_update_vertex_region_3837166854: StringName! = nil
    static var _method_surface_update_attribute_region_3837166854: StringName! = nil
    static var _method_surface_update_skin_region_3837166854: StringName! = nil
    static var _method_surface_get_array_len_923996154: StringName! = nil
    static var _method_surface_get_array_index_len_923996154: StringName! = nil
    static var _method_surface_get_format_3718287884: StringName! = nil
    static var _method_surface_get_primitive_type_4141943888: StringName! = nil
    static var _method_surface_find_by_name_1321353865: StringName! = nil
    static var _method_surface_set_name_501894301: StringName! = nil
    static var _method_surface_get_name_844755477: StringName! = nil
    static var _method_regen_normal_maps_3218959716: StringName! = nil
    static var _method_lightmap_unwrap_1476641071: StringName! = nil
    static var _method_set_custom_aabb_259215842: StringName! = nil
    static var _method_get_custom_aabb_1068685055: StringName! = nil
    static var _method_set_shadow_mesh_3377897901: StringName! = nil
    static var _method_get_shadow_mesh_3206942465: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_ArrayMesh == nil)
        __godot_name_ArrayMesh = StringName(from: "ArrayMesh")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_add_blend_shape_3304788590 = StringName(from: "add_blend_shape")
        assert(self._method_add_blend_shape_3304788590 != nil)
        self._method_get_blend_shape_count_3905245786 = StringName(from: "get_blend_shape_count")
        assert(self._method_get_blend_shape_count_3905245786 != nil)
        self._method_get_blend_shape_name_659327637 = StringName(from: "get_blend_shape_name")
        assert(self._method_get_blend_shape_name_659327637 != nil)
        self._method_set_blend_shape_name_3780747571 = StringName(from: "set_blend_shape_name")
        assert(self._method_set_blend_shape_name_3780747571 != nil)
        self._method_clear_blend_shapes_3218959716 = StringName(from: "clear_blend_shapes")
        assert(self._method_clear_blend_shapes_3218959716 != nil)
        self._method_set_blend_shape_mode_227983991 = StringName(from: "set_blend_shape_mode")
        assert(self._method_set_blend_shape_mode_227983991 != nil)
        self._method_get_blend_shape_mode_836485024 = StringName(from: "get_blend_shape_mode")
        assert(self._method_get_blend_shape_mode_836485024 != nil)
        self._method_add_surface_from_arrays_172284304 = StringName(from: "add_surface_from_arrays")
        assert(self._method_add_surface_from_arrays_172284304 != nil)
        self._method_clear_surfaces_3218959716 = StringName(from: "clear_surfaces")
        assert(self._method_clear_surfaces_3218959716 != nil)
        self._method_surface_update_vertex_region_3837166854 = StringName(from: "surface_update_vertex_region")
        assert(self._method_surface_update_vertex_region_3837166854 != nil)
        self._method_surface_update_attribute_region_3837166854 = StringName(from: "surface_update_attribute_region")
        assert(self._method_surface_update_attribute_region_3837166854 != nil)
        self._method_surface_update_skin_region_3837166854 = StringName(from: "surface_update_skin_region")
        assert(self._method_surface_update_skin_region_3837166854 != nil)
        self._method_surface_get_array_len_923996154 = StringName(from: "surface_get_array_len")
        assert(self._method_surface_get_array_len_923996154 != nil)
        self._method_surface_get_array_index_len_923996154 = StringName(from: "surface_get_array_index_len")
        assert(self._method_surface_get_array_index_len_923996154 != nil)
        self._method_surface_get_format_3718287884 = StringName(from: "surface_get_format")
        assert(self._method_surface_get_format_3718287884 != nil)
        self._method_surface_get_primitive_type_4141943888 = StringName(from: "surface_get_primitive_type")
        assert(self._method_surface_get_primitive_type_4141943888 != nil)
        self._method_surface_find_by_name_1321353865 = StringName(from: "surface_find_by_name")
        assert(self._method_surface_find_by_name_1321353865 != nil)
        self._method_surface_set_name_501894301 = StringName(from: "surface_set_name")
        assert(self._method_surface_set_name_501894301 != nil)
        self._method_surface_get_name_844755477 = StringName(from: "surface_get_name")
        assert(self._method_surface_get_name_844755477 != nil)
        self._method_regen_normal_maps_3218959716 = StringName(from: "regen_normal_maps")
        assert(self._method_regen_normal_maps_3218959716 != nil)
        self._method_lightmap_unwrap_1476641071 = StringName(from: "lightmap_unwrap")
        assert(self._method_lightmap_unwrap_1476641071 != nil)
        self._method_set_custom_aabb_259215842 = StringName(from: "set_custom_aabb")
        assert(self._method_set_custom_aabb_259215842 != nil)
        self._method_get_custom_aabb_1068685055 = StringName(from: "get_custom_aabb")
        assert(self._method_get_custom_aabb_1068685055 != nil)
        self._method_set_shadow_mesh_3377897901 = StringName(from: "set_shadow_mesh")
        assert(self._method_set_shadow_mesh_3377897901 != nil)
        self._method_get_shadow_mesh_3206942465 = StringName(from: "get_shadow_mesh")
        assert(self._method_get_shadow_mesh_3206942465 != nil)
    }

    public func add_blend_shape(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_blend_shape_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_blend_shape_count_3905245786._native_ptr(),
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
    public func get_blend_shape_name(index: Int64) -> StringName {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_blend_shape_name_659327637._native_ptr(),
                    659327637)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_blend_shape_name_3780747571._native_ptr(),
                    3780747571)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_blend_shapes_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_blend_shape_mode_227983991._native_ptr(),
                    227983991)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_blend_shape_mode_836485024._native_ptr(),
                    836485024)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_surface_from_arrays_172284304._native_ptr(),
                    172284304)
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
    public func clear_surfaces()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_surfaces_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_surface_update_vertex_region_3837166854._native_ptr(),
                    3837166854)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_surface_update_attribute_region_3837166854._native_ptr(),
                    3837166854)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_surface_update_skin_region_3837166854._native_ptr(),
                    3837166854)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_surface_get_array_len_923996154._native_ptr(),
                    923996154)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_surface_get_array_index_len_923996154._native_ptr(),
                    923996154)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_surface_get_format_3718287884._native_ptr(),
                    3718287884)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_surface_get_primitive_type_4141943888._native_ptr(),
                    4141943888)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_surface_find_by_name_1321353865._native_ptr(),
                    1321353865)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_surface_set_name_501894301._native_ptr(),
                    501894301)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_surface_get_name_844755477._native_ptr(),
                    844755477)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_regen_normal_maps_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_lightmap_unwrap_1476641071._native_ptr(),
                    1476641071)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_custom_aabb_259215842._native_ptr(),
                    259215842)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_custom_aabb_1068685055._native_ptr(),
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
    public func set_shadow_mesh(mesh: ArrayMesh)  {
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_shadow_mesh_3377897901._native_ptr(),
                    3377897901)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_shadow_mesh_3206942465._native_ptr(),
                    3206942465)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ArrayMesh(godot: __resPtr.pointee)
    }
}