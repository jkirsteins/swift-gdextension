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

    static var _method_set_centered_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_centered_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_offset_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_offset_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_flip_h_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_flipped_h_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_flip_v_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_flipped_v_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_modulate_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_modulate_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_render_priority_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_render_priority_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_pixel_size_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_pixel_size_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_axis_1144690656: GDExtensionMethodBindPtr! = nil
    static var _method_get_axis_3050976882: GDExtensionMethodBindPtr! = nil
    static var _method_set_draw_flag_1135633219: GDExtensionMethodBindPtr! = nil
    static var _method_get_draw_flag_1733036628: GDExtensionMethodBindPtr! = nil
    static var _method_set_alpha_cut_mode_227561226: GDExtensionMethodBindPtr! = nil
    static var _method_get_alpha_cut_mode_336003791: GDExtensionMethodBindPtr! = nil
    static var _method_set_alpha_scissor_threshold_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_alpha_scissor_threshold_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_alpha_hash_scale_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_alpha_hash_scale_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_alpha_antialiasing_3212649852: GDExtensionMethodBindPtr! = nil
    static var _method_get_alpha_antialiasing_2889939400: GDExtensionMethodBindPtr! = nil
    static var _method_set_alpha_antialiasing_edge_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_alpha_antialiasing_edge_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_billboard_mode_4202036497: GDExtensionMethodBindPtr! = nil
    static var _method_get_billboard_mode_1283840139: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_filter_22904437: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_filter_3289213076: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_rect_1639390495: GDExtensionMethodBindPtr! = nil
    static var _method_generate_triangle_mesh_3476533166: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_SpriteBase3D = StringName(from: "SpriteBase3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_centered_2586408642_name = StringName(from: "set_centered")
        self._method_set_centered_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_set_centered_2586408642_name._native_ptr(), 2586408642)
        assert(SpriteBase3D._method_set_centered_2586408642 != nil)
        let _method_is_centered_36873697_name = StringName(from: "is_centered")
        self._method_is_centered_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_is_centered_36873697_name._native_ptr(), 36873697)
        assert(SpriteBase3D._method_is_centered_36873697 != nil)
        let _method_set_offset_743155724_name = StringName(from: "set_offset")
        self._method_set_offset_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_set_offset_743155724_name._native_ptr(), 743155724)
        assert(SpriteBase3D._method_set_offset_743155724 != nil)
        let _method_get_offset_3341600327_name = StringName(from: "get_offset")
        self._method_get_offset_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_get_offset_3341600327_name._native_ptr(), 3341600327)
        assert(SpriteBase3D._method_get_offset_3341600327 != nil)
        let _method_set_flip_h_2586408642_name = StringName(from: "set_flip_h")
        self._method_set_flip_h_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_set_flip_h_2586408642_name._native_ptr(), 2586408642)
        assert(SpriteBase3D._method_set_flip_h_2586408642 != nil)
        let _method_is_flipped_h_36873697_name = StringName(from: "is_flipped_h")
        self._method_is_flipped_h_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_is_flipped_h_36873697_name._native_ptr(), 36873697)
        assert(SpriteBase3D._method_is_flipped_h_36873697 != nil)
        let _method_set_flip_v_2586408642_name = StringName(from: "set_flip_v")
        self._method_set_flip_v_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_set_flip_v_2586408642_name._native_ptr(), 2586408642)
        assert(SpriteBase3D._method_set_flip_v_2586408642 != nil)
        let _method_is_flipped_v_36873697_name = StringName(from: "is_flipped_v")
        self._method_is_flipped_v_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_is_flipped_v_36873697_name._native_ptr(), 36873697)
        assert(SpriteBase3D._method_is_flipped_v_36873697 != nil)
        let _method_set_modulate_2920490490_name = StringName(from: "set_modulate")
        self._method_set_modulate_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_set_modulate_2920490490_name._native_ptr(), 2920490490)
        assert(SpriteBase3D._method_set_modulate_2920490490 != nil)
        let _method_get_modulate_3444240500_name = StringName(from: "get_modulate")
        self._method_get_modulate_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_get_modulate_3444240500_name._native_ptr(), 3444240500)
        assert(SpriteBase3D._method_get_modulate_3444240500 != nil)
        let _method_set_render_priority_1286410249_name = StringName(from: "set_render_priority")
        self._method_set_render_priority_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_set_render_priority_1286410249_name._native_ptr(), 1286410249)
        assert(SpriteBase3D._method_set_render_priority_1286410249 != nil)
        let _method_get_render_priority_3905245786_name = StringName(from: "get_render_priority")
        self._method_get_render_priority_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_get_render_priority_3905245786_name._native_ptr(), 3905245786)
        assert(SpriteBase3D._method_get_render_priority_3905245786 != nil)
        let _method_set_pixel_size_373806689_name = StringName(from: "set_pixel_size")
        self._method_set_pixel_size_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_set_pixel_size_373806689_name._native_ptr(), 373806689)
        assert(SpriteBase3D._method_set_pixel_size_373806689 != nil)
        let _method_get_pixel_size_1740695150_name = StringName(from: "get_pixel_size")
        self._method_get_pixel_size_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_get_pixel_size_1740695150_name._native_ptr(), 1740695150)
        assert(SpriteBase3D._method_get_pixel_size_1740695150 != nil)
        let _method_set_axis_1144690656_name = StringName(from: "set_axis")
        self._method_set_axis_1144690656 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_set_axis_1144690656_name._native_ptr(), 1144690656)
        assert(SpriteBase3D._method_set_axis_1144690656 != nil)
        let _method_get_axis_3050976882_name = StringName(from: "get_axis")
        self._method_get_axis_3050976882 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_get_axis_3050976882_name._native_ptr(), 3050976882)
        assert(SpriteBase3D._method_get_axis_3050976882 != nil)
        let _method_set_draw_flag_1135633219_name = StringName(from: "set_draw_flag")
        self._method_set_draw_flag_1135633219 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_set_draw_flag_1135633219_name._native_ptr(), 1135633219)
        assert(SpriteBase3D._method_set_draw_flag_1135633219 != nil)
        let _method_get_draw_flag_1733036628_name = StringName(from: "get_draw_flag")
        self._method_get_draw_flag_1733036628 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_get_draw_flag_1733036628_name._native_ptr(), 1733036628)
        assert(SpriteBase3D._method_get_draw_flag_1733036628 != nil)
        let _method_set_alpha_cut_mode_227561226_name = StringName(from: "set_alpha_cut_mode")
        self._method_set_alpha_cut_mode_227561226 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_set_alpha_cut_mode_227561226_name._native_ptr(), 227561226)
        assert(SpriteBase3D._method_set_alpha_cut_mode_227561226 != nil)
        let _method_get_alpha_cut_mode_336003791_name = StringName(from: "get_alpha_cut_mode")
        self._method_get_alpha_cut_mode_336003791 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_get_alpha_cut_mode_336003791_name._native_ptr(), 336003791)
        assert(SpriteBase3D._method_get_alpha_cut_mode_336003791 != nil)
        let _method_set_alpha_scissor_threshold_373806689_name = StringName(from: "set_alpha_scissor_threshold")
        self._method_set_alpha_scissor_threshold_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_set_alpha_scissor_threshold_373806689_name._native_ptr(), 373806689)
        assert(SpriteBase3D._method_set_alpha_scissor_threshold_373806689 != nil)
        let _method_get_alpha_scissor_threshold_1740695150_name = StringName(from: "get_alpha_scissor_threshold")
        self._method_get_alpha_scissor_threshold_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_get_alpha_scissor_threshold_1740695150_name._native_ptr(), 1740695150)
        assert(SpriteBase3D._method_get_alpha_scissor_threshold_1740695150 != nil)
        let _method_set_alpha_hash_scale_373806689_name = StringName(from: "set_alpha_hash_scale")
        self._method_set_alpha_hash_scale_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_set_alpha_hash_scale_373806689_name._native_ptr(), 373806689)
        assert(SpriteBase3D._method_set_alpha_hash_scale_373806689 != nil)
        let _method_get_alpha_hash_scale_1740695150_name = StringName(from: "get_alpha_hash_scale")
        self._method_get_alpha_hash_scale_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_get_alpha_hash_scale_1740695150_name._native_ptr(), 1740695150)
        assert(SpriteBase3D._method_get_alpha_hash_scale_1740695150 != nil)
        let _method_set_alpha_antialiasing_3212649852_name = StringName(from: "set_alpha_antialiasing")
        self._method_set_alpha_antialiasing_3212649852 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_set_alpha_antialiasing_3212649852_name._native_ptr(), 3212649852)
        assert(SpriteBase3D._method_set_alpha_antialiasing_3212649852 != nil)
        let _method_get_alpha_antialiasing_2889939400_name = StringName(from: "get_alpha_antialiasing")
        self._method_get_alpha_antialiasing_2889939400 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_get_alpha_antialiasing_2889939400_name._native_ptr(), 2889939400)
        assert(SpriteBase3D._method_get_alpha_antialiasing_2889939400 != nil)
        let _method_set_alpha_antialiasing_edge_373806689_name = StringName(from: "set_alpha_antialiasing_edge")
        self._method_set_alpha_antialiasing_edge_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_set_alpha_antialiasing_edge_373806689_name._native_ptr(), 373806689)
        assert(SpriteBase3D._method_set_alpha_antialiasing_edge_373806689 != nil)
        let _method_get_alpha_antialiasing_edge_1740695150_name = StringName(from: "get_alpha_antialiasing_edge")
        self._method_get_alpha_antialiasing_edge_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_get_alpha_antialiasing_edge_1740695150_name._native_ptr(), 1740695150)
        assert(SpriteBase3D._method_get_alpha_antialiasing_edge_1740695150 != nil)
        let _method_set_billboard_mode_4202036497_name = StringName(from: "set_billboard_mode")
        self._method_set_billboard_mode_4202036497 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_set_billboard_mode_4202036497_name._native_ptr(), 4202036497)
        assert(SpriteBase3D._method_set_billboard_mode_4202036497 != nil)
        let _method_get_billboard_mode_1283840139_name = StringName(from: "get_billboard_mode")
        self._method_get_billboard_mode_1283840139 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_get_billboard_mode_1283840139_name._native_ptr(), 1283840139)
        assert(SpriteBase3D._method_get_billboard_mode_1283840139 != nil)
        let _method_set_texture_filter_22904437_name = StringName(from: "set_texture_filter")
        self._method_set_texture_filter_22904437 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_set_texture_filter_22904437_name._native_ptr(), 22904437)
        assert(SpriteBase3D._method_set_texture_filter_22904437 != nil)
        let _method_get_texture_filter_3289213076_name = StringName(from: "get_texture_filter")
        self._method_get_texture_filter_3289213076 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_get_texture_filter_3289213076_name._native_ptr(), 3289213076)
        assert(SpriteBase3D._method_get_texture_filter_3289213076 != nil)
        let _method_get_item_rect_1639390495_name = StringName(from: "get_item_rect")
        self._method_get_item_rect_1639390495 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_get_item_rect_1639390495_name._native_ptr(), 1639390495)
        assert(SpriteBase3D._method_get_item_rect_1639390495 != nil)
        let _method_generate_triangle_mesh_3476533166_name = StringName(from: "generate_triangle_mesh")
        self._method_generate_triangle_mesh_3476533166 = self.interface.pointee.classdb_get_method_bind(__godot_name_SpriteBase3D._native_ptr(), _method_generate_triangle_mesh_3476533166_name._native_ptr(), 3476533166)
        assert(SpriteBase3D._method_generate_triangle_mesh_3476533166 != nil)
    }

    public func set_centered(centered: UInt8)  {
        withUnsafePointer(to: centered) { centered_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(centered_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_centered_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_centered_36873697,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_flip_h_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_flipped_h_36873697,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_flip_v_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_flipped_v_36873697,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_render_priority_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_render_priority_3905245786,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_pixel_size_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_pixel_size_1740695150,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_axis_1144690656,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_axis_3050976882,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_draw_flag_1135633219,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_draw_flag_1733036628,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_alpha_cut_mode_227561226,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_alpha_cut_mode_336003791,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_alpha_scissor_threshold_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_alpha_scissor_threshold_1740695150,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_alpha_hash_scale_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_alpha_hash_scale_1740695150,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_alpha_antialiasing_3212649852,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_alpha_antialiasing_2889939400,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_alpha_antialiasing_edge_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_alpha_antialiasing_edge_1740695150,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_billboard_mode_4202036497,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_billboard_mode_1283840139,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_filter_22904437,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_filter_3289213076,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_rect_1639390495,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_generate_triangle_mesh_3476533166,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TriangleMesh(godot: __resPtr.pointee)
    }
}