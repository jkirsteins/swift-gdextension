import godot_native

fileprivate var __godot_name_ImporterMesh: StringName! = nil

/// A [Resource] that contains vertex array-based geometry during the import process.
/// 
/// ImporterMesh is a type of [Resource] analogous to [ArrayMesh]. It contains vertex array-based geometry, divided in [i]surfaces[/i]. Each surface contains a completely separate array and a material used to draw it. Design wise, a mesh with multiple surfaces is preferred to a single surface, because objects created in 3D editing software commonly contain multiple materials.
///  
/// Unlike its runtime counterpart, [ImporterMesh] contains mesh data before various import steps, such as lod and shadow mesh generation, have taken place. Modify surface data by calling [method clear], followed by [method add_surface] for each surface.
public class ImporterMesh : Resource {

    

    public override class var __godot_name: StringName { __godot_name_ImporterMesh }

    static var _method_add_blend_shape_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_blend_shape_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_blend_shape_name_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_set_blend_shape_mode_227983991: GDExtensionMethodBindPtr! = nil
    static var _method_get_blend_shape_mode_836485024: GDExtensionMethodBindPtr! = nil
    static var _method_add_surface_4122361985: GDExtensionMethodBindPtr! = nil
    static var _method_get_surface_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_surface_primitive_type_3552571330: GDExtensionMethodBindPtr! = nil
    static var _method_get_surface_name_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_get_surface_arrays_663333327: GDExtensionMethodBindPtr! = nil
    static var _method_get_surface_blend_shape_arrays_2345056839: GDExtensionMethodBindPtr! = nil
    static var _method_get_surface_lod_count_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_get_surface_lod_size_3085491603: GDExtensionMethodBindPtr! = nil
    static var _method_get_surface_lod_indices_1265128013: GDExtensionMethodBindPtr! = nil
    static var _method_get_surface_material_2897466400: GDExtensionMethodBindPtr! = nil
    static var _method_get_surface_format_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_set_surface_name_501894301: GDExtensionMethodBindPtr! = nil
    static var _method_set_surface_material_3671737478: GDExtensionMethodBindPtr! = nil
    static var _method_generate_lods_2491878677: GDExtensionMethodBindPtr! = nil
    static var _method_get_mesh_1457573577: GDExtensionMethodBindPtr! = nil
    static var _method_clear_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_lightmap_size_hint_1130785943: GDExtensionMethodBindPtr! = nil
    static var _method_get_lightmap_size_hint_3690982128: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_ImporterMesh = StringName(from: "ImporterMesh")

        let _method_add_blend_shape_83702148_name = StringName(from: "add_blend_shape")
        self._method_add_blend_shape_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_blend_shape_83702148_name._native_ptr(), 83702148)
        assert(ImporterMesh._method_add_blend_shape_83702148 != nil)
        let _method_get_blend_shape_count_3905245786_name = StringName(from: "get_blend_shape_count")
        self._method_get_blend_shape_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_blend_shape_count_3905245786_name._native_ptr(), 3905245786)
        assert(ImporterMesh._method_get_blend_shape_count_3905245786 != nil)
        let _method_get_blend_shape_name_844755477_name = StringName(from: "get_blend_shape_name")
        self._method_get_blend_shape_name_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_blend_shape_name_844755477_name._native_ptr(), 844755477)
        assert(ImporterMesh._method_get_blend_shape_name_844755477 != nil)
        let _method_set_blend_shape_mode_227983991_name = StringName(from: "set_blend_shape_mode")
        self._method_set_blend_shape_mode_227983991 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_blend_shape_mode_227983991_name._native_ptr(), 227983991)
        assert(ImporterMesh._method_set_blend_shape_mode_227983991 != nil)
        let _method_get_blend_shape_mode_836485024_name = StringName(from: "get_blend_shape_mode")
        self._method_get_blend_shape_mode_836485024 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_blend_shape_mode_836485024_name._native_ptr(), 836485024)
        assert(ImporterMesh._method_get_blend_shape_mode_836485024 != nil)
        let _method_add_surface_4122361985_name = StringName(from: "add_surface")
        self._method_add_surface_4122361985 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_surface_4122361985_name._native_ptr(), 4122361985)
        assert(ImporterMesh._method_add_surface_4122361985 != nil)
        let _method_get_surface_count_3905245786_name = StringName(from: "get_surface_count")
        self._method_get_surface_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_surface_count_3905245786_name._native_ptr(), 3905245786)
        assert(ImporterMesh._method_get_surface_count_3905245786 != nil)
        let _method_get_surface_primitive_type_3552571330_name = StringName(from: "get_surface_primitive_type")
        self._method_get_surface_primitive_type_3552571330 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_surface_primitive_type_3552571330_name._native_ptr(), 3552571330)
        assert(ImporterMesh._method_get_surface_primitive_type_3552571330 != nil)
        let _method_get_surface_name_844755477_name = StringName(from: "get_surface_name")
        self._method_get_surface_name_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_surface_name_844755477_name._native_ptr(), 844755477)
        assert(ImporterMesh._method_get_surface_name_844755477 != nil)
        let _method_get_surface_arrays_663333327_name = StringName(from: "get_surface_arrays")
        self._method_get_surface_arrays_663333327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_surface_arrays_663333327_name._native_ptr(), 663333327)
        assert(ImporterMesh._method_get_surface_arrays_663333327 != nil)
        let _method_get_surface_blend_shape_arrays_2345056839_name = StringName(from: "get_surface_blend_shape_arrays")
        self._method_get_surface_blend_shape_arrays_2345056839 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_surface_blend_shape_arrays_2345056839_name._native_ptr(), 2345056839)
        assert(ImporterMesh._method_get_surface_blend_shape_arrays_2345056839 != nil)
        let _method_get_surface_lod_count_923996154_name = StringName(from: "get_surface_lod_count")
        self._method_get_surface_lod_count_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_surface_lod_count_923996154_name._native_ptr(), 923996154)
        assert(ImporterMesh._method_get_surface_lod_count_923996154 != nil)
        let _method_get_surface_lod_size_3085491603_name = StringName(from: "get_surface_lod_size")
        self._method_get_surface_lod_size_3085491603 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_surface_lod_size_3085491603_name._native_ptr(), 3085491603)
        assert(ImporterMesh._method_get_surface_lod_size_3085491603 != nil)
        let _method_get_surface_lod_indices_1265128013_name = StringName(from: "get_surface_lod_indices")
        self._method_get_surface_lod_indices_1265128013 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_surface_lod_indices_1265128013_name._native_ptr(), 1265128013)
        assert(ImporterMesh._method_get_surface_lod_indices_1265128013 != nil)
        let _method_get_surface_material_2897466400_name = StringName(from: "get_surface_material")
        self._method_get_surface_material_2897466400 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_surface_material_2897466400_name._native_ptr(), 2897466400)
        assert(ImporterMesh._method_get_surface_material_2897466400 != nil)
        let _method_get_surface_format_923996154_name = StringName(from: "get_surface_format")
        self._method_get_surface_format_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_surface_format_923996154_name._native_ptr(), 923996154)
        assert(ImporterMesh._method_get_surface_format_923996154 != nil)
        let _method_set_surface_name_501894301_name = StringName(from: "set_surface_name")
        self._method_set_surface_name_501894301 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_surface_name_501894301_name._native_ptr(), 501894301)
        assert(ImporterMesh._method_set_surface_name_501894301 != nil)
        let _method_set_surface_material_3671737478_name = StringName(from: "set_surface_material")
        self._method_set_surface_material_3671737478 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_surface_material_3671737478_name._native_ptr(), 3671737478)
        assert(ImporterMesh._method_set_surface_material_3671737478 != nil)
        let _method_generate_lods_2491878677_name = StringName(from: "generate_lods")
        self._method_generate_lods_2491878677 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_generate_lods_2491878677_name._native_ptr(), 2491878677)
        assert(ImporterMesh._method_generate_lods_2491878677 != nil)
        let _method_get_mesh_1457573577_name = StringName(from: "get_mesh")
        self._method_get_mesh_1457573577 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_mesh_1457573577_name._native_ptr(), 1457573577)
        assert(ImporterMesh._method_get_mesh_1457573577 != nil)
        let _method_clear_3218959716_name = StringName(from: "clear")
        self._method_clear_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_3218959716_name._native_ptr(), 3218959716)
        assert(ImporterMesh._method_clear_3218959716 != nil)
        let _method_set_lightmap_size_hint_1130785943_name = StringName(from: "set_lightmap_size_hint")
        self._method_set_lightmap_size_hint_1130785943 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_lightmap_size_hint_1130785943_name._native_ptr(), 1130785943)
        assert(ImporterMesh._method_set_lightmap_size_hint_1130785943 != nil)
        let _method_get_lightmap_size_hint_3690982128_name = StringName(from: "get_lightmap_size_hint")
        self._method_get_lightmap_size_hint_3690982128 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_lightmap_size_hint_3690982128_name._native_ptr(), 3690982128)
        assert(ImporterMesh._method_get_lightmap_size_hint_3690982128 != nil)
    }

    public func add_blend_shape(name: String)  {
        withUnsafePointer(to: name) { name_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_blend_shape_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
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
    public func get_blend_shape_name(blend_shape_idx: Int64) -> String {
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
                    Self._method_get_blend_shape_name_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_blend_shape_mode_227983991,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_blend_shape_mode_836485024,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Mesh.BlendShapeMode(from: __resPtr.pointee)
    }
    public func add_surface(primitive: Mesh.PrimitiveType, arrays: Array, blend_shapes: [Array], lods: Dictionary, material: Material, name: String, flags: Int64)  {
        withUnsafePointer(to: flags) { flags_native in
        withUnsafePointer(to: name) { name_native in
        withUnsafePointer(to: primitive.rawValue) { primitive_native in
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_surface_4122361985,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_surface_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_surface_primitive_type_3552571330,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Mesh.PrimitiveType(from: __resPtr.pointee)
        }
    }
    public func get_surface_name(surface_idx: Int64) -> String {
        withUnsafePointer(to: surface_idx) { surface_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(surface_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_surface_name_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_surface_arrays_663333327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_surface_blend_shape_arrays_2345056839,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_surface_lod_count_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_surface_lod_size_3085491603,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_surface_lod_indices_1265128013,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_surface_material_2897466400,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Material(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_surface_format_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func set_surface_name(surface_idx: Int64, name: String)  {
        withUnsafePointer(to: name) { name_native in
        withUnsafePointer(to: surface_idx) { surface_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(surface_idx_native), .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_surface_name_501894301,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_surface_material_3671737478,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_generate_lods_2491878677,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mesh_1457573577,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ArrayMesh(from: __resPtr.pointee)
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
    public func set_lightmap_size_hint(size: Vector2i)  {
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_lightmap_size_hint_1130785943,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_lightmap_size_hint_3690982128,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(from: __resPtr.pointee)
    }
}