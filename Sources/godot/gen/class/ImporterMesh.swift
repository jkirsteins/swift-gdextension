import godot_native

fileprivate var __godot_name_ImporterMesh: StringName! = nil

/// A [Resource] that contains vertex array-based geometry during the import process.
/// 
/// ImporterMesh is a type of [Resource] analogous to [ArrayMesh]. It contains vertex array-based geometry, divided in [i]surfaces[/i]. Each surface contains a completely separate array and a material used to draw it. Design wise, a mesh with multiple surfaces is preferred to a single surface, because objects created in 3D editing software commonly contain multiple materials.
///  
/// Unlike its runtime counterpart, [ImporterMesh] contains mesh data before various import steps, such as lod and shadow mesh generation, have taken place. Modify surface data by calling [method clear], followed by [method add_surface] for each surface.
open class ImporterMesh : Resource {

    

    public override class var __godot_name: StringName { __godot_name_ImporterMesh }

    static var _method_add_blend_shape_83702148: StringName! = nil
    static var _method_get_blend_shape_count_3905245786: StringName! = nil
    static var _method_get_blend_shape_name_844755477: StringName! = nil
    static var _method_set_blend_shape_mode_227983991: StringName! = nil
    static var _method_get_blend_shape_mode_836485024: StringName! = nil
    static var _method_add_surface_4122361985: StringName! = nil
    static var _method_get_surface_count_3905245786: StringName! = nil
    static var _method_get_surface_primitive_type_3552571330: StringName! = nil
    static var _method_get_surface_name_844755477: StringName! = nil
    static var _method_get_surface_arrays_663333327: StringName! = nil
    static var _method_get_surface_blend_shape_arrays_2345056839: StringName! = nil
    static var _method_get_surface_lod_count_923996154: StringName! = nil
    static var _method_get_surface_lod_size_3085491603: StringName! = nil
    static var _method_get_surface_lod_indices_1265128013: StringName! = nil
    static var _method_get_surface_material_2897466400: StringName! = nil
    static var _method_get_surface_format_923996154: StringName! = nil
    static var _method_set_surface_name_501894301: StringName! = nil
    static var _method_set_surface_material_3671737478: StringName! = nil
    static var _method_generate_lods_2491878677: StringName! = nil
    static var _method_get_mesh_1457573577: StringName! = nil
    static var _method_clear_3218959716: StringName! = nil
    static var _method_set_lightmap_size_hint_1130785943: StringName! = nil
    static var _method_get_lightmap_size_hint_3690982128: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_ImporterMesh == nil)
        __godot_name_ImporterMesh = StringName(from: "ImporterMesh")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_add_blend_shape_83702148 = StringName(from: "add_blend_shape")
        assert(self._method_add_blend_shape_83702148 != nil)
        self._method_get_blend_shape_count_3905245786 = StringName(from: "get_blend_shape_count")
        assert(self._method_get_blend_shape_count_3905245786 != nil)
        self._method_get_blend_shape_name_844755477 = StringName(from: "get_blend_shape_name")
        assert(self._method_get_blend_shape_name_844755477 != nil)
        self._method_set_blend_shape_mode_227983991 = StringName(from: "set_blend_shape_mode")
        assert(self._method_set_blend_shape_mode_227983991 != nil)
        self._method_get_blend_shape_mode_836485024 = StringName(from: "get_blend_shape_mode")
        assert(self._method_get_blend_shape_mode_836485024 != nil)
        self._method_add_surface_4122361985 = StringName(from: "add_surface")
        assert(self._method_add_surface_4122361985 != nil)
        self._method_get_surface_count_3905245786 = StringName(from: "get_surface_count")
        assert(self._method_get_surface_count_3905245786 != nil)
        self._method_get_surface_primitive_type_3552571330 = StringName(from: "get_surface_primitive_type")
        assert(self._method_get_surface_primitive_type_3552571330 != nil)
        self._method_get_surface_name_844755477 = StringName(from: "get_surface_name")
        assert(self._method_get_surface_name_844755477 != nil)
        self._method_get_surface_arrays_663333327 = StringName(from: "get_surface_arrays")
        assert(self._method_get_surface_arrays_663333327 != nil)
        self._method_get_surface_blend_shape_arrays_2345056839 = StringName(from: "get_surface_blend_shape_arrays")
        assert(self._method_get_surface_blend_shape_arrays_2345056839 != nil)
        self._method_get_surface_lod_count_923996154 = StringName(from: "get_surface_lod_count")
        assert(self._method_get_surface_lod_count_923996154 != nil)
        self._method_get_surface_lod_size_3085491603 = StringName(from: "get_surface_lod_size")
        assert(self._method_get_surface_lod_size_3085491603 != nil)
        self._method_get_surface_lod_indices_1265128013 = StringName(from: "get_surface_lod_indices")
        assert(self._method_get_surface_lod_indices_1265128013 != nil)
        self._method_get_surface_material_2897466400 = StringName(from: "get_surface_material")
        assert(self._method_get_surface_material_2897466400 != nil)
        self._method_get_surface_format_923996154 = StringName(from: "get_surface_format")
        assert(self._method_get_surface_format_923996154 != nil)
        self._method_set_surface_name_501894301 = StringName(from: "set_surface_name")
        assert(self._method_set_surface_name_501894301 != nil)
        self._method_set_surface_material_3671737478 = StringName(from: "set_surface_material")
        assert(self._method_set_surface_material_3671737478 != nil)
        self._method_generate_lods_2491878677 = StringName(from: "generate_lods")
        assert(self._method_generate_lods_2491878677 != nil)
        self._method_get_mesh_1457573577 = StringName(from: "get_mesh")
        assert(self._method_get_mesh_1457573577 != nil)
        self._method_clear_3218959716 = StringName(from: "clear")
        assert(self._method_clear_3218959716 != nil)
        self._method_set_lightmap_size_hint_1130785943 = StringName(from: "set_lightmap_size_hint")
        assert(self._method_set_lightmap_size_hint_1130785943 != nil)
        self._method_get_lightmap_size_hint_3690982128 = StringName(from: "get_lightmap_size_hint")
        assert(self._method_get_lightmap_size_hint_3690982128 != nil)
    }

    public func add_blend_shape(name: godot.String)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_blend_shape_83702148._native_ptr(),
                    83702148)
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
    public func get_blend_shape_name(blend_shape_idx: Int64) -> godot.String {
        withUnsafePointer(to: blend_shape_idx) { blend_shape_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(blend_shape_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_blend_shape_name_844755477._native_ptr(),
                    844755477)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func set_blend_shape_mode(mode: Mesh.BlendShapeMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_blend_shape_mode_227983991._native_ptr(),
                    227983991)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_blend_shape_mode() -> Mesh.BlendShapeMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_blend_shape_mode_836485024._native_ptr(),
                    836485024)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Mesh.BlendShapeMode(godot: __resPtr.pointee)
    }
    public func add_surface(primitive: Mesh.PrimitiveType, arrays: Array, blend_shapes: [Array], lods: Dictionary, material: Material, name: godot.String, flags: Int64)  {
        withUnsafePointer(to: flags) { flags_native in
        withUnsafePointer(to: primitive.rawValue) { primitive_native in
        let name_native = name._native_ptr()
        let material_native = material._native_ptr()
        let lods_native = lods._native_ptr()
        let blend_shapes_native = blend_shapes._native_ptr()
        let arrays_native = arrays._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 7)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(primitive_native), .init(arrays_native), .init(blend_shapes_native), .init(lods_native), .init(material_native), .init(name_native), .init(flags_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_surface_4122361985._native_ptr(),
                    4122361985)
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
    public func get_surface_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_surface_count_3905245786._native_ptr(),
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
    public func get_surface_primitive_type(surface_idx: Int64) -> Mesh.PrimitiveType {
        withUnsafePointer(to: surface_idx) { surface_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(surface_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_surface_primitive_type_3552571330._native_ptr(),
                    3552571330)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Mesh.PrimitiveType(godot: __resPtr.pointee)
        }
    }
    public func get_surface_name(surface_idx: Int64) -> godot.String {
        withUnsafePointer(to: surface_idx) { surface_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(surface_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_surface_name_844755477._native_ptr(),
                    844755477)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func get_surface_arrays(surface_idx: Int64) -> Array {
        withUnsafePointer(to: surface_idx) { surface_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(surface_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_surface_arrays_663333327._native_ptr(),
                    663333327)
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
    public func get_surface_blend_shape_arrays(surface_idx: Int64, blend_shape_idx: Int64) -> Array {
        withUnsafePointer(to: blend_shape_idx) { blend_shape_idx_native in
        withUnsafePointer(to: surface_idx) { surface_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(surface_idx_native), .init(blend_shape_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_surface_blend_shape_arrays_2345056839._native_ptr(),
                    2345056839)
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
    }
    public func get_surface_lod_count(surface_idx: Int64) -> Int64 {
        withUnsafePointer(to: surface_idx) { surface_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(surface_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_surface_lod_count_923996154._native_ptr(),
                    923996154)
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
    public func get_surface_lod_size(surface_idx: Int64, lod_idx: Int64) -> Float64 {
        withUnsafePointer(to: lod_idx) { lod_idx_native in
        withUnsafePointer(to: surface_idx) { surface_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(surface_idx_native), .init(lod_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_surface_lod_size_3085491603._native_ptr(),
                    3085491603)
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
    }
    public func get_surface_lod_indices(surface_idx: Int64, lod_idx: Int64) -> PackedInt32Array {
        withUnsafePointer(to: lod_idx) { lod_idx_native in
        withUnsafePointer(to: surface_idx) { surface_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(surface_idx_native), .init(lod_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_surface_lod_indices_1265128013._native_ptr(),
                    1265128013)
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
    public func get_surface_material(surface_idx: Int64) -> Material {
        withUnsafePointer(to: surface_idx) { surface_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(surface_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_surface_material_2897466400._native_ptr(),
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
    public func get_surface_format(surface_idx: Int64) -> Int64 {
        withUnsafePointer(to: surface_idx) { surface_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(surface_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_surface_format_923996154._native_ptr(),
                    923996154)
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
    public func set_surface_name(surface_idx: Int64, name: godot.String)  {
        withUnsafePointer(to: surface_idx) { surface_idx_native in
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(surface_idx_native), .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_surface_name_501894301._native_ptr(),
                    501894301)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_surface_material(surface_idx: Int64, material: Material)  {
        withUnsafePointer(to: surface_idx) { surface_idx_native in
        let material_native = material._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(surface_idx_native), .init(material_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_surface_material_3671737478._native_ptr(),
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
    public func generate_lods(normal_merge_angle: Float64, normal_split_angle: Float64, bone_transform_array: Array)  {
        withUnsafePointer(to: normal_split_angle) { normal_split_angle_native in
        withUnsafePointer(to: normal_merge_angle) { normal_merge_angle_native in
        let bone_transform_array_native = bone_transform_array._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(normal_merge_angle_native), .init(normal_split_angle_native), .init(bone_transform_array_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_generate_lods_2491878677._native_ptr(),
                    2491878677)
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
    public func get_mesh(base_mesh: ArrayMesh) -> ArrayMesh {
        let base_mesh_native = base_mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(base_mesh_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_mesh_1457573577._native_ptr(),
                    1457573577)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ArrayMesh(godot: __resPtr.pointee)
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
    public func set_lightmap_size_hint(size: Vector2i)  {
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_lightmap_size_hint_1130785943._native_ptr(),
                    1130785943)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_lightmap_size_hint() -> Vector2i {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_lightmap_size_hint_3690982128._native_ptr(),
                    3690982128)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(godot: __resPtr.pointee)
    }
}