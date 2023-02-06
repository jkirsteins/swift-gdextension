import godot_native

fileprivate var __godot_name_CanvasItem: StringName! = nil

/// Base class of anything 2D.
/// 
/// Base class of anything 2D. Canvas items are laid out in a tree; children inherit and extend their parent's transform. [CanvasItem] is extended by [Control] for anything GUI-related, and by [Node2D] for anything related to the 2D engine.
///  
/// Any [CanvasItem] can draw. For this, [method queue_redraw] is called by the engine, then [constant NOTIFICATION_DRAW] will be received on idle time to request redraw. Because of this, canvas items don't need to be redrawn on every frame, improving the performance significantly. Several functions for drawing on the [CanvasItem] are provided (see [code]draw_*[/code] functions). However, they can only be used inside [method _draw], its corresponding [method Object._notification] or methods connected to the [signal draw] signal.
///  
/// Canvas items are drawn in tree order. By default, children are on top of their parents so a root [CanvasItem] will be drawn behind everything. This behavior can be changed on a per-item basis.
///  
/// A [CanvasItem] can also be hidden, which will also hide its children. It provides many ways to change parameters such as modulation (for itself and its children) and self modulation (only for itself), as well as its blend mode.
///  
/// Ultimately, a transform notification can be requested, which will notify the node that its global position changed in case the parent tree changed.
///  
/// [b]Note:[/b] Unless otherwise specified, all methods that have angle parameters must have angles specified as [i]radians[/i]. To convert degrees to radians, use [method @GlobalScope.deg_to_rad].
public class CanvasItem : Node {

    public enum TextureFilter : Int32 {
        case TEXTURE_FILTER_PARENT_NODE = 0
        case TEXTURE_FILTER_NEAREST = 1
        case TEXTURE_FILTER_LINEAR = 2
        case TEXTURE_FILTER_NEAREST_WITH_MIPMAPS = 3
        case TEXTURE_FILTER_LINEAR_WITH_MIPMAPS = 4
        case TEXTURE_FILTER_NEAREST_WITH_MIPMAPS_ANISOTROPIC = 5
        case TEXTURE_FILTER_LINEAR_WITH_MIPMAPS_ANISOTROPIC = 6
        case TEXTURE_FILTER_MAX = 7
    }
    public enum TextureRepeat : Int32 {
        case TEXTURE_REPEAT_PARENT_NODE = 0
        case TEXTURE_REPEAT_DISABLED = 1
        case TEXTURE_REPEAT_ENABLED = 2
        case TEXTURE_REPEAT_MIRROR = 3
        case TEXTURE_REPEAT_MAX = 4
    }
    public enum ClipChildrenMode : Int32 {
        case CLIP_CHILDREN_DISABLED = 0
        case CLIP_CHILDREN_ONLY = 1
        case CLIP_CHILDREN_AND_DRAW = 2
        case CLIP_CHILDREN_MAX = 3
    }

    public override class var __godot_name: StringName { __godot_name_CanvasItem }

    static var _method__draw_0: GDExtensionMethodBindPtr! = nil
    static var _method_get_canvas_item_2944877500: GDExtensionMethodBindPtr! = nil
    static var _method_set_visible_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_visible_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_is_visible_in_tree_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_show_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_hide_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_queue_redraw_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_move_to_front_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_as_top_level_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_set_as_top_level_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_light_mask_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_light_mask_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_modulate_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_modulate_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_self_modulate_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_self_modulate_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_z_index_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_z_index_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_z_as_relative_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_z_relative_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_y_sort_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_y_sort_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_draw_behind_parent_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_draw_behind_parent_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_draw_line_2516941890: GDExtensionMethodBindPtr! = nil
    static var _method_draw_dashed_line_2175215884: GDExtensionMethodBindPtr! = nil
    static var _method_draw_polyline_4175878946: GDExtensionMethodBindPtr! = nil
    static var _method_draw_polyline_colors_2239164197: GDExtensionMethodBindPtr! = nil
    static var _method_draw_arc_3486841771: GDExtensionMethodBindPtr! = nil
    static var _method_draw_multiline_4230657331: GDExtensionMethodBindPtr! = nil
    static var _method_draw_multiline_colors_235933050: GDExtensionMethodBindPtr! = nil
    static var _method_draw_rect_84391229: GDExtensionMethodBindPtr! = nil
    static var _method_draw_circle_3063020269: GDExtensionMethodBindPtr! = nil
    static var _method_draw_texture_1695860435: GDExtensionMethodBindPtr! = nil
    static var _method_draw_texture_rect_3204081724: GDExtensionMethodBindPtr! = nil
    static var _method_draw_texture_rect_region_3196597532: GDExtensionMethodBindPtr! = nil
    static var _method_draw_msdf_texture_rect_region_2672026175: GDExtensionMethodBindPtr! = nil
    static var _method_draw_lcd_texture_rect_region_169610548: GDExtensionMethodBindPtr! = nil
    static var _method_draw_style_box_388176283: GDExtensionMethodBindPtr! = nil
    static var _method_draw_primitive_2248678295: GDExtensionMethodBindPtr! = nil
    static var _method_draw_polygon_2683625537: GDExtensionMethodBindPtr! = nil
    static var _method_draw_colored_polygon_1659099617: GDExtensionMethodBindPtr! = nil
    static var _method_draw_string_2552080639: GDExtensionMethodBindPtr! = nil
    static var _method_draw_multiline_string_4002645436: GDExtensionMethodBindPtr! = nil
    static var _method_draw_string_outline_850005221: GDExtensionMethodBindPtr! = nil
    static var _method_draw_multiline_string_outline_3717870722: GDExtensionMethodBindPtr! = nil
    static var _method_draw_char_2329089032: GDExtensionMethodBindPtr! = nil
    static var _method_draw_char_outline_419453826: GDExtensionMethodBindPtr! = nil
    static var _method_draw_mesh_1634855856: GDExtensionMethodBindPtr! = nil
    static var _method_draw_multimesh_937992368: GDExtensionMethodBindPtr! = nil
    static var _method_draw_set_transform_4181505845: GDExtensionMethodBindPtr! = nil
    static var _method_draw_set_transform_matrix_2761652528: GDExtensionMethodBindPtr! = nil
    static var _method_draw_animation_slice_2295343543: GDExtensionMethodBindPtr! = nil
    static var _method_draw_end_animation_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_transform_3814499831: GDExtensionMethodBindPtr! = nil
    static var _method_get_global_transform_3814499831: GDExtensionMethodBindPtr! = nil
    static var _method_get_global_transform_with_canvas_3814499831: GDExtensionMethodBindPtr! = nil
    static var _method_get_viewport_transform_3814499831: GDExtensionMethodBindPtr! = nil
    static var _method_get_viewport_rect_1639390495: GDExtensionMethodBindPtr! = nil
    static var _method_get_canvas_transform_3814499831: GDExtensionMethodBindPtr! = nil
    static var _method_get_screen_transform_3814499831: GDExtensionMethodBindPtr! = nil
    static var _method_get_local_mouse_position_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_get_global_mouse_position_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_get_canvas_2944877500: GDExtensionMethodBindPtr! = nil
    static var _method_get_world_2d_2339128592: GDExtensionMethodBindPtr! = nil
    static var _method_set_material_2757459619: GDExtensionMethodBindPtr! = nil
    static var _method_get_material_5934680: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_parent_material_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_use_parent_material_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_notify_local_transform_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_local_transform_notification_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_notify_transform_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_transform_notification_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_force_update_transform_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_make_canvas_position_local_2656412154: GDExtensionMethodBindPtr! = nil
    static var _method_make_input_local_811130057: GDExtensionMethodBindPtr! = nil
    static var _method_set_visibility_layer_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_visibility_layer_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_visibility_layer_bit_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_get_visibility_layer_bit_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_filter_1037999706: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_filter_121960042: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_repeat_1716472974: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_repeat_2667158319: GDExtensionMethodBindPtr! = nil
    static var _method_set_clip_children_mode_1319393776: GDExtensionMethodBindPtr! = nil
    static var _method_get_clip_children_mode_3581808349: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_CanvasItem = StringName(from: "CanvasItem")

        let _method_get_canvas_item_2944877500_name = StringName(from: "get_canvas_item")
        self._method_get_canvas_item_2944877500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_canvas_item_2944877500_name._native_ptr(), 2944877500)
        assert(CanvasItem._method_get_canvas_item_2944877500 != nil)
        let _method_set_visible_2586408642_name = StringName(from: "set_visible")
        self._method_set_visible_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_visible_2586408642_name._native_ptr(), 2586408642)
        assert(CanvasItem._method_set_visible_2586408642 != nil)
        let _method_is_visible_36873697_name = StringName(from: "is_visible")
        self._method_is_visible_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_visible_36873697_name._native_ptr(), 36873697)
        assert(CanvasItem._method_is_visible_36873697 != nil)
        let _method_is_visible_in_tree_36873697_name = StringName(from: "is_visible_in_tree")
        self._method_is_visible_in_tree_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_visible_in_tree_36873697_name._native_ptr(), 36873697)
        assert(CanvasItem._method_is_visible_in_tree_36873697 != nil)
        let _method_show_3218959716_name = StringName(from: "show")
        self._method_show_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_show_3218959716_name._native_ptr(), 3218959716)
        assert(CanvasItem._method_show_3218959716 != nil)
        let _method_hide_3218959716_name = StringName(from: "hide")
        self._method_hide_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_hide_3218959716_name._native_ptr(), 3218959716)
        assert(CanvasItem._method_hide_3218959716 != nil)
        let _method_queue_redraw_3218959716_name = StringName(from: "queue_redraw")
        self._method_queue_redraw_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_queue_redraw_3218959716_name._native_ptr(), 3218959716)
        assert(CanvasItem._method_queue_redraw_3218959716 != nil)
        let _method_move_to_front_3218959716_name = StringName(from: "move_to_front")
        self._method_move_to_front_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_move_to_front_3218959716_name._native_ptr(), 3218959716)
        assert(CanvasItem._method_move_to_front_3218959716 != nil)
        let _method_set_as_top_level_2586408642_name = StringName(from: "set_as_top_level")
        self._method_set_as_top_level_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_as_top_level_2586408642_name._native_ptr(), 2586408642)
        assert(CanvasItem._method_set_as_top_level_2586408642 != nil)
        let _method_is_set_as_top_level_36873697_name = StringName(from: "is_set_as_top_level")
        self._method_is_set_as_top_level_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_set_as_top_level_36873697_name._native_ptr(), 36873697)
        assert(CanvasItem._method_is_set_as_top_level_36873697 != nil)
        let _method_set_light_mask_1286410249_name = StringName(from: "set_light_mask")
        self._method_set_light_mask_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_light_mask_1286410249_name._native_ptr(), 1286410249)
        assert(CanvasItem._method_set_light_mask_1286410249 != nil)
        let _method_get_light_mask_3905245786_name = StringName(from: "get_light_mask")
        self._method_get_light_mask_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_light_mask_3905245786_name._native_ptr(), 3905245786)
        assert(CanvasItem._method_get_light_mask_3905245786 != nil)
        let _method_set_modulate_2920490490_name = StringName(from: "set_modulate")
        self._method_set_modulate_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_modulate_2920490490_name._native_ptr(), 2920490490)
        assert(CanvasItem._method_set_modulate_2920490490 != nil)
        let _method_get_modulate_3444240500_name = StringName(from: "get_modulate")
        self._method_get_modulate_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_modulate_3444240500_name._native_ptr(), 3444240500)
        assert(CanvasItem._method_get_modulate_3444240500 != nil)
        let _method_set_self_modulate_2920490490_name = StringName(from: "set_self_modulate")
        self._method_set_self_modulate_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_self_modulate_2920490490_name._native_ptr(), 2920490490)
        assert(CanvasItem._method_set_self_modulate_2920490490 != nil)
        let _method_get_self_modulate_3444240500_name = StringName(from: "get_self_modulate")
        self._method_get_self_modulate_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_self_modulate_3444240500_name._native_ptr(), 3444240500)
        assert(CanvasItem._method_get_self_modulate_3444240500 != nil)
        let _method_set_z_index_1286410249_name = StringName(from: "set_z_index")
        self._method_set_z_index_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_z_index_1286410249_name._native_ptr(), 1286410249)
        assert(CanvasItem._method_set_z_index_1286410249 != nil)
        let _method_get_z_index_3905245786_name = StringName(from: "get_z_index")
        self._method_get_z_index_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_z_index_3905245786_name._native_ptr(), 3905245786)
        assert(CanvasItem._method_get_z_index_3905245786 != nil)
        let _method_set_z_as_relative_2586408642_name = StringName(from: "set_z_as_relative")
        self._method_set_z_as_relative_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_z_as_relative_2586408642_name._native_ptr(), 2586408642)
        assert(CanvasItem._method_set_z_as_relative_2586408642 != nil)
        let _method_is_z_relative_36873697_name = StringName(from: "is_z_relative")
        self._method_is_z_relative_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_z_relative_36873697_name._native_ptr(), 36873697)
        assert(CanvasItem._method_is_z_relative_36873697 != nil)
        let _method_set_y_sort_enabled_2586408642_name = StringName(from: "set_y_sort_enabled")
        self._method_set_y_sort_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_y_sort_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(CanvasItem._method_set_y_sort_enabled_2586408642 != nil)
        let _method_is_y_sort_enabled_36873697_name = StringName(from: "is_y_sort_enabled")
        self._method_is_y_sort_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_y_sort_enabled_36873697_name._native_ptr(), 36873697)
        assert(CanvasItem._method_is_y_sort_enabled_36873697 != nil)
        let _method_set_draw_behind_parent_2586408642_name = StringName(from: "set_draw_behind_parent")
        self._method_set_draw_behind_parent_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_draw_behind_parent_2586408642_name._native_ptr(), 2586408642)
        assert(CanvasItem._method_set_draw_behind_parent_2586408642 != nil)
        let _method_is_draw_behind_parent_enabled_36873697_name = StringName(from: "is_draw_behind_parent_enabled")
        self._method_is_draw_behind_parent_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_draw_behind_parent_enabled_36873697_name._native_ptr(), 36873697)
        assert(CanvasItem._method_is_draw_behind_parent_enabled_36873697 != nil)
        let _method_draw_line_2516941890_name = StringName(from: "draw_line")
        self._method_draw_line_2516941890 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_line_2516941890_name._native_ptr(), 2516941890)
        assert(CanvasItem._method_draw_line_2516941890 != nil)
        let _method_draw_dashed_line_2175215884_name = StringName(from: "draw_dashed_line")
        self._method_draw_dashed_line_2175215884 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_dashed_line_2175215884_name._native_ptr(), 2175215884)
        assert(CanvasItem._method_draw_dashed_line_2175215884 != nil)
        let _method_draw_polyline_4175878946_name = StringName(from: "draw_polyline")
        self._method_draw_polyline_4175878946 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_polyline_4175878946_name._native_ptr(), 4175878946)
        assert(CanvasItem._method_draw_polyline_4175878946 != nil)
        let _method_draw_polyline_colors_2239164197_name = StringName(from: "draw_polyline_colors")
        self._method_draw_polyline_colors_2239164197 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_polyline_colors_2239164197_name._native_ptr(), 2239164197)
        assert(CanvasItem._method_draw_polyline_colors_2239164197 != nil)
        let _method_draw_arc_3486841771_name = StringName(from: "draw_arc")
        self._method_draw_arc_3486841771 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_arc_3486841771_name._native_ptr(), 3486841771)
        assert(CanvasItem._method_draw_arc_3486841771 != nil)
        let _method_draw_multiline_4230657331_name = StringName(from: "draw_multiline")
        self._method_draw_multiline_4230657331 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_multiline_4230657331_name._native_ptr(), 4230657331)
        assert(CanvasItem._method_draw_multiline_4230657331 != nil)
        let _method_draw_multiline_colors_235933050_name = StringName(from: "draw_multiline_colors")
        self._method_draw_multiline_colors_235933050 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_multiline_colors_235933050_name._native_ptr(), 235933050)
        assert(CanvasItem._method_draw_multiline_colors_235933050 != nil)
        let _method_draw_rect_84391229_name = StringName(from: "draw_rect")
        self._method_draw_rect_84391229 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_rect_84391229_name._native_ptr(), 84391229)
        assert(CanvasItem._method_draw_rect_84391229 != nil)
        let _method_draw_circle_3063020269_name = StringName(from: "draw_circle")
        self._method_draw_circle_3063020269 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_circle_3063020269_name._native_ptr(), 3063020269)
        assert(CanvasItem._method_draw_circle_3063020269 != nil)
        let _method_draw_texture_1695860435_name = StringName(from: "draw_texture")
        self._method_draw_texture_1695860435 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_texture_1695860435_name._native_ptr(), 1695860435)
        assert(CanvasItem._method_draw_texture_1695860435 != nil)
        let _method_draw_texture_rect_3204081724_name = StringName(from: "draw_texture_rect")
        self._method_draw_texture_rect_3204081724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_texture_rect_3204081724_name._native_ptr(), 3204081724)
        assert(CanvasItem._method_draw_texture_rect_3204081724 != nil)
        let _method_draw_texture_rect_region_3196597532_name = StringName(from: "draw_texture_rect_region")
        self._method_draw_texture_rect_region_3196597532 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_texture_rect_region_3196597532_name._native_ptr(), 3196597532)
        assert(CanvasItem._method_draw_texture_rect_region_3196597532 != nil)
        let _method_draw_msdf_texture_rect_region_2672026175_name = StringName(from: "draw_msdf_texture_rect_region")
        self._method_draw_msdf_texture_rect_region_2672026175 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_msdf_texture_rect_region_2672026175_name._native_ptr(), 2672026175)
        assert(CanvasItem._method_draw_msdf_texture_rect_region_2672026175 != nil)
        let _method_draw_lcd_texture_rect_region_169610548_name = StringName(from: "draw_lcd_texture_rect_region")
        self._method_draw_lcd_texture_rect_region_169610548 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_lcd_texture_rect_region_169610548_name._native_ptr(), 169610548)
        assert(CanvasItem._method_draw_lcd_texture_rect_region_169610548 != nil)
        let _method_draw_style_box_388176283_name = StringName(from: "draw_style_box")
        self._method_draw_style_box_388176283 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_style_box_388176283_name._native_ptr(), 388176283)
        assert(CanvasItem._method_draw_style_box_388176283 != nil)
        let _method_draw_primitive_2248678295_name = StringName(from: "draw_primitive")
        self._method_draw_primitive_2248678295 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_primitive_2248678295_name._native_ptr(), 2248678295)
        assert(CanvasItem._method_draw_primitive_2248678295 != nil)
        let _method_draw_polygon_2683625537_name = StringName(from: "draw_polygon")
        self._method_draw_polygon_2683625537 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_polygon_2683625537_name._native_ptr(), 2683625537)
        assert(CanvasItem._method_draw_polygon_2683625537 != nil)
        let _method_draw_colored_polygon_1659099617_name = StringName(from: "draw_colored_polygon")
        self._method_draw_colored_polygon_1659099617 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_colored_polygon_1659099617_name._native_ptr(), 1659099617)
        assert(CanvasItem._method_draw_colored_polygon_1659099617 != nil)
        let _method_draw_string_2552080639_name = StringName(from: "draw_string")
        self._method_draw_string_2552080639 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_string_2552080639_name._native_ptr(), 2552080639)
        assert(CanvasItem._method_draw_string_2552080639 != nil)
        let _method_draw_multiline_string_4002645436_name = StringName(from: "draw_multiline_string")
        self._method_draw_multiline_string_4002645436 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_multiline_string_4002645436_name._native_ptr(), 4002645436)
        assert(CanvasItem._method_draw_multiline_string_4002645436 != nil)
        let _method_draw_string_outline_850005221_name = StringName(from: "draw_string_outline")
        self._method_draw_string_outline_850005221 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_string_outline_850005221_name._native_ptr(), 850005221)
        assert(CanvasItem._method_draw_string_outline_850005221 != nil)
        let _method_draw_multiline_string_outline_3717870722_name = StringName(from: "draw_multiline_string_outline")
        self._method_draw_multiline_string_outline_3717870722 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_multiline_string_outline_3717870722_name._native_ptr(), 3717870722)
        assert(CanvasItem._method_draw_multiline_string_outline_3717870722 != nil)
        let _method_draw_char_2329089032_name = StringName(from: "draw_char")
        self._method_draw_char_2329089032 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_char_2329089032_name._native_ptr(), 2329089032)
        assert(CanvasItem._method_draw_char_2329089032 != nil)
        let _method_draw_char_outline_419453826_name = StringName(from: "draw_char_outline")
        self._method_draw_char_outline_419453826 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_char_outline_419453826_name._native_ptr(), 419453826)
        assert(CanvasItem._method_draw_char_outline_419453826 != nil)
        let _method_draw_mesh_1634855856_name = StringName(from: "draw_mesh")
        self._method_draw_mesh_1634855856 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_mesh_1634855856_name._native_ptr(), 1634855856)
        assert(CanvasItem._method_draw_mesh_1634855856 != nil)
        let _method_draw_multimesh_937992368_name = StringName(from: "draw_multimesh")
        self._method_draw_multimesh_937992368 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_multimesh_937992368_name._native_ptr(), 937992368)
        assert(CanvasItem._method_draw_multimesh_937992368 != nil)
        let _method_draw_set_transform_4181505845_name = StringName(from: "draw_set_transform")
        self._method_draw_set_transform_4181505845 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_set_transform_4181505845_name._native_ptr(), 4181505845)
        assert(CanvasItem._method_draw_set_transform_4181505845 != nil)
        let _method_draw_set_transform_matrix_2761652528_name = StringName(from: "draw_set_transform_matrix")
        self._method_draw_set_transform_matrix_2761652528 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_set_transform_matrix_2761652528_name._native_ptr(), 2761652528)
        assert(CanvasItem._method_draw_set_transform_matrix_2761652528 != nil)
        let _method_draw_animation_slice_2295343543_name = StringName(from: "draw_animation_slice")
        self._method_draw_animation_slice_2295343543 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_animation_slice_2295343543_name._native_ptr(), 2295343543)
        assert(CanvasItem._method_draw_animation_slice_2295343543 != nil)
        let _method_draw_end_animation_3218959716_name = StringName(from: "draw_end_animation")
        self._method_draw_end_animation_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_end_animation_3218959716_name._native_ptr(), 3218959716)
        assert(CanvasItem._method_draw_end_animation_3218959716 != nil)
        let _method_get_transform_3814499831_name = StringName(from: "get_transform")
        self._method_get_transform_3814499831 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_transform_3814499831_name._native_ptr(), 3814499831)
        assert(CanvasItem._method_get_transform_3814499831 != nil)
        let _method_get_global_transform_3814499831_name = StringName(from: "get_global_transform")
        self._method_get_global_transform_3814499831 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_global_transform_3814499831_name._native_ptr(), 3814499831)
        assert(CanvasItem._method_get_global_transform_3814499831 != nil)
        let _method_get_global_transform_with_canvas_3814499831_name = StringName(from: "get_global_transform_with_canvas")
        self._method_get_global_transform_with_canvas_3814499831 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_global_transform_with_canvas_3814499831_name._native_ptr(), 3814499831)
        assert(CanvasItem._method_get_global_transform_with_canvas_3814499831 != nil)
        let _method_get_viewport_transform_3814499831_name = StringName(from: "get_viewport_transform")
        self._method_get_viewport_transform_3814499831 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_viewport_transform_3814499831_name._native_ptr(), 3814499831)
        assert(CanvasItem._method_get_viewport_transform_3814499831 != nil)
        let _method_get_viewport_rect_1639390495_name = StringName(from: "get_viewport_rect")
        self._method_get_viewport_rect_1639390495 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_viewport_rect_1639390495_name._native_ptr(), 1639390495)
        assert(CanvasItem._method_get_viewport_rect_1639390495 != nil)
        let _method_get_canvas_transform_3814499831_name = StringName(from: "get_canvas_transform")
        self._method_get_canvas_transform_3814499831 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_canvas_transform_3814499831_name._native_ptr(), 3814499831)
        assert(CanvasItem._method_get_canvas_transform_3814499831 != nil)
        let _method_get_screen_transform_3814499831_name = StringName(from: "get_screen_transform")
        self._method_get_screen_transform_3814499831 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_screen_transform_3814499831_name._native_ptr(), 3814499831)
        assert(CanvasItem._method_get_screen_transform_3814499831 != nil)
        let _method_get_local_mouse_position_3341600327_name = StringName(from: "get_local_mouse_position")
        self._method_get_local_mouse_position_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_local_mouse_position_3341600327_name._native_ptr(), 3341600327)
        assert(CanvasItem._method_get_local_mouse_position_3341600327 != nil)
        let _method_get_global_mouse_position_3341600327_name = StringName(from: "get_global_mouse_position")
        self._method_get_global_mouse_position_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_global_mouse_position_3341600327_name._native_ptr(), 3341600327)
        assert(CanvasItem._method_get_global_mouse_position_3341600327 != nil)
        let _method_get_canvas_2944877500_name = StringName(from: "get_canvas")
        self._method_get_canvas_2944877500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_canvas_2944877500_name._native_ptr(), 2944877500)
        assert(CanvasItem._method_get_canvas_2944877500 != nil)
        let _method_get_world_2d_2339128592_name = StringName(from: "get_world_2d")
        self._method_get_world_2d_2339128592 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_world_2d_2339128592_name._native_ptr(), 2339128592)
        assert(CanvasItem._method_get_world_2d_2339128592 != nil)
        let _method_set_material_2757459619_name = StringName(from: "set_material")
        self._method_set_material_2757459619 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_material_2757459619_name._native_ptr(), 2757459619)
        assert(CanvasItem._method_set_material_2757459619 != nil)
        let _method_get_material_5934680_name = StringName(from: "get_material")
        self._method_get_material_5934680 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_material_5934680_name._native_ptr(), 5934680)
        assert(CanvasItem._method_get_material_5934680 != nil)
        let _method_set_use_parent_material_2586408642_name = StringName(from: "set_use_parent_material")
        self._method_set_use_parent_material_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_use_parent_material_2586408642_name._native_ptr(), 2586408642)
        assert(CanvasItem._method_set_use_parent_material_2586408642 != nil)
        let _method_get_use_parent_material_36873697_name = StringName(from: "get_use_parent_material")
        self._method_get_use_parent_material_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_use_parent_material_36873697_name._native_ptr(), 36873697)
        assert(CanvasItem._method_get_use_parent_material_36873697 != nil)
        let _method_set_notify_local_transform_2586408642_name = StringName(from: "set_notify_local_transform")
        self._method_set_notify_local_transform_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_notify_local_transform_2586408642_name._native_ptr(), 2586408642)
        assert(CanvasItem._method_set_notify_local_transform_2586408642 != nil)
        let _method_is_local_transform_notification_enabled_36873697_name = StringName(from: "is_local_transform_notification_enabled")
        self._method_is_local_transform_notification_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_local_transform_notification_enabled_36873697_name._native_ptr(), 36873697)
        assert(CanvasItem._method_is_local_transform_notification_enabled_36873697 != nil)
        let _method_set_notify_transform_2586408642_name = StringName(from: "set_notify_transform")
        self._method_set_notify_transform_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_notify_transform_2586408642_name._native_ptr(), 2586408642)
        assert(CanvasItem._method_set_notify_transform_2586408642 != nil)
        let _method_is_transform_notification_enabled_36873697_name = StringName(from: "is_transform_notification_enabled")
        self._method_is_transform_notification_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_transform_notification_enabled_36873697_name._native_ptr(), 36873697)
        assert(CanvasItem._method_is_transform_notification_enabled_36873697 != nil)
        let _method_force_update_transform_3218959716_name = StringName(from: "force_update_transform")
        self._method_force_update_transform_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_force_update_transform_3218959716_name._native_ptr(), 3218959716)
        assert(CanvasItem._method_force_update_transform_3218959716 != nil)
        let _method_make_canvas_position_local_2656412154_name = StringName(from: "make_canvas_position_local")
        self._method_make_canvas_position_local_2656412154 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_make_canvas_position_local_2656412154_name._native_ptr(), 2656412154)
        assert(CanvasItem._method_make_canvas_position_local_2656412154 != nil)
        let _method_make_input_local_811130057_name = StringName(from: "make_input_local")
        self._method_make_input_local_811130057 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_make_input_local_811130057_name._native_ptr(), 811130057)
        assert(CanvasItem._method_make_input_local_811130057 != nil)
        let _method_set_visibility_layer_1286410249_name = StringName(from: "set_visibility_layer")
        self._method_set_visibility_layer_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_visibility_layer_1286410249_name._native_ptr(), 1286410249)
        assert(CanvasItem._method_set_visibility_layer_1286410249 != nil)
        let _method_get_visibility_layer_3905245786_name = StringName(from: "get_visibility_layer")
        self._method_get_visibility_layer_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_visibility_layer_3905245786_name._native_ptr(), 3905245786)
        assert(CanvasItem._method_get_visibility_layer_3905245786 != nil)
        let _method_set_visibility_layer_bit_300928843_name = StringName(from: "set_visibility_layer_bit")
        self._method_set_visibility_layer_bit_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_visibility_layer_bit_300928843_name._native_ptr(), 300928843)
        assert(CanvasItem._method_set_visibility_layer_bit_300928843 != nil)
        let _method_get_visibility_layer_bit_1116898809_name = StringName(from: "get_visibility_layer_bit")
        self._method_get_visibility_layer_bit_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_visibility_layer_bit_1116898809_name._native_ptr(), 1116898809)
        assert(CanvasItem._method_get_visibility_layer_bit_1116898809 != nil)
        let _method_set_texture_filter_1037999706_name = StringName(from: "set_texture_filter")
        self._method_set_texture_filter_1037999706 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_texture_filter_1037999706_name._native_ptr(), 1037999706)
        assert(CanvasItem._method_set_texture_filter_1037999706 != nil)
        let _method_get_texture_filter_121960042_name = StringName(from: "get_texture_filter")
        self._method_get_texture_filter_121960042 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_texture_filter_121960042_name._native_ptr(), 121960042)
        assert(CanvasItem._method_get_texture_filter_121960042 != nil)
        let _method_set_texture_repeat_1716472974_name = StringName(from: "set_texture_repeat")
        self._method_set_texture_repeat_1716472974 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_texture_repeat_1716472974_name._native_ptr(), 1716472974)
        assert(CanvasItem._method_set_texture_repeat_1716472974 != nil)
        let _method_get_texture_repeat_2667158319_name = StringName(from: "get_texture_repeat")
        self._method_get_texture_repeat_2667158319 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_texture_repeat_2667158319_name._native_ptr(), 2667158319)
        assert(CanvasItem._method_get_texture_repeat_2667158319 != nil)
        let _method_set_clip_children_mode_1319393776_name = StringName(from: "set_clip_children_mode")
        self._method_set_clip_children_mode_1319393776 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_clip_children_mode_1319393776_name._native_ptr(), 1319393776)
        assert(CanvasItem._method_set_clip_children_mode_1319393776 != nil)
        let _method_get_clip_children_mode_3581808349_name = StringName(from: "get_clip_children_mode")
        self._method_get_clip_children_mode_3581808349 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_clip_children_mode_3581808349_name._native_ptr(), 3581808349)
        assert(CanvasItem._method_get_clip_children_mode_3581808349 != nil)
    }

    public func _draw()  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func get_canvas_item()  -> RID {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func set_visible(visible: Bool)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(visible._native_ptr())
        ])
    }
    public func is_visible()  -> Bool {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func is_visible_in_tree()  -> Bool {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func show()  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func hide()  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func queue_redraw()  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func move_to_front()  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func set_as_top_level(enable: Bool)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(enable._native_ptr())
        ])
    }
    public func is_set_as_top_level()  -> Bool {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func set_light_mask(light_mask: Int64)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(light_mask._native_ptr())
        ])
    }
    public func get_light_mask()  -> Int64 {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func set_modulate(modulate: Color)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(modulate._native_ptr())
        ])
    }
    public func get_modulate()  -> Color {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func set_self_modulate(self_modulate: Color)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(self_modulate._native_ptr())
        ])
    }
    public func get_self_modulate()  -> Color {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func set_z_index(z_index: Int64)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(z_index._native_ptr())
        ])
    }
    public func get_z_index()  -> Int64 {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func set_z_as_relative(enable: Bool)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(enable._native_ptr())
        ])
    }
    public func is_z_relative()  -> Bool {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func set_y_sort_enabled(enabled: Bool)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(enabled._native_ptr())
        ])
    }
    public func is_y_sort_enabled()  -> Bool {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func set_draw_behind_parent(enable: Bool)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(enable._native_ptr())
        ])
    }
    public func is_draw_behind_parent_enabled()  -> Bool {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func draw_line(from: Vector2, to: Vector2, color: Color, width: Float64, antialiased: Bool)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(from._native_ptr()), .init(to._native_ptr()), .init(color._native_ptr()), .init(width._native_ptr()), .init(antialiased._native_ptr())
        ])
    }
    public func draw_dashed_line(from: Vector2, to: Vector2, color: Color, width: Float64, dash: Float64, aligned: Bool)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(from._native_ptr()), .init(to._native_ptr()), .init(color._native_ptr()), .init(width._native_ptr()), .init(dash._native_ptr()), .init(aligned._native_ptr())
        ])
    }
    public func draw_polyline(points: PackedVector2Array, color: Color, width: Float64, antialiased: Bool)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(points._native_ptr()), .init(color._native_ptr()), .init(width._native_ptr()), .init(antialiased._native_ptr())
        ])
    }
    public func draw_polyline_colors(points: PackedVector2Array, colors: PackedColorArray, width: Float64, antialiased: Bool)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(points._native_ptr()), .init(colors._native_ptr()), .init(width._native_ptr()), .init(antialiased._native_ptr())
        ])
    }
    public func draw_arc(center: Vector2, radius: Float64, start_angle: Float64, end_angle: Float64, point_count: Int64, color: Color, width: Float64, antialiased: Bool)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 8)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(center._native_ptr()), .init(radius._native_ptr()), .init(start_angle._native_ptr()), .init(end_angle._native_ptr()), .init(point_count._native_ptr()), .init(color._native_ptr()), .init(width._native_ptr()), .init(antialiased._native_ptr())
        ])
    }
    public func draw_multiline(points: PackedVector2Array, color: Color, width: Float64)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(points._native_ptr()), .init(color._native_ptr()), .init(width._native_ptr())
        ])
    }
    public func draw_multiline_colors(points: PackedVector2Array, colors: PackedColorArray, width: Float64)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(points._native_ptr()), .init(colors._native_ptr()), .init(width._native_ptr())
        ])
    }
    public func draw_rect(rect: Rect2, color: Color, filled: Bool, width: Float64)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(rect._native_ptr()), .init(color._native_ptr()), .init(filled._native_ptr()), .init(width._native_ptr())
        ])
    }
    public func draw_circle(position: Vector2, radius: Float64, color: Color)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(position._native_ptr()), .init(radius._native_ptr()), .init(color._native_ptr())
        ])
    }
    public func draw_texture(texture: Texture2D, position: Vector2, modulate: Color)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(texture._native_ptr()), .init(position._native_ptr()), .init(modulate._native_ptr())
        ])
    }
    public func draw_texture_rect(texture: Texture2D, rect: Rect2, tile: Bool, modulate: Color, transpose: Bool)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(texture._native_ptr()), .init(rect._native_ptr()), .init(tile._native_ptr()), .init(modulate._native_ptr()), .init(transpose._native_ptr())
        ])
    }
    public func draw_texture_rect_region(texture: Texture2D, rect: Rect2, src_rect: Rect2, modulate: Color, transpose: Bool, clip_uv: Bool)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(texture._native_ptr()), .init(rect._native_ptr()), .init(src_rect._native_ptr()), .init(modulate._native_ptr()), .init(transpose._native_ptr()), .init(clip_uv._native_ptr())
        ])
    }
    public func draw_msdf_texture_rect_region(texture: Texture2D, rect: Rect2, src_rect: Rect2, modulate: Color, outline: Float64, pixel_range: Float64, scale: Float64)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 7)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(texture._native_ptr()), .init(rect._native_ptr()), .init(src_rect._native_ptr()), .init(modulate._native_ptr()), .init(outline._native_ptr()), .init(pixel_range._native_ptr()), .init(scale._native_ptr())
        ])
    }
    public func draw_lcd_texture_rect_region(texture: Texture2D, rect: Rect2, src_rect: Rect2, modulate: Color)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(texture._native_ptr()), .init(rect._native_ptr()), .init(src_rect._native_ptr()), .init(modulate._native_ptr())
        ])
    }
    public func draw_style_box(style_box: StyleBox, rect: Rect2)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(style_box._native_ptr()), .init(rect._native_ptr())
        ])
    }
    public func draw_primitive(points: PackedVector2Array, colors: PackedColorArray, uvs: PackedVector2Array, texture: Texture2D)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(points._native_ptr()), .init(colors._native_ptr()), .init(uvs._native_ptr()), .init(texture._native_ptr())
        ])
    }
    public func draw_polygon(points: PackedVector2Array, colors: PackedColorArray, uvs: PackedVector2Array, texture: Texture2D)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(points._native_ptr()), .init(colors._native_ptr()), .init(uvs._native_ptr()), .init(texture._native_ptr())
        ])
    }
    public func draw_colored_polygon(points: PackedVector2Array, color: Color, uvs: PackedVector2Array, texture: Texture2D)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(points._native_ptr()), .init(color._native_ptr()), .init(uvs._native_ptr()), .init(texture._native_ptr())
        ])
    }
    public func draw_string(font: Font, pos: Vector2, text: String, alignment: HorizontalAlignment, width: Float64, font_size: Int64, modulate: Color, jst_flags: bitfield::TextServer.JustificationFlag, direction: TextServer.Direction, orientation: TextServer.Orientation)  {
        let text_nativeStr = text._create_native__kept()
        defer { text_nativeStr.deallocate() }
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 10)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(font._native_ptr()), .init(pos._native_ptr()), text_nativeStr, .init(alignment._native_ptr()), .init(width._native_ptr()), .init(font_size._native_ptr()), .init(modulate._native_ptr()), .init(jst_flags._native_ptr()), .init(direction._native_ptr()), .init(orientation._native_ptr())
        ])
    }
    public func draw_multiline_string(font: Font, pos: Vector2, text: String, alignment: HorizontalAlignment, width: Float64, font_size: Int64, max_lines: Int64, modulate: Color, brk_flags: bitfield::TextServer.LineBreakFlag, jst_flags: bitfield::TextServer.JustificationFlag, direction: TextServer.Direction, orientation: TextServer.Orientation)  {
        let text_nativeStr = text._create_native__kept()
        defer { text_nativeStr.deallocate() }
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 12)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(font._native_ptr()), .init(pos._native_ptr()), text_nativeStr, .init(alignment._native_ptr()), .init(width._native_ptr()), .init(font_size._native_ptr()), .init(max_lines._native_ptr()), .init(modulate._native_ptr()), .init(brk_flags._native_ptr()), .init(jst_flags._native_ptr()), .init(direction._native_ptr()), .init(orientation._native_ptr())
        ])
    }
    public func draw_string_outline(font: Font, pos: Vector2, text: String, alignment: HorizontalAlignment, width: Float64, font_size: Int64, size: Int64, modulate: Color, jst_flags: bitfield::TextServer.JustificationFlag, direction: TextServer.Direction, orientation: TextServer.Orientation)  {
        let text_nativeStr = text._create_native__kept()
        defer { text_nativeStr.deallocate() }
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 11)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(font._native_ptr()), .init(pos._native_ptr()), text_nativeStr, .init(alignment._native_ptr()), .init(width._native_ptr()), .init(font_size._native_ptr()), .init(size._native_ptr()), .init(modulate._native_ptr()), .init(jst_flags._native_ptr()), .init(direction._native_ptr()), .init(orientation._native_ptr())
        ])
    }
    public func draw_multiline_string_outline(font: Font, pos: Vector2, text: String, alignment: HorizontalAlignment, width: Float64, font_size: Int64, max_lines: Int64, size: Int64, modulate: Color, brk_flags: bitfield::TextServer.LineBreakFlag, jst_flags: bitfield::TextServer.JustificationFlag, direction: TextServer.Direction, orientation: TextServer.Orientation)  {
        let text_nativeStr = text._create_native__kept()
        defer { text_nativeStr.deallocate() }
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 13)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(font._native_ptr()), .init(pos._native_ptr()), text_nativeStr, .init(alignment._native_ptr()), .init(width._native_ptr()), .init(font_size._native_ptr()), .init(max_lines._native_ptr()), .init(size._native_ptr()), .init(modulate._native_ptr()), .init(brk_flags._native_ptr()), .init(jst_flags._native_ptr()), .init(direction._native_ptr()), .init(orientation._native_ptr())
        ])
    }
    public func draw_char(font: Font, pos: Vector2, char: String, font_size: Int64, modulate: Color)  {
        let char_nativeStr = char._create_native__kept()
        defer { char_nativeStr.deallocate() }
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(font._native_ptr()), .init(pos._native_ptr()), char_nativeStr, .init(font_size._native_ptr()), .init(modulate._native_ptr())
        ])
    }
    public func draw_char_outline(font: Font, pos: Vector2, char: String, font_size: Int64, size: Int64, modulate: Color)  {
        let char_nativeStr = char._create_native__kept()
        defer { char_nativeStr.deallocate() }
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(font._native_ptr()), .init(pos._native_ptr()), char_nativeStr, .init(font_size._native_ptr()), .init(size._native_ptr()), .init(modulate._native_ptr())
        ])
    }
    public func draw_mesh(mesh: Mesh, texture: Texture2D, transform: Transform2D, modulate: Color)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(mesh._native_ptr()), .init(texture._native_ptr()), .init(transform._native_ptr()), .init(modulate._native_ptr())
        ])
    }
    public func draw_multimesh(multimesh: MultiMesh, texture: Texture2D)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(multimesh._native_ptr()), .init(texture._native_ptr())
        ])
    }
    public func draw_set_transform(position: Vector2, rotation: Float64, scale: Vector2)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(position._native_ptr()), .init(rotation._native_ptr()), .init(scale._native_ptr())
        ])
    }
    public func draw_set_transform_matrix(xform: Transform2D)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(xform._native_ptr())
        ])
    }
    public func draw_animation_slice(animation_length: Float64, slice_begin: Float64, slice_end: Float64, offset: Float64)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(animation_length._native_ptr()), .init(slice_begin._native_ptr()), .init(slice_end._native_ptr()), .init(offset._native_ptr())
        ])
    }
    public func draw_end_animation()  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func get_transform()  -> Transform2D {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func get_global_transform()  -> Transform2D {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func get_global_transform_with_canvas()  -> Transform2D {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func get_viewport_transform()  -> Transform2D {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func get_viewport_rect()  -> Rect2 {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func get_canvas_transform()  -> Transform2D {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func get_screen_transform()  -> Transform2D {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func get_local_mouse_position()  -> Vector2 {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func get_global_mouse_position()  -> Vector2 {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func get_canvas()  -> RID {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func get_world_2d()  -> World2D {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func set_material(material: Material)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(material._native_ptr())
        ])
    }
    public func get_material()  -> Material {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func set_use_parent_material(enable: Bool)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(enable._native_ptr())
        ])
    }
    public func get_use_parent_material()  -> Bool {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func set_notify_local_transform(enable: Bool)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(enable._native_ptr())
        ])
    }
    public func is_local_transform_notification_enabled()  -> Bool {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func set_notify_transform(enable: Bool)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(enable._native_ptr())
        ])
    }
    public func is_transform_notification_enabled()  -> Bool {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func force_update_transform()  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func make_canvas_position_local(screen_point: Vector2)  -> Vector2 {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(screen_point._native_ptr())
        ])
    }
    public func make_input_local(event: InputEvent)  -> InputEvent {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(event._native_ptr())
        ])
    }
    public func set_visibility_layer(layer: Int64)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(layer._native_ptr())
        ])
    }
    public func get_visibility_layer()  -> Int64 {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func set_visibility_layer_bit(layer: Int64, enabled: Bool)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(layer._native_ptr()), .init(enabled._native_ptr())
        ])
    }
    public func get_visibility_layer_bit(layer: Int64)  -> Bool {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(layer._native_ptr())
        ])
    }
    public func set_texture_filter(mode: CanvasItem.TextureFilter)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(mode._native_ptr())
        ])
    }
    public func get_texture_filter()  -> CanvasItem.TextureFilter {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func set_texture_repeat(mode: CanvasItem.TextureRepeat)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(mode._native_ptr())
        ])
    }
    public func get_texture_repeat()  -> CanvasItem.TextureRepeat {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func set_clip_children_mode(mode: CanvasItem.ClipChildrenMode)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(mode._native_ptr())
        ])
    }
    public func get_clip_children_mode()  -> CanvasItem.ClipChildrenMode {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
}
