import godot_native

fileprivate var __godot_name_EditorNode3DGizmo: StringName! = nil

/// Gizmo for editing Node3D objects.
/// 
/// Gizmo that is used for providing custom visualization and editing (handles and subgizmos) for Node3D objects. Can be overridden to create custom gizmos, but for simple gizmos creating a [EditorNode3DGizmoPlugin] is usually recommended.
open class EditorNode3DGizmo : Node3DGizmo {

    

    public override class var __godot_name: StringName { __godot_name_EditorNode3DGizmo }

    static var _method__redraw_0: StringName! = nil
    static var _method__get_handle_name_0: StringName! = nil
    static var _method__is_handle_highlighted_0: StringName! = nil
    static var _method__get_handle_value_0: StringName! = nil
    static var _method__set_handle_0: StringName! = nil
    static var _method__commit_handle_0: StringName! = nil
    static var _method__subgizmos_intersect_ray_0: StringName! = nil
    static var _method__subgizmos_intersect_frustum_0: StringName! = nil
    static var _method__set_subgizmo_transform_0: StringName! = nil
    static var _method__get_subgizmo_transform_0: StringName! = nil
    static var _method__commit_subgizmos_0: StringName! = nil
    static var _method_add_lines_302451090: StringName! = nil
    static var _method_add_mesh_1868867708: StringName! = nil
    static var _method_add_collision_segments_334873810: StringName! = nil
    static var _method_add_collision_triangles_54901064: StringName! = nil
    static var _method_add_unscaled_billboard_3719733075: StringName! = nil
    static var _method_add_handles_2254560097: StringName! = nil
    static var _method_set_node_3d_1078189570: StringName! = nil
    static var _method_get_node_3d_151077316: StringName! = nil
    static var _method_get_plugin_4250544552: StringName! = nil
    static var _method_clear_3218959716: StringName! = nil
    static var _method_set_hidden_2586408642: StringName! = nil
    static var _method_is_subgizmo_selected_1116898809: StringName! = nil
    static var _method_get_subgizmo_selection_1930428628: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        assert(__godot_name_EditorNode3DGizmo == nil)
        __godot_name_EditorNode3DGizmo = StringName(from: "EditorNode3DGizmo")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_add_lines_302451090 = StringName(from: "add_lines")
        assert(self._method_add_lines_302451090 != nil)
        self._method_add_mesh_1868867708 = StringName(from: "add_mesh")
        assert(self._method_add_mesh_1868867708 != nil)
        self._method_add_collision_segments_334873810 = StringName(from: "add_collision_segments")
        assert(self._method_add_collision_segments_334873810 != nil)
        self._method_add_collision_triangles_54901064 = StringName(from: "add_collision_triangles")
        assert(self._method_add_collision_triangles_54901064 != nil)
        self._method_add_unscaled_billboard_3719733075 = StringName(from: "add_unscaled_billboard")
        assert(self._method_add_unscaled_billboard_3719733075 != nil)
        self._method_add_handles_2254560097 = StringName(from: "add_handles")
        assert(self._method_add_handles_2254560097 != nil)
        self._method_set_node_3d_1078189570 = StringName(from: "set_node_3d")
        assert(self._method_set_node_3d_1078189570 != nil)
        self._method_get_node_3d_151077316 = StringName(from: "get_node_3d")
        assert(self._method_get_node_3d_151077316 != nil)
        self._method_get_plugin_4250544552 = StringName(from: "get_plugin")
        assert(self._method_get_plugin_4250544552 != nil)
        self._method_clear_3218959716 = StringName(from: "clear")
        assert(self._method_clear_3218959716 != nil)
        self._method_set_hidden_2586408642 = StringName(from: "set_hidden")
        assert(self._method_set_hidden_2586408642 != nil)
        self._method_is_subgizmo_selected_1116898809 = StringName(from: "is_subgizmo_selected")
        assert(self._method_is_subgizmo_selected_1116898809 != nil)
        self._method_get_subgizmo_selection_1930428628 = StringName(from: "get_subgizmo_selection")
        assert(self._method_get_subgizmo_selection_1930428628 != nil)
    }

    public func _redraw()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            fatalError("Not implemented: virtual default results")
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
            fatalError("Not implemented: virtual default results")
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
            fatalError("Not implemented: virtual default results")
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
            fatalError("Not implemented: virtual default results")
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
            fatalError("Not implemented: virtual default results")
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
            fatalError("Not implemented: virtual default results")
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
            fatalError("Not implemented: virtual default results")
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
            fatalError("Not implemented: virtual default results")
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
            fatalError("Not implemented: virtual default results")
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
            fatalError("Not implemented: virtual default results")
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
            fatalError("Not implemented: virtual default results")
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_lines_302451090._native_ptr(),
                    302451090)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_mesh_1868867708._native_ptr(),
                    1868867708)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_collision_segments_334873810._native_ptr(),
                    334873810)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_collision_triangles_54901064._native_ptr(),
                    54901064)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_unscaled_billboard_3719733075._native_ptr(),
                    3719733075)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_handles_2254560097._native_ptr(),
                    2254560097)
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
    public func set_node_3d(node: Node)  {
        let node_native = node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(node_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_node_3d_1078189570._native_ptr(),
                    1078189570)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_node_3d_151077316._native_ptr(),
                    151077316)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_plugin_4250544552._native_ptr(),
                    4250544552)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
    public func set_hidden(hidden: UInt8)  {
        withUnsafePointer(to: hidden) { hidden_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(hidden_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_hidden_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_subgizmo_selected_1116898809._native_ptr(),
                    1116898809)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_subgizmo_selection_1930428628._native_ptr(),
                    1930428628)
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