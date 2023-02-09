import godot_native

fileprivate var __godot_name_Gradient: StringName! = nil

/// A color interpolator resource which can be used to generate colors between user-defined color points.
/// 
/// Given a set of colors, this resource will interpolate them in order. This means that if you have color 1, color 2 and color 3, the gradient will interpolate from color 1 to color 2 and from color 2 to color 3. The gradient will initially have 2 colors (black and white), one (black) at gradient lower offset 0 and the other (white) at the gradient higher offset 1.
///  
/// See also [Curve] which supports more complex easing methods, but does not support colors.
open class Gradient : Resource {

    public enum InterpolationMode : Int32 {
        case GRADIENT_INTERPOLATE_LINEAR = 0
        case GRADIENT_INTERPOLATE_CONSTANT = 1
        case GRADIENT_INTERPOLATE_CUBIC = 2
    }

    public override class var __godot_name: StringName { __godot_name_Gradient }

    static var _method_add_point_3629403827: StringName! = nil
    static var _method_remove_point_1286410249: StringName! = nil
    static var _method_set_offset_1602489585: StringName! = nil
    static var _method_get_offset_4025615559: StringName! = nil
    static var _method_reverse_3218959716: StringName! = nil
    static var _method_set_color_2878471219: StringName! = nil
    static var _method_get_color_2624840992: StringName! = nil
    static var _method_sample_1250405064: StringName! = nil
    static var _method_get_point_count_3905245786: StringName! = nil
    static var _method_set_offsets_2899603908: StringName! = nil
    static var _method_get_offsets_675695659: StringName! = nil
    static var _method_set_colors_3546319833: StringName! = nil
    static var _method_get_colors_1392750486: StringName! = nil
    static var _method_set_interpolation_mode_1971444490: StringName! = nil
    static var _method_get_interpolation_mode_3674172981: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_Gradient == nil)
        __godot_name_Gradient = StringName(from: "Gradient")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_add_point_3629403827 = StringName(from: "add_point")
        assert(self._method_add_point_3629403827 != nil)
        self._method_remove_point_1286410249 = StringName(from: "remove_point")
        assert(self._method_remove_point_1286410249 != nil)
        self._method_set_offset_1602489585 = StringName(from: "set_offset")
        assert(self._method_set_offset_1602489585 != nil)
        self._method_get_offset_4025615559 = StringName(from: "get_offset")
        assert(self._method_get_offset_4025615559 != nil)
        self._method_reverse_3218959716 = StringName(from: "reverse")
        assert(self._method_reverse_3218959716 != nil)
        self._method_set_color_2878471219 = StringName(from: "set_color")
        assert(self._method_set_color_2878471219 != nil)
        self._method_get_color_2624840992 = StringName(from: "get_color")
        assert(self._method_get_color_2624840992 != nil)
        self._method_sample_1250405064 = StringName(from: "sample")
        assert(self._method_sample_1250405064 != nil)
        self._method_get_point_count_3905245786 = StringName(from: "get_point_count")
        assert(self._method_get_point_count_3905245786 != nil)
        self._method_set_offsets_2899603908 = StringName(from: "set_offsets")
        assert(self._method_set_offsets_2899603908 != nil)
        self._method_get_offsets_675695659 = StringName(from: "get_offsets")
        assert(self._method_get_offsets_675695659 != nil)
        self._method_set_colors_3546319833 = StringName(from: "set_colors")
        assert(self._method_set_colors_3546319833 != nil)
        self._method_get_colors_1392750486 = StringName(from: "get_colors")
        assert(self._method_get_colors_1392750486 != nil)
        self._method_set_interpolation_mode_1971444490 = StringName(from: "set_interpolation_mode")
        assert(self._method_set_interpolation_mode_1971444490 != nil)
        self._method_get_interpolation_mode_3674172981 = StringName(from: "get_interpolation_mode")
        assert(self._method_get_interpolation_mode_3674172981 != nil)
    }

    public func add_point(offset: Float64, color: Color)  {
        withUnsafePointer(to: offset) { offset_native in
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native), .init(color_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_point_3629403827._native_ptr(),
                    3629403827)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func remove_point(point: Int64)  {
        withUnsafePointer(to: point) { point_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(point_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_point_1286410249._native_ptr(),
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
    public func set_offset(point: Int64, offset: Float64)  {
        withUnsafePointer(to: offset) { offset_native in
        withUnsafePointer(to: point) { point_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(point_native), .init(offset_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_offset_1602489585._native_ptr(),
                    1602489585)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_offset(point: Int64) -> Float64 {
        withUnsafePointer(to: point) { point_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(point_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_offset_4025615559._native_ptr(),
                    4025615559)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func reverse()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_reverse_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_color(point: Int64, color: Color)  {
        withUnsafePointer(to: point) { point_native in
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(point_native), .init(color_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_color_2878471219._native_ptr(),
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
    public func get_color(point: Int64) -> Color {
        withUnsafePointer(to: point) { point_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(point_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_color_2624840992._native_ptr(),
                    2624840992)
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
    public func sample(offset: Float64) -> Color {
        withUnsafePointer(to: offset) { offset_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_sample_1250405064._native_ptr(),
                    1250405064)
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
    public func get_point_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_point_count_3905245786._native_ptr(),
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
    public func set_offsets(offsets: PackedFloat32Array)  {
        let offsets_native = offsets._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offsets_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_offsets_2899603908._native_ptr(),
                    2899603908)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_offsets() -> PackedFloat32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_offsets_675695659._native_ptr(),
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
    public func set_colors(colors: PackedColorArray)  {
        let colors_native = colors._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(colors_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_colors_3546319833._native_ptr(),
                    3546319833)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_colors() -> PackedColorArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_colors_1392750486._native_ptr(),
                    1392750486)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedColorArray(godot: __resPtr.pointee)
    }
    public func set_interpolation_mode(interpolation_mode: Gradient.InterpolationMode)  {
        withUnsafePointer(to: interpolation_mode.rawValue) { interpolation_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(interpolation_mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_interpolation_mode_1971444490._native_ptr(),
                    1971444490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_interpolation_mode() -> Gradient.InterpolationMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_interpolation_mode_3674172981._native_ptr(),
                    3674172981)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Gradient.InterpolationMode(godot: __resPtr.pointee)
    }
}