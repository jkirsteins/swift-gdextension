import godot_native

fileprivate var __godot_name_SpriteBase3D: StringName! = nil

/// 2D sprite node in 3D environment.
/// 
/// A node that displays 2D texture information in a 3D environment. See also [Sprite3D] where many other properties are defined.
open class SpriteBase3D : GeometryInstance3D {

    public enum DrawFlags : Int32 {
        case FLAG_TRANSPARENT = 0
        case FLAG_SHADED = 1
        case FLAG_DOUBLE_SIDED = 2
        case FLAG_DISABLE_DEPTH_TEST = 3
        case FLAG_FIXED_SIZE = 4
        case FLAG_MAX = 5
    }
    public enum AlphaCutMode : Int32 {
        case ALPHA_CUT_DISABLED = 0
        case ALPHA_CUT_DISCARD = 1
        case ALPHA_CUT_OPAQUE_PREPASS = 2
        case ALPHA_CUT_HASH = 3
    }

    public override class var __godot_name: StringName { __godot_name_SpriteBase3D }

    static var _method_set_centered_2586408642: StringName! = nil
    static var _method_is_centered_36873697: StringName! = nil
    static var _method_set_offset_743155724: StringName! = nil
    static var _method_get_offset_3341600327: StringName! = nil
    static var _method_set_flip_h_2586408642: StringName! = nil
    static var _method_is_flipped_h_36873697: StringName! = nil
    static var _method_set_flip_v_2586408642: StringName! = nil
    static var _method_is_flipped_v_36873697: StringName! = nil
    static var _method_set_modulate_2920490490: StringName! = nil
    static var _method_get_modulate_3444240500: StringName! = nil
    static var _method_set_render_priority_1286410249: StringName! = nil
    static var _method_get_render_priority_3905245786: StringName! = nil
    static var _method_set_pixel_size_373806689: StringName! = nil
    static var _method_get_pixel_size_1740695150: StringName! = nil
    static var _method_set_axis_1144690656: StringName! = nil
    static var _method_get_axis_3050976882: StringName! = nil
    static var _method_set_draw_flag_1135633219: StringName! = nil
    static var _method_get_draw_flag_1733036628: StringName! = nil
    static var _method_set_alpha_cut_mode_227561226: StringName! = nil
    static var _method_get_alpha_cut_mode_336003791: StringName! = nil
    static var _method_set_alpha_scissor_threshold_373806689: StringName! = nil
    static var _method_get_alpha_scissor_threshold_1740695150: StringName! = nil
    static var _method_set_alpha_hash_scale_373806689: StringName! = nil
    static var _method_get_alpha_hash_scale_1740695150: StringName! = nil
    static var _method_set_alpha_antialiasing_3212649852: StringName! = nil
    static var _method_get_alpha_antialiasing_2889939400: StringName! = nil
    static var _method_set_alpha_antialiasing_edge_373806689: StringName! = nil
    static var _method_get_alpha_antialiasing_edge_1740695150: StringName! = nil
    static var _method_set_billboard_mode_4202036497: StringName! = nil
    static var _method_get_billboard_mode_1283840139: StringName! = nil
    static var _method_set_texture_filter_22904437: StringName! = nil
    static var _method_get_texture_filter_3289213076: StringName! = nil
    static var _method_get_item_rect_1639390495: StringName! = nil
    static var _method_generate_triangle_mesh_3476533166: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_SpriteBase3D == nil)
        __godot_name_SpriteBase3D = StringName(from: "SpriteBase3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_centered_2586408642 = StringName(from: "set_centered")
        assert(self._method_set_centered_2586408642 != nil)
        self._method_is_centered_36873697 = StringName(from: "is_centered")
        assert(self._method_is_centered_36873697 != nil)
        self._method_set_offset_743155724 = StringName(from: "set_offset")
        assert(self._method_set_offset_743155724 != nil)
        self._method_get_offset_3341600327 = StringName(from: "get_offset")
        assert(self._method_get_offset_3341600327 != nil)
        self._method_set_flip_h_2586408642 = StringName(from: "set_flip_h")
        assert(self._method_set_flip_h_2586408642 != nil)
        self._method_is_flipped_h_36873697 = StringName(from: "is_flipped_h")
        assert(self._method_is_flipped_h_36873697 != nil)
        self._method_set_flip_v_2586408642 = StringName(from: "set_flip_v")
        assert(self._method_set_flip_v_2586408642 != nil)
        self._method_is_flipped_v_36873697 = StringName(from: "is_flipped_v")
        assert(self._method_is_flipped_v_36873697 != nil)
        self._method_set_modulate_2920490490 = StringName(from: "set_modulate")
        assert(self._method_set_modulate_2920490490 != nil)
        self._method_get_modulate_3444240500 = StringName(from: "get_modulate")
        assert(self._method_get_modulate_3444240500 != nil)
        self._method_set_render_priority_1286410249 = StringName(from: "set_render_priority")
        assert(self._method_set_render_priority_1286410249 != nil)
        self._method_get_render_priority_3905245786 = StringName(from: "get_render_priority")
        assert(self._method_get_render_priority_3905245786 != nil)
        self._method_set_pixel_size_373806689 = StringName(from: "set_pixel_size")
        assert(self._method_set_pixel_size_373806689 != nil)
        self._method_get_pixel_size_1740695150 = StringName(from: "get_pixel_size")
        assert(self._method_get_pixel_size_1740695150 != nil)
        self._method_set_axis_1144690656 = StringName(from: "set_axis")
        assert(self._method_set_axis_1144690656 != nil)
        self._method_get_axis_3050976882 = StringName(from: "get_axis")
        assert(self._method_get_axis_3050976882 != nil)
        self._method_set_draw_flag_1135633219 = StringName(from: "set_draw_flag")
        assert(self._method_set_draw_flag_1135633219 != nil)
        self._method_get_draw_flag_1733036628 = StringName(from: "get_draw_flag")
        assert(self._method_get_draw_flag_1733036628 != nil)
        self._method_set_alpha_cut_mode_227561226 = StringName(from: "set_alpha_cut_mode")
        assert(self._method_set_alpha_cut_mode_227561226 != nil)
        self._method_get_alpha_cut_mode_336003791 = StringName(from: "get_alpha_cut_mode")
        assert(self._method_get_alpha_cut_mode_336003791 != nil)
        self._method_set_alpha_scissor_threshold_373806689 = StringName(from: "set_alpha_scissor_threshold")
        assert(self._method_set_alpha_scissor_threshold_373806689 != nil)
        self._method_get_alpha_scissor_threshold_1740695150 = StringName(from: "get_alpha_scissor_threshold")
        assert(self._method_get_alpha_scissor_threshold_1740695150 != nil)
        self._method_set_alpha_hash_scale_373806689 = StringName(from: "set_alpha_hash_scale")
        assert(self._method_set_alpha_hash_scale_373806689 != nil)
        self._method_get_alpha_hash_scale_1740695150 = StringName(from: "get_alpha_hash_scale")
        assert(self._method_get_alpha_hash_scale_1740695150 != nil)
        self._method_set_alpha_antialiasing_3212649852 = StringName(from: "set_alpha_antialiasing")
        assert(self._method_set_alpha_antialiasing_3212649852 != nil)
        self._method_get_alpha_antialiasing_2889939400 = StringName(from: "get_alpha_antialiasing")
        assert(self._method_get_alpha_antialiasing_2889939400 != nil)
        self._method_set_alpha_antialiasing_edge_373806689 = StringName(from: "set_alpha_antialiasing_edge")
        assert(self._method_set_alpha_antialiasing_edge_373806689 != nil)
        self._method_get_alpha_antialiasing_edge_1740695150 = StringName(from: "get_alpha_antialiasing_edge")
        assert(self._method_get_alpha_antialiasing_edge_1740695150 != nil)
        self._method_set_billboard_mode_4202036497 = StringName(from: "set_billboard_mode")
        assert(self._method_set_billboard_mode_4202036497 != nil)
        self._method_get_billboard_mode_1283840139 = StringName(from: "get_billboard_mode")
        assert(self._method_get_billboard_mode_1283840139 != nil)
        self._method_set_texture_filter_22904437 = StringName(from: "set_texture_filter")
        assert(self._method_set_texture_filter_22904437 != nil)
        self._method_get_texture_filter_3289213076 = StringName(from: "get_texture_filter")
        assert(self._method_get_texture_filter_3289213076 != nil)
        self._method_get_item_rect_1639390495 = StringName(from: "get_item_rect")
        assert(self._method_get_item_rect_1639390495 != nil)
        self._method_generate_triangle_mesh_3476533166 = StringName(from: "generate_triangle_mesh")
        assert(self._method_generate_triangle_mesh_3476533166 != nil)
    }

    public func set_centered(centered: UInt8)  {
        withUnsafePointer(to: centered) { centered_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(centered_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_centered_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_centered() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_centered_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_offset(offset: Vector2)  {
        let offset_native = offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_offset_743155724._native_ptr(),
                    743155724)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_offset_3341600327._native_ptr(),
                    3341600327)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func set_flip_h(flip_h: UInt8)  {
        withUnsafePointer(to: flip_h) { flip_h_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flip_h_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_flip_h_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_flipped_h() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_flipped_h_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_flip_v(flip_v: UInt8)  {
        withUnsafePointer(to: flip_v) { flip_v_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flip_v_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_flip_v_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_flipped_v() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_flipped_v_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_modulate(modulate: Color)  {
        let modulate_native = modulate._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(modulate_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_modulate_2920490490._native_ptr(),
                    2920490490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_modulate_3444240500._native_ptr(),
                    3444240500)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
    public func set_render_priority(priority: Int64)  {
        withUnsafePointer(to: priority) { priority_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(priority_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_render_priority_1286410249._native_ptr(),
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
    public func get_render_priority() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_render_priority_3905245786._native_ptr(),
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
    public func set_pixel_size(pixel_size: Float64)  {
        withUnsafePointer(to: pixel_size) { pixel_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pixel_size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_pixel_size_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_pixel_size() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_pixel_size_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_axis(axis: Vector3.Axis)  {
        withUnsafePointer(to: axis.rawValue) { axis_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(axis_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_axis_1144690656._native_ptr(),
                    1144690656)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_axis() -> Vector3.Axis {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_axis_3050976882._native_ptr(),
                    3050976882)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3.Axis(godot: __resPtr.pointee)
    }
    public func set_draw_flag(flag: SpriteBase3D.DrawFlags, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        withUnsafePointer(to: flag.rawValue) { flag_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flag_native), .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_draw_flag_1135633219._native_ptr(),
                    1135633219)
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
    public func get_draw_flag(flag: SpriteBase3D.DrawFlags) -> UInt8 {
        withUnsafePointer(to: flag.rawValue) { flag_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flag_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_draw_flag_1733036628._native_ptr(),
                    1733036628)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func set_alpha_cut_mode(mode: SpriteBase3D.AlphaCutMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_alpha_cut_mode_227561226._native_ptr(),
                    227561226)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_alpha_cut_mode() -> SpriteBase3D.AlphaCutMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_alpha_cut_mode_336003791._native_ptr(),
                    336003791)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return SpriteBase3D.AlphaCutMode(godot: __resPtr.pointee)
    }
    public func set_alpha_scissor_threshold(threshold: Float64)  {
        withUnsafePointer(to: threshold) { threshold_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(threshold_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_alpha_scissor_threshold_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_alpha_scissor_threshold() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_alpha_scissor_threshold_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_alpha_hash_scale(threshold: Float64)  {
        withUnsafePointer(to: threshold) { threshold_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(threshold_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_alpha_hash_scale_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_alpha_hash_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_alpha_hash_scale_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_alpha_antialiasing(alpha_aa: BaseMaterial3D.AlphaAntiAliasing)  {
        withUnsafePointer(to: alpha_aa.rawValue) { alpha_aa_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(alpha_aa_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_alpha_antialiasing_3212649852._native_ptr(),
                    3212649852)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_alpha_antialiasing() -> BaseMaterial3D.AlphaAntiAliasing {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_alpha_antialiasing_2889939400._native_ptr(),
                    2889939400)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.AlphaAntiAliasing(godot: __resPtr.pointee)
    }
    public func set_alpha_antialiasing_edge(edge: Float64)  {
        withUnsafePointer(to: edge) { edge_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(edge_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_alpha_antialiasing_edge_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_alpha_antialiasing_edge() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_alpha_antialiasing_edge_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_billboard_mode(mode: BaseMaterial3D.BillboardMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_billboard_mode_4202036497._native_ptr(),
                    4202036497)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_billboard_mode() -> BaseMaterial3D.BillboardMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_billboard_mode_1283840139._native_ptr(),
                    1283840139)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.BillboardMode(godot: __resPtr.pointee)
    }
    public func set_texture_filter(mode: BaseMaterial3D.TextureFilter)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_texture_filter_22904437._native_ptr(),
                    22904437)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_texture_filter() -> BaseMaterial3D.TextureFilter {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_texture_filter_3289213076._native_ptr(),
                    3289213076)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.TextureFilter(godot: __resPtr.pointee)
    }
    public func get_item_rect() -> Rect2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_item_rect_1639390495._native_ptr(),
                    1639390495)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2(godot: __resPtr.pointee)
    }
    public func generate_triangle_mesh() -> TriangleMesh {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_generate_triangle_mesh_3476533166._native_ptr(),
                    3476533166)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TriangleMesh(godot: __resPtr.pointee)
    }
}