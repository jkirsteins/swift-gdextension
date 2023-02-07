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
public class MultiMesh : Resource {

    public enum TransformFormat : Int32 {
        case TRANSFORM_2D = 0
        case TRANSFORM_3D = 1
    }

    public override class var __godot_name: StringName { __godot_name_MultiMesh }

    static var _method_set_mesh_194775623: GDExtensionMethodBindPtr! = nil
    static var _method_get_mesh_1808005922: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_colors_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_using_colors_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_custom_data_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_using_custom_data_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_transform_format_2404750322: GDExtensionMethodBindPtr! = nil
    static var _method_get_transform_format_2444156481: GDExtensionMethodBindPtr! = nil
    static var _method_set_instance_count_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_instance_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_visible_instance_count_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_visible_instance_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_instance_transform_3616898986: GDExtensionMethodBindPtr! = nil
    static var _method_set_instance_transform_2d_30160968: GDExtensionMethodBindPtr! = nil
    static var _method_get_instance_transform_1965739696: GDExtensionMethodBindPtr! = nil
    static var _method_get_instance_transform_2d_3836996910: GDExtensionMethodBindPtr! = nil
    static var _method_set_instance_color_2878471219: GDExtensionMethodBindPtr! = nil
    static var _method_get_instance_color_3457211756: GDExtensionMethodBindPtr! = nil
    static var _method_set_instance_custom_data_2878471219: GDExtensionMethodBindPtr! = nil
    static var _method_get_instance_custom_data_3457211756: GDExtensionMethodBindPtr! = nil
    static var _method_get_aabb_1068685055: GDExtensionMethodBindPtr! = nil
    static var _method_get_buffer_675695659: GDExtensionMethodBindPtr! = nil
    static var _method_set_buffer_2899603908: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_MultiMesh = StringName(from: "MultiMesh")

        let _method_set_mesh_194775623_name = StringName(from: "set_mesh")
        self._method_set_mesh_194775623 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_mesh_194775623_name._native_ptr(), 194775623)
        assert(MultiMesh._method_set_mesh_194775623 != nil)
        let _method_get_mesh_1808005922_name = StringName(from: "get_mesh")
        self._method_get_mesh_1808005922 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_mesh_1808005922_name._native_ptr(), 1808005922)
        assert(MultiMesh._method_get_mesh_1808005922 != nil)
        let _method_set_use_colors_2586408642_name = StringName(from: "set_use_colors")
        self._method_set_use_colors_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_use_colors_2586408642_name._native_ptr(), 2586408642)
        assert(MultiMesh._method_set_use_colors_2586408642 != nil)
        let _method_is_using_colors_36873697_name = StringName(from: "is_using_colors")
        self._method_is_using_colors_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_using_colors_36873697_name._native_ptr(), 36873697)
        assert(MultiMesh._method_is_using_colors_36873697 != nil)
        let _method_set_use_custom_data_2586408642_name = StringName(from: "set_use_custom_data")
        self._method_set_use_custom_data_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_use_custom_data_2586408642_name._native_ptr(), 2586408642)
        assert(MultiMesh._method_set_use_custom_data_2586408642 != nil)
        let _method_is_using_custom_data_36873697_name = StringName(from: "is_using_custom_data")
        self._method_is_using_custom_data_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_using_custom_data_36873697_name._native_ptr(), 36873697)
        assert(MultiMesh._method_is_using_custom_data_36873697 != nil)
        let _method_set_transform_format_2404750322_name = StringName(from: "set_transform_format")
        self._method_set_transform_format_2404750322 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_transform_format_2404750322_name._native_ptr(), 2404750322)
        assert(MultiMesh._method_set_transform_format_2404750322 != nil)
        let _method_get_transform_format_2444156481_name = StringName(from: "get_transform_format")
        self._method_get_transform_format_2444156481 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_transform_format_2444156481_name._native_ptr(), 2444156481)
        assert(MultiMesh._method_get_transform_format_2444156481 != nil)
        let _method_set_instance_count_1286410249_name = StringName(from: "set_instance_count")
        self._method_set_instance_count_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_instance_count_1286410249_name._native_ptr(), 1286410249)
        assert(MultiMesh._method_set_instance_count_1286410249 != nil)
        let _method_get_instance_count_3905245786_name = StringName(from: "get_instance_count")
        self._method_get_instance_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_instance_count_3905245786_name._native_ptr(), 3905245786)
        assert(MultiMesh._method_get_instance_count_3905245786 != nil)
        let _method_set_visible_instance_count_1286410249_name = StringName(from: "set_visible_instance_count")
        self._method_set_visible_instance_count_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_visible_instance_count_1286410249_name._native_ptr(), 1286410249)
        assert(MultiMesh._method_set_visible_instance_count_1286410249 != nil)
        let _method_get_visible_instance_count_3905245786_name = StringName(from: "get_visible_instance_count")
        self._method_get_visible_instance_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_visible_instance_count_3905245786_name._native_ptr(), 3905245786)
        assert(MultiMesh._method_get_visible_instance_count_3905245786 != nil)
        let _method_set_instance_transform_3616898986_name = StringName(from: "set_instance_transform")
        self._method_set_instance_transform_3616898986 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_instance_transform_3616898986_name._native_ptr(), 3616898986)
        assert(MultiMesh._method_set_instance_transform_3616898986 != nil)
        let _method_set_instance_transform_2d_30160968_name = StringName(from: "set_instance_transform_2d")
        self._method_set_instance_transform_2d_30160968 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_instance_transform_2d_30160968_name._native_ptr(), 30160968)
        assert(MultiMesh._method_set_instance_transform_2d_30160968 != nil)
        let _method_get_instance_transform_1965739696_name = StringName(from: "get_instance_transform")
        self._method_get_instance_transform_1965739696 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_instance_transform_1965739696_name._native_ptr(), 1965739696)
        assert(MultiMesh._method_get_instance_transform_1965739696 != nil)
        let _method_get_instance_transform_2d_3836996910_name = StringName(from: "get_instance_transform_2d")
        self._method_get_instance_transform_2d_3836996910 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_instance_transform_2d_3836996910_name._native_ptr(), 3836996910)
        assert(MultiMesh._method_get_instance_transform_2d_3836996910 != nil)
        let _method_set_instance_color_2878471219_name = StringName(from: "set_instance_color")
        self._method_set_instance_color_2878471219 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_instance_color_2878471219_name._native_ptr(), 2878471219)
        assert(MultiMesh._method_set_instance_color_2878471219 != nil)
        let _method_get_instance_color_3457211756_name = StringName(from: "get_instance_color")
        self._method_get_instance_color_3457211756 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_instance_color_3457211756_name._native_ptr(), 3457211756)
        assert(MultiMesh._method_get_instance_color_3457211756 != nil)
        let _method_set_instance_custom_data_2878471219_name = StringName(from: "set_instance_custom_data")
        self._method_set_instance_custom_data_2878471219 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_instance_custom_data_2878471219_name._native_ptr(), 2878471219)
        assert(MultiMesh._method_set_instance_custom_data_2878471219 != nil)
        let _method_get_instance_custom_data_3457211756_name = StringName(from: "get_instance_custom_data")
        self._method_get_instance_custom_data_3457211756 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_instance_custom_data_3457211756_name._native_ptr(), 3457211756)
        assert(MultiMesh._method_get_instance_custom_data_3457211756 != nil)
        let _method_get_aabb_1068685055_name = StringName(from: "get_aabb")
        self._method_get_aabb_1068685055 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_aabb_1068685055_name._native_ptr(), 1068685055)
        assert(MultiMesh._method_get_aabb_1068685055 != nil)
        let _method_get_buffer_675695659_name = StringName(from: "get_buffer")
        self._method_get_buffer_675695659 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_buffer_675695659_name._native_ptr(), 675695659)
        assert(MultiMesh._method_get_buffer_675695659 != nil)
        let _method_set_buffer_2899603908_name = StringName(from: "set_buffer")
        self._method_set_buffer_2899603908 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_buffer_2899603908_name._native_ptr(), 2899603908)
        assert(MultiMesh._method_set_buffer_2899603908 != nil)
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
    public func set_use_colors(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_use_colors_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_using_colors_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_use_custom_data(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_use_custom_data_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_using_custom_data_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_transform_format(format: MultiMesh.TransformFormat)  {
        withUnsafePointer(to: format.rawValue) { format_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(format_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_transform_format_2404750322,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_transform_format_2444156481,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return MultiMesh.TransformFormat(from: __resPtr.pointee)
    }
    public func set_instance_count(count: Int64)  {
        withUnsafePointer(to: count) { count_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(count_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_instance_count_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_instance_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_visible_instance_count(count: Int64)  {
        withUnsafePointer(to: count) { count_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(count_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_visible_instance_count_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_visible_instance_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_instance_transform_3616898986,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_instance_transform_2d_30160968,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_instance_transform_1965739696,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_instance_transform_2d_3836996910,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_instance_color_2878471219,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_instance_color_3457211756,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_instance_custom_data_2878471219,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_instance_custom_data_3457211756,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
        }
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
    public func get_buffer() -> PackedFloat32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_buffer_675695659,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedFloat32Array(from: __resPtr.pointee)
    }
    public func set_buffer(buffer: PackedFloat32Array)  {
        let buffer_native = buffer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(buffer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_buffer_2899603908,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}