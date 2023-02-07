import godot_native

fileprivate var __godot_name_Label3D: StringName! = nil

/// Displays plain text in a 3D world.
/// 
/// Label3D displays plain text in a 3D world. It gives you control over the horizontal and vertical alignment.
public class Label3D : GeometryInstance3D {

    public enum DrawFlags : Int32 {
        case FLAG_SHADED = 0
        case FLAG_DOUBLE_SIDED = 1
        case FLAG_DISABLE_DEPTH_TEST = 2
        case FLAG_FIXED_SIZE = 3
        case FLAG_MAX = 4
    }
    public enum AlphaCutMode : Int32 {
        case ALPHA_CUT_DISABLED = 0
        case ALPHA_CUT_DISCARD = 1
        case ALPHA_CUT_OPAQUE_PREPASS = 2
        case ALPHA_CUT_HASH = 3
    }

    public override class var __godot_name: StringName { __godot_name_Label3D }

    static var _method_set_horizontal_alignment_2312603777: GDExtensionMethodBindPtr! = nil
    static var _method_get_horizontal_alignment_341400642: GDExtensionMethodBindPtr! = nil
    static var _method_set_vertical_alignment_1796458609: GDExtensionMethodBindPtr! = nil
    static var _method_get_vertical_alignment_3274884059: GDExtensionMethodBindPtr! = nil
    static var _method_set_modulate_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_modulate_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_outline_modulate_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_outline_modulate_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_text_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_text_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_text_direction_1418190634: GDExtensionMethodBindPtr! = nil
    static var _method_get_text_direction_2516697328: GDExtensionMethodBindPtr! = nil
    static var _method_set_language_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_language_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_structured_text_bidi_override_55961453: GDExtensionMethodBindPtr! = nil
    static var _method_get_structured_text_bidi_override_3385126229: GDExtensionMethodBindPtr! = nil
    static var _method_set_structured_text_bidi_override_options_381264803: GDExtensionMethodBindPtr! = nil
    static var _method_get_structured_text_bidi_override_options_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_set_uppercase_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_uppercase_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_render_priority_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_render_priority_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_outline_render_priority_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_outline_render_priority_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_font_1262170328: GDExtensionMethodBindPtr! = nil
    static var _method_get_font_3229501585: GDExtensionMethodBindPtr! = nil
    static var _method_set_font_size_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_font_size_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_outline_size_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_outline_size_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_line_spacing_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_spacing_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_autowrap_mode_3289138044: GDExtensionMethodBindPtr! = nil
    static var _method_get_autowrap_mode_1549071663: GDExtensionMethodBindPtr! = nil
    static var _method_set_width_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_width_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_pixel_size_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_pixel_size_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_offset_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_offset_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_draw_flag_1285833066: GDExtensionMethodBindPtr! = nil
    static var _method_get_draw_flag_259226453: GDExtensionMethodBindPtr! = nil
    static var _method_set_billboard_mode_4202036497: GDExtensionMethodBindPtr! = nil
    static var _method_get_billboard_mode_1283840139: GDExtensionMethodBindPtr! = nil
    static var _method_set_alpha_cut_mode_2549142916: GDExtensionMethodBindPtr! = nil
    static var _method_get_alpha_cut_mode_219468601: GDExtensionMethodBindPtr! = nil
    static var _method_set_alpha_scissor_threshold_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_alpha_scissor_threshold_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_alpha_hash_scale_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_alpha_hash_scale_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_alpha_antialiasing_3212649852: GDExtensionMethodBindPtr! = nil
    static var _method_get_alpha_antialiasing_2889939400: GDExtensionMethodBindPtr! = nil
    static var _method_set_alpha_antialiasing_edge_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_alpha_antialiasing_edge_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_filter_22904437: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_filter_3289213076: GDExtensionMethodBindPtr! = nil
    static var _method_generate_triangle_mesh_3476533166: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Label3D = StringName(from: "Label3D")

        let _method_set_horizontal_alignment_2312603777_name = StringName(from: "set_horizontal_alignment")
        self._method_set_horizontal_alignment_2312603777 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_horizontal_alignment_2312603777_name._native_ptr(), 2312603777)
        assert(Label3D._method_set_horizontal_alignment_2312603777 != nil)
        let _method_get_horizontal_alignment_341400642_name = StringName(from: "get_horizontal_alignment")
        self._method_get_horizontal_alignment_341400642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_horizontal_alignment_341400642_name._native_ptr(), 341400642)
        assert(Label3D._method_get_horizontal_alignment_341400642 != nil)
        let _method_set_vertical_alignment_1796458609_name = StringName(from: "set_vertical_alignment")
        self._method_set_vertical_alignment_1796458609 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_vertical_alignment_1796458609_name._native_ptr(), 1796458609)
        assert(Label3D._method_set_vertical_alignment_1796458609 != nil)
        let _method_get_vertical_alignment_3274884059_name = StringName(from: "get_vertical_alignment")
        self._method_get_vertical_alignment_3274884059 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_vertical_alignment_3274884059_name._native_ptr(), 3274884059)
        assert(Label3D._method_get_vertical_alignment_3274884059 != nil)
        let _method_set_modulate_2920490490_name = StringName(from: "set_modulate")
        self._method_set_modulate_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_modulate_2920490490_name._native_ptr(), 2920490490)
        assert(Label3D._method_set_modulate_2920490490 != nil)
        let _method_get_modulate_3444240500_name = StringName(from: "get_modulate")
        self._method_get_modulate_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_modulate_3444240500_name._native_ptr(), 3444240500)
        assert(Label3D._method_get_modulate_3444240500 != nil)
        let _method_set_outline_modulate_2920490490_name = StringName(from: "set_outline_modulate")
        self._method_set_outline_modulate_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_outline_modulate_2920490490_name._native_ptr(), 2920490490)
        assert(Label3D._method_set_outline_modulate_2920490490 != nil)
        let _method_get_outline_modulate_3444240500_name = StringName(from: "get_outline_modulate")
        self._method_get_outline_modulate_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_outline_modulate_3444240500_name._native_ptr(), 3444240500)
        assert(Label3D._method_get_outline_modulate_3444240500 != nil)
        let _method_set_text_83702148_name = StringName(from: "set_text")
        self._method_set_text_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_text_83702148_name._native_ptr(), 83702148)
        assert(Label3D._method_set_text_83702148 != nil)
        let _method_get_text_201670096_name = StringName(from: "get_text")
        self._method_get_text_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_text_201670096_name._native_ptr(), 201670096)
        assert(Label3D._method_get_text_201670096 != nil)
        let _method_set_text_direction_1418190634_name = StringName(from: "set_text_direction")
        self._method_set_text_direction_1418190634 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_text_direction_1418190634_name._native_ptr(), 1418190634)
        assert(Label3D._method_set_text_direction_1418190634 != nil)
        let _method_get_text_direction_2516697328_name = StringName(from: "get_text_direction")
        self._method_get_text_direction_2516697328 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_text_direction_2516697328_name._native_ptr(), 2516697328)
        assert(Label3D._method_get_text_direction_2516697328 != nil)
        let _method_set_language_83702148_name = StringName(from: "set_language")
        self._method_set_language_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_language_83702148_name._native_ptr(), 83702148)
        assert(Label3D._method_set_language_83702148 != nil)
        let _method_get_language_201670096_name = StringName(from: "get_language")
        self._method_get_language_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_language_201670096_name._native_ptr(), 201670096)
        assert(Label3D._method_get_language_201670096 != nil)
        let _method_set_structured_text_bidi_override_55961453_name = StringName(from: "set_structured_text_bidi_override")
        self._method_set_structured_text_bidi_override_55961453 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_structured_text_bidi_override_55961453_name._native_ptr(), 55961453)
        assert(Label3D._method_set_structured_text_bidi_override_55961453 != nil)
        let _method_get_structured_text_bidi_override_3385126229_name = StringName(from: "get_structured_text_bidi_override")
        self._method_get_structured_text_bidi_override_3385126229 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_structured_text_bidi_override_3385126229_name._native_ptr(), 3385126229)
        assert(Label3D._method_get_structured_text_bidi_override_3385126229 != nil)
        let _method_set_structured_text_bidi_override_options_381264803_name = StringName(from: "set_structured_text_bidi_override_options")
        self._method_set_structured_text_bidi_override_options_381264803 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_structured_text_bidi_override_options_381264803_name._native_ptr(), 381264803)
        assert(Label3D._method_set_structured_text_bidi_override_options_381264803 != nil)
        let _method_get_structured_text_bidi_override_options_3995934104_name = StringName(from: "get_structured_text_bidi_override_options")
        self._method_get_structured_text_bidi_override_options_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_structured_text_bidi_override_options_3995934104_name._native_ptr(), 3995934104)
        assert(Label3D._method_get_structured_text_bidi_override_options_3995934104 != nil)
        let _method_set_uppercase_2586408642_name = StringName(from: "set_uppercase")
        self._method_set_uppercase_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_uppercase_2586408642_name._native_ptr(), 2586408642)
        assert(Label3D._method_set_uppercase_2586408642 != nil)
        let _method_is_uppercase_36873697_name = StringName(from: "is_uppercase")
        self._method_is_uppercase_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_uppercase_36873697_name._native_ptr(), 36873697)
        assert(Label3D._method_is_uppercase_36873697 != nil)
        let _method_set_render_priority_1286410249_name = StringName(from: "set_render_priority")
        self._method_set_render_priority_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_render_priority_1286410249_name._native_ptr(), 1286410249)
        assert(Label3D._method_set_render_priority_1286410249 != nil)
        let _method_get_render_priority_3905245786_name = StringName(from: "get_render_priority")
        self._method_get_render_priority_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_render_priority_3905245786_name._native_ptr(), 3905245786)
        assert(Label3D._method_get_render_priority_3905245786 != nil)
        let _method_set_outline_render_priority_1286410249_name = StringName(from: "set_outline_render_priority")
        self._method_set_outline_render_priority_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_outline_render_priority_1286410249_name._native_ptr(), 1286410249)
        assert(Label3D._method_set_outline_render_priority_1286410249 != nil)
        let _method_get_outline_render_priority_3905245786_name = StringName(from: "get_outline_render_priority")
        self._method_get_outline_render_priority_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_outline_render_priority_3905245786_name._native_ptr(), 3905245786)
        assert(Label3D._method_get_outline_render_priority_3905245786 != nil)
        let _method_set_font_1262170328_name = StringName(from: "set_font")
        self._method_set_font_1262170328 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_font_1262170328_name._native_ptr(), 1262170328)
        assert(Label3D._method_set_font_1262170328 != nil)
        let _method_get_font_3229501585_name = StringName(from: "get_font")
        self._method_get_font_3229501585 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_font_3229501585_name._native_ptr(), 3229501585)
        assert(Label3D._method_get_font_3229501585 != nil)
        let _method_set_font_size_1286410249_name = StringName(from: "set_font_size")
        self._method_set_font_size_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_font_size_1286410249_name._native_ptr(), 1286410249)
        assert(Label3D._method_set_font_size_1286410249 != nil)
        let _method_get_font_size_3905245786_name = StringName(from: "get_font_size")
        self._method_get_font_size_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_font_size_3905245786_name._native_ptr(), 3905245786)
        assert(Label3D._method_get_font_size_3905245786 != nil)
        let _method_set_outline_size_1286410249_name = StringName(from: "set_outline_size")
        self._method_set_outline_size_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_outline_size_1286410249_name._native_ptr(), 1286410249)
        assert(Label3D._method_set_outline_size_1286410249 != nil)
        let _method_get_outline_size_3905245786_name = StringName(from: "get_outline_size")
        self._method_get_outline_size_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_outline_size_3905245786_name._native_ptr(), 3905245786)
        assert(Label3D._method_get_outline_size_3905245786 != nil)
        let _method_set_line_spacing_373806689_name = StringName(from: "set_line_spacing")
        self._method_set_line_spacing_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_line_spacing_373806689_name._native_ptr(), 373806689)
        assert(Label3D._method_set_line_spacing_373806689 != nil)
        let _method_get_line_spacing_1740695150_name = StringName(from: "get_line_spacing")
        self._method_get_line_spacing_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_line_spacing_1740695150_name._native_ptr(), 1740695150)
        assert(Label3D._method_get_line_spacing_1740695150 != nil)
        let _method_set_autowrap_mode_3289138044_name = StringName(from: "set_autowrap_mode")
        self._method_set_autowrap_mode_3289138044 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_autowrap_mode_3289138044_name._native_ptr(), 3289138044)
        assert(Label3D._method_set_autowrap_mode_3289138044 != nil)
        let _method_get_autowrap_mode_1549071663_name = StringName(from: "get_autowrap_mode")
        self._method_get_autowrap_mode_1549071663 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_autowrap_mode_1549071663_name._native_ptr(), 1549071663)
        assert(Label3D._method_get_autowrap_mode_1549071663 != nil)
        let _method_set_width_373806689_name = StringName(from: "set_width")
        self._method_set_width_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_width_373806689_name._native_ptr(), 373806689)
        assert(Label3D._method_set_width_373806689 != nil)
        let _method_get_width_1740695150_name = StringName(from: "get_width")
        self._method_get_width_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_width_1740695150_name._native_ptr(), 1740695150)
        assert(Label3D._method_get_width_1740695150 != nil)
        let _method_set_pixel_size_373806689_name = StringName(from: "set_pixel_size")
        self._method_set_pixel_size_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_pixel_size_373806689_name._native_ptr(), 373806689)
        assert(Label3D._method_set_pixel_size_373806689 != nil)
        let _method_get_pixel_size_1740695150_name = StringName(from: "get_pixel_size")
        self._method_get_pixel_size_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_pixel_size_1740695150_name._native_ptr(), 1740695150)
        assert(Label3D._method_get_pixel_size_1740695150 != nil)
        let _method_set_offset_743155724_name = StringName(from: "set_offset")
        self._method_set_offset_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_offset_743155724_name._native_ptr(), 743155724)
        assert(Label3D._method_set_offset_743155724 != nil)
        let _method_get_offset_3341600327_name = StringName(from: "get_offset")
        self._method_get_offset_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_offset_3341600327_name._native_ptr(), 3341600327)
        assert(Label3D._method_get_offset_3341600327 != nil)
        let _method_set_draw_flag_1285833066_name = StringName(from: "set_draw_flag")
        self._method_set_draw_flag_1285833066 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_draw_flag_1285833066_name._native_ptr(), 1285833066)
        assert(Label3D._method_set_draw_flag_1285833066 != nil)
        let _method_get_draw_flag_259226453_name = StringName(from: "get_draw_flag")
        self._method_get_draw_flag_259226453 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_draw_flag_259226453_name._native_ptr(), 259226453)
        assert(Label3D._method_get_draw_flag_259226453 != nil)
        let _method_set_billboard_mode_4202036497_name = StringName(from: "set_billboard_mode")
        self._method_set_billboard_mode_4202036497 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_billboard_mode_4202036497_name._native_ptr(), 4202036497)
        assert(Label3D._method_set_billboard_mode_4202036497 != nil)
        let _method_get_billboard_mode_1283840139_name = StringName(from: "get_billboard_mode")
        self._method_get_billboard_mode_1283840139 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_billboard_mode_1283840139_name._native_ptr(), 1283840139)
        assert(Label3D._method_get_billboard_mode_1283840139 != nil)
        let _method_set_alpha_cut_mode_2549142916_name = StringName(from: "set_alpha_cut_mode")
        self._method_set_alpha_cut_mode_2549142916 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_alpha_cut_mode_2549142916_name._native_ptr(), 2549142916)
        assert(Label3D._method_set_alpha_cut_mode_2549142916 != nil)
        let _method_get_alpha_cut_mode_219468601_name = StringName(from: "get_alpha_cut_mode")
        self._method_get_alpha_cut_mode_219468601 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_alpha_cut_mode_219468601_name._native_ptr(), 219468601)
        assert(Label3D._method_get_alpha_cut_mode_219468601 != nil)
        let _method_set_alpha_scissor_threshold_373806689_name = StringName(from: "set_alpha_scissor_threshold")
        self._method_set_alpha_scissor_threshold_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_alpha_scissor_threshold_373806689_name._native_ptr(), 373806689)
        assert(Label3D._method_set_alpha_scissor_threshold_373806689 != nil)
        let _method_get_alpha_scissor_threshold_1740695150_name = StringName(from: "get_alpha_scissor_threshold")
        self._method_get_alpha_scissor_threshold_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_alpha_scissor_threshold_1740695150_name._native_ptr(), 1740695150)
        assert(Label3D._method_get_alpha_scissor_threshold_1740695150 != nil)
        let _method_set_alpha_hash_scale_373806689_name = StringName(from: "set_alpha_hash_scale")
        self._method_set_alpha_hash_scale_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_alpha_hash_scale_373806689_name._native_ptr(), 373806689)
        assert(Label3D._method_set_alpha_hash_scale_373806689 != nil)
        let _method_get_alpha_hash_scale_1740695150_name = StringName(from: "get_alpha_hash_scale")
        self._method_get_alpha_hash_scale_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_alpha_hash_scale_1740695150_name._native_ptr(), 1740695150)
        assert(Label3D._method_get_alpha_hash_scale_1740695150 != nil)
        let _method_set_alpha_antialiasing_3212649852_name = StringName(from: "set_alpha_antialiasing")
        self._method_set_alpha_antialiasing_3212649852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_alpha_antialiasing_3212649852_name._native_ptr(), 3212649852)
        assert(Label3D._method_set_alpha_antialiasing_3212649852 != nil)
        let _method_get_alpha_antialiasing_2889939400_name = StringName(from: "get_alpha_antialiasing")
        self._method_get_alpha_antialiasing_2889939400 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_alpha_antialiasing_2889939400_name._native_ptr(), 2889939400)
        assert(Label3D._method_get_alpha_antialiasing_2889939400 != nil)
        let _method_set_alpha_antialiasing_edge_373806689_name = StringName(from: "set_alpha_antialiasing_edge")
        self._method_set_alpha_antialiasing_edge_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_alpha_antialiasing_edge_373806689_name._native_ptr(), 373806689)
        assert(Label3D._method_set_alpha_antialiasing_edge_373806689 != nil)
        let _method_get_alpha_antialiasing_edge_1740695150_name = StringName(from: "get_alpha_antialiasing_edge")
        self._method_get_alpha_antialiasing_edge_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_alpha_antialiasing_edge_1740695150_name._native_ptr(), 1740695150)
        assert(Label3D._method_get_alpha_antialiasing_edge_1740695150 != nil)
        let _method_set_texture_filter_22904437_name = StringName(from: "set_texture_filter")
        self._method_set_texture_filter_22904437 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_texture_filter_22904437_name._native_ptr(), 22904437)
        assert(Label3D._method_set_texture_filter_22904437 != nil)
        let _method_get_texture_filter_3289213076_name = StringName(from: "get_texture_filter")
        self._method_get_texture_filter_3289213076 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_texture_filter_3289213076_name._native_ptr(), 3289213076)
        assert(Label3D._method_get_texture_filter_3289213076 != nil)
        let _method_generate_triangle_mesh_3476533166_name = StringName(from: "generate_triangle_mesh")
        self._method_generate_triangle_mesh_3476533166 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_generate_triangle_mesh_3476533166_name._native_ptr(), 3476533166)
        assert(Label3D._method_generate_triangle_mesh_3476533166 != nil)
    }

    public func set_horizontal_alignment(alignment: HorizontalAlignment)  {
        withUnsafePointer(to: alignment.rawValue) { alignment_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(alignment_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_horizontal_alignment_2312603777,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_horizontal_alignment() -> HorizontalAlignment {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_horizontal_alignment_341400642,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return HorizontalAlignment(from: __resPtr.pointee)
    }
    public func set_vertical_alignment(alignment: VerticalAlignment)  {
        withUnsafePointer(to: alignment.rawValue) { alignment_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(alignment_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_vertical_alignment_1796458609,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_vertical_alignment() -> VerticalAlignment {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_vertical_alignment_3274884059,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VerticalAlignment(from: __resPtr.pointee)
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
            return Color(from: __resPtr.pointee)
    }
    public func set_outline_modulate(modulate: Color)  {
        let modulate_native = modulate._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(modulate_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_outline_modulate_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_outline_modulate() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_outline_modulate_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_text(text: String)  {
        withUnsafePointer(to: text) { text_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(text_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_text_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_text() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_text_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_text_direction(direction: TextServer.Direction)  {
        withUnsafePointer(to: direction.rawValue) { direction_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(direction_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_text_direction_1418190634,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_text_direction() -> TextServer.Direction {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_text_direction_2516697328,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.Direction(from: __resPtr.pointee)
    }
    public func set_language(language: String)  {
        withUnsafePointer(to: language) { language_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(language_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_language_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_language() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_language_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_structured_text_bidi_override(parser: TextServer.StructuredTextParser)  {
        withUnsafePointer(to: parser.rawValue) { parser_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(parser_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_structured_text_bidi_override_55961453,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_structured_text_bidi_override() -> TextServer.StructuredTextParser {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_structured_text_bidi_override_3385126229,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.StructuredTextParser(from: __resPtr.pointee)
    }
    public func set_structured_text_bidi_override_options(args: Array)  {
        let args_native = args._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(args_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_structured_text_bidi_override_options_381264803,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_structured_text_bidi_override_options() -> Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_structured_text_bidi_override_options_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(from: __resPtr.pointee)
    }
    public func set_uppercase(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_uppercase_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_uppercase() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_uppercase_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            return Int64(from: __resPtr.pointee)
    }
    public func set_outline_render_priority(priority: Int64)  {
        withUnsafePointer(to: priority) { priority_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(priority_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_outline_render_priority_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_outline_render_priority() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_outline_render_priority_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_font(font: Font)  {
        let font_native = font._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_font_1262170328,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_font() -> Font {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_font_3229501585,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Font(from: __resPtr.pointee)
    }
    public func set_font_size(size: Int64)  {
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_font_size_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_font_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_font_size_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_outline_size(outline_size: Int64)  {
        withUnsafePointer(to: outline_size) { outline_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(outline_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_outline_size_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_outline_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_outline_size_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_line_spacing(line_spacing: Float64)  {
        withUnsafePointer(to: line_spacing) { line_spacing_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_spacing_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_line_spacing_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_line_spacing() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_spacing_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_autowrap_mode(autowrap_mode: TextServer.AutowrapMode)  {
        withUnsafePointer(to: autowrap_mode.rawValue) { autowrap_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(autowrap_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_autowrap_mode_3289138044,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_autowrap_mode() -> TextServer.AutowrapMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_autowrap_mode_1549071663,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.AutowrapMode(from: __resPtr.pointee)
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
            return Float64(from: __resPtr.pointee)
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
    public func set_draw_flag(flag: Label3D.DrawFlags, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        withUnsafePointer(to: flag.rawValue) { flag_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flag_native), .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_draw_flag_1285833066,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_draw_flag(flag: Label3D.DrawFlags) -> UInt8 {
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
                    Self._method_get_draw_flag_259226453,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
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
            return BaseMaterial3D.BillboardMode(from: __resPtr.pointee)
    }
    public func set_alpha_cut_mode(mode: Label3D.AlphaCutMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_alpha_cut_mode_2549142916,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_alpha_cut_mode() -> Label3D.AlphaCutMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_alpha_cut_mode_219468601,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Label3D.AlphaCutMode(from: __resPtr.pointee)
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
            return Float64(from: __resPtr.pointee)
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
            return Float64(from: __resPtr.pointee)
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
            return BaseMaterial3D.AlphaAntiAliasing(from: __resPtr.pointee)
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
            return Float64(from: __resPtr.pointee)
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
            return BaseMaterial3D.TextureFilter(from: __resPtr.pointee)
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
            return TriangleMesh(from: __resPtr.pointee)
    }
}