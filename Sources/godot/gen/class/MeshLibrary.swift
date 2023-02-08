import godot_native

fileprivate var __godot_name_MeshLibrary: StringName! = nil

/// Library of meshes.
/// 
/// A library of meshes. Contains a list of [Mesh] resources, each with a name and ID. Each item can also include collision and navigation shapes. This resource is used in [GridMap].
open class MeshLibrary : Resource {

    

    public override class var __godot_name: StringName { __godot_name_MeshLibrary }

    static var _method_create_item_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_name_501894301: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_mesh_969122797: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_mesh_transform_3616898986: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_navigation_mesh_3483353960: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_navigation_mesh_transform_3616898986: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_navigation_layers_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_shapes_537221740: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_preview_666127730: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_name_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_mesh_1576363275: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_mesh_transform_1965739696: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_navigation_mesh_2729647406: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_navigation_mesh_transform_1965739696: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_navigation_layers_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_shapes_663333327: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_preview_3536238170: GDExtensionMethodBindPtr! = nil
    static var _method_remove_item_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_find_item_by_name_1321353865: GDExtensionMethodBindPtr! = nil
    static var _method_clear_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_list_1930428628: GDExtensionMethodBindPtr! = nil
    static var _method_get_last_unused_item_id_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_MeshLibrary = StringName(from: "MeshLibrary")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_create_item_1286410249_name = StringName(from: "create_item")
        self._method_create_item_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_MeshLibrary._native_ptr(), _method_create_item_1286410249_name._native_ptr(), 1286410249)
        assert(MeshLibrary._method_create_item_1286410249 != nil)
        let _method_set_item_name_501894301_name = StringName(from: "set_item_name")
        self._method_set_item_name_501894301 = self.interface.pointee.classdb_get_method_bind(__godot_name_MeshLibrary._native_ptr(), _method_set_item_name_501894301_name._native_ptr(), 501894301)
        assert(MeshLibrary._method_set_item_name_501894301 != nil)
        let _method_set_item_mesh_969122797_name = StringName(from: "set_item_mesh")
        self._method_set_item_mesh_969122797 = self.interface.pointee.classdb_get_method_bind(__godot_name_MeshLibrary._native_ptr(), _method_set_item_mesh_969122797_name._native_ptr(), 969122797)
        assert(MeshLibrary._method_set_item_mesh_969122797 != nil)
        let _method_set_item_mesh_transform_3616898986_name = StringName(from: "set_item_mesh_transform")
        self._method_set_item_mesh_transform_3616898986 = self.interface.pointee.classdb_get_method_bind(__godot_name_MeshLibrary._native_ptr(), _method_set_item_mesh_transform_3616898986_name._native_ptr(), 3616898986)
        assert(MeshLibrary._method_set_item_mesh_transform_3616898986 != nil)
        let _method_set_item_navigation_mesh_3483353960_name = StringName(from: "set_item_navigation_mesh")
        self._method_set_item_navigation_mesh_3483353960 = self.interface.pointee.classdb_get_method_bind(__godot_name_MeshLibrary._native_ptr(), _method_set_item_navigation_mesh_3483353960_name._native_ptr(), 3483353960)
        assert(MeshLibrary._method_set_item_navigation_mesh_3483353960 != nil)
        let _method_set_item_navigation_mesh_transform_3616898986_name = StringName(from: "set_item_navigation_mesh_transform")
        self._method_set_item_navigation_mesh_transform_3616898986 = self.interface.pointee.classdb_get_method_bind(__godot_name_MeshLibrary._native_ptr(), _method_set_item_navigation_mesh_transform_3616898986_name._native_ptr(), 3616898986)
        assert(MeshLibrary._method_set_item_navigation_mesh_transform_3616898986 != nil)
        let _method_set_item_navigation_layers_3937882851_name = StringName(from: "set_item_navigation_layers")
        self._method_set_item_navigation_layers_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name_MeshLibrary._native_ptr(), _method_set_item_navigation_layers_3937882851_name._native_ptr(), 3937882851)
        assert(MeshLibrary._method_set_item_navigation_layers_3937882851 != nil)
        let _method_set_item_shapes_537221740_name = StringName(from: "set_item_shapes")
        self._method_set_item_shapes_537221740 = self.interface.pointee.classdb_get_method_bind(__godot_name_MeshLibrary._native_ptr(), _method_set_item_shapes_537221740_name._native_ptr(), 537221740)
        assert(MeshLibrary._method_set_item_shapes_537221740 != nil)
        let _method_set_item_preview_666127730_name = StringName(from: "set_item_preview")
        self._method_set_item_preview_666127730 = self.interface.pointee.classdb_get_method_bind(__godot_name_MeshLibrary._native_ptr(), _method_set_item_preview_666127730_name._native_ptr(), 666127730)
        assert(MeshLibrary._method_set_item_preview_666127730 != nil)
        let _method_get_item_name_844755477_name = StringName(from: "get_item_name")
        self._method_get_item_name_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name_MeshLibrary._native_ptr(), _method_get_item_name_844755477_name._native_ptr(), 844755477)
        assert(MeshLibrary._method_get_item_name_844755477 != nil)
        let _method_get_item_mesh_1576363275_name = StringName(from: "get_item_mesh")
        self._method_get_item_mesh_1576363275 = self.interface.pointee.classdb_get_method_bind(__godot_name_MeshLibrary._native_ptr(), _method_get_item_mesh_1576363275_name._native_ptr(), 1576363275)
        assert(MeshLibrary._method_get_item_mesh_1576363275 != nil)
        let _method_get_item_mesh_transform_1965739696_name = StringName(from: "get_item_mesh_transform")
        self._method_get_item_mesh_transform_1965739696 = self.interface.pointee.classdb_get_method_bind(__godot_name_MeshLibrary._native_ptr(), _method_get_item_mesh_transform_1965739696_name._native_ptr(), 1965739696)
        assert(MeshLibrary._method_get_item_mesh_transform_1965739696 != nil)
        let _method_get_item_navigation_mesh_2729647406_name = StringName(from: "get_item_navigation_mesh")
        self._method_get_item_navigation_mesh_2729647406 = self.interface.pointee.classdb_get_method_bind(__godot_name_MeshLibrary._native_ptr(), _method_get_item_navigation_mesh_2729647406_name._native_ptr(), 2729647406)
        assert(MeshLibrary._method_get_item_navigation_mesh_2729647406 != nil)
        let _method_get_item_navigation_mesh_transform_1965739696_name = StringName(from: "get_item_navigation_mesh_transform")
        self._method_get_item_navigation_mesh_transform_1965739696 = self.interface.pointee.classdb_get_method_bind(__godot_name_MeshLibrary._native_ptr(), _method_get_item_navigation_mesh_transform_1965739696_name._native_ptr(), 1965739696)
        assert(MeshLibrary._method_get_item_navigation_mesh_transform_1965739696 != nil)
        let _method_get_item_navigation_layers_923996154_name = StringName(from: "get_item_navigation_layers")
        self._method_get_item_navigation_layers_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name_MeshLibrary._native_ptr(), _method_get_item_navigation_layers_923996154_name._native_ptr(), 923996154)
        assert(MeshLibrary._method_get_item_navigation_layers_923996154 != nil)
        let _method_get_item_shapes_663333327_name = StringName(from: "get_item_shapes")
        self._method_get_item_shapes_663333327 = self.interface.pointee.classdb_get_method_bind(__godot_name_MeshLibrary._native_ptr(), _method_get_item_shapes_663333327_name._native_ptr(), 663333327)
        assert(MeshLibrary._method_get_item_shapes_663333327 != nil)
        let _method_get_item_preview_3536238170_name = StringName(from: "get_item_preview")
        self._method_get_item_preview_3536238170 = self.interface.pointee.classdb_get_method_bind(__godot_name_MeshLibrary._native_ptr(), _method_get_item_preview_3536238170_name._native_ptr(), 3536238170)
        assert(MeshLibrary._method_get_item_preview_3536238170 != nil)
        let _method_remove_item_1286410249_name = StringName(from: "remove_item")
        self._method_remove_item_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_MeshLibrary._native_ptr(), _method_remove_item_1286410249_name._native_ptr(), 1286410249)
        assert(MeshLibrary._method_remove_item_1286410249 != nil)
        let _method_find_item_by_name_1321353865_name = StringName(from: "find_item_by_name")
        self._method_find_item_by_name_1321353865 = self.interface.pointee.classdb_get_method_bind(__godot_name_MeshLibrary._native_ptr(), _method_find_item_by_name_1321353865_name._native_ptr(), 1321353865)
        assert(MeshLibrary._method_find_item_by_name_1321353865 != nil)
        let _method_clear_3218959716_name = StringName(from: "clear")
        self._method_clear_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_MeshLibrary._native_ptr(), _method_clear_3218959716_name._native_ptr(), 3218959716)
        assert(MeshLibrary._method_clear_3218959716 != nil)
        let _method_get_item_list_1930428628_name = StringName(from: "get_item_list")
        self._method_get_item_list_1930428628 = self.interface.pointee.classdb_get_method_bind(__godot_name_MeshLibrary._native_ptr(), _method_get_item_list_1930428628_name._native_ptr(), 1930428628)
        assert(MeshLibrary._method_get_item_list_1930428628 != nil)
        let _method_get_last_unused_item_id_3905245786_name = StringName(from: "get_last_unused_item_id")
        self._method_get_last_unused_item_id_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_MeshLibrary._native_ptr(), _method_get_last_unused_item_id_3905245786_name._native_ptr(), 3905245786)
        assert(MeshLibrary._method_get_last_unused_item_id_3905245786 != nil)
    }

    public func create_item(id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_item_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_item_name(id: Int64, name: godot.String)  {
        withUnsafePointer(to: id) { id_native in
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_name_501894301,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_item_mesh(id: Int64, mesh: Mesh)  {
        withUnsafePointer(to: id) { id_native in
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(mesh_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_mesh_969122797,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_item_mesh_transform(id: Int64, mesh_transform: Transform3D)  {
        withUnsafePointer(to: id) { id_native in
        let mesh_transform_native = mesh_transform._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(mesh_transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_mesh_transform_3616898986,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_item_navigation_mesh(id: Int64, navigation_mesh: NavigationMesh)  {
        withUnsafePointer(to: id) { id_native in
        let navigation_mesh_native = navigation_mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(navigation_mesh_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_navigation_mesh_3483353960,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_item_navigation_mesh_transform(id: Int64, navigation_mesh: Transform3D)  {
        withUnsafePointer(to: id) { id_native in
        let navigation_mesh_native = navigation_mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(navigation_mesh_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_navigation_mesh_transform_3616898986,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_item_navigation_layers(id: Int64, navigation_layers: Int64)  {
        withUnsafePointer(to: navigation_layers) { navigation_layers_native in
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(navigation_layers_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_navigation_layers_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_item_shapes(id: Int64, shapes: Array)  {
        withUnsafePointer(to: id) { id_native in
        let shapes_native = shapes._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(shapes_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_shapes_537221740,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_item_preview(id: Int64, texture: Texture2D)  {
        withUnsafePointer(to: id) { id_native in
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_preview_666127730,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_item_name(id: Int64) -> godot.String {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_name_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func get_item_mesh(id: Int64) -> Mesh {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_mesh_1576363275,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Mesh(godot: __resPtr.pointee)
        }
    }
    public func get_item_mesh_transform(id: Int64) -> Transform3D {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_mesh_transform_1965739696,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(godot: __resPtr.pointee)
        }
    }
    public func get_item_navigation_mesh(id: Int64) -> NavigationMesh {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_navigation_mesh_2729647406,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NavigationMesh(godot: __resPtr.pointee)
        }
    }
    public func get_item_navigation_mesh_transform(id: Int64) -> Transform3D {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_navigation_mesh_transform_1965739696,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(godot: __resPtr.pointee)
        }
    }
    public func get_item_navigation_layers(id: Int64) -> Int64 {
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
                    Self._method_get_item_navigation_layers_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func get_item_shapes(id: Int64) -> Array {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_shapes_663333327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(godot: __resPtr.pointee)
        }
    }
    public func get_item_preview(id: Int64) -> Texture2D {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_preview_3536238170,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
        }
    }
    public func remove_item(id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_item_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func find_item_by_name(name: godot.String) -> Int64 {
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
                    Self._method_find_item_by_name_1321353865,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
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
    public func get_item_list() -> PackedInt32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_list_1930428628,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
    }
    public func get_last_unused_item_id() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_last_unused_item_id_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
}