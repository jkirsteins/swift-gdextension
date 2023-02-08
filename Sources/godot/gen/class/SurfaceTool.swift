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

    static var _method_set_skin_weight_count_618679515: GDExtensionMethodBindPtr! = nil
    static var _method_get_skin_weight_count_1072401130: GDExtensionMethodBindPtr! = nil
    static var _method_set_custom_format_4087759856: GDExtensionMethodBindPtr! = nil
    static var _method_get_custom_format_839863283: GDExtensionMethodBindPtr! = nil
    static var _method_begin_2230304113: GDExtensionMethodBindPtr! = nil
    static var _method_add_vertex_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_set_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_set_normal_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_set_tangent_3505987427: GDExtensionMethodBindPtr! = nil
    static var _method_set_uv_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_set_uv2_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_set_bones_3614634198: GDExtensionMethodBindPtr! = nil
    static var _method_set_weights_2899603908: GDExtensionMethodBindPtr! = nil
    static var _method_set_custom_2878471219: GDExtensionMethodBindPtr! = nil
    static var _method_set_smooth_group_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_add_triangle_fan_297960074: GDExtensionMethodBindPtr! = nil
    static var _method_add_index_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_index_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_deindex_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_generate_normals_107499316: GDExtensionMethodBindPtr! = nil
    static var _method_generate_tangents_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_optimize_indices_for_cache_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_aabb_1068685055: GDExtensionMethodBindPtr! = nil
    static var _method_generate_lod_1894448909: GDExtensionMethodBindPtr! = nil
    static var _method_set_material_2757459619: GDExtensionMethodBindPtr! = nil
    static var _method_get_primitive_type_768822145: GDExtensionMethodBindPtr! = nil
    static var _method_clear_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_create_from_1767024570: GDExtensionMethodBindPtr! = nil
    static var _method_create_from_blend_shape_1306185582: GDExtensionMethodBindPtr! = nil
    static var _method_append_from_2217967155: GDExtensionMethodBindPtr! = nil
    static var _method_commit_4107864055: GDExtensionMethodBindPtr! = nil
    static var _method_commit_to_arrays_2915620761: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_SurfaceTool = StringName(from: "SurfaceTool")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_skin_weight_count_618679515_name = StringName(from: "set_skin_weight_count")
        self._method_set_skin_weight_count_618679515 = self.interface.pointee.classdb_get_method_bind(__godot_name_SurfaceTool._native_ptr(), _method_set_skin_weight_count_618679515_name._native_ptr(), 618679515)
        assert(SurfaceTool._method_set_skin_weight_count_618679515 != nil)
        let _method_get_skin_weight_count_1072401130_name = StringName(from: "get_skin_weight_count")
        self._method_get_skin_weight_count_1072401130 = self.interface.pointee.classdb_get_method_bind(__godot_name_SurfaceTool._native_ptr(), _method_get_skin_weight_count_1072401130_name._native_ptr(), 1072401130)
        assert(SurfaceTool._method_get_skin_weight_count_1072401130 != nil)
        let _method_set_custom_format_4087759856_name = StringName(from: "set_custom_format")
        self._method_set_custom_format_4087759856 = self.interface.pointee.classdb_get_method_bind(__godot_name_SurfaceTool._native_ptr(), _method_set_custom_format_4087759856_name._native_ptr(), 4087759856)
        assert(SurfaceTool._method_set_custom_format_4087759856 != nil)
        let _method_get_custom_format_839863283_name = StringName(from: "get_custom_format")
        self._method_get_custom_format_839863283 = self.interface.pointee.classdb_get_method_bind(__godot_name_SurfaceTool._native_ptr(), _method_get_custom_format_839863283_name._native_ptr(), 839863283)
        assert(SurfaceTool._method_get_custom_format_839863283 != nil)
        let _method_begin_2230304113_name = StringName(from: "begin")
        self._method_begin_2230304113 = self.interface.pointee.classdb_get_method_bind(__godot_name_SurfaceTool._native_ptr(), _method_begin_2230304113_name._native_ptr(), 2230304113)
        assert(SurfaceTool._method_begin_2230304113 != nil)
        let _method_add_vertex_3460891852_name = StringName(from: "add_vertex")
        self._method_add_vertex_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name_SurfaceTool._native_ptr(), _method_add_vertex_3460891852_name._native_ptr(), 3460891852)
        assert(SurfaceTool._method_add_vertex_3460891852 != nil)
        let _method_set_color_2920490490_name = StringName(from: "set_color")
        self._method_set_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name_SurfaceTool._native_ptr(), _method_set_color_2920490490_name._native_ptr(), 2920490490)
        assert(SurfaceTool._method_set_color_2920490490 != nil)
        let _method_set_normal_3460891852_name = StringName(from: "set_normal")
        self._method_set_normal_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name_SurfaceTool._native_ptr(), _method_set_normal_3460891852_name._native_ptr(), 3460891852)
        assert(SurfaceTool._method_set_normal_3460891852 != nil)
        let _method_set_tangent_3505987427_name = StringName(from: "set_tangent")
        self._method_set_tangent_3505987427 = self.interface.pointee.classdb_get_method_bind(__godot_name_SurfaceTool._native_ptr(), _method_set_tangent_3505987427_name._native_ptr(), 3505987427)
        assert(SurfaceTool._method_set_tangent_3505987427 != nil)
        let _method_set_uv_743155724_name = StringName(from: "set_uv")
        self._method_set_uv_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name_SurfaceTool._native_ptr(), _method_set_uv_743155724_name._native_ptr(), 743155724)
        assert(SurfaceTool._method_set_uv_743155724 != nil)
        let _method_set_uv2_743155724_name = StringName(from: "set_uv2")
        self._method_set_uv2_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name_SurfaceTool._native_ptr(), _method_set_uv2_743155724_name._native_ptr(), 743155724)
        assert(SurfaceTool._method_set_uv2_743155724 != nil)
        let _method_set_bones_3614634198_name = StringName(from: "set_bones")
        self._method_set_bones_3614634198 = self.interface.pointee.classdb_get_method_bind(__godot_name_SurfaceTool._native_ptr(), _method_set_bones_3614634198_name._native_ptr(), 3614634198)
        assert(SurfaceTool._method_set_bones_3614634198 != nil)
        let _method_set_weights_2899603908_name = StringName(from: "set_weights")
        self._method_set_weights_2899603908 = self.interface.pointee.classdb_get_method_bind(__godot_name_SurfaceTool._native_ptr(), _method_set_weights_2899603908_name._native_ptr(), 2899603908)
        assert(SurfaceTool._method_set_weights_2899603908 != nil)
        let _method_set_custom_2878471219_name = StringName(from: "set_custom")
        self._method_set_custom_2878471219 = self.interface.pointee.classdb_get_method_bind(__godot_name_SurfaceTool._native_ptr(), _method_set_custom_2878471219_name._native_ptr(), 2878471219)
        assert(SurfaceTool._method_set_custom_2878471219 != nil)
        let _method_set_smooth_group_1286410249_name = StringName(from: "set_smooth_group")
        self._method_set_smooth_group_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_SurfaceTool._native_ptr(), _method_set_smooth_group_1286410249_name._native_ptr(), 1286410249)
        assert(SurfaceTool._method_set_smooth_group_1286410249 != nil)
        let _method_add_triangle_fan_297960074_name = StringName(from: "add_triangle_fan")
        self._method_add_triangle_fan_297960074 = self.interface.pointee.classdb_get_method_bind(__godot_name_SurfaceTool._native_ptr(), _method_add_triangle_fan_297960074_name._native_ptr(), 297960074)
        assert(SurfaceTool._method_add_triangle_fan_297960074 != nil)
        let _method_add_index_1286410249_name = StringName(from: "add_index")
        self._method_add_index_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_SurfaceTool._native_ptr(), _method_add_index_1286410249_name._native_ptr(), 1286410249)
        assert(SurfaceTool._method_add_index_1286410249 != nil)
        let _method_index_3218959716_name = StringName(from: "index")
        self._method_index_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_SurfaceTool._native_ptr(), _method_index_3218959716_name._native_ptr(), 3218959716)
        assert(SurfaceTool._method_index_3218959716 != nil)
        let _method_deindex_3218959716_name = StringName(from: "deindex")
        self._method_deindex_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_SurfaceTool._native_ptr(), _method_deindex_3218959716_name._native_ptr(), 3218959716)
        assert(SurfaceTool._method_deindex_3218959716 != nil)
        let _method_generate_normals_107499316_name = StringName(from: "generate_normals")
        self._method_generate_normals_107499316 = self.interface.pointee.classdb_get_method_bind(__godot_name_SurfaceTool._native_ptr(), _method_generate_normals_107499316_name._native_ptr(), 107499316)
        assert(SurfaceTool._method_generate_normals_107499316 != nil)
        let _method_generate_tangents_3218959716_name = StringName(from: "generate_tangents")
        self._method_generate_tangents_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_SurfaceTool._native_ptr(), _method_generate_tangents_3218959716_name._native_ptr(), 3218959716)
        assert(SurfaceTool._method_generate_tangents_3218959716 != nil)
        let _method_optimize_indices_for_cache_3218959716_name = StringName(from: "optimize_indices_for_cache")
        self._method_optimize_indices_for_cache_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_SurfaceTool._native_ptr(), _method_optimize_indices_for_cache_3218959716_name._native_ptr(), 3218959716)
        assert(SurfaceTool._method_optimize_indices_for_cache_3218959716 != nil)
        let _method_get_aabb_1068685055_name = StringName(from: "get_aabb")
        self._method_get_aabb_1068685055 = self.interface.pointee.classdb_get_method_bind(__godot_name_SurfaceTool._native_ptr(), _method_get_aabb_1068685055_name._native_ptr(), 1068685055)
        assert(SurfaceTool._method_get_aabb_1068685055 != nil)
        let _method_generate_lod_1894448909_name = StringName(from: "generate_lod")
        self._method_generate_lod_1894448909 = self.interface.pointee.classdb_get_method_bind(__godot_name_SurfaceTool._native_ptr(), _method_generate_lod_1894448909_name._native_ptr(), 1894448909)
        assert(SurfaceTool._method_generate_lod_1894448909 != nil)
        let _method_set_material_2757459619_name = StringName(from: "set_material")
        self._method_set_material_2757459619 = self.interface.pointee.classdb_get_method_bind(__godot_name_SurfaceTool._native_ptr(), _method_set_material_2757459619_name._native_ptr(), 2757459619)
        assert(SurfaceTool._method_set_material_2757459619 != nil)
        let _method_get_primitive_type_768822145_name = StringName(from: "get_primitive_type")
        self._method_get_primitive_type_768822145 = self.interface.pointee.classdb_get_method_bind(__godot_name_SurfaceTool._native_ptr(), _method_get_primitive_type_768822145_name._native_ptr(), 768822145)
        assert(SurfaceTool._method_get_primitive_type_768822145 != nil)
        let _method_clear_3218959716_name = StringName(from: "clear")
        self._method_clear_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_SurfaceTool._native_ptr(), _method_clear_3218959716_name._native_ptr(), 3218959716)
        assert(SurfaceTool._method_clear_3218959716 != nil)
        let _method_create_from_1767024570_name = StringName(from: "create_from")
        self._method_create_from_1767024570 = self.interface.pointee.classdb_get_method_bind(__godot_name_SurfaceTool._native_ptr(), _method_create_from_1767024570_name._native_ptr(), 1767024570)
        assert(SurfaceTool._method_create_from_1767024570 != nil)
        let _method_create_from_blend_shape_1306185582_name = StringName(from: "create_from_blend_shape")
        self._method_create_from_blend_shape_1306185582 = self.interface.pointee.classdb_get_method_bind(__godot_name_SurfaceTool._native_ptr(), _method_create_from_blend_shape_1306185582_name._native_ptr(), 1306185582)
        assert(SurfaceTool._method_create_from_blend_shape_1306185582 != nil)
        let _method_append_from_2217967155_name = StringName(from: "append_from")
        self._method_append_from_2217967155 = self.interface.pointee.classdb_get_method_bind(__godot_name_SurfaceTool._native_ptr(), _method_append_from_2217967155_name._native_ptr(), 2217967155)
        assert(SurfaceTool._method_append_from_2217967155 != nil)
        let _method_commit_4107864055_name = StringName(from: "commit")
        self._method_commit_4107864055 = self.interface.pointee.classdb_get_method_bind(__godot_name_SurfaceTool._native_ptr(), _method_commit_4107864055_name._native_ptr(), 4107864055)
        assert(SurfaceTool._method_commit_4107864055 != nil)
        let _method_commit_to_arrays_2915620761_name = StringName(from: "commit_to_arrays")
        self._method_commit_to_arrays_2915620761 = self.interface.pointee.classdb_get_method_bind(__godot_name_SurfaceTool._native_ptr(), _method_commit_to_arrays_2915620761_name._native_ptr(), 2915620761)
        assert(SurfaceTool._method_commit_to_arrays_2915620761 != nil)
    }

    public func set_skin_weight_count(count: SurfaceTool.SkinWeightCount)  {
        withUnsafePointer(to: count.rawValue) { count_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(count_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_skin_weight_count_618679515,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_skin_weight_count_1072401130,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_custom_format_4087759856,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_custom_format_839863283,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_begin_2230304113,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_vertex_3460891852,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_color_2920490490,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_normal_3460891852,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tangent_3505987427,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_uv_743155724,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_uv2_743155724,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bones_3614634198,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_weights_2899603908,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_custom_2878471219,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_smooth_group_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_triangle_fan_297960074,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_index_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_index_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_deindex_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_generate_normals_107499316,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_generate_tangents_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_optimize_indices_for_cache_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_aabb_1068685055,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_generate_lod_1894448909,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_material_2757459619,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_primitive_type_768822145,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_from_1767024570,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_from_blend_shape_1306185582,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_append_from_2217967155,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_commit_4107864055,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_commit_to_arrays_2915620761,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(godot: __resPtr.pointee)
    }
}