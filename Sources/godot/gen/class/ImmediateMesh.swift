import godot_native

fileprivate var __godot_name_ImmediateMesh: StringName! = nil

/// Mesh optimized for creating geometry manually.
/// 
/// Mesh optimized for creating geometry manually, similar to OpenGL1.x immediate mode.
open class ImmediateMesh : Mesh {

    

    public override class var __godot_name: StringName { __godot_name_ImmediateMesh }

    static var _method_surface_begin_3716480242: StringName! = nil
    static var _method_surface_set_color_2920490490: StringName! = nil
    static var _method_surface_set_normal_3460891852: StringName! = nil
    static var _method_surface_set_tangent_3505987427: StringName! = nil
    static var _method_surface_set_uv_743155724: StringName! = nil
    static var _method_surface_set_uv2_743155724: StringName! = nil
    static var _method_surface_add_vertex_3460891852: StringName! = nil
    static var _method_surface_add_vertex_2d_743155724: StringName! = nil
    static var _method_surface_end_3218959716: StringName! = nil
    static var _method_clear_surfaces_3218959716: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_ImmediateMesh == nil)
        __godot_name_ImmediateMesh = StringName(from: "ImmediateMesh")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_surface_begin_3716480242 = StringName(from: "surface_begin")
        assert(self._method_surface_begin_3716480242 != nil)
        self._method_surface_set_color_2920490490 = StringName(from: "surface_set_color")
        assert(self._method_surface_set_color_2920490490 != nil)
        self._method_surface_set_normal_3460891852 = StringName(from: "surface_set_normal")
        assert(self._method_surface_set_normal_3460891852 != nil)
        self._method_surface_set_tangent_3505987427 = StringName(from: "surface_set_tangent")
        assert(self._method_surface_set_tangent_3505987427 != nil)
        self._method_surface_set_uv_743155724 = StringName(from: "surface_set_uv")
        assert(self._method_surface_set_uv_743155724 != nil)
        self._method_surface_set_uv2_743155724 = StringName(from: "surface_set_uv2")
        assert(self._method_surface_set_uv2_743155724 != nil)
        self._method_surface_add_vertex_3460891852 = StringName(from: "surface_add_vertex")
        assert(self._method_surface_add_vertex_3460891852 != nil)
        self._method_surface_add_vertex_2d_743155724 = StringName(from: "surface_add_vertex_2d")
        assert(self._method_surface_add_vertex_2d_743155724 != nil)
        self._method_surface_end_3218959716 = StringName(from: "surface_end")
        assert(self._method_surface_end_3218959716 != nil)
        self._method_clear_surfaces_3218959716 = StringName(from: "clear_surfaces")
        assert(self._method_clear_surfaces_3218959716 != nil)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_surface_begin_3716480242._native_ptr(),
                    3716480242)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_surface_set_color_2920490490._native_ptr(),
                    2920490490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_surface_set_normal_3460891852._native_ptr(),
                    3460891852)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_surface_set_tangent_3505987427._native_ptr(),
                    3505987427)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_surface_set_uv_743155724._native_ptr(),
                    743155724)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_surface_set_uv2_743155724._native_ptr(),
                    743155724)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_surface_add_vertex_3460891852._native_ptr(),
                    3460891852)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_surface_add_vertex_2d_743155724._native_ptr(),
                    743155724)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_surface_end_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_surfaces_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}