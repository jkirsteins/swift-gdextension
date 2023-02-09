import godot_native

fileprivate var __godot_name_MultiMesh: StringName! = nil

/// Provides high-performance drawing of a mesh multiple times using GPU instancing.
/// 
/// MultiMesh provides low-level mesh instancing. Drawing thousands of [MeshInstance3D] nodes can be slow, since each object is submitted to the GPU then drawn individually.
///  
/// MultiMesh is much faster as it can draw thousands of instances with a single draw call, resulting in less API overhead.
///  
/// As a drawback, if the instances are too far away from each other, performance may be reduced as every single instance will always render (they are spatially indexed as one, for the whole object).
///  
/// Since instances may have any behavior, the AABB used for visibility must be provided by the user.
///  
/// [b]Note:[/b] A MultiMesh is a single object, therefore the same maximum lights per object restriction applies. This means, that once the maximum lights are consumed by one or more instances, the rest of the MultiMesh instances will [b]not[/b] receive any lighting.
///  
/// [b]Note:[/b] Blend Shapes will be ignored if used in a MultiMesh.
open class MultiMesh : Resource {

    public enum TransformFormat : Int32 {
        case TRANSFORM_2D = 0
        case TRANSFORM_3D = 1
    }

    public override class var __godot_name: StringName { __godot_name_MultiMesh }

    static var _method_set_mesh_194775623: StringName! = nil
    static var _method_get_mesh_1808005922: StringName! = nil
    static var _method_set_use_colors_2586408642: StringName! = nil
    static var _method_is_using_colors_36873697: StringName! = nil
    static var _method_set_use_custom_data_2586408642: StringName! = nil
    static var _method_is_using_custom_data_36873697: StringName! = nil
    static var _method_set_transform_format_2404750322: StringName! = nil
    static var _method_get_transform_format_2444156481: StringName! = nil
    static var _method_set_instance_count_1286410249: StringName! = nil
    static var _method_get_instance_count_3905245786: StringName! = nil
    static var _method_set_visible_instance_count_1286410249: StringName! = nil
    static var _method_get_visible_instance_count_3905245786: StringName! = nil
    static var _method_set_instance_transform_3616898986: StringName! = nil
    static var _method_set_instance_transform_2d_30160968: StringName! = nil
    static var _method_get_instance_transform_1965739696: StringName! = nil
    static var _method_get_instance_transform_2d_3836996910: StringName! = nil
    static var _method_set_instance_color_2878471219: StringName! = nil
    static var _method_get_instance_color_3457211756: StringName! = nil
    static var _method_set_instance_custom_data_2878471219: StringName! = nil
    static var _method_get_instance_custom_data_3457211756: StringName! = nil
    static var _method_get_aabb_1068685055: StringName! = nil
    static var _method_get_buffer_675695659: StringName! = nil
    static var _method_set_buffer_2899603908: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_MultiMesh == nil)
        __godot_name_MultiMesh = StringName(from: "MultiMesh")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_mesh_194775623 = StringName(from: "set_mesh")
        assert(self._method_set_mesh_194775623 != nil)
        self._method_get_mesh_1808005922 = StringName(from: "get_mesh")
        assert(self._method_get_mesh_1808005922 != nil)
        self._method_set_use_colors_2586408642 = StringName(from: "set_use_colors")
        assert(self._method_set_use_colors_2586408642 != nil)
        self._method_is_using_colors_36873697 = StringName(from: "is_using_colors")
        assert(self._method_is_using_colors_36873697 != nil)
        self._method_set_use_custom_data_2586408642 = StringName(from: "set_use_custom_data")
        assert(self._method_set_use_custom_data_2586408642 != nil)
        self._method_is_using_custom_data_36873697 = StringName(from: "is_using_custom_data")
        assert(self._method_is_using_custom_data_36873697 != nil)
        self._method_set_transform_format_2404750322 = StringName(from: "set_transform_format")
        assert(self._method_set_transform_format_2404750322 != nil)
        self._method_get_transform_format_2444156481 = StringName(from: "get_transform_format")
        assert(self._method_get_transform_format_2444156481 != nil)
        self._method_set_instance_count_1286410249 = StringName(from: "set_instance_count")
        assert(self._method_set_instance_count_1286410249 != nil)
        self._method_get_instance_count_3905245786 = StringName(from: "get_instance_count")
        assert(self._method_get_instance_count_3905245786 != nil)
        self._method_set_visible_instance_count_1286410249 = StringName(from: "set_visible_instance_count")
        assert(self._method_set_visible_instance_count_1286410249 != nil)
        self._method_get_visible_instance_count_3905245786 = StringName(from: "get_visible_instance_count")
        assert(self._method_get_visible_instance_count_3905245786 != nil)
        self._method_set_instance_transform_3616898986 = StringName(from: "set_instance_transform")
        assert(self._method_set_instance_transform_3616898986 != nil)
        self._method_set_instance_transform_2d_30160968 = StringName(from: "set_instance_transform_2d")
        assert(self._method_set_instance_transform_2d_30160968 != nil)
        self._method_get_instance_transform_1965739696 = StringName(from: "get_instance_transform")
        assert(self._method_get_instance_transform_1965739696 != nil)
        self._method_get_instance_transform_2d_3836996910 = StringName(from: "get_instance_transform_2d")
        assert(self._method_get_instance_transform_2d_3836996910 != nil)
        self._method_set_instance_color_2878471219 = StringName(from: "set_instance_color")
        assert(self._method_set_instance_color_2878471219 != nil)
        self._method_get_instance_color_3457211756 = StringName(from: "get_instance_color")
        assert(self._method_get_instance_color_3457211756 != nil)
        self._method_set_instance_custom_data_2878471219 = StringName(from: "set_instance_custom_data")
        assert(self._method_set_instance_custom_data_2878471219 != nil)
        self._method_get_instance_custom_data_3457211756 = StringName(from: "get_instance_custom_data")
        assert(self._method_get_instance_custom_data_3457211756 != nil)
        self._method_get_aabb_1068685055 = StringName(from: "get_aabb")
        assert(self._method_get_aabb_1068685055 != nil)
        self._method_get_buffer_675695659 = StringName(from: "get_buffer")
        assert(self._method_get_buffer_675695659 != nil)
        self._method_set_buffer_2899603908 = StringName(from: "set_buffer")
        assert(self._method_set_buffer_2899603908 != nil)
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
    public func set_use_colors(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_use_colors_2586408642._native_ptr(),
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
    public func is_using_colors() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_using_colors_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_use_custom_data(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_use_custom_data_2586408642._native_ptr(),
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
    public func is_using_custom_data() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_using_custom_data_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_transform_format(format: MultiMesh.TransformFormat)  {
        withUnsafePointer(to: format.rawValue) { format_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(format_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_transform_format_2404750322._native_ptr(),
                    2404750322)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_transform_format() -> MultiMesh.TransformFormat {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_transform_format_2444156481._native_ptr(),
                    2444156481)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return MultiMesh.TransformFormat(godot: __resPtr.pointee)
    }
    public func set_instance_count(count: Int64)  {
        withUnsafePointer(to: count) { count_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(count_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_instance_count_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_instance_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_instance_count_3905245786._native_ptr(),
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
    public func set_visible_instance_count(count: Int64)  {
        withUnsafePointer(to: count) { count_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(count_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_visible_instance_count_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_visible_instance_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_visible_instance_count_3905245786._native_ptr(),
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
    public func set_instance_transform(instance: Int64, transform: Transform3D)  {
        withUnsafePointer(to: instance) { instance_native in
        let transform_native = transform._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native), .init(transform_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_instance_transform_3616898986._native_ptr(),
                    3616898986)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_instance_transform_2d(instance: Int64, transform: Transform2D)  {
        withUnsafePointer(to: instance) { instance_native in
        let transform_native = transform._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native), .init(transform_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_instance_transform_2d_30160968._native_ptr(),
                    30160968)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_instance_transform(instance: Int64) -> Transform3D {
        withUnsafePointer(to: instance) { instance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_instance_transform_1965739696._native_ptr(),
                    1965739696)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(godot: __resPtr.pointee)
        }
    }
    public func get_instance_transform_2d(instance: Int64) -> Transform2D {
        withUnsafePointer(to: instance) { instance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_instance_transform_2d_3836996910._native_ptr(),
                    3836996910)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(godot: __resPtr.pointee)
        }
    }
    public func set_instance_color(instance: Int64, color: Color)  {
        withUnsafePointer(to: instance) { instance_native in
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native), .init(color_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_instance_color_2878471219._native_ptr(),
                    2878471219)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_instance_color(instance: Int64) -> Color {
        withUnsafePointer(to: instance) { instance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_instance_color_3457211756._native_ptr(),
                    3457211756)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
        }
    }
    public func set_instance_custom_data(instance: Int64, custom_data: Color)  {
        withUnsafePointer(to: instance) { instance_native in
        let custom_data_native = custom_data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native), .init(custom_data_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_instance_custom_data_2878471219._native_ptr(),
                    2878471219)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_instance_custom_data(instance: Int64) -> Color {
        withUnsafePointer(to: instance) { instance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_instance_custom_data_3457211756._native_ptr(),
                    3457211756)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
        }
    }
    public func get_aabb() -> AABB {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_aabb_1068685055._native_ptr(),
                    1068685055)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AABB(godot: __resPtr.pointee)
    }
    public func get_buffer() -> PackedFloat32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_buffer_675695659._native_ptr(),
                    675695659)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedFloat32Array(godot: __resPtr.pointee)
    }
    public func set_buffer(buffer: PackedFloat32Array)  {
        let buffer_native = buffer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(buffer_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_buffer_2899603908._native_ptr(),
                    2899603908)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}