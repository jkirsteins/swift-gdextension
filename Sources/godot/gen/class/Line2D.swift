import godot_native

fileprivate var __godot_name_Line2D: StringName! = nil

/// A 2D line.
/// 
/// A line through several points in 2D space.
open class Line2D : Node2D {

    public enum LineJointMode : Int32 {
        case LINE_JOINT_SHARP = 0
        case LINE_JOINT_BEVEL = 1
        case LINE_JOINT_ROUND = 2
    }
    public enum LineCapMode : Int32 {
        case LINE_CAP_NONE = 0
        case LINE_CAP_BOX = 1
        case LINE_CAP_ROUND = 2
    }
    public enum LineTextureMode : Int32 {
        case LINE_TEXTURE_NONE = 0
        case LINE_TEXTURE_TILE = 1
        case LINE_TEXTURE_STRETCH = 2
    }

    public override class var __godot_name: StringName { __godot_name_Line2D }

    static var _method_set_points_1509147220: GDExtensionMethodBindPtr! = nil
    static var _method_get_points_2961356807: GDExtensionMethodBindPtr! = nil
    static var _method_set_point_position_163021252: GDExtensionMethodBindPtr! = nil
    static var _method_get_point_position_2299179447: GDExtensionMethodBindPtr! = nil
    static var _method_get_point_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_add_point_468506575: GDExtensionMethodBindPtr! = nil
    static var _method_remove_point_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_clear_points_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_width_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_width_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_curve_270443179: GDExtensionMethodBindPtr! = nil
    static var _method_get_curve_2460114913: GDExtensionMethodBindPtr! = nil
    static var _method_set_default_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_default_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_gradient_2756054477: GDExtensionMethodBindPtr! = nil
    static var _method_get_gradient_132272999: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_4051416890: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_3635182373: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_mode_1952559516: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_mode_2341040722: GDExtensionMethodBindPtr! = nil
    static var _method_set_joint_mode_604292979: GDExtensionMethodBindPtr! = nil
    static var _method_get_joint_mode_2546544037: GDExtensionMethodBindPtr! = nil
    static var _method_set_begin_cap_mode_1669024546: GDExtensionMethodBindPtr! = nil
    static var _method_get_begin_cap_mode_1107511441: GDExtensionMethodBindPtr! = nil
    static var _method_set_end_cap_mode_1669024546: GDExtensionMethodBindPtr! = nil
    static var _method_get_end_cap_mode_1107511441: GDExtensionMethodBindPtr! = nil
    static var _method_set_sharp_limit_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_sharp_limit_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_round_precision_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_round_precision_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_antialiased_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_antialiased_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_Line2D = StringName(from: "Line2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_points_1509147220_name = StringName(from: "set_points")
        self._method_set_points_1509147220 = self.interface.pointee.classdb_get_method_bind(__godot_name_Line2D._native_ptr(), _method_set_points_1509147220_name._native_ptr(), 1509147220)
        assert(Line2D._method_set_points_1509147220 != nil)
        let _method_get_points_2961356807_name = StringName(from: "get_points")
        self._method_get_points_2961356807 = self.interface.pointee.classdb_get_method_bind(__godot_name_Line2D._native_ptr(), _method_get_points_2961356807_name._native_ptr(), 2961356807)
        assert(Line2D._method_get_points_2961356807 != nil)
        let _method_set_point_position_163021252_name = StringName(from: "set_point_position")
        self._method_set_point_position_163021252 = self.interface.pointee.classdb_get_method_bind(__godot_name_Line2D._native_ptr(), _method_set_point_position_163021252_name._native_ptr(), 163021252)
        assert(Line2D._method_set_point_position_163021252 != nil)
        let _method_get_point_position_2299179447_name = StringName(from: "get_point_position")
        self._method_get_point_position_2299179447 = self.interface.pointee.classdb_get_method_bind(__godot_name_Line2D._native_ptr(), _method_get_point_position_2299179447_name._native_ptr(), 2299179447)
        assert(Line2D._method_get_point_position_2299179447 != nil)
        let _method_get_point_count_3905245786_name = StringName(from: "get_point_count")
        self._method_get_point_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_Line2D._native_ptr(), _method_get_point_count_3905245786_name._native_ptr(), 3905245786)
        assert(Line2D._method_get_point_count_3905245786 != nil)
        let _method_add_point_468506575_name = StringName(from: "add_point")
        self._method_add_point_468506575 = self.interface.pointee.classdb_get_method_bind(__godot_name_Line2D._native_ptr(), _method_add_point_468506575_name._native_ptr(), 468506575)
        assert(Line2D._method_add_point_468506575 != nil)
        let _method_remove_point_1286410249_name = StringName(from: "remove_point")
        self._method_remove_point_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_Line2D._native_ptr(), _method_remove_point_1286410249_name._native_ptr(), 1286410249)
        assert(Line2D._method_remove_point_1286410249 != nil)
        let _method_clear_points_3218959716_name = StringName(from: "clear_points")
        self._method_clear_points_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_Line2D._native_ptr(), _method_clear_points_3218959716_name._native_ptr(), 3218959716)
        assert(Line2D._method_clear_points_3218959716 != nil)
        let _method_set_width_373806689_name = StringName(from: "set_width")
        self._method_set_width_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_Line2D._native_ptr(), _method_set_width_373806689_name._native_ptr(), 373806689)
        assert(Line2D._method_set_width_373806689 != nil)
        let _method_get_width_1740695150_name = StringName(from: "get_width")
        self._method_get_width_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_Line2D._native_ptr(), _method_get_width_1740695150_name._native_ptr(), 1740695150)
        assert(Line2D._method_get_width_1740695150 != nil)
        let _method_set_curve_270443179_name = StringName(from: "set_curve")
        self._method_set_curve_270443179 = self.interface.pointee.classdb_get_method_bind(__godot_name_Line2D._native_ptr(), _method_set_curve_270443179_name._native_ptr(), 270443179)
        assert(Line2D._method_set_curve_270443179 != nil)
        let _method_get_curve_2460114913_name = StringName(from: "get_curve")
        self._method_get_curve_2460114913 = self.interface.pointee.classdb_get_method_bind(__godot_name_Line2D._native_ptr(), _method_get_curve_2460114913_name._native_ptr(), 2460114913)
        assert(Line2D._method_get_curve_2460114913 != nil)
        let _method_set_default_color_2920490490_name = StringName(from: "set_default_color")
        self._method_set_default_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name_Line2D._native_ptr(), _method_set_default_color_2920490490_name._native_ptr(), 2920490490)
        assert(Line2D._method_set_default_color_2920490490 != nil)
        let _method_get_default_color_3444240500_name = StringName(from: "get_default_color")
        self._method_get_default_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name_Line2D._native_ptr(), _method_get_default_color_3444240500_name._native_ptr(), 3444240500)
        assert(Line2D._method_get_default_color_3444240500 != nil)
        let _method_set_gradient_2756054477_name = StringName(from: "set_gradient")
        self._method_set_gradient_2756054477 = self.interface.pointee.classdb_get_method_bind(__godot_name_Line2D._native_ptr(), _method_set_gradient_2756054477_name._native_ptr(), 2756054477)
        assert(Line2D._method_set_gradient_2756054477 != nil)
        let _method_get_gradient_132272999_name = StringName(from: "get_gradient")
        self._method_get_gradient_132272999 = self.interface.pointee.classdb_get_method_bind(__godot_name_Line2D._native_ptr(), _method_get_gradient_132272999_name._native_ptr(), 132272999)
        assert(Line2D._method_get_gradient_132272999 != nil)
        let _method_set_texture_4051416890_name = StringName(from: "set_texture")
        self._method_set_texture_4051416890 = self.interface.pointee.classdb_get_method_bind(__godot_name_Line2D._native_ptr(), _method_set_texture_4051416890_name._native_ptr(), 4051416890)
        assert(Line2D._method_set_texture_4051416890 != nil)
        let _method_get_texture_3635182373_name = StringName(from: "get_texture")
        self._method_get_texture_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name_Line2D._native_ptr(), _method_get_texture_3635182373_name._native_ptr(), 3635182373)
        assert(Line2D._method_get_texture_3635182373 != nil)
        let _method_set_texture_mode_1952559516_name = StringName(from: "set_texture_mode")
        self._method_set_texture_mode_1952559516 = self.interface.pointee.classdb_get_method_bind(__godot_name_Line2D._native_ptr(), _method_set_texture_mode_1952559516_name._native_ptr(), 1952559516)
        assert(Line2D._method_set_texture_mode_1952559516 != nil)
        let _method_get_texture_mode_2341040722_name = StringName(from: "get_texture_mode")
        self._method_get_texture_mode_2341040722 = self.interface.pointee.classdb_get_method_bind(__godot_name_Line2D._native_ptr(), _method_get_texture_mode_2341040722_name._native_ptr(), 2341040722)
        assert(Line2D._method_get_texture_mode_2341040722 != nil)
        let _method_set_joint_mode_604292979_name = StringName(from: "set_joint_mode")
        self._method_set_joint_mode_604292979 = self.interface.pointee.classdb_get_method_bind(__godot_name_Line2D._native_ptr(), _method_set_joint_mode_604292979_name._native_ptr(), 604292979)
        assert(Line2D._method_set_joint_mode_604292979 != nil)
        let _method_get_joint_mode_2546544037_name = StringName(from: "get_joint_mode")
        self._method_get_joint_mode_2546544037 = self.interface.pointee.classdb_get_method_bind(__godot_name_Line2D._native_ptr(), _method_get_joint_mode_2546544037_name._native_ptr(), 2546544037)
        assert(Line2D._method_get_joint_mode_2546544037 != nil)
        let _method_set_begin_cap_mode_1669024546_name = StringName(from: "set_begin_cap_mode")
        self._method_set_begin_cap_mode_1669024546 = self.interface.pointee.classdb_get_method_bind(__godot_name_Line2D._native_ptr(), _method_set_begin_cap_mode_1669024546_name._native_ptr(), 1669024546)
        assert(Line2D._method_set_begin_cap_mode_1669024546 != nil)
        let _method_get_begin_cap_mode_1107511441_name = StringName(from: "get_begin_cap_mode")
        self._method_get_begin_cap_mode_1107511441 = self.interface.pointee.classdb_get_method_bind(__godot_name_Line2D._native_ptr(), _method_get_begin_cap_mode_1107511441_name._native_ptr(), 1107511441)
        assert(Line2D._method_get_begin_cap_mode_1107511441 != nil)
        let _method_set_end_cap_mode_1669024546_name = StringName(from: "set_end_cap_mode")
        self._method_set_end_cap_mode_1669024546 = self.interface.pointee.classdb_get_method_bind(__godot_name_Line2D._native_ptr(), _method_set_end_cap_mode_1669024546_name._native_ptr(), 1669024546)
        assert(Line2D._method_set_end_cap_mode_1669024546 != nil)
        let _method_get_end_cap_mode_1107511441_name = StringName(from: "get_end_cap_mode")
        self._method_get_end_cap_mode_1107511441 = self.interface.pointee.classdb_get_method_bind(__godot_name_Line2D._native_ptr(), _method_get_end_cap_mode_1107511441_name._native_ptr(), 1107511441)
        assert(Line2D._method_get_end_cap_mode_1107511441 != nil)
        let _method_set_sharp_limit_373806689_name = StringName(from: "set_sharp_limit")
        self._method_set_sharp_limit_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_Line2D._native_ptr(), _method_set_sharp_limit_373806689_name._native_ptr(), 373806689)
        assert(Line2D._method_set_sharp_limit_373806689 != nil)
        let _method_get_sharp_limit_1740695150_name = StringName(from: "get_sharp_limit")
        self._method_get_sharp_limit_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_Line2D._native_ptr(), _method_get_sharp_limit_1740695150_name._native_ptr(), 1740695150)
        assert(Line2D._method_get_sharp_limit_1740695150 != nil)
        let _method_set_round_precision_1286410249_name = StringName(from: "set_round_precision")
        self._method_set_round_precision_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_Line2D._native_ptr(), _method_set_round_precision_1286410249_name._native_ptr(), 1286410249)
        assert(Line2D._method_set_round_precision_1286410249 != nil)
        let _method_get_round_precision_3905245786_name = StringName(from: "get_round_precision")
        self._method_get_round_precision_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_Line2D._native_ptr(), _method_get_round_precision_3905245786_name._native_ptr(), 3905245786)
        assert(Line2D._method_get_round_precision_3905245786 != nil)
        let _method_set_antialiased_2586408642_name = StringName(from: "set_antialiased")
        self._method_set_antialiased_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_Line2D._native_ptr(), _method_set_antialiased_2586408642_name._native_ptr(), 2586408642)
        assert(Line2D._method_set_antialiased_2586408642 != nil)
        let _method_get_antialiased_36873697_name = StringName(from: "get_antialiased")
        self._method_get_antialiased_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_Line2D._native_ptr(), _method_get_antialiased_36873697_name._native_ptr(), 36873697)
        assert(Line2D._method_get_antialiased_36873697 != nil)
    }

    public func set_points(points: PackedVector2Array)  {
        let points_native = points._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(points_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_points_1509147220,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_points() -> PackedVector2Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_points_2961356807,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(godot: __resPtr.pointee)
    }
    public func set_point_position(index: Int64, position: Vector2)  {
        withUnsafePointer(to: index) { index_native in
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_point_position_163021252,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_point_position(index: Int64) -> Vector2 {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_point_position_2299179447,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_point_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func add_point(position: Vector2, index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native), .init(index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_point_468506575,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func remove_point(index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_point_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func clear_points()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_points_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_width(width: Float64)  {
        withUnsafePointer(to: width) { width_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(width_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_width_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_width() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_width_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_curve(curve: Curve)  {
        let curve_native = curve._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(curve_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_curve_270443179,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_curve() -> Curve {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_curve_2460114913,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Curve(godot: __resPtr.pointee)
    }
    public func set_default_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_default_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_default_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_default_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
    public func set_gradient(color: Gradient)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_gradient_2756054477,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_gradient() -> Gradient {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_gradient_132272999,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Gradient(godot: __resPtr.pointee)
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
    public func set_texture_mode(mode: Line2D.LineTextureMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_mode_1952559516,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_texture_mode() -> Line2D.LineTextureMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_mode_2341040722,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Line2D.LineTextureMode(godot: __resPtr.pointee)
    }
    public func set_joint_mode(mode: Line2D.LineJointMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_joint_mode_604292979,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_joint_mode() -> Line2D.LineJointMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_joint_mode_2546544037,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Line2D.LineJointMode(godot: __resPtr.pointee)
    }
    public func set_begin_cap_mode(mode: Line2D.LineCapMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_begin_cap_mode_1669024546,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_begin_cap_mode() -> Line2D.LineCapMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_begin_cap_mode_1107511441,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Line2D.LineCapMode(godot: __resPtr.pointee)
    }
    public func set_end_cap_mode(mode: Line2D.LineCapMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_end_cap_mode_1669024546,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_end_cap_mode() -> Line2D.LineCapMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_end_cap_mode_1107511441,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Line2D.LineCapMode(godot: __resPtr.pointee)
    }
    public func set_sharp_limit(limit: Float64)  {
        withUnsafePointer(to: limit) { limit_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(limit_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sharp_limit_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_sharp_limit() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sharp_limit_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_round_precision(precision: Int64)  {
        withUnsafePointer(to: precision) { precision_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(precision_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_round_precision_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_round_precision() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_round_precision_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
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
            return UInt8(godot: __resPtr.pointee)
    }
}