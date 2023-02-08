import godot_native

fileprivate var __godot_name_NinePatchRect: StringName! = nil

/// Scalable texture-based frame that tiles the texture's centers and sides, but keeps the corners' original size. Perfect for panels and dialog boxes.
/// 
/// Also known as 9-slice panels, NinePatchRect produces clean panels of any size, based on a small texture. To do so, it splits the texture in a 3×3 grid. When you scale the node, it tiles the texture's sides horizontally or vertically, the center on both axes but it doesn't scale or tile the corners.
open class NinePatchRect : Control {

    public enum AxisStretchMode : Int32 {
        case AXIS_STRETCH_MODE_STRETCH = 0
        case AXIS_STRETCH_MODE_TILE = 1
        case AXIS_STRETCH_MODE_TILE_FIT = 2
    }

    public override class var __godot_name: StringName { __godot_name_NinePatchRect }

    static var _method_set_texture_4051416890: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_3635182373: GDExtensionMethodBindPtr! = nil
    static var _method_set_patch_margin_437707142: GDExtensionMethodBindPtr! = nil
    static var _method_get_patch_margin_1983885014: GDExtensionMethodBindPtr! = nil
    static var _method_set_region_rect_2046264180: GDExtensionMethodBindPtr! = nil
    static var _method_get_region_rect_1639390495: GDExtensionMethodBindPtr! = nil
    static var _method_set_draw_center_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_draw_center_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_h_axis_stretch_mode_3219608417: GDExtensionMethodBindPtr! = nil
    static var _method_get_h_axis_stretch_mode_3317113799: GDExtensionMethodBindPtr! = nil
    static var _method_set_v_axis_stretch_mode_3219608417: GDExtensionMethodBindPtr! = nil
    static var _method_get_v_axis_stretch_mode_3317113799: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_NinePatchRect = StringName(from: "NinePatchRect")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_texture_4051416890_name = StringName(from: "set_texture")
        self._method_set_texture_4051416890 = self.interface.pointee.classdb_get_method_bind(__godot_name_NinePatchRect._native_ptr(), _method_set_texture_4051416890_name._native_ptr(), 4051416890)
        assert(NinePatchRect._method_set_texture_4051416890 != nil)
        let _method_get_texture_3635182373_name = StringName(from: "get_texture")
        self._method_get_texture_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name_NinePatchRect._native_ptr(), _method_get_texture_3635182373_name._native_ptr(), 3635182373)
        assert(NinePatchRect._method_get_texture_3635182373 != nil)
        let _method_set_patch_margin_437707142_name = StringName(from: "set_patch_margin")
        self._method_set_patch_margin_437707142 = self.interface.pointee.classdb_get_method_bind(__godot_name_NinePatchRect._native_ptr(), _method_set_patch_margin_437707142_name._native_ptr(), 437707142)
        assert(NinePatchRect._method_set_patch_margin_437707142 != nil)
        let _method_get_patch_margin_1983885014_name = StringName(from: "get_patch_margin")
        self._method_get_patch_margin_1983885014 = self.interface.pointee.classdb_get_method_bind(__godot_name_NinePatchRect._native_ptr(), _method_get_patch_margin_1983885014_name._native_ptr(), 1983885014)
        assert(NinePatchRect._method_get_patch_margin_1983885014 != nil)
        let _method_set_region_rect_2046264180_name = StringName(from: "set_region_rect")
        self._method_set_region_rect_2046264180 = self.interface.pointee.classdb_get_method_bind(__godot_name_NinePatchRect._native_ptr(), _method_set_region_rect_2046264180_name._native_ptr(), 2046264180)
        assert(NinePatchRect._method_set_region_rect_2046264180 != nil)
        let _method_get_region_rect_1639390495_name = StringName(from: "get_region_rect")
        self._method_get_region_rect_1639390495 = self.interface.pointee.classdb_get_method_bind(__godot_name_NinePatchRect._native_ptr(), _method_get_region_rect_1639390495_name._native_ptr(), 1639390495)
        assert(NinePatchRect._method_get_region_rect_1639390495 != nil)
        let _method_set_draw_center_2586408642_name = StringName(from: "set_draw_center")
        self._method_set_draw_center_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_NinePatchRect._native_ptr(), _method_set_draw_center_2586408642_name._native_ptr(), 2586408642)
        assert(NinePatchRect._method_set_draw_center_2586408642 != nil)
        let _method_is_draw_center_enabled_36873697_name = StringName(from: "is_draw_center_enabled")
        self._method_is_draw_center_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_NinePatchRect._native_ptr(), _method_is_draw_center_enabled_36873697_name._native_ptr(), 36873697)
        assert(NinePatchRect._method_is_draw_center_enabled_36873697 != nil)
        let _method_set_h_axis_stretch_mode_3219608417_name = StringName(from: "set_h_axis_stretch_mode")
        self._method_set_h_axis_stretch_mode_3219608417 = self.interface.pointee.classdb_get_method_bind(__godot_name_NinePatchRect._native_ptr(), _method_set_h_axis_stretch_mode_3219608417_name._native_ptr(), 3219608417)
        assert(NinePatchRect._method_set_h_axis_stretch_mode_3219608417 != nil)
        let _method_get_h_axis_stretch_mode_3317113799_name = StringName(from: "get_h_axis_stretch_mode")
        self._method_get_h_axis_stretch_mode_3317113799 = self.interface.pointee.classdb_get_method_bind(__godot_name_NinePatchRect._native_ptr(), _method_get_h_axis_stretch_mode_3317113799_name._native_ptr(), 3317113799)
        assert(NinePatchRect._method_get_h_axis_stretch_mode_3317113799 != nil)
        let _method_set_v_axis_stretch_mode_3219608417_name = StringName(from: "set_v_axis_stretch_mode")
        self._method_set_v_axis_stretch_mode_3219608417 = self.interface.pointee.classdb_get_method_bind(__godot_name_NinePatchRect._native_ptr(), _method_set_v_axis_stretch_mode_3219608417_name._native_ptr(), 3219608417)
        assert(NinePatchRect._method_set_v_axis_stretch_mode_3219608417 != nil)
        let _method_get_v_axis_stretch_mode_3317113799_name = StringName(from: "get_v_axis_stretch_mode")
        self._method_get_v_axis_stretch_mode_3317113799 = self.interface.pointee.classdb_get_method_bind(__godot_name_NinePatchRect._native_ptr(), _method_get_v_axis_stretch_mode_3317113799_name._native_ptr(), 3317113799)
        assert(NinePatchRect._method_get_v_axis_stretch_mode_3317113799 != nil)
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
            return Texture2D(godot: __resPtr.pointee)
    }
    public func set_patch_margin(margin: Side, value: Int64)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: margin.rawValue) { margin_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(margin_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_patch_margin_437707142,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_patch_margin(margin: Side) -> Int64 {
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
                    Self._method_get_patch_margin_1983885014,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func set_region_rect(rect: Rect2)  {
        let rect_native = rect._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rect_native)
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
            return Rect2(godot: __resPtr.pointee)
    }
    public func set_draw_center(draw_center: UInt8)  {
        withUnsafePointer(to: draw_center) { draw_center_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(draw_center_native)
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
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_h_axis_stretch_mode(mode: NinePatchRect.AxisStretchMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_h_axis_stretch_mode_3219608417,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_h_axis_stretch_mode() -> NinePatchRect.AxisStretchMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_h_axis_stretch_mode_3317113799,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NinePatchRect.AxisStretchMode(godot: __resPtr.pointee)
    }
    public func set_v_axis_stretch_mode(mode: NinePatchRect.AxisStretchMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_v_axis_stretch_mode_3219608417,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_v_axis_stretch_mode() -> NinePatchRect.AxisStretchMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_v_axis_stretch_mode_3317113799,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NinePatchRect.AxisStretchMode(godot: __resPtr.pointee)
    }
}