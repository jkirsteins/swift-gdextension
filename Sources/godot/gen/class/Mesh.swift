import godot_native

fileprivate var __godot_name_Mesh: StringName! = nil

/// A [Resource] that contains vertex array-based geometry.
/// 
/// Mesh is a type of [Resource] that contains vertex array-based geometry, divided in [i]surfaces[/i]. Each surface contains a completely separate array and a material used to draw it. Design wise, a mesh with multiple surfaces is preferred to a single surface, because objects created in 3D editing software commonly contain multiple materials.
public class Mesh : Resource {

    public enum PrimitiveType : Int32 {
        case PRIMITIVE_POINTS = 0
        case PRIMITIVE_LINES = 1
        case PRIMITIVE_LINE_STRIP = 2
        case PRIMITIVE_TRIANGLES = 3
        case PRIMITIVE_TRIANGLE_STRIP = 4
    }
    public enum ArrayType : Int32 {
        case ARRAY_VERTEX = 0
        case ARRAY_NORMAL = 1
        case ARRAY_TANGENT = 2
        case ARRAY_COLOR = 3
        case ARRAY_TEX_UV = 4
        case ARRAY_TEX_UV2 = 5
        case ARRAY_CUSTOM0 = 6
        case ARRAY_CUSTOM1 = 7
        case ARRAY_CUSTOM2 = 8
        case ARRAY_CUSTOM3 = 9
        case ARRAY_BONES = 10
        case ARRAY_WEIGHTS = 11
        case ARRAY_INDEX = 12
        case ARRAY_MAX = 13
    }
    public enum ArrayCustomFormat : Int32 {
        case ARRAY_CUSTOM_RGBA8_UNORM = 0
        case ARRAY_CUSTOM_RGBA8_SNORM = 1
        case ARRAY_CUSTOM_RG_HALF = 2
        case ARRAY_CUSTOM_RGBA_HALF = 3
        case ARRAY_CUSTOM_R_FLOAT = 4
        case ARRAY_CUSTOM_RG_FLOAT = 5
        case ARRAY_CUSTOM_RGB_FLOAT = 6
        case ARRAY_CUSTOM_RGBA_FLOAT = 7
        case ARRAY_CUSTOM_MAX = 8
    }
    public struct ArrayFormat: OptionSet {
        public let rawValue: Int32
        public init(rawValue: Int32) {
            self.rawValue = rawValue
        }
        static let ARRAY_FORMAT_VERTEX = ArrayFormat(rawValue: 1)
        static let ARRAY_FORMAT_NORMAL = ArrayFormat(rawValue: 2)
        static let ARRAY_FORMAT_TANGENT = ArrayFormat(rawValue: 4)
        static let ARRAY_FORMAT_COLOR = ArrayFormat(rawValue: 8)
        static let ARRAY_FORMAT_TEX_UV = ArrayFormat(rawValue: 16)
        static let ARRAY_FORMAT_TEX_UV2 = ArrayFormat(rawValue: 32)
        static let ARRAY_FORMAT_CUSTOM0 = ArrayFormat(rawValue: 64)
        static let ARRAY_FORMAT_CUSTOM1 = ArrayFormat(rawValue: 128)
        static let ARRAY_FORMAT_CUSTOM2 = ArrayFormat(rawValue: 256)
        static let ARRAY_FORMAT_CUSTOM3 = ArrayFormat(rawValue: 512)
        static let ARRAY_FORMAT_BONES = ArrayFormat(rawValue: 1024)
        static let ARRAY_FORMAT_WEIGHTS = ArrayFormat(rawValue: 2048)
        static let ARRAY_FORMAT_INDEX = ArrayFormat(rawValue: 4096)
        static let ARRAY_FORMAT_BLEND_SHAPE_MASK = ArrayFormat(rawValue: 7)
        static let ARRAY_FORMAT_CUSTOM_BASE = ArrayFormat(rawValue: 13)
        static let ARRAY_FORMAT_CUSTOM_BITS = ArrayFormat(rawValue: 3)
        static let ARRAY_FORMAT_CUSTOM0_SHIFT = ArrayFormat(rawValue: 13)
        static let ARRAY_FORMAT_CUSTOM1_SHIFT = ArrayFormat(rawValue: 16)
        static let ARRAY_FORMAT_CUSTOM2_SHIFT = ArrayFormat(rawValue: 19)
        static let ARRAY_FORMAT_CUSTOM3_SHIFT = ArrayFormat(rawValue: 22)
        static let ARRAY_FORMAT_CUSTOM_MASK = ArrayFormat(rawValue: 7)
        static let ARRAY_COMPRESS_FLAGS_BASE = ArrayFormat(rawValue: 25)
        static let ARRAY_FLAG_USE_2D_VERTICES = ArrayFormat(rawValue: 33554432)
        static let ARRAY_FLAG_USE_DYNAMIC_UPDATE = ArrayFormat(rawValue: 67108864)
        static let ARRAY_FLAG_USE_8_BONE_WEIGHTS = ArrayFormat(rawValue: 134217728)
        static let ARRAY_FLAG_USES_EMPTY_VERTEX_ARRAY = ArrayFormat(rawValue: 268435456)
    }
    public enum BlendShapeMode : Int32 {
        case BLEND_SHAPE_MODE_NORMALIZED = 0
        case BLEND_SHAPE_MODE_RELATIVE = 1
    }

    public override class var __godot_name: StringName { __godot_name_Mesh }

    static var _method__get_surface_count_0: GDExtensionMethodBindPtr! = nil
    static var _method__surface_get_array_len_0: GDExtensionMethodBindPtr! = nil
    static var _method__surface_get_array_index_len_0: GDExtensionMethodBindPtr! = nil
    static var _method__surface_get_arrays_0: GDExtensionMethodBindPtr! = nil
    static var _method__surface_get_blend_shape_arrays_0: GDExtensionMethodBindPtr! = nil
    static var _method__surface_get_lods_0: GDExtensionMethodBindPtr! = nil
    static var _method__surface_get_format_0: GDExtensionMethodBindPtr! = nil
    static var _method__surface_get_primitive_type_0: GDExtensionMethodBindPtr! = nil
    static var _method__surface_set_material_0: GDExtensionMethodBindPtr! = nil
    static var _method__surface_get_material_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_blend_shape_count_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_blend_shape_name_0: GDExtensionMethodBindPtr! = nil
    static var _method__set_blend_shape_name_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_aabb_0: GDExtensionMethodBindPtr! = nil
    static var _method_set_lightmap_size_hint_1130785943: GDExtensionMethodBindPtr! = nil
    static var _method_get_lightmap_size_hint_3690982128: GDExtensionMethodBindPtr! = nil
    static var _method_get_aabb_1068685055: GDExtensionMethodBindPtr! = nil
    static var _method_get_surface_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_surface_get_arrays_663333327: GDExtensionMethodBindPtr! = nil
    static var _method_surface_get_blend_shape_arrays_663333327: GDExtensionMethodBindPtr! = nil
    static var _method_surface_set_material_3671737478: GDExtensionMethodBindPtr! = nil
    static var _method_surface_get_material_2897466400: GDExtensionMethodBindPtr! = nil
    static var _method_create_placeholder_121922552: GDExtensionMethodBindPtr! = nil
    static var _method_create_trimesh_shape_4160111210: GDExtensionMethodBindPtr! = nil
    static var _method_create_convex_shape_2529984628: GDExtensionMethodBindPtr! = nil
    static var _method_create_outline_1208642001: GDExtensionMethodBindPtr! = nil
    static var _method_get_faces_497664490: GDExtensionMethodBindPtr! = nil
    static var _method_generate_triangle_mesh_3476533166: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Mesh = StringName(from: "Mesh")

        let _method_set_lightmap_size_hint_1130785943_name = StringName(from: "set_lightmap_size_hint")
        self._method_set_lightmap_size_hint_1130785943 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_lightmap_size_hint_1130785943_name._native_ptr(), 1130785943)
        assert(Mesh._method_set_lightmap_size_hint_1130785943 != nil)
        let _method_get_lightmap_size_hint_3690982128_name = StringName(from: "get_lightmap_size_hint")
        self._method_get_lightmap_size_hint_3690982128 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_lightmap_size_hint_3690982128_name._native_ptr(), 3690982128)
        assert(Mesh._method_get_lightmap_size_hint_3690982128 != nil)
        let _method_get_aabb_1068685055_name = StringName(from: "get_aabb")
        self._method_get_aabb_1068685055 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_aabb_1068685055_name._native_ptr(), 1068685055)
        assert(Mesh._method_get_aabb_1068685055 != nil)
        let _method_get_surface_count_3905245786_name = StringName(from: "get_surface_count")
        self._method_get_surface_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_surface_count_3905245786_name._native_ptr(), 3905245786)
        assert(Mesh._method_get_surface_count_3905245786 != nil)
        let _method_surface_get_arrays_663333327_name = StringName(from: "surface_get_arrays")
        self._method_surface_get_arrays_663333327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_surface_get_arrays_663333327_name._native_ptr(), 663333327)
        assert(Mesh._method_surface_get_arrays_663333327 != nil)
        let _method_surface_get_blend_shape_arrays_663333327_name = StringName(from: "surface_get_blend_shape_arrays")
        self._method_surface_get_blend_shape_arrays_663333327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_surface_get_blend_shape_arrays_663333327_name._native_ptr(), 663333327)
        assert(Mesh._method_surface_get_blend_shape_arrays_663333327 != nil)
        let _method_surface_set_material_3671737478_name = StringName(from: "surface_set_material")
        self._method_surface_set_material_3671737478 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_surface_set_material_3671737478_name._native_ptr(), 3671737478)
        assert(Mesh._method_surface_set_material_3671737478 != nil)
        let _method_surface_get_material_2897466400_name = StringName(from: "surface_get_material")
        self._method_surface_get_material_2897466400 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_surface_get_material_2897466400_name._native_ptr(), 2897466400)
        assert(Mesh._method_surface_get_material_2897466400 != nil)
        let _method_create_placeholder_121922552_name = StringName(from: "create_placeholder")
        self._method_create_placeholder_121922552 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_placeholder_121922552_name._native_ptr(), 121922552)
        assert(Mesh._method_create_placeholder_121922552 != nil)
        let _method_create_trimesh_shape_4160111210_name = StringName(from: "create_trimesh_shape")
        self._method_create_trimesh_shape_4160111210 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_trimesh_shape_4160111210_name._native_ptr(), 4160111210)
        assert(Mesh._method_create_trimesh_shape_4160111210 != nil)
        let _method_create_convex_shape_2529984628_name = StringName(from: "create_convex_shape")
        self._method_create_convex_shape_2529984628 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_convex_shape_2529984628_name._native_ptr(), 2529984628)
        assert(Mesh._method_create_convex_shape_2529984628 != nil)
        let _method_create_outline_1208642001_name = StringName(from: "create_outline")
        self._method_create_outline_1208642001 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_outline_1208642001_name._native_ptr(), 1208642001)
        assert(Mesh._method_create_outline_1208642001 != nil)
        let _method_get_faces_497664490_name = StringName(from: "get_faces")
        self._method_get_faces_497664490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_faces_497664490_name._native_ptr(), 497664490)
        assert(Mesh._method_get_faces_497664490 != nil)
        let _method_generate_triangle_mesh_3476533166_name = StringName(from: "generate_triangle_mesh")
        self._method_generate_triangle_mesh_3476533166 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_generate_triangle_mesh_3476533166_name._native_ptr(), 3476533166)
        assert(Mesh._method_generate_triangle_mesh_3476533166 != nil)
    }

    public func _get_surface_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_surface_count_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _surface_get_array_len(index: Int64) -> Int64 {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__surface_get_array_len_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func _surface_get_array_index_len(index: Int64) -> Int64 {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__surface_get_array_index_len_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func _surface_get_arrays(index: Int64) -> Array {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__surface_get_arrays_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(from: __resPtr.pointee)
        }
    }
    public func _surface_get_blend_shape_arrays(index: Int64) -> [Array] {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__surface_get_blend_shape_arrays_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Array](from: __resPtr.pointee)
        }
    }
    public func _surface_get_lods(index: Int64) -> Dictionary {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__surface_get_lods_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
        }
    }
    public func _surface_get_format(index: Int64) -> Int64 {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__surface_get_format_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func _surface_get_primitive_type(index: Int64) -> Int64 {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__surface_get_primitive_type_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func _surface_set_material(index: Int64, material: Material)  {
        withUnsafePointer(to: index) { index_native in
        let material_native = material._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(material_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__surface_set_material_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _surface_get_material(index: Int64) -> Material {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__surface_get_material_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Material(from: __resPtr.pointee)
        }
    }
    public func _get_blend_shape_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_blend_shape_count_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _get_blend_shape_name(index: Int64) -> StringName {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_blend_shape_name_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(from: __resPtr.pointee)
        }
    }
    public func _set_blend_shape_name(index: Int64, name: StringName)  {
        withUnsafePointer(to: index) { index_native in
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__set_blend_shape_name_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _get_aabb() -> AABB {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_aabb_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AABB(from: __resPtr.pointee)
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
    public func get_aabb() -> AABB {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_aabb_1068685055,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AABB(from: __resPtr.pointee)
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
    public func surface_get_arrays(surf_idx: Int64) -> Array {
        withUnsafePointer(to: surf_idx) { surf_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(surf_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_surface_get_arrays_663333327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(from: __resPtr.pointee)
        }
    }
    public func surface_get_blend_shape_arrays(surf_idx: Int64) -> [Array] {
        withUnsafePointer(to: surf_idx) { surf_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(surf_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_surface_get_blend_shape_arrays_663333327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Array](from: __resPtr.pointee)
        }
    }
    public func surface_set_material(surf_idx: Int64, material: Material)  {
        withUnsafePointer(to: surf_idx) { surf_idx_native in
        let material_native = material._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(surf_idx_native), .init(material_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_surface_set_material_3671737478,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func surface_get_material(surf_idx: Int64) -> Material {
        withUnsafePointer(to: surf_idx) { surf_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(surf_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_surface_get_material_2897466400,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Material(from: __resPtr.pointee)
        }
    }
    public func create_placeholder() -> Resource {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_placeholder_121922552,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Resource(from: __resPtr.pointee)
    }
    public func create_trimesh_shape() -> ConcavePolygonShape3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_trimesh_shape_4160111210,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ConcavePolygonShape3D(from: __resPtr.pointee)
    }
    public func create_convex_shape(clean: UInt8, simplify: UInt8) -> ConvexPolygonShape3D {
        withUnsafePointer(to: simplify) { simplify_native in
        withUnsafePointer(to: clean) { clean_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(clean_native), .init(simplify_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_convex_shape_2529984628,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ConvexPolygonShape3D(from: __resPtr.pointee)
        }
        }
    }
    public func create_outline(margin: Float64) -> Mesh {
        withUnsafePointer(to: margin) { margin_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(margin_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_outline_1208642001,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Mesh(from: __resPtr.pointee)
        }
    }
    public func get_faces() -> PackedVector3Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_faces_497664490,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector3Array(from: __resPtr.pointee)
    }
    public func generate_triangle_mesh() -> TriangleMesh {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_generate_triangle_mesh_3476533166,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TriangleMesh(from: __resPtr.pointee)
    }
}