import godot_native

fileprivate var __godot_name_Polygon2D: StringName! = nil

/// A 2D polygon.
/// 
/// A Polygon2D is defined by a set of points. Each point is connected to the next, with the final point being connected to the first, resulting in a closed polygon. Polygon2Ds can be filled with color (solid or gradient) or filled with a given texture.
public class Polygon2D : Node2D {

    

    public override class var __godot_name: StringName { __godot_name_Polygon2D }

    static var _method_set_polygon_1509147220: GDExtensionMethodBindPtr! = nil
    static var _method_get_polygon_2961356807: GDExtensionMethodBindPtr! = nil
    static var _method_set_uv_1509147220: GDExtensionMethodBindPtr! = nil
    static var _method_get_uv_2961356807: GDExtensionMethodBindPtr! = nil
    static var _method_set_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_polygons_381264803: GDExtensionMethodBindPtr! = nil
    static var _method_get_polygons_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_set_vertex_colors_3546319833: GDExtensionMethodBindPtr! = nil
    static var _method_get_vertex_colors_1392750486: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_4051416890: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_3635182373: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_offset_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_offset_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_rotation_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_rotation_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_scale_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_scale_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_invert_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_invert_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_antialiased_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_antialiased_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_invert_border_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_invert_border_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_offset_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_offset_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_add_bone_703042815: GDExtensionMethodBindPtr! = nil
    static var _method_get_bone_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_bone_path_408788394: GDExtensionMethodBindPtr! = nil
    static var _method_get_bone_weights_1542882410: GDExtensionMethodBindPtr! = nil
    static var _method_erase_bone_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_clear_bones_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_bone_path_2761262315: GDExtensionMethodBindPtr! = nil
    static var _method_set_bone_weights_1345852415: GDExtensionMethodBindPtr! = nil
    static var _method_set_skeleton_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_skeleton_4075236667: GDExtensionMethodBindPtr! = nil
    static var _method_set_internal_vertex_count_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_internal_vertex_count_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Polygon2D = StringName(from: "Polygon2D")

        let _method_set_polygon_1509147220_name = StringName(from: "set_polygon")
        self._method_set_polygon_1509147220 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_polygon_1509147220_name._native_ptr(), 1509147220)
        assert(Polygon2D._method_set_polygon_1509147220 != nil)
        let _method_get_polygon_2961356807_name = StringName(from: "get_polygon")
        self._method_get_polygon_2961356807 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_polygon_2961356807_name._native_ptr(), 2961356807)
        assert(Polygon2D._method_get_polygon_2961356807 != nil)
        let _method_set_uv_1509147220_name = StringName(from: "set_uv")
        self._method_set_uv_1509147220 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_uv_1509147220_name._native_ptr(), 1509147220)
        assert(Polygon2D._method_set_uv_1509147220 != nil)
        let _method_get_uv_2961356807_name = StringName(from: "get_uv")
        self._method_get_uv_2961356807 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_uv_2961356807_name._native_ptr(), 2961356807)
        assert(Polygon2D._method_get_uv_2961356807 != nil)
        let _method_set_color_2920490490_name = StringName(from: "set_color")
        self._method_set_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_color_2920490490_name._native_ptr(), 2920490490)
        assert(Polygon2D._method_set_color_2920490490 != nil)
        let _method_get_color_3444240500_name = StringName(from: "get_color")
        self._method_get_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_color_3444240500_name._native_ptr(), 3444240500)
        assert(Polygon2D._method_get_color_3444240500 != nil)
        let _method_set_polygons_381264803_name = StringName(from: "set_polygons")
        self._method_set_polygons_381264803 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_polygons_381264803_name._native_ptr(), 381264803)
        assert(Polygon2D._method_set_polygons_381264803 != nil)
        let _method_get_polygons_3995934104_name = StringName(from: "get_polygons")
        self._method_get_polygons_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_polygons_3995934104_name._native_ptr(), 3995934104)
        assert(Polygon2D._method_get_polygons_3995934104 != nil)
        let _method_set_vertex_colors_3546319833_name = StringName(from: "set_vertex_colors")
        self._method_set_vertex_colors_3546319833 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_vertex_colors_3546319833_name._native_ptr(), 3546319833)
        assert(Polygon2D._method_set_vertex_colors_3546319833 != nil)
        let _method_get_vertex_colors_1392750486_name = StringName(from: "get_vertex_colors")
        self._method_get_vertex_colors_1392750486 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_vertex_colors_1392750486_name._native_ptr(), 1392750486)
        assert(Polygon2D._method_get_vertex_colors_1392750486 != nil)
        let _method_set_texture_4051416890_name = StringName(from: "set_texture")
        self._method_set_texture_4051416890 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_texture_4051416890_name._native_ptr(), 4051416890)
        assert(Polygon2D._method_set_texture_4051416890 != nil)
        let _method_get_texture_3635182373_name = StringName(from: "get_texture")
        self._method_get_texture_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_texture_3635182373_name._native_ptr(), 3635182373)
        assert(Polygon2D._method_get_texture_3635182373 != nil)
        let _method_set_texture_offset_743155724_name = StringName(from: "set_texture_offset")
        self._method_set_texture_offset_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_texture_offset_743155724_name._native_ptr(), 743155724)
        assert(Polygon2D._method_set_texture_offset_743155724 != nil)
        let _method_get_texture_offset_3341600327_name = StringName(from: "get_texture_offset")
        self._method_get_texture_offset_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_texture_offset_3341600327_name._native_ptr(), 3341600327)
        assert(Polygon2D._method_get_texture_offset_3341600327 != nil)
        let _method_set_texture_rotation_373806689_name = StringName(from: "set_texture_rotation")
        self._method_set_texture_rotation_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_texture_rotation_373806689_name._native_ptr(), 373806689)
        assert(Polygon2D._method_set_texture_rotation_373806689 != nil)
        let _method_get_texture_rotation_1740695150_name = StringName(from: "get_texture_rotation")
        self._method_get_texture_rotation_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_texture_rotation_1740695150_name._native_ptr(), 1740695150)
        assert(Polygon2D._method_get_texture_rotation_1740695150 != nil)
        let _method_set_texture_scale_743155724_name = StringName(from: "set_texture_scale")
        self._method_set_texture_scale_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_texture_scale_743155724_name._native_ptr(), 743155724)
        assert(Polygon2D._method_set_texture_scale_743155724 != nil)
        let _method_get_texture_scale_3341600327_name = StringName(from: "get_texture_scale")
        self._method_get_texture_scale_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_texture_scale_3341600327_name._native_ptr(), 3341600327)
        assert(Polygon2D._method_get_texture_scale_3341600327 != nil)
        let _method_set_invert_enabled_2586408642_name = StringName(from: "set_invert_enabled")
        self._method_set_invert_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_invert_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(Polygon2D._method_set_invert_enabled_2586408642 != nil)
        let _method_get_invert_enabled_36873697_name = StringName(from: "get_invert_enabled")
        self._method_get_invert_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_invert_enabled_36873697_name._native_ptr(), 36873697)
        assert(Polygon2D._method_get_invert_enabled_36873697 != nil)
        let _method_set_antialiased_2586408642_name = StringName(from: "set_antialiased")
        self._method_set_antialiased_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_antialiased_2586408642_name._native_ptr(), 2586408642)
        assert(Polygon2D._method_set_antialiased_2586408642 != nil)
        let _method_get_antialiased_36873697_name = StringName(from: "get_antialiased")
        self._method_get_antialiased_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_antialiased_36873697_name._native_ptr(), 36873697)
        assert(Polygon2D._method_get_antialiased_36873697 != nil)
        let _method_set_invert_border_373806689_name = StringName(from: "set_invert_border")
        self._method_set_invert_border_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_invert_border_373806689_name._native_ptr(), 373806689)
        assert(Polygon2D._method_set_invert_border_373806689 != nil)
        let _method_get_invert_border_1740695150_name = StringName(from: "get_invert_border")
        self._method_get_invert_border_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_invert_border_1740695150_name._native_ptr(), 1740695150)
        assert(Polygon2D._method_get_invert_border_1740695150 != nil)
        let _method_set_offset_743155724_name = StringName(from: "set_offset")
        self._method_set_offset_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_offset_743155724_name._native_ptr(), 743155724)
        assert(Polygon2D._method_set_offset_743155724 != nil)
        let _method_get_offset_3341600327_name = StringName(from: "get_offset")
        self._method_get_offset_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_offset_3341600327_name._native_ptr(), 3341600327)
        assert(Polygon2D._method_get_offset_3341600327 != nil)
        let _method_add_bone_703042815_name = StringName(from: "add_bone")
        self._method_add_bone_703042815 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_bone_703042815_name._native_ptr(), 703042815)
        assert(Polygon2D._method_add_bone_703042815 != nil)
        let _method_get_bone_count_3905245786_name = StringName(from: "get_bone_count")
        self._method_get_bone_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_bone_count_3905245786_name._native_ptr(), 3905245786)
        assert(Polygon2D._method_get_bone_count_3905245786 != nil)
        let _method_get_bone_path_408788394_name = StringName(from: "get_bone_path")
        self._method_get_bone_path_408788394 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_bone_path_408788394_name._native_ptr(), 408788394)
        assert(Polygon2D._method_get_bone_path_408788394 != nil)
        let _method_get_bone_weights_1542882410_name = StringName(from: "get_bone_weights")
        self._method_get_bone_weights_1542882410 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_bone_weights_1542882410_name._native_ptr(), 1542882410)
        assert(Polygon2D._method_get_bone_weights_1542882410 != nil)
        let _method_erase_bone_1286410249_name = StringName(from: "erase_bone")
        self._method_erase_bone_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_erase_bone_1286410249_name._native_ptr(), 1286410249)
        assert(Polygon2D._method_erase_bone_1286410249 != nil)
        let _method_clear_bones_3218959716_name = StringName(from: "clear_bones")
        self._method_clear_bones_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_bones_3218959716_name._native_ptr(), 3218959716)
        assert(Polygon2D._method_clear_bones_3218959716 != nil)
        let _method_set_bone_path_2761262315_name = StringName(from: "set_bone_path")
        self._method_set_bone_path_2761262315 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_bone_path_2761262315_name._native_ptr(), 2761262315)
        assert(Polygon2D._method_set_bone_path_2761262315 != nil)
        let _method_set_bone_weights_1345852415_name = StringName(from: "set_bone_weights")
        self._method_set_bone_weights_1345852415 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_bone_weights_1345852415_name._native_ptr(), 1345852415)
        assert(Polygon2D._method_set_bone_weights_1345852415 != nil)
        let _method_set_skeleton_1348162250_name = StringName(from: "set_skeleton")
        self._method_set_skeleton_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_skeleton_1348162250_name._native_ptr(), 1348162250)
        assert(Polygon2D._method_set_skeleton_1348162250 != nil)
        let _method_get_skeleton_4075236667_name = StringName(from: "get_skeleton")
        self._method_get_skeleton_4075236667 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_skeleton_4075236667_name._native_ptr(), 4075236667)
        assert(Polygon2D._method_get_skeleton_4075236667 != nil)
        let _method_set_internal_vertex_count_1286410249_name = StringName(from: "set_internal_vertex_count")
        self._method_set_internal_vertex_count_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_internal_vertex_count_1286410249_name._native_ptr(), 1286410249)
        assert(Polygon2D._method_set_internal_vertex_count_1286410249 != nil)
        let _method_get_internal_vertex_count_3905245786_name = StringName(from: "get_internal_vertex_count")
        self._method_get_internal_vertex_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_internal_vertex_count_3905245786_name._native_ptr(), 3905245786)
        assert(Polygon2D._method_get_internal_vertex_count_3905245786 != nil)
    }

    public func set_polygon(polygon: PackedVector2Array)  {
        let polygon_native = polygon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(polygon_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_polygon_1509147220,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_polygon() -> PackedVector2Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_polygon_2961356807,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(from: __resPtr.pointee)
    }
    public func set_uv(uv: PackedVector2Array)  {
        let uv_native = uv._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(uv_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_uv_1509147220,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_uv() -> PackedVector2Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_uv_2961356807,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(from: __resPtr.pointee)
    }
    public func set_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_polygons(polygons: Array)  {
        let polygons_native = polygons._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(polygons_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_polygons_381264803,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_polygons() -> Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_polygons_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(from: __resPtr.pointee)
    }
    public func set_vertex_colors(vertex_colors: PackedColorArray)  {
        let vertex_colors_native = vertex_colors._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(vertex_colors_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_vertex_colors_3546319833,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_vertex_colors() -> PackedColorArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_vertex_colors_1392750486,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedColorArray(from: __resPtr.pointee)
    }
    public func set_texture(texture: Texture2D)  {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_4051416890,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_texture() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_3635182373,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(from: __resPtr.pointee)
    }
    public func set_texture_offset(texture_offset: Vector2)  {
        let texture_offset_native = texture_offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_offset_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_texture_offset() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_offset_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func set_texture_rotation(texture_rotation: Float64)  {
        withUnsafePointer(to: texture_rotation) { texture_rotation_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_rotation_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_rotation_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_texture_rotation() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_rotation_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_texture_scale(texture_scale: Vector2)  {
        let texture_scale_native = texture_scale._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_scale_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_texture_scale() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_scale_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func set_invert_enabled(invert: UInt8)  {
        withUnsafePointer(to: invert) { invert_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(invert_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_invert_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_invert_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_invert_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_antialiased(antialiased: UInt8)  {
        withUnsafePointer(to: antialiased) { antialiased_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(antialiased_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_antialiased_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_antialiased() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_antialiased_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_invert_border(invert_border: Float64)  {
        withUnsafePointer(to: invert_border) { invert_border_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(invert_border_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_invert_border_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_invert_border() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_invert_border_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_offset(offset: Vector2)  {
        let offset_native = offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_offset_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_offset() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_offset_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func add_bone(path: NodePath, weights: PackedFloat32Array)  {
        let weights_native = weights._native_ptr()
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(weights_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_bone_703042815,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_bone_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bone_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_bone_path(index: Int64) -> NodePath {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bone_path_408788394,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(from: __resPtr.pointee)
        }
    }
    public func get_bone_weights(index: Int64) -> PackedFloat32Array {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bone_weights_1542882410,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedFloat32Array(from: __resPtr.pointee)
        }
    }
    public func erase_bone(index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_erase_bone_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func clear_bones()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_bones_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_bone_path(index: Int64, path: NodePath)  {
        withUnsafePointer(to: index) { index_native in
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bone_path_2761262315,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_bone_weights(index: Int64, weights: PackedFloat32Array)  {
        withUnsafePointer(to: index) { index_native in
        let weights_native = weights._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(weights_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bone_weights_1345852415,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_skeleton(skeleton: NodePath)  {
        let skeleton_native = skeleton._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(skeleton_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_skeleton_1348162250,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_skeleton() -> NodePath {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_skeleton_4075236667,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(from: __resPtr.pointee)
    }
    public func set_internal_vertex_count(internal_vertex_count: Int64)  {
        withUnsafePointer(to: internal_vertex_count) { internal_vertex_count_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(internal_vertex_count_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_internal_vertex_count_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_internal_vertex_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_internal_vertex_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
}