import godot_native

fileprivate var __godot_name_SurfaceTool: StringName! = nil

/// Helper tool to create geometry.
/// 
/// The [SurfaceTool] is used to construct a [Mesh] by specifying vertex attributes individually. It can be used to construct a [Mesh] from a script. All properties except indices need to be added before calling [method add_vertex]. For example, to add vertex colors and UVs:
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// var st = SurfaceTool.new()
///  
/// st.begin(Mesh.PRIMITIVE_TRIANGLES)
///  
/// st.set_color(Color(1, 0, 0))
///  
/// st.set_uv(Vector2(0, 0))
///  
/// st.add_vertex(Vector3(0, 0, 0))
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// var st = new SurfaceTool();
///  
/// st.Begin(Mesh.PrimitiveType.Triangles);
///  
/// st.SetColor(new Color(1, 0, 0));
///  
/// st.SetUv(new Vector2(0, 0));
///  
/// st.AddVertex(new Vector3(0, 0, 0));
///  
/// [/csharp]
///  
/// [/codeblocks]
///  
/// The above [SurfaceTool] now contains one vertex of a triangle which has a UV coordinate and a specified [Color]. If another vertex were added without calling [method set_uv] or [method set_color], then the last values would be used.
///  
/// Vertex attributes must be passed [b]before[/b] calling [method add_vertex]. Failure to do so will result in an error when committing the vertex information to a mesh.
///  
/// Additionally, the attributes used before the first vertex is added determine the format of the mesh. For example, if you only add UVs to the first vertex, you cannot add color to any of the subsequent vertices.
///  
/// See also [ArrayMesh], [ImmediateMesh] and [MeshDataTool] for procedural geometry generation.
///  
/// [b]Note:[/b] Godot uses clockwise [url=https://learnopengl.com/Advanced-OpenGL/Face-culling]winding order[/url] for front faces of triangle primitive modes.
open class SurfaceTool : RefCounted {

    public enum CustomFormat : Int32 {
        case CUSTOM_RGBA8_UNORM = 0
        case CUSTOM_RGBA8_SNORM = 1
        case CUSTOM_RG_HALF = 2
        case CUSTOM_RGBA_HALF = 3
        case CUSTOM_R_FLOAT = 4
        case CUSTOM_RG_FLOAT = 5
        case CUSTOM_RGB_FLOAT = 6
        case CUSTOM_RGBA_FLOAT = 7
        case CUSTOM_MAX = 8
    }
    public enum SkinWeightCount : Int32 {
        case SKIN_4_WEIGHTS = 0
        case SKIN_8_WEIGHTS = 1
    }

    public override class var __godot_name: StringName { __godot_name_SurfaceTool }

    static var _method_set_skin_weight_count_618679515: StringName! = nil
    static var _method_get_skin_weight_count_1072401130: StringName! = nil
    static var _method_set_custom_format_4087759856: StringName! = nil
    static var _method_get_custom_format_839863283: StringName! = nil
    static var _method_begin_2230304113: StringName! = nil
    static var _method_add_vertex_3460891852: StringName! = nil
    static var _method_set_color_2920490490: StringName! = nil
    static var _method_set_normal_3460891852: StringName! = nil
    static var _method_set_tangent_3505987427: StringName! = nil
    static var _method_set_uv_743155724: StringName! = nil
    static var _method_set_uv2_743155724: StringName! = nil
    static var _method_set_bones_3614634198: StringName! = nil
    static var _method_set_weights_2899603908: StringName! = nil
    static var _method_set_custom_2878471219: StringName! = nil
    static var _method_set_smooth_group_1286410249: StringName! = nil
    static var _method_add_triangle_fan_297960074: StringName! = nil
    static var _method_add_index_1286410249: StringName! = nil
    static var _method_index_3218959716: StringName! = nil
    static var _method_deindex_3218959716: StringName! = nil
    static var _method_generate_normals_107499316: StringName! = nil
    static var _method_generate_tangents_3218959716: StringName! = nil
    static var _method_optimize_indices_for_cache_3218959716: StringName! = nil
    static var _method_get_aabb_1068685055: StringName! = nil
    static var _method_generate_lod_1894448909: StringName! = nil
    static var _method_set_material_2757459619: StringName! = nil
    static var _method_get_primitive_type_768822145: StringName! = nil
    static var _method_clear_3218959716: StringName! = nil
    static var _method_create_from_1767024570: StringName! = nil
    static var _method_create_from_blend_shape_1306185582: StringName! = nil
    static var _method_append_from_2217967155: StringName! = nil
    static var _method_commit_4107864055: StringName! = nil
    static var _method_commit_to_arrays_2915620761: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_SurfaceTool == nil)
        __godot_name_SurfaceTool = StringName(from: "SurfaceTool")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_skin_weight_count_618679515 = StringName(from: "set_skin_weight_count")
        assert(self._method_set_skin_weight_count_618679515 != nil)
        self._method_get_skin_weight_count_1072401130 = StringName(from: "get_skin_weight_count")
        assert(self._method_get_skin_weight_count_1072401130 != nil)
        self._method_set_custom_format_4087759856 = StringName(from: "set_custom_format")
        assert(self._method_set_custom_format_4087759856 != nil)
        self._method_get_custom_format_839863283 = StringName(from: "get_custom_format")
        assert(self._method_get_custom_format_839863283 != nil)
        self._method_begin_2230304113 = StringName(from: "begin")
        assert(self._method_begin_2230304113 != nil)
        self._method_add_vertex_3460891852 = StringName(from: "add_vertex")
        assert(self._method_add_vertex_3460891852 != nil)
        self._method_set_color_2920490490 = StringName(from: "set_color")
        assert(self._method_set_color_2920490490 != nil)
        self._method_set_normal_3460891852 = StringName(from: "set_normal")
        assert(self._method_set_normal_3460891852 != nil)
        self._method_set_tangent_3505987427 = StringName(from: "set_tangent")
        assert(self._method_set_tangent_3505987427 != nil)
        self._method_set_uv_743155724 = StringName(from: "set_uv")
        assert(self._method_set_uv_743155724 != nil)
        self._method_set_uv2_743155724 = StringName(from: "set_uv2")
        assert(self._method_set_uv2_743155724 != nil)
        self._method_set_bones_3614634198 = StringName(from: "set_bones")
        assert(self._method_set_bones_3614634198 != nil)
        self._method_set_weights_2899603908 = StringName(from: "set_weights")
        assert(self._method_set_weights_2899603908 != nil)
        self._method_set_custom_2878471219 = StringName(from: "set_custom")
        assert(self._method_set_custom_2878471219 != nil)
        self._method_set_smooth_group_1286410249 = StringName(from: "set_smooth_group")
        assert(self._method_set_smooth_group_1286410249 != nil)
        self._method_add_triangle_fan_297960074 = StringName(from: "add_triangle_fan")
        assert(self._method_add_triangle_fan_297960074 != nil)
        self._method_add_index_1286410249 = StringName(from: "add_index")
        assert(self._method_add_index_1286410249 != nil)
        self._method_index_3218959716 = StringName(from: "index")
        assert(self._method_index_3218959716 != nil)
        self._method_deindex_3218959716 = StringName(from: "deindex")
        assert(self._method_deindex_3218959716 != nil)
        self._method_generate_normals_107499316 = StringName(from: "generate_normals")
        assert(self._method_generate_normals_107499316 != nil)
        self._method_generate_tangents_3218959716 = StringName(from: "generate_tangents")
        assert(self._method_generate_tangents_3218959716 != nil)
        self._method_optimize_indices_for_cache_3218959716 = StringName(from: "optimize_indices_for_cache")
        assert(self._method_optimize_indices_for_cache_3218959716 != nil)
        self._method_get_aabb_1068685055 = StringName(from: "get_aabb")
        assert(self._method_get_aabb_1068685055 != nil)
        self._method_generate_lod_1894448909 = StringName(from: "generate_lod")
        assert(self._method_generate_lod_1894448909 != nil)
        self._method_set_material_2757459619 = StringName(from: "set_material")
        assert(self._method_set_material_2757459619 != nil)
        self._method_get_primitive_type_768822145 = StringName(from: "get_primitive_type")
        assert(self._method_get_primitive_type_768822145 != nil)
        self._method_clear_3218959716 = StringName(from: "clear")
        assert(self._method_clear_3218959716 != nil)
        self._method_create_from_1767024570 = StringName(from: "create_from")
        assert(self._method_create_from_1767024570 != nil)
        self._method_create_from_blend_shape_1306185582 = StringName(from: "create_from_blend_shape")
        assert(self._method_create_from_blend_shape_1306185582 != nil)
        self._method_append_from_2217967155 = StringName(from: "append_from")
        assert(self._method_append_from_2217967155 != nil)
        self._method_commit_4107864055 = StringName(from: "commit")
        assert(self._method_commit_4107864055 != nil)
        self._method_commit_to_arrays_2915620761 = StringName(from: "commit_to_arrays")
        assert(self._method_commit_to_arrays_2915620761 != nil)
    }

    public func set_skin_weight_count(count: SurfaceTool.SkinWeightCount)  {
        withUnsafePointer(to: count.rawValue) { count_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(count_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_skin_weight_count_618679515._native_ptr(),
                    618679515)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_skin_weight_count() -> SurfaceTool.SkinWeightCount {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_skin_weight_count_1072401130._native_ptr(),
                    1072401130)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return SurfaceTool.SkinWeightCount(godot: __resPtr.pointee)
    }
    public func set_custom_format(channel_index: Int64, format: SurfaceTool.CustomFormat)  {
        withUnsafePointer(to: channel_index) { channel_index_native in
        withUnsafePointer(to: format.rawValue) { format_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(channel_index_native), .init(format_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_custom_format_4087759856._native_ptr(),
                    4087759856)
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
    public func get_custom_format(channel_index: Int64) -> SurfaceTool.CustomFormat {
        withUnsafePointer(to: channel_index) { channel_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(channel_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_custom_format_839863283._native_ptr(),
                    839863283)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return SurfaceTool.CustomFormat(godot: __resPtr.pointee)
        }
    }
    public func begin(primitive: Mesh.PrimitiveType)  {
        withUnsafePointer(to: primitive.rawValue) { primitive_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(primitive_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_begin_2230304113._native_ptr(),
                    2230304113)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_vertex(vertex: Vector3)  {
        let vertex_native = vertex._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(vertex_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_vertex_3460891852._native_ptr(),
                    3460891852)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_color_2920490490._native_ptr(),
                    2920490490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_normal(normal: Vector3)  {
        let normal_native = normal._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(normal_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_normal_3460891852._native_ptr(),
                    3460891852)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_tangent(tangent: Plane)  {
        let tangent_native = tangent._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tangent_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tangent_3505987427._native_ptr(),
                    3505987427)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_uv(uv: Vector2)  {
        let uv_native = uv._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(uv_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_uv_743155724._native_ptr(),
                    743155724)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_uv2(uv2: Vector2)  {
        let uv2_native = uv2._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(uv2_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_uv2_743155724._native_ptr(),
                    743155724)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_bones(bones: PackedInt32Array)  {
        let bones_native = bones._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bones_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_bones_3614634198._native_ptr(),
                    3614634198)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_weights(weights: PackedFloat32Array)  {
        let weights_native = weights._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(weights_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_weights_2899603908._native_ptr(),
                    2899603908)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_custom(channel_index: Int64, custom_color: Color)  {
        withUnsafePointer(to: channel_index) { channel_index_native in
        let custom_color_native = custom_color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(channel_index_native), .init(custom_color_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_custom_2878471219._native_ptr(),
                    2878471219)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_smooth_group(index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_smooth_group_1286410249._native_ptr(),
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
    public func add_triangle_fan(vertices: PackedVector3Array, uvs: PackedVector2Array, colors: PackedColorArray, uv2s: PackedVector2Array, normals: PackedVector3Array, tangents: Array)  {
        let tangents_native = tangents._native_ptr()
        let normals_native = normals._native_ptr()
        let uv2s_native = uv2s._native_ptr()
        let colors_native = colors._native_ptr()
        let uvs_native = uvs._native_ptr()
        let vertices_native = vertices._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(vertices_native), .init(uvs_native), .init(colors_native), .init(uv2s_native), .init(normals_native), .init(tangents_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_triangle_fan_297960074._native_ptr(),
                    297960074)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_index(index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_index_1286410249._native_ptr(),
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
    public func index()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_index_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func deindex()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_deindex_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func generate_normals(flip: UInt8)  {
        withUnsafePointer(to: flip) { flip_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flip_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_generate_normals_107499316._native_ptr(),
                    107499316)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func generate_tangents()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_generate_tangents_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func optimize_indices_for_cache()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_optimize_indices_for_cache_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_aabb() -> AABB {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_aabb_1068685055._native_ptr(),
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
    public func generate_lod(nd_threshold: Float64, target_index_count: Int64) -> PackedInt32Array {
        withUnsafePointer(to: target_index_count) { target_index_count_native in
        withUnsafePointer(to: nd_threshold) { nd_threshold_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(nd_threshold_native), .init(target_index_count_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_generate_lod_1894448909._native_ptr(),
                    1894448909)
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
    }
    public func set_material(material: Material)  {
        let material_native = material._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(material_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_material_2757459619._native_ptr(),
                    2757459619)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_primitive_type() -> Mesh.PrimitiveType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_primitive_type_768822145._native_ptr(),
                    768822145)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Mesh.PrimitiveType(godot: __resPtr.pointee)
    }
    public func clear()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func create_from(existing: Mesh, surface: Int64)  {
        withUnsafePointer(to: surface) { surface_native in
        let existing_native = existing._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(existing_native), .init(surface_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_from_1767024570._native_ptr(),
                    1767024570)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func create_from_blend_shape(existing: Mesh, surface: Int64, blend_shape: godot.String)  {
        withUnsafePointer(to: surface) { surface_native in
        let blend_shape_native = blend_shape._native_ptr()
        let existing_native = existing._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(existing_native), .init(surface_native), .init(blend_shape_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_from_blend_shape_1306185582._native_ptr(),
                    1306185582)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func append_from(existing: Mesh, surface: Int64, transform: Transform3D)  {
        withUnsafePointer(to: surface) { surface_native in
        let transform_native = transform._native_ptr()
        let existing_native = existing._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(existing_native), .init(surface_native), .init(transform_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_append_from_2217967155._native_ptr(),
                    2217967155)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func commit(existing: ArrayMesh, flags: Int64) -> ArrayMesh {
        withUnsafePointer(to: flags) { flags_native in
        let existing_native = existing._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(existing_native), .init(flags_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_commit_4107864055._native_ptr(),
                    4107864055)
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
    public func commit_to_arrays() -> Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_commit_to_arrays_2915620761._native_ptr(),
                    2915620761)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(godot: __resPtr.pointee)
    }
}