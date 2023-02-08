import godot_native

fileprivate var __godot_name_EditorNode3DGizmo: StringName! = nil

/// Gizmo for editing Node3D objects.
/// 
/// Gizmo that is used for providing custom visualization and editing (handles and subgizmos) for Node3D objects. Can be overridden to create custom gizmos, but for simple gizmos creating a [EditorNode3DGizmoPlugin] is usually recommended.
open class EditorNode3DGizmo : Node3DGizmo {

    

    public override class var __godot_name: StringName { __godot_name_EditorNode3DGizmo }

    static var _method__redraw_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_handle_name_0: GDExtensionMethodBindPtr! = nil
    static var _method__is_handle_highlighted_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_handle_value_0: GDExtensionMethodBindPtr! = nil
    static var _method__set_handle_0: GDExtensionMethodBindPtr! = nil
    static var _method__commit_handle_0: GDExtensionMethodBindPtr! = nil
    static var _method__subgizmos_intersect_ray_0: GDExtensionMethodBindPtr! = nil
    static var _method__subgizmos_intersect_frustum_0: GDExtensionMethodBindPtr! = nil
    static var _method__set_subgizmo_transform_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_subgizmo_transform_0: GDExtensionMethodBindPtr! = nil
    static var _method__commit_subgizmos_0: GDExtensionMethodBindPtr! = nil
    static var _method_add_lines_302451090: GDExtensionMethodBindPtr! = nil
    static var _method_add_mesh_1868867708: GDExtensionMethodBindPtr! = nil
    static var _method_add_collision_segments_334873810: GDExtensionMethodBindPtr! = nil
    static var _method_add_collision_triangles_54901064: GDExtensionMethodBindPtr! = nil
    static var _method_add_unscaled_billboard_3719733075: GDExtensionMethodBindPtr! = nil
    static var _method_add_handles_2254560097: GDExtensionMethodBindPtr! = nil
    static var _method_set_node_3d_1078189570: GDExtensionMethodBindPtr! = nil
    static var _method_get_node_3d_151077316: GDExtensionMethodBindPtr! = nil
    static var _method_get_plugin_4250544552: GDExtensionMethodBindPtr! = nil
    static var _method_clear_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_hidden_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_subgizmo_selected_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_get_subgizmo_selection_1930428628: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        __godot_name_EditorNode3DGizmo = StringName(from: "EditorNode3DGizmo")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_add_lines_302451090_name = StringName(from: "add_lines")
        self._method_add_lines_302451090 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorNode3DGizmo._native_ptr(), _method_add_lines_302451090_name._native_ptr(), 302451090)
        assert(EditorNode3DGizmo._method_add_lines_302451090 != nil)
        let _method_add_mesh_1868867708_name = StringName(from: "add_mesh")
        self._method_add_mesh_1868867708 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorNode3DGizmo._native_ptr(), _method_add_mesh_1868867708_name._native_ptr(), 1868867708)
        assert(EditorNode3DGizmo._method_add_mesh_1868867708 != nil)
        let _method_add_collision_segments_334873810_name = StringName(from: "add_collision_segments")
        self._method_add_collision_segments_334873810 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorNode3DGizmo._native_ptr(), _method_add_collision_segments_334873810_name._native_ptr(), 334873810)
        assert(EditorNode3DGizmo._method_add_collision_segments_334873810 != nil)
        let _method_add_collision_triangles_54901064_name = StringName(from: "add_collision_triangles")
        self._method_add_collision_triangles_54901064 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorNode3DGizmo._native_ptr(), _method_add_collision_triangles_54901064_name._native_ptr(), 54901064)
        assert(EditorNode3DGizmo._method_add_collision_triangles_54901064 != nil)
        let _method_add_unscaled_billboard_3719733075_name = StringName(from: "add_unscaled_billboard")
        self._method_add_unscaled_billboard_3719733075 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorNode3DGizmo._native_ptr(), _method_add_unscaled_billboard_3719733075_name._native_ptr(), 3719733075)
        assert(EditorNode3DGizmo._method_add_unscaled_billboard_3719733075 != nil)
        let _method_add_handles_2254560097_name = StringName(from: "add_handles")
        self._method_add_handles_2254560097 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorNode3DGizmo._native_ptr(), _method_add_handles_2254560097_name._native_ptr(), 2254560097)
        assert(EditorNode3DGizmo._method_add_handles_2254560097 != nil)
        let _method_set_node_3d_1078189570_name = StringName(from: "set_node_3d")
        self._method_set_node_3d_1078189570 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorNode3DGizmo._native_ptr(), _method_set_node_3d_1078189570_name._native_ptr(), 1078189570)
        assert(EditorNode3DGizmo._method_set_node_3d_1078189570 != nil)
        let _method_get_node_3d_151077316_name = StringName(from: "get_node_3d")
        self._method_get_node_3d_151077316 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorNode3DGizmo._native_ptr(), _method_get_node_3d_151077316_name._native_ptr(), 151077316)
        assert(EditorNode3DGizmo._method_get_node_3d_151077316 != nil)
        let _method_get_plugin_4250544552_name = StringName(from: "get_plugin")
        self._method_get_plugin_4250544552 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorNode3DGizmo._native_ptr(), _method_get_plugin_4250544552_name._native_ptr(), 4250544552)
        assert(EditorNode3DGizmo._method_get_plugin_4250544552 != nil)
        let _method_clear_3218959716_name = StringName(from: "clear")
        self._method_clear_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorNode3DGizmo._native_ptr(), _method_clear_3218959716_name._native_ptr(), 3218959716)
        assert(EditorNode3DGizmo._method_clear_3218959716 != nil)
        let _method_set_hidden_2586408642_name = StringName(from: "set_hidden")
        self._method_set_hidden_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorNode3DGizmo._native_ptr(), _method_set_hidden_2586408642_name._native_ptr(), 2586408642)
        assert(EditorNode3DGizmo._method_set_hidden_2586408642 != nil)
        let _method_is_subgizmo_selected_1116898809_name = StringName(from: "is_subgizmo_selected")
        self._method_is_subgizmo_selected_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorNode3DGizmo._native_ptr(), _method_is_subgizmo_selected_1116898809_name._native_ptr(), 1116898809)
        assert(EditorNode3DGizmo._method_is_subgizmo_selected_1116898809 != nil)
        let _method_get_subgizmo_selection_1930428628_name = StringName(from: "get_subgizmo_selection")
        self._method_get_subgizmo_selection_1930428628 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorNode3DGizmo._native_ptr(), _method_get_subgizmo_selection_1930428628_name._native_ptr(), 1930428628)
        assert(EditorNode3DGizmo._method_get_subgizmo_selection_1930428628 != nil)
    }

    public func _redraw()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__redraw_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _get_handle_name(id: Int64, secondary: UInt8) -> godot.String {
        withUnsafePointer(to: secondary) { secondary_native in
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(secondary_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_handle_name_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
        }
    }
    public func _is_handle_highlighted(id: Int64, secondary: UInt8) -> UInt8 {
        withUnsafePointer(to: secondary) { secondary_native in
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(secondary_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__is_handle_highlighted_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
        }
    }
    public func _get_handle_value(id: Int64, secondary: UInt8) -> Variant {
        withUnsafePointer(to: secondary) { secondary_native in
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(secondary_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_handle_value_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
        }
        }
    }
    public func _set_handle(id: Int64, secondary: UInt8, camera: Camera3D, point: Vector2)  {
        withUnsafePointer(to: secondary) { secondary_native in
        withUnsafePointer(to: id) { id_native in
        let point_native = point._native_ptr()
        let camera_native = camera._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(secondary_native), .init(camera_native), .init(point_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__set_handle_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _commit_handle(id: Int64, secondary: UInt8, restore: Variant, cancel: UInt8)  {
        withUnsafePointer(to: cancel) { cancel_native in
        withUnsafePointer(to: secondary) { secondary_native in
        withUnsafePointer(to: id) { id_native in
        let restore_native = restore._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(secondary_native), .init(restore_native), .init(cancel_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__commit_handle_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func _subgizmos_intersect_ray(camera: Camera3D, point: Vector2) -> Int64 {
        let point_native = point._native_ptr()
        let camera_native = camera._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(camera_native), .init(point_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__subgizmos_intersect_ray_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func _subgizmos_intersect_frustum(camera: Camera3D, frustum: [Plane]) -> PackedInt32Array {
        let frustum_native = frustum._native_ptr()
        let camera_native = camera._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(camera_native), .init(frustum_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__subgizmos_intersect_frustum_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
    }
    public func _set_subgizmo_transform(id: Int64, transform: Transform3D)  {
        withUnsafePointer(to: id) { id_native in
        let transform_native = transform._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__set_subgizmo_transform_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _get_subgizmo_transform(id: Int64) -> Transform3D {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_subgizmo_transform_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(godot: __resPtr.pointee)
        }
    }
    public func _commit_subgizmos(ids: PackedInt32Array, restores: [Transform3D], cancel: UInt8)  {
        withUnsafePointer(to: cancel) { cancel_native in
        let restores_native = restores._native_ptr()
        let ids_native = ids._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ids_native), .init(restores_native), .init(cancel_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__commit_subgizmos_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_lines(lines: PackedVector3Array, material: Material, billboard: UInt8, modulate: Color)  {
        withUnsafePointer(to: billboard) { billboard_native in
        let modulate_native = modulate._native_ptr()
        let material_native = material._native_ptr()
        let lines_native = lines._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(lines_native), .init(material_native), .init(billboard_native), .init(modulate_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_lines_302451090,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_mesh(mesh: Mesh, material: Material, transform: Transform3D, skeleton: SkinReference)  {
        let skeleton_native = skeleton._native_ptr()
        let transform_native = transform._native_ptr()
        let material_native = material._native_ptr()
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_native), .init(material_native), .init(transform_native), .init(skeleton_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_mesh_1868867708,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_collision_segments(segments: PackedVector3Array)  {
        let segments_native = segments._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(segments_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_collision_segments_334873810,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_collision_triangles(triangles: TriangleMesh)  {
        let triangles_native = triangles._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(triangles_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_collision_triangles_54901064,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_unscaled_billboard(material: Material, default_scale: Float64, modulate: Color)  {
        withUnsafePointer(to: default_scale) { default_scale_native in
        let modulate_native = modulate._native_ptr()
        let material_native = material._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(material_native), .init(default_scale_native), .init(modulate_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_unscaled_billboard_3719733075,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_handles(handles: PackedVector3Array, material: Material, ids: PackedInt32Array, billboard: UInt8, secondary: UInt8)  {
        withUnsafePointer(to: secondary) { secondary_native in
        withUnsafePointer(to: billboard) { billboard_native in
        let ids_native = ids._native_ptr()
        let material_native = material._native_ptr()
        let handles_native = handles._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(handles_native), .init(material_native), .init(ids_native), .init(billboard_native), .init(secondary_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_handles_2254560097,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_node_3d(node: Node)  {
        let node_native = node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(node_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_node_3d_1078189570,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_node_3d() -> Node3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_node_3d_151077316,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node3D(godot: __resPtr.pointee)
    }
    public func get_plugin() -> EditorNode3DGizmoPlugin {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_plugin_4250544552,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return EditorNode3DGizmoPlugin(godot: __resPtr.pointee)
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
    public func set_hidden(hidden: UInt8)  {
        withUnsafePointer(to: hidden) { hidden_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(hidden_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_hidden_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_subgizmo_selected(id: Int64) -> UInt8 {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_subgizmo_selected_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func get_subgizmo_selection() -> PackedInt32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_subgizmo_selection_1930428628,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
    }
}