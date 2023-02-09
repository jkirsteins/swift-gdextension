import godot_native

fileprivate var __godot_name_NavigationPolygon: StringName! = nil

/// A node that has methods to draw outlines or use indices of vertices to create navigation polygons.
/// 
/// There are two ways to create polygons. Either by using the [method add_outline] method, or using the [method add_polygon] method.
///  
/// Using [method add_outline]:
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// var polygon = NavigationPolygon.new()
///  
/// var outline = PackedVector2Array([Vector2(0, 0), Vector2(0, 50), Vector2(50, 50), Vector2(50, 0)])
///  
/// polygon.add_outline(outline)
///  
/// polygon.make_polygons_from_outlines()
///  
/// $NavigationRegion2D.navigation_polygon = polygon
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// var polygon = new NavigationPolygon();
///  
/// var outline = new Vector2[] { new Vector2(0, 0), new Vector2(0, 50), new Vector2(50, 50), new Vector2(50, 0) };
///  
/// polygon.AddOutline(outline);
///  
/// polygon.MakePolygonsFromOutlines();
///  
/// GetNode<NavigationRegion2D>("NavigationRegion2D").NavigationPolygon = polygon;
///  
/// [/csharp]
///  
/// [/codeblocks]
///  
/// Using [method add_polygon] and indices of the vertices array.
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// var polygon = NavigationPolygon.new()
///  
/// var vertices = PackedVector2Array([Vector2(0, 0), Vector2(0, 50), Vector2(50, 50), Vector2(50, 0)])
///  
/// polygon.vertices = vertices
///  
/// var indices = PackedInt32Array([0, 1, 2, 3])
///  
/// polygon.add_polygon(indices)
///  
/// $NavigationRegion2D.navigation_polygon = polygon
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// var polygon = new NavigationPolygon();
///  
/// var vertices = new Vector2[] { new Vector2(0, 0), new Vector2(0, 50), new Vector2(50, 50), new Vector2(50, 0) };
///  
/// polygon.Vertices = vertices;
///  
/// var indices = new int[] { 0, 1, 2, 3 };
///  
/// polygon.AddPolygon(indices);
///  
/// GetNode<NavigationRegion2D>("NavigationRegion2D").NavigationPolygon = polygon;
///  
/// [/csharp]
///  
/// [/codeblocks]
open class NavigationPolygon : Resource {

    

    public override class var __godot_name: StringName { __godot_name_NavigationPolygon }

    static var _method_set_vertices_1509147220: StringName! = nil
    static var _method_get_vertices_2961356807: StringName! = nil
    static var _method_add_polygon_3614634198: StringName! = nil
    static var _method_get_polygon_count_3905245786: StringName! = nil
    static var _method_get_polygon_3668444399: StringName! = nil
    static var _method_clear_polygons_3218959716: StringName! = nil
    static var _method_get_navigation_mesh_330232164: StringName! = nil
    static var _method_add_outline_1509147220: StringName! = nil
    static var _method_add_outline_at_index_1569738947: StringName! = nil
    static var _method_get_outline_count_3905245786: StringName! = nil
    static var _method_set_outline_1201971903: StringName! = nil
    static var _method_get_outline_3946907486: StringName! = nil
    static var _method_remove_outline_1286410249: StringName! = nil
    static var _method_clear_outlines_3218959716: StringName! = nil
    static var _method_make_polygons_from_outlines_3218959716: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_NavigationPolygon == nil)
        __godot_name_NavigationPolygon = StringName(from: "NavigationPolygon")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_vertices_1509147220 = StringName(from: "set_vertices")
        assert(self._method_set_vertices_1509147220 != nil)
        self._method_get_vertices_2961356807 = StringName(from: "get_vertices")
        assert(self._method_get_vertices_2961356807 != nil)
        self._method_add_polygon_3614634198 = StringName(from: "add_polygon")
        assert(self._method_add_polygon_3614634198 != nil)
        self._method_get_polygon_count_3905245786 = StringName(from: "get_polygon_count")
        assert(self._method_get_polygon_count_3905245786 != nil)
        self._method_get_polygon_3668444399 = StringName(from: "get_polygon")
        assert(self._method_get_polygon_3668444399 != nil)
        self._method_clear_polygons_3218959716 = StringName(from: "clear_polygons")
        assert(self._method_clear_polygons_3218959716 != nil)
        self._method_get_navigation_mesh_330232164 = StringName(from: "get_navigation_mesh")
        assert(self._method_get_navigation_mesh_330232164 != nil)
        self._method_add_outline_1509147220 = StringName(from: "add_outline")
        assert(self._method_add_outline_1509147220 != nil)
        self._method_add_outline_at_index_1569738947 = StringName(from: "add_outline_at_index")
        assert(self._method_add_outline_at_index_1569738947 != nil)
        self._method_get_outline_count_3905245786 = StringName(from: "get_outline_count")
        assert(self._method_get_outline_count_3905245786 != nil)
        self._method_set_outline_1201971903 = StringName(from: "set_outline")
        assert(self._method_set_outline_1201971903 != nil)
        self._method_get_outline_3946907486 = StringName(from: "get_outline")
        assert(self._method_get_outline_3946907486 != nil)
        self._method_remove_outline_1286410249 = StringName(from: "remove_outline")
        assert(self._method_remove_outline_1286410249 != nil)
        self._method_clear_outlines_3218959716 = StringName(from: "clear_outlines")
        assert(self._method_clear_outlines_3218959716 != nil)
        self._method_make_polygons_from_outlines_3218959716 = StringName(from: "make_polygons_from_outlines")
        assert(self._method_make_polygons_from_outlines_3218959716 != nil)
    }

    public func set_vertices(vertices: PackedVector2Array)  {
        let vertices_native = vertices._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(vertices_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_vertices_1509147220._native_ptr(),
                    1509147220)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_vertices() -> PackedVector2Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_vertices_2961356807._native_ptr(),
                    2961356807)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(godot: __resPtr.pointee)
    }
    public func add_polygon(polygon: PackedInt32Array)  {
        let polygon_native = polygon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(polygon_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_polygon_3614634198._native_ptr(),
                    3614634198)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_polygon_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_polygon_count_3905245786._native_ptr(),
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
    public func get_polygon(idx: Int64) -> PackedInt32Array {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_polygon_3668444399._native_ptr(),
                    3668444399)
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
    public func clear_polygons()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_polygons_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_navigation_mesh() -> NavigationMesh {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_navigation_mesh_330232164._native_ptr(),
                    330232164)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NavigationMesh(godot: __resPtr.pointee)
    }
    public func add_outline(outline: PackedVector2Array)  {
        let outline_native = outline._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(outline_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_outline_1509147220._native_ptr(),
                    1509147220)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_outline_at_index(outline: PackedVector2Array, index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        let outline_native = outline._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(outline_native), .init(index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_outline_at_index_1569738947._native_ptr(),
                    1569738947)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_outline_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_outline_count_3905245786._native_ptr(),
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
    public func set_outline(idx: Int64, outline: PackedVector2Array)  {
        withUnsafePointer(to: idx) { idx_native in
        let outline_native = outline._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(outline_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_outline_1201971903._native_ptr(),
                    1201971903)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_outline(idx: Int64) -> PackedVector2Array {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_outline_3946907486._native_ptr(),
                    3946907486)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(godot: __resPtr.pointee)
        }
    }
    public func remove_outline(idx: Int64)  {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_outline_1286410249._native_ptr(),
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
    public func clear_outlines()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_outlines_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func make_polygons_from_outlines()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_make_polygons_from_outlines_3218959716._native_ptr(),
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