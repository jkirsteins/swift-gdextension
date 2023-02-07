import godot_native

fileprivate var __godot_name_ImmediateMesh: StringName! = nil

/// Mesh optimized for creating geometry manually.
/// 
/// Mesh optimized for creating geometry manually, similar to OpenGL1.x immediate mode.
public class ImmediateMesh : Mesh {

    

    public override class var __godot_name: StringName { __godot_name_ImmediateMesh }

    static var _method_surface_begin_3716480242: GDExtensionMethodBindPtr! = nil
    static var _method_surface_set_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_surface_set_normal_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_surface_set_tangent_3505987427: GDExtensionMethodBindPtr! = nil
    static var _method_surface_set_uv_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_surface_set_uv2_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_surface_add_vertex_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_surface_add_vertex_2d_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_surface_end_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_clear_surfaces_3218959716: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_ImmediateMesh = StringName(from: "ImmediateMesh")

        let _method_surface_begin_3716480242_name = StringName(from: "surface_begin")
        self._method_surface_begin_3716480242 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_surface_begin_3716480242_name._native_ptr(), 3716480242)
        assert(ImmediateMesh._method_surface_begin_3716480242 != nil)
        let _method_surface_set_color_2920490490_name = StringName(from: "surface_set_color")
        self._method_surface_set_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_surface_set_color_2920490490_name._native_ptr(), 2920490490)
        assert(ImmediateMesh._method_surface_set_color_2920490490 != nil)
        let _method_surface_set_normal_3460891852_name = StringName(from: "surface_set_normal")
        self._method_surface_set_normal_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_surface_set_normal_3460891852_name._native_ptr(), 3460891852)
        assert(ImmediateMesh._method_surface_set_normal_3460891852 != nil)
        let _method_surface_set_tangent_3505987427_name = StringName(from: "surface_set_tangent")
        self._method_surface_set_tangent_3505987427 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_surface_set_tangent_3505987427_name._native_ptr(), 3505987427)
        assert(ImmediateMesh._method_surface_set_tangent_3505987427 != nil)
        let _method_surface_set_uv_743155724_name = StringName(from: "surface_set_uv")
        self._method_surface_set_uv_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_surface_set_uv_743155724_name._native_ptr(), 743155724)
        assert(ImmediateMesh._method_surface_set_uv_743155724 != nil)
        let _method_surface_set_uv2_743155724_name = StringName(from: "surface_set_uv2")
        self._method_surface_set_uv2_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_surface_set_uv2_743155724_name._native_ptr(), 743155724)
        assert(ImmediateMesh._method_surface_set_uv2_743155724 != nil)
        let _method_surface_add_vertex_3460891852_name = StringName(from: "surface_add_vertex")
        self._method_surface_add_vertex_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_surface_add_vertex_3460891852_name._native_ptr(), 3460891852)
        assert(ImmediateMesh._method_surface_add_vertex_3460891852 != nil)
        let _method_surface_add_vertex_2d_743155724_name = StringName(from: "surface_add_vertex_2d")
        self._method_surface_add_vertex_2d_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_surface_add_vertex_2d_743155724_name._native_ptr(), 743155724)
        assert(ImmediateMesh._method_surface_add_vertex_2d_743155724 != nil)
        let _method_surface_end_3218959716_name = StringName(from: "surface_end")
        self._method_surface_end_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_surface_end_3218959716_name._native_ptr(), 3218959716)
        assert(ImmediateMesh._method_surface_end_3218959716 != nil)
        let _method_clear_surfaces_3218959716_name = StringName(from: "clear_surfaces")
        self._method_clear_surfaces_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_surfaces_3218959716_name._native_ptr(), 3218959716)
        assert(ImmediateMesh._method_clear_surfaces_3218959716 != nil)
    }

    public func surface_begin(primitive: Mesh.PrimitiveType, material: Material)  {
        withUnsafePointer(to: primitive.rawValue) { primitive_native in
        let material_native = material._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(primitive_native), .init(material_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_surface_begin_3716480242,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func surface_set_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_surface_set_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func surface_set_normal(normal: Vector3)  {
        let normal_native = normal._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(normal_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_surface_set_normal_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func surface_set_tangent(tangent: Plane)  {
        let tangent_native = tangent._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tangent_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_surface_set_tangent_3505987427,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func surface_set_uv(uv: Vector2)  {
        let uv_native = uv._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(uv_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_surface_set_uv_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func surface_set_uv2(uv2: Vector2)  {
        let uv2_native = uv2._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(uv2_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_surface_set_uv2_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func surface_add_vertex(vertex: Vector3)  {
        let vertex_native = vertex._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(vertex_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_surface_add_vertex_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func surface_add_vertex_2d(vertex: Vector2)  {
        let vertex_native = vertex._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(vertex_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_surface_add_vertex_2d_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func surface_end()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_surface_end_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func clear_surfaces()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_surfaces_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}