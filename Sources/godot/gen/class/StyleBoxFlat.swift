import godot_native

fileprivate var __godot_name_StyleBoxFlat: StringName! = nil

/// Customizable [StyleBox] with a given set of parameters (no texture required).
/// 
/// This [StyleBox] can be used to achieve all kinds of looks without the need of a texture. The following properties are customizable:
///  
/// - Color
///  
/// - Border width (individual width for each border)
///  
/// - Rounded corners (individual radius for each corner)
///  
/// - Shadow (with blur and offset)
///  
/// Setting corner radius to high values is allowed. As soon as corners overlap, the stylebox will switch to a relative system.
///  
/// [b]Example:[/b]
///  
/// [codeblock]
///  
/// height = 30
///  
/// corner_radius_top_left = 50
///  
/// corner_radius_bottom_left = 100
///  
/// [/codeblock]
///  
/// The relative system now would take the 1:2 ratio of the two left corners to calculate the actual corner width. Both corners added will [b]never[/b] be more than the height. Result:
///  
/// [codeblock]
///  
/// corner_radius_top_left: 10
///  
/// corner_radius_bottom_left: 20
///  
/// [/codeblock]
public class StyleBoxFlat : StyleBox {

    

    public override class var __godot_name: StringName { __godot_name_StyleBoxFlat }

    static var _method_set_bg_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_bg_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_border_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_border_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_border_width_all_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_border_width_min_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_border_width_437707142: GDExtensionMethodBindPtr! = nil
    static var _method_get_border_width_1983885014: GDExtensionMethodBindPtr! = nil
    static var _method_set_border_blend_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_border_blend_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_corner_radius_all_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_corner_radius_2696158768: GDExtensionMethodBindPtr! = nil
    static var _method_get_corner_radius_3982397690: GDExtensionMethodBindPtr! = nil
    static var _method_set_expand_margin_4290182280: GDExtensionMethodBindPtr! = nil
    static var _method_set_expand_margin_all_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_expand_margin_2869120046: GDExtensionMethodBindPtr! = nil
    static var _method_set_draw_center_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_draw_center_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_skew_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_skew_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_shadow_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_shadow_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_shadow_size_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_shadow_size_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_shadow_offset_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_shadow_offset_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_anti_aliased_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_anti_aliased_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_aa_size_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_aa_size_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_corner_detail_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_corner_detail_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_StyleBoxFlat = StringName(from: "StyleBoxFlat")

        let _method_set_bg_color_2920490490_name = StringName(from: "set_bg_color")
        self._method_set_bg_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_bg_color_2920490490_name._native_ptr(), 2920490490)
        assert(StyleBoxFlat._method_set_bg_color_2920490490 != nil)
        let _method_get_bg_color_3444240500_name = StringName(from: "get_bg_color")
        self._method_get_bg_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_bg_color_3444240500_name._native_ptr(), 3444240500)
        assert(StyleBoxFlat._method_get_bg_color_3444240500 != nil)
        let _method_set_border_color_2920490490_name = StringName(from: "set_border_color")
        self._method_set_border_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_border_color_2920490490_name._native_ptr(), 2920490490)
        assert(StyleBoxFlat._method_set_border_color_2920490490 != nil)
        let _method_get_border_color_3444240500_name = StringName(from: "get_border_color")
        self._method_get_border_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_border_color_3444240500_name._native_ptr(), 3444240500)
        assert(StyleBoxFlat._method_get_border_color_3444240500 != nil)
        let _method_set_border_width_all_1286410249_name = StringName(from: "set_border_width_all")
        self._method_set_border_width_all_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_border_width_all_1286410249_name._native_ptr(), 1286410249)
        assert(StyleBoxFlat._method_set_border_width_all_1286410249 != nil)
        let _method_get_border_width_min_3905245786_name = StringName(from: "get_border_width_min")
        self._method_get_border_width_min_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_border_width_min_3905245786_name._native_ptr(), 3905245786)
        assert(StyleBoxFlat._method_get_border_width_min_3905245786 != nil)
        let _method_set_border_width_437707142_name = StringName(from: "set_border_width")
        self._method_set_border_width_437707142 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_border_width_437707142_name._native_ptr(), 437707142)
        assert(StyleBoxFlat._method_set_border_width_437707142 != nil)
        let _method_get_border_width_1983885014_name = StringName(from: "get_border_width")
        self._method_get_border_width_1983885014 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_border_width_1983885014_name._native_ptr(), 1983885014)
        assert(StyleBoxFlat._method_get_border_width_1983885014 != nil)
        let _method_set_border_blend_2586408642_name = StringName(from: "set_border_blend")
        self._method_set_border_blend_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_border_blend_2586408642_name._native_ptr(), 2586408642)
        assert(StyleBoxFlat._method_set_border_blend_2586408642 != nil)
        let _method_get_border_blend_36873697_name = StringName(from: "get_border_blend")
        self._method_get_border_blend_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_border_blend_36873697_name._native_ptr(), 36873697)
        assert(StyleBoxFlat._method_get_border_blend_36873697 != nil)
        let _method_set_corner_radius_all_1286410249_name = StringName(from: "set_corner_radius_all")
        self._method_set_corner_radius_all_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_corner_radius_all_1286410249_name._native_ptr(), 1286410249)
        assert(StyleBoxFlat._method_set_corner_radius_all_1286410249 != nil)
        let _method_set_corner_radius_2696158768_name = StringName(from: "set_corner_radius")
        self._method_set_corner_radius_2696158768 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_corner_radius_2696158768_name._native_ptr(), 2696158768)
        assert(StyleBoxFlat._method_set_corner_radius_2696158768 != nil)
        let _method_get_corner_radius_3982397690_name = StringName(from: "get_corner_radius")
        self._method_get_corner_radius_3982397690 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_corner_radius_3982397690_name._native_ptr(), 3982397690)
        assert(StyleBoxFlat._method_get_corner_radius_3982397690 != nil)
        let _method_set_expand_margin_4290182280_name = StringName(from: "set_expand_margin")
        self._method_set_expand_margin_4290182280 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_expand_margin_4290182280_name._native_ptr(), 4290182280)
        assert(StyleBoxFlat._method_set_expand_margin_4290182280 != nil)
        let _method_set_expand_margin_all_373806689_name = StringName(from: "set_expand_margin_all")
        self._method_set_expand_margin_all_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_expand_margin_all_373806689_name._native_ptr(), 373806689)
        assert(StyleBoxFlat._method_set_expand_margin_all_373806689 != nil)
        let _method_get_expand_margin_2869120046_name = StringName(from: "get_expand_margin")
        self._method_get_expand_margin_2869120046 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_expand_margin_2869120046_name._native_ptr(), 2869120046)
        assert(StyleBoxFlat._method_get_expand_margin_2869120046 != nil)
        let _method_set_draw_center_2586408642_name = StringName(from: "set_draw_center")
        self._method_set_draw_center_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_draw_center_2586408642_name._native_ptr(), 2586408642)
        assert(StyleBoxFlat._method_set_draw_center_2586408642 != nil)
        let _method_is_draw_center_enabled_36873697_name = StringName(from: "is_draw_center_enabled")
        self._method_is_draw_center_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_draw_center_enabled_36873697_name._native_ptr(), 36873697)
        assert(StyleBoxFlat._method_is_draw_center_enabled_36873697 != nil)
        let _method_set_skew_743155724_name = StringName(from: "set_skew")
        self._method_set_skew_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_skew_743155724_name._native_ptr(), 743155724)
        assert(StyleBoxFlat._method_set_skew_743155724 != nil)
        let _method_get_skew_3341600327_name = StringName(from: "get_skew")
        self._method_get_skew_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_skew_3341600327_name._native_ptr(), 3341600327)
        assert(StyleBoxFlat._method_get_skew_3341600327 != nil)
        let _method_set_shadow_color_2920490490_name = StringName(from: "set_shadow_color")
        self._method_set_shadow_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_shadow_color_2920490490_name._native_ptr(), 2920490490)
        assert(StyleBoxFlat._method_set_shadow_color_2920490490 != nil)
        let _method_get_shadow_color_3444240500_name = StringName(from: "get_shadow_color")
        self._method_get_shadow_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_shadow_color_3444240500_name._native_ptr(), 3444240500)
        assert(StyleBoxFlat._method_get_shadow_color_3444240500 != nil)
        let _method_set_shadow_size_1286410249_name = StringName(from: "set_shadow_size")
        self._method_set_shadow_size_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_shadow_size_1286410249_name._native_ptr(), 1286410249)
        assert(StyleBoxFlat._method_set_shadow_size_1286410249 != nil)
        let _method_get_shadow_size_3905245786_name = StringName(from: "get_shadow_size")
        self._method_get_shadow_size_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_shadow_size_3905245786_name._native_ptr(), 3905245786)
        assert(StyleBoxFlat._method_get_shadow_size_3905245786 != nil)
        let _method_set_shadow_offset_743155724_name = StringName(from: "set_shadow_offset")
        self._method_set_shadow_offset_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_shadow_offset_743155724_name._native_ptr(), 743155724)
        assert(StyleBoxFlat._method_set_shadow_offset_743155724 != nil)
        let _method_get_shadow_offset_3341600327_name = StringName(from: "get_shadow_offset")
        self._method_get_shadow_offset_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_shadow_offset_3341600327_name._native_ptr(), 3341600327)
        assert(StyleBoxFlat._method_get_shadow_offset_3341600327 != nil)
        let _method_set_anti_aliased_2586408642_name = StringName(from: "set_anti_aliased")
        self._method_set_anti_aliased_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_anti_aliased_2586408642_name._native_ptr(), 2586408642)
        assert(StyleBoxFlat._method_set_anti_aliased_2586408642 != nil)
        let _method_is_anti_aliased_36873697_name = StringName(from: "is_anti_aliased")
        self._method_is_anti_aliased_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_anti_aliased_36873697_name._native_ptr(), 36873697)
        assert(StyleBoxFlat._method_is_anti_aliased_36873697 != nil)
        let _method_set_aa_size_373806689_name = StringName(from: "set_aa_size")
        self._method_set_aa_size_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_aa_size_373806689_name._native_ptr(), 373806689)
        assert(StyleBoxFlat._method_set_aa_size_373806689 != nil)
        let _method_get_aa_size_1740695150_name = StringName(from: "get_aa_size")
        self._method_get_aa_size_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_aa_size_1740695150_name._native_ptr(), 1740695150)
        assert(StyleBoxFlat._method_get_aa_size_1740695150 != nil)
        let _method_set_corner_detail_1286410249_name = StringName(from: "set_corner_detail")
        self._method_set_corner_detail_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_corner_detail_1286410249_name._native_ptr(), 1286410249)
        assert(StyleBoxFlat._method_set_corner_detail_1286410249 != nil)
        let _method_get_corner_detail_3905245786_name = StringName(from: "get_corner_detail")
        self._method_get_corner_detail_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_corner_detail_3905245786_name._native_ptr(), 3905245786)
        assert(StyleBoxFlat._method_get_corner_detail_3905245786 != nil)
    }

    public func set_bg_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bg_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_bg_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bg_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_border_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_border_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_border_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_border_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_border_width_all(width: Int64)  {
        withUnsafePointer(to: width) { width_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(width_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_border_width_all_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_border_width_min() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_border_width_min_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_border_width(margin: Side, width: Int64)  {
        withUnsafePointer(to: width) { width_native in
        withUnsafePointer(to: margin.rawValue) { margin_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(margin_native), .init(width_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_border_width_437707142,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_border_width(margin: Side) -> Int64 {
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
                    Self._method_get_border_width_1983885014,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func set_border_blend(blend: UInt8)  {
        withUnsafePointer(to: blend) { blend_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(blend_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_border_blend_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_border_blend() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_border_blend_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_corner_radius_all(radius: Int64)  {
        withUnsafePointer(to: radius) { radius_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(radius_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_corner_radius_all_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_corner_radius(corner: Corner, radius: Int64)  {
        withUnsafePointer(to: radius) { radius_native in
        withUnsafePointer(to: corner.rawValue) { corner_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(corner_native), .init(radius_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_corner_radius_2696158768,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_corner_radius(corner: Corner) -> Int64 {
        withUnsafePointer(to: corner.rawValue) { corner_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(corner_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_corner_radius_3982397690,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            return UInt8(from: __resPtr.pointee)
    }
    public func set_skew(skew: Vector2)  {
        let skew_native = skew._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(skew_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_skew_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_skew() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_skew_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func set_shadow_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_shadow_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_shadow_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_shadow_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_shadow_size(size: Int64)  {
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_shadow_size_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_shadow_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_shadow_size_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_shadow_offset(offset: Vector2)  {
        let offset_native = offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_shadow_offset_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_shadow_offset() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_shadow_offset_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func set_anti_aliased(anti_aliased: UInt8)  {
        withUnsafePointer(to: anti_aliased) { anti_aliased_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(anti_aliased_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_anti_aliased_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_anti_aliased() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_anti_aliased_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_aa_size(size: Float64)  {
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_aa_size_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_aa_size() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_aa_size_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_corner_detail(detail: Int64)  {
        withUnsafePointer(to: detail) { detail_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(detail_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_corner_detail_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_corner_detail() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_corner_detail_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
}