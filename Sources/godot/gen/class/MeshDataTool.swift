import godot_native

fileprivate var __godot_name_MeshDataTool: StringName! = nil

/// Helper tool to access and edit [Mesh] data.
/// 
/// MeshDataTool provides access to individual vertices in a [Mesh]. It allows users to read and edit vertex data of meshes. It also creates an array of faces and edges.
///  
/// To use MeshDataTool, load a mesh with [method create_from_surface]. When you are finished editing the data commit the data to a mesh with [method commit_to_surface].
///  
/// Below is an example of how MeshDataTool may be used.
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// var mesh = ArrayMesh.new()
///  
/// mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, BoxMesh.new().get_mesh_arrays())
///  
/// var mdt = MeshDataTool.new()
///  
/// mdt.create_from_surface(mesh, 0)
///  
/// for i in range(mdt.get_vertex_count()):
///  
///     var vertex = mdt.get_vertex(i)
///  
///     # In this example we extend the mesh by one unit, which results in separated faces as it is flat shaded.
///  
///     vertex += mdt.get_vertex_normal(i)
///  
///     # Save your change.
///  
///     mdt.set_vertex(i, vertex)
///  
/// mesh.surface_remove(0)
///  
/// mdt.commit_to_surface(mesh)
///  
/// var mi = MeshInstance.new()
///  
/// mi.mesh = mesh
///  
/// add_child(mi)
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// var mesh = new ArrayMesh();
///  
/// mesh.AddSurfaceFromArrays(Mesh.PrimitiveType.Triangles, new BoxMesh().GetMeshArrays());
///  
/// var mdt = new MeshDataTool();
///  
/// mdt.CreateFromSurface(mesh, 0);
///  
/// for (var i = 0; i < mdt.GetVertexCount(); i++)
///  
/// {
///  
///     Vector3 vertex = mdt.GetVertex(i);
///  
///     // In this example we extend the mesh by one unit, which results in separated faces as it is flat shaded.
///  
///     vertex += mdt.GetVertexNormal(i);
///  
///     // Save your change.
///  
///     mdt.SetVertex(i, vertex);
///  
/// }
///  
/// mesh.SurfaceRemove(0);
///  
/// mdt.CommitToSurface(mesh);
///  
/// var mi = new MeshInstance();
///  
/// mi.Mesh = mesh;
///  
/// AddChild(mi);
///  
/// [/csharp]
///  
/// [/codeblocks]
///  
/// See also [ArrayMesh], [ImmediateMesh] and [SurfaceTool] for procedural geometry generation.
///  
/// [b]Note:[/b] Godot uses clockwise [url=https://learnopengl.com/Advanced-OpenGL/Face-culling]winding order[/url] for front faces of triangle primitive modes.
open class MeshDataTool : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_MeshDataTool }

    static var _method_clear_3218959716: StringName! = nil
    static var _method_create_from_surface_2727020678: StringName! = nil
    static var _method_commit_to_surface_3521099812: StringName! = nil
    static var _method_get_format_3905245786: StringName! = nil
    static var _method_get_vertex_count_3905245786: StringName! = nil
    static var _method_get_edge_count_3905245786: StringName! = nil
    static var _method_get_face_count_3905245786: StringName! = nil
    static var _method_set_vertex_1530502735: StringName! = nil
    static var _method_get_vertex_711720468: StringName! = nil
    static var _method_set_vertex_normal_1530502735: StringName! = nil
    static var _method_get_vertex_normal_711720468: StringName! = nil
    static var _method_set_vertex_tangent_1104099133: StringName! = nil
    static var _method_get_vertex_tangent_1372055458: StringName! = nil
    static var _method_set_vertex_uv_163021252: StringName! = nil
    static var _method_get_vertex_uv_2299179447: StringName! = nil
    static var _method_set_vertex_uv2_163021252: StringName! = nil
    static var _method_get_vertex_uv2_2299179447: StringName! = nil
    static var _method_set_vertex_color_2878471219: StringName! = nil
    static var _method_get_vertex_color_3457211756: StringName! = nil
    static var _method_set_vertex_bones_3500328261: StringName! = nil
    static var _method_get_vertex_bones_1706082319: StringName! = nil
    static var _method_set_vertex_weights_1345852415: StringName! = nil
    static var _method_get_vertex_weights_1542882410: StringName! = nil
    static var _method_set_vertex_meta_2152698145: StringName! = nil
    static var _method_get_vertex_meta_4227898402: StringName! = nil
    static var _method_get_vertex_edges_1706082319: StringName! = nil
    static var _method_get_vertex_faces_1706082319: StringName! = nil
    static var _method_get_edge_vertex_3175239445: StringName! = nil
    static var _method_get_edge_faces_1706082319: StringName! = nil
    static var _method_set_edge_meta_2152698145: StringName! = nil
    static var _method_get_edge_meta_4227898402: StringName! = nil
    static var _method_get_face_vertex_3175239445: StringName! = nil
    static var _method_get_face_edge_3175239445: StringName! = nil
    static var _method_set_face_meta_2152698145: StringName! = nil
    static var _method_get_face_meta_4227898402: StringName! = nil
    static var _method_get_face_normal_711720468: StringName! = nil
    static var _method_set_material_2757459619: StringName! = nil
    static var _method_get_material_5934680: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_MeshDataTool == nil)
        __godot_name_MeshDataTool = StringName(from: "MeshDataTool")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_clear_3218959716 = StringName(from: "clear")
        assert(self._method_clear_3218959716 != nil)
        self._method_create_from_surface_2727020678 = StringName(from: "create_from_surface")
        assert(self._method_create_from_surface_2727020678 != nil)
        self._method_commit_to_surface_3521099812 = StringName(from: "commit_to_surface")
        assert(self._method_commit_to_surface_3521099812 != nil)
        self._method_get_format_3905245786 = StringName(from: "get_format")
        assert(self._method_get_format_3905245786 != nil)
        self._method_get_vertex_count_3905245786 = StringName(from: "get_vertex_count")
        assert(self._method_get_vertex_count_3905245786 != nil)
        self._method_get_edge_count_3905245786 = StringName(from: "get_edge_count")
        assert(self._method_get_edge_count_3905245786 != nil)
        self._method_get_face_count_3905245786 = StringName(from: "get_face_count")
        assert(self._method_get_face_count_3905245786 != nil)
        self._method_set_vertex_1530502735 = StringName(from: "set_vertex")
        assert(self._method_set_vertex_1530502735 != nil)
        self._method_get_vertex_711720468 = StringName(from: "get_vertex")
        assert(self._method_get_vertex_711720468 != nil)
        self._method_set_vertex_normal_1530502735 = StringName(from: "set_vertex_normal")
        assert(self._method_set_vertex_normal_1530502735 != nil)
        self._method_get_vertex_normal_711720468 = StringName(from: "get_vertex_normal")
        assert(self._method_get_vertex_normal_711720468 != nil)
        self._method_set_vertex_tangent_1104099133 = StringName(from: "set_vertex_tangent")
        assert(self._method_set_vertex_tangent_1104099133 != nil)
        self._method_get_vertex_tangent_1372055458 = StringName(from: "get_vertex_tangent")
        assert(self._method_get_vertex_tangent_1372055458 != nil)
        self._method_set_vertex_uv_163021252 = StringName(from: "set_vertex_uv")
        assert(self._method_set_vertex_uv_163021252 != nil)
        self._method_get_vertex_uv_2299179447 = StringName(from: "get_vertex_uv")
        assert(self._method_get_vertex_uv_2299179447 != nil)
        self._method_set_vertex_uv2_163021252 = StringName(from: "set_vertex_uv2")
        assert(self._method_set_vertex_uv2_163021252 != nil)
        self._method_get_vertex_uv2_2299179447 = StringName(from: "get_vertex_uv2")
        assert(self._method_get_vertex_uv2_2299179447 != nil)
        self._method_set_vertex_color_2878471219 = StringName(from: "set_vertex_color")
        assert(self._method_set_vertex_color_2878471219 != nil)
        self._method_get_vertex_color_3457211756 = StringName(from: "get_vertex_color")
        assert(self._method_get_vertex_color_3457211756 != nil)
        self._method_set_vertex_bones_3500328261 = StringName(from: "set_vertex_bones")
        assert(self._method_set_vertex_bones_3500328261 != nil)
        self._method_get_vertex_bones_1706082319 = StringName(from: "get_vertex_bones")
        assert(self._method_get_vertex_bones_1706082319 != nil)
        self._method_set_vertex_weights_1345852415 = StringName(from: "set_vertex_weights")
        assert(self._method_set_vertex_weights_1345852415 != nil)
        self._method_get_vertex_weights_1542882410 = StringName(from: "get_vertex_weights")
        assert(self._method_get_vertex_weights_1542882410 != nil)
        self._method_set_vertex_meta_2152698145 = StringName(from: "set_vertex_meta")
        assert(self._method_set_vertex_meta_2152698145 != nil)
        self._method_get_vertex_meta_4227898402 = StringName(from: "get_vertex_meta")
        assert(self._method_get_vertex_meta_4227898402 != nil)
        self._method_get_vertex_edges_1706082319 = StringName(from: "get_vertex_edges")
        assert(self._method_get_vertex_edges_1706082319 != nil)
        self._method_get_vertex_faces_1706082319 = StringName(from: "get_vertex_faces")
        assert(self._method_get_vertex_faces_1706082319 != nil)
        self._method_get_edge_vertex_3175239445 = StringName(from: "get_edge_vertex")
        assert(self._method_get_edge_vertex_3175239445 != nil)
        self._method_get_edge_faces_1706082319 = StringName(from: "get_edge_faces")
        assert(self._method_get_edge_faces_1706082319 != nil)
        self._method_set_edge_meta_2152698145 = StringName(from: "set_edge_meta")
        assert(self._method_set_edge_meta_2152698145 != nil)
        self._method_get_edge_meta_4227898402 = StringName(from: "get_edge_meta")
        assert(self._method_get_edge_meta_4227898402 != nil)
        self._method_get_face_vertex_3175239445 = StringName(from: "get_face_vertex")
        assert(self._method_get_face_vertex_3175239445 != nil)
        self._method_get_face_edge_3175239445 = StringName(from: "get_face_edge")
        assert(self._method_get_face_edge_3175239445 != nil)
        self._method_set_face_meta_2152698145 = StringName(from: "set_face_meta")
        assert(self._method_set_face_meta_2152698145 != nil)
        self._method_get_face_meta_4227898402 = StringName(from: "get_face_meta")
        assert(self._method_get_face_meta_4227898402 != nil)
        self._method_get_face_normal_711720468 = StringName(from: "get_face_normal")
        assert(self._method_get_face_normal_711720468 != nil)
        self._method_set_material_2757459619 = StringName(from: "set_material")
        assert(self._method_set_material_2757459619 != nil)
        self._method_get_material_5934680 = StringName(from: "get_material")
        assert(self._method_get_material_5934680 != nil)
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
    public func create_from_surface(mesh: ArrayMesh, surface: Int64) -> Error {
        withUnsafePointer(to: surface) { surface_native in
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_native), .init(surface_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_from_surface_2727020678._native_ptr(),
                    2727020678)
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
    public func commit_to_surface(mesh: ArrayMesh) -> Error {
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_commit_to_surface_3521099812._native_ptr(),
                    3521099812)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func get_format() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_format_3905245786._native_ptr(),
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
    public func get_vertex_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_vertex_count_3905245786._native_ptr(),
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
    public func get_edge_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_edge_count_3905245786._native_ptr(),
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
    public func get_face_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_face_count_3905245786._native_ptr(),
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
    public func set_vertex(idx: Int64, vertex: Vector3)  {
        withUnsafePointer(to: idx) { idx_native in
        let vertex_native = vertex._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(vertex_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_vertex_1530502735._native_ptr(),
                    1530502735)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_vertex(idx: Int64) -> Vector3 {
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
                    Self._method_get_vertex_711720468._native_ptr(),
                    711720468)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
        }
    }
    public func set_vertex_normal(idx: Int64, normal: Vector3)  {
        withUnsafePointer(to: idx) { idx_native in
        let normal_native = normal._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(normal_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_vertex_normal_1530502735._native_ptr(),
                    1530502735)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_vertex_normal(idx: Int64) -> Vector3 {
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
                    Self._method_get_vertex_normal_711720468._native_ptr(),
                    711720468)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
        }
    }
    public func set_vertex_tangent(idx: Int64, tangent: Plane)  {
        withUnsafePointer(to: idx) { idx_native in
        let tangent_native = tangent._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(tangent_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_vertex_tangent_1104099133._native_ptr(),
                    1104099133)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_vertex_tangent(idx: Int64) -> Plane {
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
                    Self._method_get_vertex_tangent_1372055458._native_ptr(),
                    1372055458)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Plane(godot: __resPtr.pointee)
        }
    }
    public func set_vertex_uv(idx: Int64, uv: Vector2)  {
        withUnsafePointer(to: idx) { idx_native in
        let uv_native = uv._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(uv_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_vertex_uv_163021252._native_ptr(),
                    163021252)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_vertex_uv(idx: Int64) -> Vector2 {
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
                    Self._method_get_vertex_uv_2299179447._native_ptr(),
                    2299179447)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
        }
    }
    public func set_vertex_uv2(idx: Int64, uv2: Vector2)  {
        withUnsafePointer(to: idx) { idx_native in
        let uv2_native = uv2._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(uv2_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_vertex_uv2_163021252._native_ptr(),
                    163021252)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_vertex_uv2(idx: Int64) -> Vector2 {
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
                    Self._method_get_vertex_uv2_2299179447._native_ptr(),
                    2299179447)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
        }
    }
    public func set_vertex_color(idx: Int64, color: Color)  {
        withUnsafePointer(to: idx) { idx_native in
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(color_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_vertex_color_2878471219._native_ptr(),
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
    public func get_vertex_color(idx: Int64) -> Color {
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
                    Self._method_get_vertex_color_3457211756._native_ptr(),
                    3457211756)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
        }
    }
    public func set_vertex_bones(idx: Int64, bones: PackedInt32Array)  {
        withUnsafePointer(to: idx) { idx_native in
        let bones_native = bones._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(bones_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_vertex_bones_3500328261._native_ptr(),
                    3500328261)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_vertex_bones(idx: Int64) -> PackedInt32Array {
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
                    Self._method_get_vertex_bones_1706082319._native_ptr(),
                    1706082319)
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
    public func set_vertex_weights(idx: Int64, weights: PackedFloat32Array)  {
        withUnsafePointer(to: idx) { idx_native in
        let weights_native = weights._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(weights_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_vertex_weights_1345852415._native_ptr(),
                    1345852415)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_vertex_weights(idx: Int64) -> PackedFloat32Array {
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
                    Self._method_get_vertex_weights_1542882410._native_ptr(),
                    1542882410)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedFloat32Array(godot: __resPtr.pointee)
        }
    }
    public func set_vertex_meta(idx: Int64, meta: Variant)  {
        withUnsafePointer(to: idx) { idx_native in
        let meta_native = meta._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(meta_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_vertex_meta_2152698145._native_ptr(),
                    2152698145)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_vertex_meta(idx: Int64) -> Variant {
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
                    Self._method_get_vertex_meta_4227898402._native_ptr(),
                    4227898402)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
        }
    }
    public func get_vertex_edges(idx: Int64) -> PackedInt32Array {
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
                    Self._method_get_vertex_edges_1706082319._native_ptr(),
                    1706082319)
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
    public func get_vertex_faces(idx: Int64) -> PackedInt32Array {
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
                    Self._method_get_vertex_faces_1706082319._native_ptr(),
                    1706082319)
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
    public func get_edge_vertex(idx: Int64, vertex: Int64) -> Int64 {
        withUnsafePointer(to: vertex) { vertex_native in
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(vertex_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_edge_vertex_3175239445._native_ptr(),
                    3175239445)
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
    }
    public func get_edge_faces(idx: Int64) -> PackedInt32Array {
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
                    Self._method_get_edge_faces_1706082319._native_ptr(),
                    1706082319)
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
    public func set_edge_meta(idx: Int64, meta: Variant)  {
        withUnsafePointer(to: idx) { idx_native in
        let meta_native = meta._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(meta_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_edge_meta_2152698145._native_ptr(),
                    2152698145)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_edge_meta(idx: Int64) -> Variant {
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
                    Self._method_get_edge_meta_4227898402._native_ptr(),
                    4227898402)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
        }
    }
    public func get_face_vertex(idx: Int64, vertex: Int64) -> Int64 {
        withUnsafePointer(to: vertex) { vertex_native in
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(vertex_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_face_vertex_3175239445._native_ptr(),
                    3175239445)
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
    }
    public func get_face_edge(idx: Int64, edge: Int64) -> Int64 {
        withUnsafePointer(to: edge) { edge_native in
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(edge_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_face_edge_3175239445._native_ptr(),
                    3175239445)
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
    }
    public func set_face_meta(idx: Int64, meta: Variant)  {
        withUnsafePointer(to: idx) { idx_native in
        let meta_native = meta._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(meta_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_face_meta_2152698145._native_ptr(),
                    2152698145)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_face_meta(idx: Int64) -> Variant {
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
                    Self._method_get_face_meta_4227898402._native_ptr(),
                    4227898402)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
        }
    }
    public func get_face_normal(idx: Int64) -> Vector3 {
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
                    Self._method_get_face_normal_711720468._native_ptr(),
                    711720468)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
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
    public func get_material() -> Material {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_material_5934680._native_ptr(),
                    5934680)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Material(godot: __resPtr.pointee)
    }
}