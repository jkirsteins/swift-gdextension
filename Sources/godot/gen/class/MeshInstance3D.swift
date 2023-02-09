import godot_native

fileprivate var __godot_name_MeshInstance3D: StringName! = nil

/// Node that instances meshes into a scenario.
/// 
/// MeshInstance3D is a node that takes a [Mesh] resource and adds it to the current scenario by creating an instance of it. This is the class most often used render 3D geometry and can be used to instance a single [Mesh] in many places. This allows reusing geometry, which can save on resources. When a [Mesh] has to be instantiated more than thousands of times at close proximity, consider using a [MultiMesh] in a [MultiMeshInstance3D] instead.
open class MeshInstance3D : GeometryInstance3D {

    

    public override class var __godot_name: StringName { __godot_name_MeshInstance3D }

    static var _method_set_mesh_194775623: StringName! = nil
    static var _method_get_mesh_1808005922: StringName! = nil
    static var _method_set_skeleton_path_1348162250: StringName! = nil
    static var _method_get_skeleton_path_277076166: StringName! = nil
    static var _method_set_skin_3971435618: StringName! = nil
    static var _method_get_skin_2074563878: StringName! = nil
    static var _method_get_surface_override_material_count_3905245786: StringName! = nil
    static var _method_set_surface_override_material_3671737478: StringName! = nil
    static var _method_get_surface_override_material_2897466400: StringName! = nil
    static var _method_get_active_material_2897466400: StringName! = nil
    static var _method_create_trimesh_collision_3218959716: StringName! = nil
    static var _method_create_convex_collision_2751962654: StringName! = nil
    static var _method_create_multiple_convex_collisions_3218959716: StringName! = nil
    static var _method_get_blend_shape_count_3905245786: StringName! = nil
    static var _method_find_blend_shape_by_name_4150868206: StringName! = nil
    static var _method_get_blend_shape_value_2339986948: StringName! = nil
    static var _method_set_blend_shape_value_1602489585: StringName! = nil
    static var _method_create_debug_tangents_3218959716: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_MeshInstance3D == nil)
        __godot_name_MeshInstance3D = StringName(from: "MeshInstance3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_mesh_194775623 = StringName(from: "set_mesh")
        assert(self._method_set_mesh_194775623 != nil)
        self._method_get_mesh_1808005922 = StringName(from: "get_mesh")
        assert(self._method_get_mesh_1808005922 != nil)
        self._method_set_skeleton_path_1348162250 = StringName(from: "set_skeleton_path")
        assert(self._method_set_skeleton_path_1348162250 != nil)
        self._method_get_skeleton_path_277076166 = StringName(from: "get_skeleton_path")
        assert(self._method_get_skeleton_path_277076166 != nil)
        self._method_set_skin_3971435618 = StringName(from: "set_skin")
        assert(self._method_set_skin_3971435618 != nil)
        self._method_get_skin_2074563878 = StringName(from: "get_skin")
        assert(self._method_get_skin_2074563878 != nil)
        self._method_get_surface_override_material_count_3905245786 = StringName(from: "get_surface_override_material_count")
        assert(self._method_get_surface_override_material_count_3905245786 != nil)
        self._method_set_surface_override_material_3671737478 = StringName(from: "set_surface_override_material")
        assert(self._method_set_surface_override_material_3671737478 != nil)
        self._method_get_surface_override_material_2897466400 = StringName(from: "get_surface_override_material")
        assert(self._method_get_surface_override_material_2897466400 != nil)
        self._method_get_active_material_2897466400 = StringName(from: "get_active_material")
        assert(self._method_get_active_material_2897466400 != nil)
        self._method_create_trimesh_collision_3218959716 = StringName(from: "create_trimesh_collision")
        assert(self._method_create_trimesh_collision_3218959716 != nil)
        self._method_create_convex_collision_2751962654 = StringName(from: "create_convex_collision")
        assert(self._method_create_convex_collision_2751962654 != nil)
        self._method_create_multiple_convex_collisions_3218959716 = StringName(from: "create_multiple_convex_collisions")
        assert(self._method_create_multiple_convex_collisions_3218959716 != nil)
        self._method_get_blend_shape_count_3905245786 = StringName(from: "get_blend_shape_count")
        assert(self._method_get_blend_shape_count_3905245786 != nil)
        self._method_find_blend_shape_by_name_4150868206 = StringName(from: "find_blend_shape_by_name")
        assert(self._method_find_blend_shape_by_name_4150868206 != nil)
        self._method_get_blend_shape_value_2339986948 = StringName(from: "get_blend_shape_value")
        assert(self._method_get_blend_shape_value_2339986948 != nil)
        self._method_set_blend_shape_value_1602489585 = StringName(from: "set_blend_shape_value")
        assert(self._method_set_blend_shape_value_1602489585 != nil)
        self._method_create_debug_tangents_3218959716 = StringName(from: "create_debug_tangents")
        assert(self._method_create_debug_tangents_3218959716 != nil)
    }

    public func set_mesh(mesh: Mesh)  {
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_mesh_194775623._native_ptr(),
                    194775623)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_mesh() -> Mesh {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_mesh_1808005922._native_ptr(),
                    1808005922)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Mesh(godot: __resPtr.pointee)
    }
    public func set_skeleton_path(skeleton_path: NodePath)  {
        let skeleton_path_native = skeleton_path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(skeleton_path_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_skeleton_path_1348162250._native_ptr(),
                    1348162250)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_skeleton_path() -> NodePath {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_skeleton_path_277076166._native_ptr(),
                    277076166)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(godot: __resPtr.pointee)
    }
    public func set_skin(skin: Skin)  {
        let skin_native = skin._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(skin_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_skin_3971435618._native_ptr(),
                    3971435618)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_skin() -> Skin {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_skin_2074563878._native_ptr(),
                    2074563878)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Skin(godot: __resPtr.pointee)
    }
    public func get_surface_override_material_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_surface_override_material_count_3905245786._native_ptr(),
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
    public func set_surface_override_material(surface: Int64, material: Material)  {
        withUnsafePointer(to: surface) { surface_native in
        let material_native = material._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(surface_native), .init(material_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_surface_override_material_3671737478._native_ptr(),
                    3671737478)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_surface_override_material(surface: Int64) -> Material {
        withUnsafePointer(to: surface) { surface_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(surface_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_surface_override_material_2897466400._native_ptr(),
                    2897466400)
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
    public func get_active_material(surface: Int64) -> Material {
        withUnsafePointer(to: surface) { surface_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(surface_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_active_material_2897466400._native_ptr(),
                    2897466400)
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
    public func create_trimesh_collision()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_trimesh_collision_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func create_convex_collision(clean: UInt8, simplify: UInt8)  {
        withUnsafePointer(to: simplify) { simplify_native in
        withUnsafePointer(to: clean) { clean_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(clean_native), .init(simplify_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_convex_collision_2751962654._native_ptr(),
                    2751962654)
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
    public func create_multiple_convex_collisions()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_multiple_convex_collisions_3218959716._native_ptr(),
                    3218959716)
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
    public func find_blend_shape_by_name(name: StringName) -> Int64 {
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
                    Self._method_find_blend_shape_by_name_4150868206._native_ptr(),
                    4150868206)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_blend_shape_value(blend_shape_idx: Int64) -> Float64 {
        withUnsafePointer(to: blend_shape_idx) { blend_shape_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(blend_shape_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_blend_shape_value_2339986948._native_ptr(),
                    2339986948)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func set_blend_shape_value(blend_shape_idx: Int64, value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: blend_shape_idx) { blend_shape_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(blend_shape_idx_native), .init(value_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_blend_shape_value_1602489585._native_ptr(),
                    1602489585)
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
    public func create_debug_tangents()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_debug_tangents_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}