import godot_native

fileprivate var __godot_name_MeshInstance3D: StringName! = nil

/// Node that instances meshes into a scenario.
/// 
/// MeshInstance3D is a node that takes a [Mesh] resource and adds it to the current scenario by creating an instance of it. This is the class most often used render 3D geometry and can be used to instance a single [Mesh] in many places. This allows reusing geometry, which can save on resources. When a [Mesh] has to be instantiated more than thousands of times at close proximity, consider using a [MultiMesh] in a [MultiMeshInstance3D] instead.
public class MeshInstance3D : GeometryInstance3D {

    

    public override class var __godot_name: StringName { __godot_name_MeshInstance3D }

    static var _method_set_mesh_194775623: GDExtensionMethodBindPtr! = nil
    static var _method_get_mesh_1808005922: GDExtensionMethodBindPtr! = nil
    static var _method_set_skeleton_path_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_skeleton_path_277076166: GDExtensionMethodBindPtr! = nil
    static var _method_set_skin_3971435618: GDExtensionMethodBindPtr! = nil
    static var _method_get_skin_2074563878: GDExtensionMethodBindPtr! = nil
    static var _method_get_surface_override_material_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_surface_override_material_3671737478: GDExtensionMethodBindPtr! = nil
    static var _method_get_surface_override_material_2897466400: GDExtensionMethodBindPtr! = nil
    static var _method_get_active_material_2897466400: GDExtensionMethodBindPtr! = nil
    static var _method_create_trimesh_collision_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_create_convex_collision_2751962654: GDExtensionMethodBindPtr! = nil
    static var _method_create_multiple_convex_collisions_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_blend_shape_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_find_blend_shape_by_name_4150868206: GDExtensionMethodBindPtr! = nil
    static var _method_get_blend_shape_value_2339986948: GDExtensionMethodBindPtr! = nil
    static var _method_set_blend_shape_value_1602489585: GDExtensionMethodBindPtr! = nil
    static var _method_create_debug_tangents_3218959716: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_MeshInstance3D = StringName(from: "MeshInstance3D")

        let _method_set_mesh_194775623_name = StringName(from: "set_mesh")
        self._method_set_mesh_194775623 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_mesh_194775623_name._native_ptr(), 194775623)
        assert(MeshInstance3D._method_set_mesh_194775623 != nil)
        let _method_get_mesh_1808005922_name = StringName(from: "get_mesh")
        self._method_get_mesh_1808005922 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_mesh_1808005922_name._native_ptr(), 1808005922)
        assert(MeshInstance3D._method_get_mesh_1808005922 != nil)
        let _method_set_skeleton_path_1348162250_name = StringName(from: "set_skeleton_path")
        self._method_set_skeleton_path_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_skeleton_path_1348162250_name._native_ptr(), 1348162250)
        assert(MeshInstance3D._method_set_skeleton_path_1348162250 != nil)
        let _method_get_skeleton_path_277076166_name = StringName(from: "get_skeleton_path")
        self._method_get_skeleton_path_277076166 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_skeleton_path_277076166_name._native_ptr(), 277076166)
        assert(MeshInstance3D._method_get_skeleton_path_277076166 != nil)
        let _method_set_skin_3971435618_name = StringName(from: "set_skin")
        self._method_set_skin_3971435618 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_skin_3971435618_name._native_ptr(), 3971435618)
        assert(MeshInstance3D._method_set_skin_3971435618 != nil)
        let _method_get_skin_2074563878_name = StringName(from: "get_skin")
        self._method_get_skin_2074563878 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_skin_2074563878_name._native_ptr(), 2074563878)
        assert(MeshInstance3D._method_get_skin_2074563878 != nil)
        let _method_get_surface_override_material_count_3905245786_name = StringName(from: "get_surface_override_material_count")
        self._method_get_surface_override_material_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_surface_override_material_count_3905245786_name._native_ptr(), 3905245786)
        assert(MeshInstance3D._method_get_surface_override_material_count_3905245786 != nil)
        let _method_set_surface_override_material_3671737478_name = StringName(from: "set_surface_override_material")
        self._method_set_surface_override_material_3671737478 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_surface_override_material_3671737478_name._native_ptr(), 3671737478)
        assert(MeshInstance3D._method_set_surface_override_material_3671737478 != nil)
        let _method_get_surface_override_material_2897466400_name = StringName(from: "get_surface_override_material")
        self._method_get_surface_override_material_2897466400 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_surface_override_material_2897466400_name._native_ptr(), 2897466400)
        assert(MeshInstance3D._method_get_surface_override_material_2897466400 != nil)
        let _method_get_active_material_2897466400_name = StringName(from: "get_active_material")
        self._method_get_active_material_2897466400 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_active_material_2897466400_name._native_ptr(), 2897466400)
        assert(MeshInstance3D._method_get_active_material_2897466400 != nil)
        let _method_create_trimesh_collision_3218959716_name = StringName(from: "create_trimesh_collision")
        self._method_create_trimesh_collision_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_trimesh_collision_3218959716_name._native_ptr(), 3218959716)
        assert(MeshInstance3D._method_create_trimesh_collision_3218959716 != nil)
        let _method_create_convex_collision_2751962654_name = StringName(from: "create_convex_collision")
        self._method_create_convex_collision_2751962654 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_convex_collision_2751962654_name._native_ptr(), 2751962654)
        assert(MeshInstance3D._method_create_convex_collision_2751962654 != nil)
        let _method_create_multiple_convex_collisions_3218959716_name = StringName(from: "create_multiple_convex_collisions")
        self._method_create_multiple_convex_collisions_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_multiple_convex_collisions_3218959716_name._native_ptr(), 3218959716)
        assert(MeshInstance3D._method_create_multiple_convex_collisions_3218959716 != nil)
        let _method_get_blend_shape_count_3905245786_name = StringName(from: "get_blend_shape_count")
        self._method_get_blend_shape_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_blend_shape_count_3905245786_name._native_ptr(), 3905245786)
        assert(MeshInstance3D._method_get_blend_shape_count_3905245786 != nil)
        let _method_find_blend_shape_by_name_4150868206_name = StringName(from: "find_blend_shape_by_name")
        self._method_find_blend_shape_by_name_4150868206 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_find_blend_shape_by_name_4150868206_name._native_ptr(), 4150868206)
        assert(MeshInstance3D._method_find_blend_shape_by_name_4150868206 != nil)
        let _method_get_blend_shape_value_2339986948_name = StringName(from: "get_blend_shape_value")
        self._method_get_blend_shape_value_2339986948 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_blend_shape_value_2339986948_name._native_ptr(), 2339986948)
        assert(MeshInstance3D._method_get_blend_shape_value_2339986948 != nil)
        let _method_set_blend_shape_value_1602489585_name = StringName(from: "set_blend_shape_value")
        self._method_set_blend_shape_value_1602489585 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_blend_shape_value_1602489585_name._native_ptr(), 1602489585)
        assert(MeshInstance3D._method_set_blend_shape_value_1602489585 != nil)
        let _method_create_debug_tangents_3218959716_name = StringName(from: "create_debug_tangents")
        self._method_create_debug_tangents_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_debug_tangents_3218959716_name._native_ptr(), 3218959716)
        assert(MeshInstance3D._method_create_debug_tangents_3218959716 != nil)
    }

    public func set_mesh(mesh: Mesh)  {
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_mesh_194775623,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mesh_1808005922,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Mesh(from: __resPtr.pointee)
    }
    public func set_skeleton_path(skeleton_path: NodePath)  {
        let skeleton_path_native = skeleton_path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(skeleton_path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_skeleton_path_1348162250,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_skeleton_path_277076166,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(from: __resPtr.pointee)
    }
    public func set_skin(skin: Skin)  {
        let skin_native = skin._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(skin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_skin_3971435618,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_skin_2074563878,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Skin(from: __resPtr.pointee)
    }
    public func get_surface_override_material_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_surface_override_material_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_surface_override_material_3671737478,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_surface_override_material_2897466400,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Material(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_active_material_2897466400,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Material(from: __resPtr.pointee)
        }
    }
    public func create_trimesh_collision()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_trimesh_collision_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_convex_collision_2751962654,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_multiple_convex_collisions_3218959716,
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
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_find_blend_shape_by_name_4150868206,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_blend_shape_value_2339986948,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_blend_shape_value_1602489585,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_debug_tangents_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}