import godot_native

fileprivate var __godot_name_NavigationMeshGenerator: StringName! = nil

/// Helper class for creating and clearing navigation meshes.
/// 
/// This class is responsible for creating and clearing 3D navigation meshes used as [NavigationMesh] resources inside [NavigationRegion3D]. The [NavigationMeshGenerator] has very limited to no use for 2D as the navigation mesh baking process expects 3D node types and 3D source geometry to parse.
///  
/// The entire navigation mesh baking is best done in a separate thread as the voxelization, collision tests and mesh optimization steps involved are very performance and time hungry operations.
///  
/// Navigation mesh baking happens in multiple steps and the result depends on 3D source geometry and properties of the [NavigationMesh] resource. In the first step, starting from a root node and depending on [NavigationMesh] properties all valid 3D source geometry nodes are collected from the [SceneTree]. Second, all collected nodes are parsed for their relevant 3D geometry data and a combined 3D mesh is build. Due to the many different types of parsable objects, from normal [MeshInstance3D]s to [CSGShape3D]s or various [CollisionObject3D]s, some operations to collect geometry data can trigger [RenderingServer] and [PhysicsServer3D] synchronizations. Server synchronization can have a negative effect on baking time or framerate as it often involves [Mutex] locking for thread security. Many parsable objects and the continuous synchronization with other threaded Servers can increase the baking time significantly. On the other hand only a few but very large and complex objects will take some time to prepare for the Servers which can noticeably stall the next frame render. As a general rule the total number of parsable objects and their individual size and complexity should be balanced to avoid framerate issues or very long baking times. The combined mesh is then passed to the Recast Navigation Object to test the source geometry for walkable terrain suitable to [NavigationMesh] agent properties by creating a voxel world around the meshes bounding area.
///  
/// The finalized navigation mesh is then returned and stored inside the [NavigationMesh] for use as a resource inside [NavigationRegion3D] nodes.
///  
/// [b]Note:[/b] Using meshes to not only define walkable surfaces but also obstruct navigation baking does not always work. The navigation baking has no concept of what is a geometry "inside" when dealing with mesh source geometry and this is intentional. Depending on current baking parameters, as soon as the obstructing mesh is large enough to fit a navigation mesh area inside, the baking will generate navigation mesh areas that are inside the obstructing source geometry mesh.
open class NavigationMeshGenerator : Object {

    

    public override class var __godot_name: StringName { __godot_name_NavigationMeshGenerator }

    static var _method_bake_1401173477: StringName! = nil
    static var _method_clear_2923361153: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_NavigationMeshGenerator == nil)
        __godot_name_NavigationMeshGenerator = StringName(from: "NavigationMeshGenerator")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_bake_1401173477 = StringName(from: "bake")
        assert(self._method_bake_1401173477 != nil)
        self._method_clear_2923361153 = StringName(from: "clear")
        assert(self._method_clear_2923361153 != nil)
    }

    public func bake(navigation_mesh: NavigationMesh, root_node: Node)  {
        let root_node_native = root_node._native_ptr()
        let navigation_mesh_native = navigation_mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(navigation_mesh_native), .init(root_node_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_bake_1401173477._native_ptr(),
                    1401173477)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func clear(navigation_mesh: NavigationMesh)  {
        let navigation_mesh_native = navigation_mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(navigation_mesh_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_2923361153._native_ptr(),
                    2923361153)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}