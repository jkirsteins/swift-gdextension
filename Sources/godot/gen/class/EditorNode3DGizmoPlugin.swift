import godot_native

fileprivate var __godot_name_EditorNode3DGizmoPlugin: StringName! = nil

/// Used by the editor to define Node3D gizmo types.
/// 
/// [EditorNode3DGizmoPlugin] allows you to define a new type of Gizmo. There are two main ways to do so: extending [EditorNode3DGizmoPlugin] for the simpler gizmos, or creating a new [EditorNode3DGizmo] type. See the tutorial in the documentation for more info.
///  
/// To use [EditorNode3DGizmoPlugin], register it using the [method EditorPlugin.add_node_3d_gizmo_plugin] method first.
public class EditorNode3DGizmoPlugin : Resource {

    

    public override class var __godot_name: StringName { __godot_name_EditorNode3DGizmoPlugin }

    static var _method__has_gizmo_0: GDExtensionMethodBindPtr! = nil
    static var _method__create_gizmo_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_gizmo_name_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_priority_0: GDExtensionMethodBindPtr! = nil
    static var _method__can_be_hidden_0: GDExtensionMethodBindPtr! = nil
    static var _method__is_selectable_when_hidden_0: GDExtensionMethodBindPtr! = nil
    static var _method__redraw_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_handle_name_0: GDExtensionMethodBindPtr! = nil
    static var _method__is_handle_highlighted_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_handle_value_0: GDExtensionMethodBindPtr! = nil
    static var _method__set_handle_0: GDExtensionMethodBindPtr! = nil
    static var _method__commit_handle_0: GDExtensionMethodBindPtr! = nil
    static var _method__subgizmos_intersect_ray_0: GDExtensionMethodBindPtr! = nil
    static var _method__subgizmos_intersect_frustum_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_subgizmo_transform_0: GDExtensionMethodBindPtr! = nil
    static var _method__set_subgizmo_transform_0: GDExtensionMethodBindPtr! = nil
    static var _method__commit_subgizmos_0: GDExtensionMethodBindPtr! = nil
    static var _method_create_material_3486012546: GDExtensionMethodBindPtr! = nil
    static var _method_create_icon_material_2976007329: GDExtensionMethodBindPtr! = nil
    static var _method_create_handle_material_2486475223: GDExtensionMethodBindPtr! = nil
    static var _method_add_material_1374068695: GDExtensionMethodBindPtr! = nil
    static var _method_get_material_3501703615: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_EditorNode3DGizmoPlugin = StringName(from: "EditorNode3DGizmoPlugin")

        let _method_create_material_3486012546_name = StringName(from: "create_material")
        self._method_create_material_3486012546 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_material_3486012546_name._native_ptr(), 3486012546)
        assert(EditorNode3DGizmoPlugin._method_create_material_3486012546 != nil)
        let _method_create_icon_material_2976007329_name = StringName(from: "create_icon_material")
        self._method_create_icon_material_2976007329 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_icon_material_2976007329_name._native_ptr(), 2976007329)
        assert(EditorNode3DGizmoPlugin._method_create_icon_material_2976007329 != nil)
        let _method_create_handle_material_2486475223_name = StringName(from: "create_handle_material")
        self._method_create_handle_material_2486475223 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_handle_material_2486475223_name._native_ptr(), 2486475223)
        assert(EditorNode3DGizmoPlugin._method_create_handle_material_2486475223 != nil)
        let _method_add_material_1374068695_name = StringName(from: "add_material")
        self._method_add_material_1374068695 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_material_1374068695_name._native_ptr(), 1374068695)
        assert(EditorNode3DGizmoPlugin._method_add_material_1374068695 != nil)
        let _method_get_material_3501703615_name = StringName(from: "get_material")
        self._method_get_material_3501703615 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_material_3501703615_name._native_ptr(), 3501703615)
        assert(EditorNode3DGizmoPlugin._method_get_material_3501703615 != nil)
    }

    public func _has_gizmo(for_node_3d: Node3D) -> UInt8 {
        let for_node_3d_native = for_node_3d._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(for_node_3d_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__has_gizmo_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func _create_gizmo(for_node_3d: Node3D) -> EditorNode3DGizmo {
        let for_node_3d_native = for_node_3d._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(for_node_3d_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__create_gizmo_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return EditorNode3DGizmo(from: __resPtr.pointee)
    }
    public func _get_gizmo_name() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_gizmo_name_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func _get_priority() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_priority_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _can_be_hidden() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__can_be_hidden_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func _is_selectable_when_hidden() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__is_selectable_when_hidden_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func _redraw(gizmo: EditorNode3DGizmo)  {
        let gizmo_native = gizmo._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gizmo_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__redraw_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _get_handle_name(gizmo: EditorNode3DGizmo, handle_id: Int64, secondary: UInt8) -> String {
        withUnsafePointer(to: secondary) { secondary_native in
        withUnsafePointer(to: handle_id) { handle_id_native in
        let gizmo_native = gizmo._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gizmo_native), .init(handle_id_native), .init(secondary_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_handle_name_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
        }
    }
    public func _is_handle_highlighted(gizmo: EditorNode3DGizmo, handle_id: Int64, secondary: UInt8) -> UInt8 {
        withUnsafePointer(to: secondary) { secondary_native in
        withUnsafePointer(to: handle_id) { handle_id_native in
        let gizmo_native = gizmo._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gizmo_native), .init(handle_id_native), .init(secondary_native)
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
            return UInt8(from: __resPtr.pointee)
        }
        }
    }
    public func _get_handle_value(gizmo: EditorNode3DGizmo, handle_id: Int64, secondary: UInt8) -> Variant {
        withUnsafePointer(to: secondary) { secondary_native in
        withUnsafePointer(to: handle_id) { handle_id_native in
        let gizmo_native = gizmo._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gizmo_native), .init(handle_id_native), .init(secondary_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_handle_value_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
        }
        }
    }
    public func _set_handle(gizmo: EditorNode3DGizmo, handle_id: Int64, secondary: UInt8, camera: Camera3D, screen_pos: Vector2)  {
        withUnsafePointer(to: secondary) { secondary_native in
        withUnsafePointer(to: handle_id) { handle_id_native in
        let screen_pos_native = screen_pos._native_ptr()
        let camera_native = camera._native_ptr()
        let gizmo_native = gizmo._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gizmo_native), .init(handle_id_native), .init(secondary_native), .init(camera_native), .init(screen_pos_native)
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
    public func _commit_handle(gizmo: EditorNode3DGizmo, handle_id: Int64, secondary: UInt8, restore: Variant, cancel: UInt8)  {
        withUnsafePointer(to: cancel) { cancel_native in
        withUnsafePointer(to: secondary) { secondary_native in
        withUnsafePointer(to: handle_id) { handle_id_native in
        let restore_native = restore._native_ptr()
        let gizmo_native = gizmo._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gizmo_native), .init(handle_id_native), .init(secondary_native), .init(restore_native), .init(cancel_native)
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
    public func _subgizmos_intersect_ray(gizmo: EditorNode3DGizmo, camera: Camera3D, screen_pos: Vector2) -> Int64 {
        let screen_pos_native = screen_pos._native_ptr()
        let camera_native = camera._native_ptr()
        let gizmo_native = gizmo._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gizmo_native), .init(camera_native), .init(screen_pos_native)
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
            return Int64(from: __resPtr.pointee)
    }
    public func _subgizmos_intersect_frustum(gizmo: EditorNode3DGizmo, camera: Camera3D, frustum_planes: [Plane]) -> PackedInt32Array {
        let frustum_planes_native = frustum_planes._native_ptr()
        let camera_native = camera._native_ptr()
        let gizmo_native = gizmo._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gizmo_native), .init(camera_native), .init(frustum_planes_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__subgizmos_intersect_frustum_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(from: __resPtr.pointee)
    }
    public func _get_subgizmo_transform(gizmo: EditorNode3DGizmo, subgizmo_id: Int64) -> Transform3D {
        withUnsafePointer(to: subgizmo_id) { subgizmo_id_native in
        let gizmo_native = gizmo._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gizmo_native), .init(subgizmo_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_subgizmo_transform_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(from: __resPtr.pointee)
        }
    }
    public func _set_subgizmo_transform(gizmo: EditorNode3DGizmo, subgizmo_id: Int64, transform: Transform3D)  {
        withUnsafePointer(to: subgizmo_id) { subgizmo_id_native in
        let transform_native = transform._native_ptr()
        let gizmo_native = gizmo._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gizmo_native), .init(subgizmo_id_native), .init(transform_native)
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
    public func _commit_subgizmos(gizmo: EditorNode3DGizmo, ids: PackedInt32Array, restores: [Transform3D], cancel: UInt8)  {
        withUnsafePointer(to: cancel) { cancel_native in
        let restores_native = restores._native_ptr()
        let ids_native = ids._native_ptr()
        let gizmo_native = gizmo._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gizmo_native), .init(ids_native), .init(restores_native), .init(cancel_native)
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
    public func create_material(name: String, color: Color, billboard: UInt8, on_top: UInt8, use_vertex_color: UInt8)  {
        withUnsafePointer(to: use_vertex_color) { use_vertex_color_native in
        withUnsafePointer(to: on_top) { on_top_native in
        withUnsafePointer(to: billboard) { billboard_native in
        withUnsafePointer(to: name) { name_native in
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(color_native), .init(billboard_native), .init(on_top_native), .init(use_vertex_color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_material_3486012546,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
        }
    }
    public func create_icon_material(name: String, texture: Texture2D, on_top: UInt8, color: Color)  {
        withUnsafePointer(to: on_top) { on_top_native in
        withUnsafePointer(to: name) { name_native in
        let color_native = color._native_ptr()
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(texture_native), .init(on_top_native), .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_icon_material_2976007329,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func create_handle_material(name: String, billboard: UInt8, texture: Texture2D)  {
        withUnsafePointer(to: billboard) { billboard_native in
        withUnsafePointer(to: name) { name_native in
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(billboard_native), .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_handle_material_2486475223,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func add_material(name: String, material: StandardMaterial3D)  {
        withUnsafePointer(to: name) { name_native in
        let material_native = material._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(material_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_material_1374068695,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_material(name: String, gizmo: EditorNode3DGizmo) -> StandardMaterial3D {
        withUnsafePointer(to: name) { name_native in
        let gizmo_native = gizmo._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(gizmo_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_material_3501703615,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StandardMaterial3D(from: __resPtr.pointee)
        }
    }
}