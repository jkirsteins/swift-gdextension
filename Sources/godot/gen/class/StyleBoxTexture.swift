import godot_native

fileprivate var __godot_name_StyleBoxTexture: StringName! = nil

/// Texture-based nine-patch [StyleBox].
/// 
/// Texture-based nine-patch [StyleBox], in a way similar to [NinePatchRect]. This stylebox performs a 3×3 scaling of a texture, where only the center cell is fully stretched. This makes it possible to design bordered styles regardless of the stylebox's size.
public class StyleBoxTexture : StyleBox {

    public enum AxisStretchMode : Int32 {
        case AXIS_STRETCH_MODE_STRETCH = 0
        case AXIS_STRETCH_MODE_TILE = 1
        case AXIS_STRETCH_MODE_TILE_FIT = 2
    }

    public override class var __godot_name: StringName { __godot_name_StyleBoxTexture }

    static var _method_set_texture_4051416890: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_3635182373: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_margin_4290182280: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_margin_all_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_margin_2869120046: GDExtensionMethodBindPtr! = nil
    static var _method_set_expand_margin_4290182280: GDExtensionMethodBindPtr! = nil
    static var _method_set_expand_margin_all_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_expand_margin_2869120046: GDExtensionMethodBindPtr! = nil
    static var _method_set_region_rect_2046264180: GDExtensionMethodBindPtr! = nil
    static var _method_get_region_rect_1639390495: GDExtensionMethodBindPtr! = nil
    static var _method_set_draw_center_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_draw_center_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_modulate_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_modulate_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_h_axis_stretch_mode_2965538783: GDExtensionMethodBindPtr! = nil
    static var _method_get_h_axis_stretch_mode_3807744063: GDExtensionMethodBindPtr! = nil
    static var _method_set_v_axis_stretch_mode_2965538783: GDExtensionMethodBindPtr! = nil
    static var _method_get_v_axis_stretch_mode_3807744063: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_StyleBoxTexture = StringName(from: "StyleBoxTexture")

        let _method_set_texture_4051416890_name = StringName(from: "set_texture")
        self._method_set_texture_4051416890 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_texture_4051416890_name._native_ptr(), 4051416890)
        assert(StyleBoxTexture._method_set_texture_4051416890 != nil)
        let _method_get_texture_3635182373_name = StringName(from: "get_texture")
        self._method_get_texture_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_texture_3635182373_name._native_ptr(), 3635182373)
        assert(StyleBoxTexture._method_get_texture_3635182373 != nil)
        let _method_set_texture_margin_4290182280_name = StringName(from: "set_texture_margin")
        self._method_set_texture_margin_4290182280 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_texture_margin_4290182280_name._native_ptr(), 4290182280)
        assert(StyleBoxTexture._method_set_texture_margin_4290182280 != nil)
        let _method_set_texture_margin_all_373806689_name = StringName(from: "set_texture_margin_all")
        self._method_set_texture_margin_all_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_texture_margin_all_373806689_name._native_ptr(), 373806689)
        assert(StyleBoxTexture._method_set_texture_margin_all_373806689 != nil)
        let _method_get_texture_margin_2869120046_name = StringName(from: "get_texture_margin")
        self._method_get_texture_margin_2869120046 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_texture_margin_2869120046_name._native_ptr(), 2869120046)
        assert(StyleBoxTexture._method_get_texture_margin_2869120046 != nil)
        let _method_set_expand_margin_4290182280_name = StringName(from: "set_expand_margin")
        self._method_set_expand_margin_4290182280 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_expand_margin_4290182280_name._native_ptr(), 4290182280)
        assert(StyleBoxTexture._method_set_expand_margin_4290182280 != nil)
        let _method_set_expand_margin_all_373806689_name = StringName(from: "set_expand_margin_all")
        self._method_set_expand_margin_all_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_expand_margin_all_373806689_name._native_ptr(), 373806689)
        assert(StyleBoxTexture._method_set_expand_margin_all_373806689 != nil)
        let _method_get_expand_margin_2869120046_name = StringName(from: "get_expand_margin")
        self._method_get_expand_margin_2869120046 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_expand_margin_2869120046_name._native_ptr(), 2869120046)
        assert(StyleBoxTexture._method_get_expand_margin_2869120046 != nil)
        let _method_set_region_rect_2046264180_name = StringName(from: "set_region_rect")
        self._method_set_region_rect_2046264180 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_region_rect_2046264180_name._native_ptr(), 2046264180)
        assert(StyleBoxTexture._method_set_region_rect_2046264180 != nil)
        let _method_get_region_rect_1639390495_name = StringName(from: "get_region_rect")
        self._method_get_region_rect_1639390495 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_region_rect_1639390495_name._native_ptr(), 1639390495)
        assert(StyleBoxTexture._method_get_region_rect_1639390495 != nil)
        let _method_set_draw_center_2586408642_name = StringName(from: "set_draw_center")
        self._method_set_draw_center_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_draw_center_2586408642_name._native_ptr(), 2586408642)
        assert(StyleBoxTexture._method_set_draw_center_2586408642 != nil)
        let _method_is_draw_center_enabled_36873697_name = StringName(from: "is_draw_center_enabled")
        self._method_is_draw_center_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_draw_center_enabled_36873697_name._native_ptr(), 36873697)
        assert(StyleBoxTexture._method_is_draw_center_enabled_36873697 != nil)
        let _method_set_modulate_2920490490_name = StringName(from: "set_modulate")
        self._method_set_modulate_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_modulate_2920490490_name._native_ptr(), 2920490490)
        assert(StyleBoxTexture._method_set_modulate_2920490490 != nil)
        let _method_get_modulate_3444240500_name = StringName(from: "get_modulate")
        self._method_get_modulate_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_modulate_3444240500_name._native_ptr(), 3444240500)
        assert(StyleBoxTexture._method_get_modulate_3444240500 != nil)
        let _method_set_h_axis_stretch_mode_2965538783_name = StringName(from: "set_h_axis_stretch_mode")
        self._method_set_h_axis_stretch_mode_2965538783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_h_axis_stretch_mode_2965538783_name._native_ptr(), 2965538783)
        assert(StyleBoxTexture._method_set_h_axis_stretch_mode_2965538783 != nil)
        let _method_get_h_axis_stretch_mode_3807744063_name = StringName(from: "get_h_axis_stretch_mode")
        self._method_get_h_axis_stretch_mode_3807744063 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_h_axis_stretch_mode_3807744063_name._native_ptr(), 3807744063)
        assert(StyleBoxTexture._method_get_h_axis_stretch_mode_3807744063 != nil)
        let _method_set_v_axis_stretch_mode_2965538783_name = StringName(from: "set_v_axis_stretch_mode")
        self._method_set_v_axis_stretch_mode_2965538783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_v_axis_stretch_mode_2965538783_name._native_ptr(), 2965538783)
        assert(StyleBoxTexture._method_set_v_axis_stretch_mode_2965538783 != nil)
        let _method_get_v_axis_stretch_mode_3807744063_name = StringName(from: "get_v_axis_stretch_mode")
        self._method_get_v_axis_stretch_mode_3807744063 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_v_axis_stretch_mode_3807744063_name._native_ptr(), 3807744063)
        assert(StyleBoxTexture._method_get_v_axis_stretch_mode_3807744063 != nil)
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
    public func set_texture_margin(margin: Side, size: Float64)  {
        withUnsafePointer(to: size) { size_native in
        withUnsafePointer(to: margin.rawValue) { margin_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(margin_native), .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_margin_4290182280,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_texture_margin_all(size: Float64)  {
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_margin_all_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_texture_margin(margin: Side) -> Float64 {
        withUnsafePointer(to: margin.rawValue) { margin_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(margin_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_margin_2869120046,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func set_expand_margin(margin: Side, size: Float64)  {
        withUnsafePointer(to: size) { size_native in
        withUnsafePointer(to: margin.rawValue) { margin_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(margin_native), .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_expand_margin_4290182280,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_expand_margin_all(size: Float64)  {
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_expand_margin_all_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_expand_margin(margin: Side) -> Float64 {
        withUnsafePointer(to: margin.rawValue) { margin_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(margin_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_expand_margin_2869120046,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func set_region_rect(region: Rect2)  {
        let region_native = region._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(region_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_region_rect_2046264180,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_region_rect() -> Rect2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_region_rect_1639390495,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2(from: __resPtr.pointee)
    }
    public func set_draw_center(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_draw_center_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_draw_center_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_draw_center_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_modulate(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_modulate_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_modulate() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_modulate_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_h_axis_stretch_mode(mode: StyleBoxTexture.AxisStretchMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_h_axis_stretch_mode_2965538783,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_h_axis_stretch_mode() -> StyleBoxTexture.AxisStretchMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_h_axis_stretch_mode_3807744063,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StyleBoxTexture.AxisStretchMode(from: __resPtr.pointee)
    }
    public func set_v_axis_stretch_mode(mode: StyleBoxTexture.AxisStretchMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_v_axis_stretch_mode_2965538783,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_v_axis_stretch_mode() -> StyleBoxTexture.AxisStretchMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_v_axis_stretch_mode_3807744063,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StyleBoxTexture.AxisStretchMode(from: __resPtr.pointee)
    }
}