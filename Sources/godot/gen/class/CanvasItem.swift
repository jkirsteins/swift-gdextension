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
open class CanvasItem : Node {

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

    static var _method__draw_0: StringName! = nil
    static var _method_get_canvas_item_2944877500: StringName! = nil
    static var _method_set_visible_2586408642: StringName! = nil
    static var _method_is_visible_36873697: StringName! = nil
    static var _method_is_visible_in_tree_36873697: StringName! = nil
    static var _method_show_3218959716: StringName! = nil
    static var _method_hide_3218959716: StringName! = nil
    static var _method_queue_redraw_3218959716: StringName! = nil
    static var _method_move_to_front_3218959716: StringName! = nil
    static var _method_set_as_top_level_2586408642: StringName! = nil
    static var _method_is_set_as_top_level_36873697: StringName! = nil
    static var _method_set_light_mask_1286410249: StringName! = nil
    static var _method_get_light_mask_3905245786: StringName! = nil
    static var _method_set_modulate_2920490490: StringName! = nil
    static var _method_get_modulate_3444240500: StringName! = nil
    static var _method_set_self_modulate_2920490490: StringName! = nil
    static var _method_get_self_modulate_3444240500: StringName! = nil
    static var _method_set_z_index_1286410249: StringName! = nil
    static var _method_get_z_index_3905245786: StringName! = nil
    static var _method_set_z_as_relative_2586408642: StringName! = nil
    static var _method_is_z_relative_36873697: StringName! = nil
    static var _method_set_y_sort_enabled_2586408642: StringName! = nil
    static var _method_is_y_sort_enabled_36873697: StringName! = nil
    static var _method_set_draw_behind_parent_2586408642: StringName! = nil
    static var _method_is_draw_behind_parent_enabled_36873697: StringName! = nil
    static var _method_draw_line_2516941890: StringName! = nil
    static var _method_draw_dashed_line_2175215884: StringName! = nil
    static var _method_draw_polyline_4175878946: StringName! = nil
    static var _method_draw_polyline_colors_2239164197: StringName! = nil
    static var _method_draw_arc_3486841771: StringName! = nil
    static var _method_draw_multiline_4230657331: StringName! = nil
    static var _method_draw_multiline_colors_235933050: StringName! = nil
    static var _method_draw_rect_84391229: StringName! = nil
    static var _method_draw_circle_3063020269: StringName! = nil
    static var _method_draw_texture_1695860435: StringName! = nil
    static var _method_draw_texture_rect_3204081724: StringName! = nil
    static var _method_draw_texture_rect_region_3196597532: StringName! = nil
    static var _method_draw_msdf_texture_rect_region_2672026175: StringName! = nil
    static var _method_draw_lcd_texture_rect_region_169610548: StringName! = nil
    static var _method_draw_style_box_388176283: StringName! = nil
    static var _method_draw_primitive_2248678295: StringName! = nil
    static var _method_draw_polygon_2683625537: StringName! = nil
    static var _method_draw_colored_polygon_1659099617: StringName! = nil
    static var _method_draw_string_2552080639: StringName! = nil
    static var _method_draw_multiline_string_4002645436: StringName! = nil
    static var _method_draw_string_outline_850005221: StringName! = nil
    static var _method_draw_multiline_string_outline_3717870722: StringName! = nil
    static var _method_draw_char_2329089032: StringName! = nil
    static var _method_draw_char_outline_419453826: StringName! = nil
    static var _method_draw_mesh_1634855856: StringName! = nil
    static var _method_draw_multimesh_937992368: StringName! = nil
    static var _method_draw_set_transform_4181505845: StringName! = nil
    static var _method_draw_set_transform_matrix_2761652528: StringName! = nil
    static var _method_draw_animation_slice_2295343543: StringName! = nil
    static var _method_draw_end_animation_3218959716: StringName! = nil
    static var _method_get_transform_3814499831: StringName! = nil
    static var _method_get_global_transform_3814499831: StringName! = nil
    static var _method_get_global_transform_with_canvas_3814499831: StringName! = nil
    static var _method_get_viewport_transform_3814499831: StringName! = nil
    static var _method_get_viewport_rect_1639390495: StringName! = nil
    static var _method_get_canvas_transform_3814499831: StringName! = nil
    static var _method_get_screen_transform_3814499831: StringName! = nil
    static var _method_get_local_mouse_position_3341600327: StringName! = nil
    static var _method_get_global_mouse_position_3341600327: StringName! = nil
    static var _method_get_canvas_2944877500: StringName! = nil
    static var _method_get_world_2d_2339128592: StringName! = nil
    static var _method_set_material_2757459619: StringName! = nil
    static var _method_get_material_5934680: StringName! = nil
    static var _method_set_use_parent_material_2586408642: StringName! = nil
    static var _method_get_use_parent_material_36873697: StringName! = nil
    static var _method_set_notify_local_transform_2586408642: StringName! = nil
    static var _method_is_local_transform_notification_enabled_36873697: StringName! = nil
    static var _method_set_notify_transform_2586408642: StringName! = nil
    static var _method_is_transform_notification_enabled_36873697: StringName! = nil
    static var _method_force_update_transform_3218959716: StringName! = nil
    static var _method_make_canvas_position_local_2656412154: StringName! = nil
    static var _method_make_input_local_811130057: StringName! = nil
    static var _method_set_visibility_layer_1286410249: StringName! = nil
    static var _method_get_visibility_layer_3905245786: StringName! = nil
    static var _method_set_visibility_layer_bit_300928843: StringName! = nil
    static var _method_get_visibility_layer_bit_1116898809: StringName! = nil
    static var _method_set_texture_filter_1037999706: StringName! = nil
    static var _method_get_texture_filter_121960042: StringName! = nil
    static var _method_set_texture_repeat_1716472974: StringName! = nil
    static var _method_get_texture_repeat_2667158319: StringName! = nil
    static var _method_set_clip_children_mode_1319393776: StringName! = nil
    static var _method_get_clip_children_mode_3581808349: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_CanvasItem == nil)
        __godot_name_CanvasItem = StringName(from: "CanvasItem")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_canvas_item_2944877500 = StringName(from: "get_canvas_item")
        assert(self._method_get_canvas_item_2944877500 != nil)
        self._method_set_visible_2586408642 = StringName(from: "set_visible")
        assert(self._method_set_visible_2586408642 != nil)
        self._method_is_visible_36873697 = StringName(from: "is_visible")
        assert(self._method_is_visible_36873697 != nil)
        self._method_is_visible_in_tree_36873697 = StringName(from: "is_visible_in_tree")
        assert(self._method_is_visible_in_tree_36873697 != nil)
        self._method_show_3218959716 = StringName(from: "show")
        assert(self._method_show_3218959716 != nil)
        self._method_hide_3218959716 = StringName(from: "hide")
        assert(self._method_hide_3218959716 != nil)
        self._method_queue_redraw_3218959716 = StringName(from: "queue_redraw")
        assert(self._method_queue_redraw_3218959716 != nil)
        self._method_move_to_front_3218959716 = StringName(from: "move_to_front")
        assert(self._method_move_to_front_3218959716 != nil)
        self._method_set_as_top_level_2586408642 = StringName(from: "set_as_top_level")
        assert(self._method_set_as_top_level_2586408642 != nil)
        self._method_is_set_as_top_level_36873697 = StringName(from: "is_set_as_top_level")
        assert(self._method_is_set_as_top_level_36873697 != nil)
        self._method_set_light_mask_1286410249 = StringName(from: "set_light_mask")
        assert(self._method_set_light_mask_1286410249 != nil)
        self._method_get_light_mask_3905245786 = StringName(from: "get_light_mask")
        assert(self._method_get_light_mask_3905245786 != nil)
        self._method_set_modulate_2920490490 = StringName(from: "set_modulate")
        assert(self._method_set_modulate_2920490490 != nil)
        self._method_get_modulate_3444240500 = StringName(from: "get_modulate")
        assert(self._method_get_modulate_3444240500 != nil)
        self._method_set_self_modulate_2920490490 = StringName(from: "set_self_modulate")
        assert(self._method_set_self_modulate_2920490490 != nil)
        self._method_get_self_modulate_3444240500 = StringName(from: "get_self_modulate")
        assert(self._method_get_self_modulate_3444240500 != nil)
        self._method_set_z_index_1286410249 = StringName(from: "set_z_index")
        assert(self._method_set_z_index_1286410249 != nil)
        self._method_get_z_index_3905245786 = StringName(from: "get_z_index")
        assert(self._method_get_z_index_3905245786 != nil)
        self._method_set_z_as_relative_2586408642 = StringName(from: "set_z_as_relative")
        assert(self._method_set_z_as_relative_2586408642 != nil)
        self._method_is_z_relative_36873697 = StringName(from: "is_z_relative")
        assert(self._method_is_z_relative_36873697 != nil)
        self._method_set_y_sort_enabled_2586408642 = StringName(from: "set_y_sort_enabled")
        assert(self._method_set_y_sort_enabled_2586408642 != nil)
        self._method_is_y_sort_enabled_36873697 = StringName(from: "is_y_sort_enabled")
        assert(self._method_is_y_sort_enabled_36873697 != nil)
        self._method_set_draw_behind_parent_2586408642 = StringName(from: "set_draw_behind_parent")
        assert(self._method_set_draw_behind_parent_2586408642 != nil)
        self._method_is_draw_behind_parent_enabled_36873697 = StringName(from: "is_draw_behind_parent_enabled")
        assert(self._method_is_draw_behind_parent_enabled_36873697 != nil)
        self._method_draw_line_2516941890 = StringName(from: "draw_line")
        assert(self._method_draw_line_2516941890 != nil)
        self._method_draw_dashed_line_2175215884 = StringName(from: "draw_dashed_line")
        assert(self._method_draw_dashed_line_2175215884 != nil)
        self._method_draw_polyline_4175878946 = StringName(from: "draw_polyline")
        assert(self._method_draw_polyline_4175878946 != nil)
        self._method_draw_polyline_colors_2239164197 = StringName(from: "draw_polyline_colors")
        assert(self._method_draw_polyline_colors_2239164197 != nil)
        self._method_draw_arc_3486841771 = StringName(from: "draw_arc")
        assert(self._method_draw_arc_3486841771 != nil)
        self._method_draw_multiline_4230657331 = StringName(from: "draw_multiline")
        assert(self._method_draw_multiline_4230657331 != nil)
        self._method_draw_multiline_colors_235933050 = StringName(from: "draw_multiline_colors")
        assert(self._method_draw_multiline_colors_235933050 != nil)
        self._method_draw_rect_84391229 = StringName(from: "draw_rect")
        assert(self._method_draw_rect_84391229 != nil)
        self._method_draw_circle_3063020269 = StringName(from: "draw_circle")
        assert(self._method_draw_circle_3063020269 != nil)
        self._method_draw_texture_1695860435 = StringName(from: "draw_texture")
        assert(self._method_draw_texture_1695860435 != nil)
        self._method_draw_texture_rect_3204081724 = StringName(from: "draw_texture_rect")
        assert(self._method_draw_texture_rect_3204081724 != nil)
        self._method_draw_texture_rect_region_3196597532 = StringName(from: "draw_texture_rect_region")
        assert(self._method_draw_texture_rect_region_3196597532 != nil)
        self._method_draw_msdf_texture_rect_region_2672026175 = StringName(from: "draw_msdf_texture_rect_region")
        assert(self._method_draw_msdf_texture_rect_region_2672026175 != nil)
        self._method_draw_lcd_texture_rect_region_169610548 = StringName(from: "draw_lcd_texture_rect_region")
        assert(self._method_draw_lcd_texture_rect_region_169610548 != nil)
        self._method_draw_style_box_388176283 = StringName(from: "draw_style_box")
        assert(self._method_draw_style_box_388176283 != nil)
        self._method_draw_primitive_2248678295 = StringName(from: "draw_primitive")
        assert(self._method_draw_primitive_2248678295 != nil)
        self._method_draw_polygon_2683625537 = StringName(from: "draw_polygon")
        assert(self._method_draw_polygon_2683625537 != nil)
        self._method_draw_colored_polygon_1659099617 = StringName(from: "draw_colored_polygon")
        assert(self._method_draw_colored_polygon_1659099617 != nil)
        self._method_draw_string_2552080639 = StringName(from: "draw_string")
        assert(self._method_draw_string_2552080639 != nil)
        self._method_draw_multiline_string_4002645436 = StringName(from: "draw_multiline_string")
        assert(self._method_draw_multiline_string_4002645436 != nil)
        self._method_draw_string_outline_850005221 = StringName(from: "draw_string_outline")
        assert(self._method_draw_string_outline_850005221 != nil)
        self._method_draw_multiline_string_outline_3717870722 = StringName(from: "draw_multiline_string_outline")
        assert(self._method_draw_multiline_string_outline_3717870722 != nil)
        self._method_draw_char_2329089032 = StringName(from: "draw_char")
        assert(self._method_draw_char_2329089032 != nil)
        self._method_draw_char_outline_419453826 = StringName(from: "draw_char_outline")
        assert(self._method_draw_char_outline_419453826 != nil)
        self._method_draw_mesh_1634855856 = StringName(from: "draw_mesh")
        assert(self._method_draw_mesh_1634855856 != nil)
        self._method_draw_multimesh_937992368 = StringName(from: "draw_multimesh")
        assert(self._method_draw_multimesh_937992368 != nil)
        self._method_draw_set_transform_4181505845 = StringName(from: "draw_set_transform")
        assert(self._method_draw_set_transform_4181505845 != nil)
        self._method_draw_set_transform_matrix_2761652528 = StringName(from: "draw_set_transform_matrix")
        assert(self._method_draw_set_transform_matrix_2761652528 != nil)
        self._method_draw_animation_slice_2295343543 = StringName(from: "draw_animation_slice")
        assert(self._method_draw_animation_slice_2295343543 != nil)
        self._method_draw_end_animation_3218959716 = StringName(from: "draw_end_animation")
        assert(self._method_draw_end_animation_3218959716 != nil)
        self._method_get_transform_3814499831 = StringName(from: "get_transform")
        assert(self._method_get_transform_3814499831 != nil)
        self._method_get_global_transform_3814499831 = StringName(from: "get_global_transform")
        assert(self._method_get_global_transform_3814499831 != nil)
        self._method_get_global_transform_with_canvas_3814499831 = StringName(from: "get_global_transform_with_canvas")
        assert(self._method_get_global_transform_with_canvas_3814499831 != nil)
        self._method_get_viewport_transform_3814499831 = StringName(from: "get_viewport_transform")
        assert(self._method_get_viewport_transform_3814499831 != nil)
        self._method_get_viewport_rect_1639390495 = StringName(from: "get_viewport_rect")
        assert(self._method_get_viewport_rect_1639390495 != nil)
        self._method_get_canvas_transform_3814499831 = StringName(from: "get_canvas_transform")
        assert(self._method_get_canvas_transform_3814499831 != nil)
        self._method_get_screen_transform_3814499831 = StringName(from: "get_screen_transform")
        assert(self._method_get_screen_transform_3814499831 != nil)
        self._method_get_local_mouse_position_3341600327 = StringName(from: "get_local_mouse_position")
        assert(self._method_get_local_mouse_position_3341600327 != nil)
        self._method_get_global_mouse_position_3341600327 = StringName(from: "get_global_mouse_position")
        assert(self._method_get_global_mouse_position_3341600327 != nil)
        self._method_get_canvas_2944877500 = StringName(from: "get_canvas")
        assert(self._method_get_canvas_2944877500 != nil)
        self._method_get_world_2d_2339128592 = StringName(from: "get_world_2d")
        assert(self._method_get_world_2d_2339128592 != nil)
        self._method_set_material_2757459619 = StringName(from: "set_material")
        assert(self._method_set_material_2757459619 != nil)
        self._method_get_material_5934680 = StringName(from: "get_material")
        assert(self._method_get_material_5934680 != nil)
        self._method_set_use_parent_material_2586408642 = StringName(from: "set_use_parent_material")
        assert(self._method_set_use_parent_material_2586408642 != nil)
        self._method_get_use_parent_material_36873697 = StringName(from: "get_use_parent_material")
        assert(self._method_get_use_parent_material_36873697 != nil)
        self._method_set_notify_local_transform_2586408642 = StringName(from: "set_notify_local_transform")
        assert(self._method_set_notify_local_transform_2586408642 != nil)
        self._method_is_local_transform_notification_enabled_36873697 = StringName(from: "is_local_transform_notification_enabled")
        assert(self._method_is_local_transform_notification_enabled_36873697 != nil)
        self._method_set_notify_transform_2586408642 = StringName(from: "set_notify_transform")
        assert(self._method_set_notify_transform_2586408642 != nil)
        self._method_is_transform_notification_enabled_36873697 = StringName(from: "is_transform_notification_enabled")
        assert(self._method_is_transform_notification_enabled_36873697 != nil)
        self._method_force_update_transform_3218959716 = StringName(from: "force_update_transform")
        assert(self._method_force_update_transform_3218959716 != nil)
        self._method_make_canvas_position_local_2656412154 = StringName(from: "make_canvas_position_local")
        assert(self._method_make_canvas_position_local_2656412154 != nil)
        self._method_make_input_local_811130057 = StringName(from: "make_input_local")
        assert(self._method_make_input_local_811130057 != nil)
        self._method_set_visibility_layer_1286410249 = StringName(from: "set_visibility_layer")
        assert(self._method_set_visibility_layer_1286410249 != nil)
        self._method_get_visibility_layer_3905245786 = StringName(from: "get_visibility_layer")
        assert(self._method_get_visibility_layer_3905245786 != nil)
        self._method_set_visibility_layer_bit_300928843 = StringName(from: "set_visibility_layer_bit")
        assert(self._method_set_visibility_layer_bit_300928843 != nil)
        self._method_get_visibility_layer_bit_1116898809 = StringName(from: "get_visibility_layer_bit")
        assert(self._method_get_visibility_layer_bit_1116898809 != nil)
        self._method_set_texture_filter_1037999706 = StringName(from: "set_texture_filter")
        assert(self._method_set_texture_filter_1037999706 != nil)
        self._method_get_texture_filter_121960042 = StringName(from: "get_texture_filter")
        assert(self._method_get_texture_filter_121960042 != nil)
        self._method_set_texture_repeat_1716472974 = StringName(from: "set_texture_repeat")
        assert(self._method_set_texture_repeat_1716472974 != nil)
        self._method_get_texture_repeat_2667158319 = StringName(from: "get_texture_repeat")
        assert(self._method_get_texture_repeat_2667158319 != nil)
        self._method_set_clip_children_mode_1319393776 = StringName(from: "set_clip_children_mode")
        assert(self._method_set_clip_children_mode_1319393776 != nil)
        self._method_get_clip_children_mode_3581808349 = StringName(from: "get_clip_children_mode")
        assert(self._method_get_clip_children_mode_3581808349 != nil)
    }

    public func _draw()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func get_canvas_item() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_canvas_item_2944877500._native_ptr(),
                    2944877500)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
    }
    public func set_visible(visible: UInt8)  {
        withUnsafePointer(to: visible) { visible_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(visible_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_visible_2586408642._native_ptr(),
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
    public func is_visible() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_visible_36873697._native_ptr(),
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
    public func is_visible_in_tree() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_visible_in_tree_36873697._native_ptr(),
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
    public func show()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_show_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func hide()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_hide_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func queue_redraw()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_queue_redraw_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func move_to_front()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_move_to_front_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_as_top_level(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_as_top_level_2586408642._native_ptr(),
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
    public func is_set_as_top_level() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_set_as_top_level_36873697._native_ptr(),
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
    public func set_light_mask(light_mask: Int64)  {
        withUnsafePointer(to: light_mask) { light_mask_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_mask_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_light_mask_1286410249._native_ptr(),
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
    public func get_light_mask() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_light_mask_3905245786._native_ptr(),
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
    public func set_self_modulate(self_modulate: Color)  {
        let self_modulate_native = self_modulate._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(self_modulate_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_self_modulate_2920490490._native_ptr(),
                    2920490490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_self_modulate() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_self_modulate_3444240500._native_ptr(),
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
    public func set_z_index(z_index: Int64)  {
        withUnsafePointer(to: z_index) { z_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(z_index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_z_index_1286410249._native_ptr(),
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
    public func get_z_index() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_z_index_3905245786._native_ptr(),
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
    public func set_z_as_relative(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_z_as_relative_2586408642._native_ptr(),
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
    public func is_z_relative() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_z_relative_36873697._native_ptr(),
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
    public func set_y_sort_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_y_sort_enabled_2586408642._native_ptr(),
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
    public func is_y_sort_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_y_sort_enabled_36873697._native_ptr(),
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
    public func set_draw_behind_parent(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_draw_behind_parent_2586408642._native_ptr(),
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
    public func is_draw_behind_parent_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_draw_behind_parent_enabled_36873697._native_ptr(),
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
    public func draw_line(from: Vector2, to: Vector2, color: Color, width: Float64, antialiased: UInt8)  {
        withUnsafePointer(to: antialiased) { antialiased_native in
        withUnsafePointer(to: width) { width_native in
        let color_native = color._native_ptr()
        let to_native = to._native_ptr()
        let from_native = from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native), .init(to_native), .init(color_native), .init(width_native), .init(antialiased_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_line_2516941890._native_ptr(),
                    2516941890)
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
    public func draw_dashed_line(from: Vector2, to: Vector2, color: Color, width: Float64, dash: Float64, aligned: UInt8)  {
        withUnsafePointer(to: aligned) { aligned_native in
        withUnsafePointer(to: dash) { dash_native in
        withUnsafePointer(to: width) { width_native in
        let color_native = color._native_ptr()
        let to_native = to._native_ptr()
        let from_native = from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native), .init(to_native), .init(color_native), .init(width_native), .init(dash_native), .init(aligned_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_dashed_line_2175215884._native_ptr(),
                    2175215884)
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
    }
    public func draw_polyline(points: PackedVector2Array, color: Color, width: Float64, antialiased: UInt8)  {
        withUnsafePointer(to: antialiased) { antialiased_native in
        withUnsafePointer(to: width) { width_native in
        let color_native = color._native_ptr()
        let points_native = points._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(points_native), .init(color_native), .init(width_native), .init(antialiased_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_polyline_4175878946._native_ptr(),
                    4175878946)
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
    public func draw_polyline_colors(points: PackedVector2Array, colors: PackedColorArray, width: Float64, antialiased: UInt8)  {
        withUnsafePointer(to: antialiased) { antialiased_native in
        withUnsafePointer(to: width) { width_native in
        let colors_native = colors._native_ptr()
        let points_native = points._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(points_native), .init(colors_native), .init(width_native), .init(antialiased_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_polyline_colors_2239164197._native_ptr(),
                    2239164197)
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
    public func draw_arc(center: Vector2, radius: Float64, start_angle: Float64, end_angle: Float64, point_count: Int64, color: Color, width: Float64, antialiased: UInt8)  {
        withUnsafePointer(to: antialiased) { antialiased_native in
        withUnsafePointer(to: width) { width_native in
        withUnsafePointer(to: point_count) { point_count_native in
        withUnsafePointer(to: end_angle) { end_angle_native in
        withUnsafePointer(to: start_angle) { start_angle_native in
        withUnsafePointer(to: radius) { radius_native in
        let color_native = color._native_ptr()
        let center_native = center._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 8)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(center_native), .init(radius_native), .init(start_angle_native), .init(end_angle_native), .init(point_count_native), .init(color_native), .init(width_native), .init(antialiased_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_arc_3486841771._native_ptr(),
                    3486841771)
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
        }
        }
        }
    }
    public func draw_multiline(points: PackedVector2Array, color: Color, width: Float64)  {
        withUnsafePointer(to: width) { width_native in
        let color_native = color._native_ptr()
        let points_native = points._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(points_native), .init(color_native), .init(width_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_multiline_4230657331._native_ptr(),
                    4230657331)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func draw_multiline_colors(points: PackedVector2Array, colors: PackedColorArray, width: Float64)  {
        withUnsafePointer(to: width) { width_native in
        let colors_native = colors._native_ptr()
        let points_native = points._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(points_native), .init(colors_native), .init(width_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_multiline_colors_235933050._native_ptr(),
                    235933050)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func draw_rect(rect: Rect2, color: Color, filled: UInt8, width: Float64)  {
        withUnsafePointer(to: width) { width_native in
        withUnsafePointer(to: filled) { filled_native in
        let color_native = color._native_ptr()
        let rect_native = rect._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rect_native), .init(color_native), .init(filled_native), .init(width_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_rect_84391229._native_ptr(),
                    84391229)
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
    public func draw_circle(position: Vector2, radius: Float64, color: Color)  {
        withUnsafePointer(to: radius) { radius_native in
        let color_native = color._native_ptr()
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native), .init(radius_native), .init(color_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_circle_3063020269._native_ptr(),
                    3063020269)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func draw_texture(texture: Texture2D, position: Vector2, modulate: Color)  {
        let modulate_native = modulate._native_ptr()
        let position_native = position._native_ptr()
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native), .init(position_native), .init(modulate_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_texture_1695860435._native_ptr(),
                    1695860435)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func draw_texture_rect(texture: Texture2D, rect: Rect2, tile: UInt8, modulate: Color, transpose: UInt8)  {
        withUnsafePointer(to: transpose) { transpose_native in
        withUnsafePointer(to: tile) { tile_native in
        let modulate_native = modulate._native_ptr()
        let rect_native = rect._native_ptr()
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native), .init(rect_native), .init(tile_native), .init(modulate_native), .init(transpose_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_texture_rect_3204081724._native_ptr(),
                    3204081724)
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
    public func draw_texture_rect_region(texture: Texture2D, rect: Rect2, src_rect: Rect2, modulate: Color, transpose: UInt8, clip_uv: UInt8)  {
        withUnsafePointer(to: clip_uv) { clip_uv_native in
        withUnsafePointer(to: transpose) { transpose_native in
        let modulate_native = modulate._native_ptr()
        let src_rect_native = src_rect._native_ptr()
        let rect_native = rect._native_ptr()
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native), .init(rect_native), .init(src_rect_native), .init(modulate_native), .init(transpose_native), .init(clip_uv_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_texture_rect_region_3196597532._native_ptr(),
                    3196597532)
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
    public func draw_msdf_texture_rect_region(texture: Texture2D, rect: Rect2, src_rect: Rect2, modulate: Color, outline: Float64, pixel_range: Float64, scale: Float64)  {
        withUnsafePointer(to: scale) { scale_native in
        withUnsafePointer(to: pixel_range) { pixel_range_native in
        withUnsafePointer(to: outline) { outline_native in
        let modulate_native = modulate._native_ptr()
        let src_rect_native = src_rect._native_ptr()
        let rect_native = rect._native_ptr()
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 7)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native), .init(rect_native), .init(src_rect_native), .init(modulate_native), .init(outline_native), .init(pixel_range_native), .init(scale_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_msdf_texture_rect_region_2672026175._native_ptr(),
                    2672026175)
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
    }
    public func draw_lcd_texture_rect_region(texture: Texture2D, rect: Rect2, src_rect: Rect2, modulate: Color)  {
        let modulate_native = modulate._native_ptr()
        let src_rect_native = src_rect._native_ptr()
        let rect_native = rect._native_ptr()
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native), .init(rect_native), .init(src_rect_native), .init(modulate_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_lcd_texture_rect_region_169610548._native_ptr(),
                    169610548)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func draw_style_box(style_box: StyleBox, rect: Rect2)  {
        let rect_native = rect._native_ptr()
        let style_box_native = style_box._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(style_box_native), .init(rect_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_style_box_388176283._native_ptr(),
                    388176283)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func draw_primitive(points: PackedVector2Array, colors: PackedColorArray, uvs: PackedVector2Array, texture: Texture2D)  {
        let texture_native = texture._native_ptr()
        let uvs_native = uvs._native_ptr()
        let colors_native = colors._native_ptr()
        let points_native = points._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(points_native), .init(colors_native), .init(uvs_native), .init(texture_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_primitive_2248678295._native_ptr(),
                    2248678295)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func draw_polygon(points: PackedVector2Array, colors: PackedColorArray, uvs: PackedVector2Array, texture: Texture2D)  {
        let texture_native = texture._native_ptr()
        let uvs_native = uvs._native_ptr()
        let colors_native = colors._native_ptr()
        let points_native = points._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(points_native), .init(colors_native), .init(uvs_native), .init(texture_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_polygon_2683625537._native_ptr(),
                    2683625537)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func draw_colored_polygon(points: PackedVector2Array, color: Color, uvs: PackedVector2Array, texture: Texture2D)  {
        let texture_native = texture._native_ptr()
        let uvs_native = uvs._native_ptr()
        let color_native = color._native_ptr()
        let points_native = points._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(points_native), .init(color_native), .init(uvs_native), .init(texture_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_colored_polygon_1659099617._native_ptr(),
                    1659099617)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func draw_string(font: Font, pos: Vector2, text: godot.String, alignment: HorizontalAlignment, width: Float64, font_size: Int64, modulate: Color, jst_flags: TextServer.JustificationFlag, direction: TextServer.Direction, orientation: TextServer.Orientation)  {
        withUnsafePointer(to: font_size) { font_size_native in
        withUnsafePointer(to: width) { width_native in
        withUnsafePointer(to: orientation.rawValue) { orientation_native in
        withUnsafePointer(to: direction.rawValue) { direction_native in
        withUnsafePointer(to: jst_flags.rawValue) { jst_flags_native in
        withUnsafePointer(to: alignment.rawValue) { alignment_native in
        let modulate_native = modulate._native_ptr()
        let text_native = text._native_ptr()
        let pos_native = pos._native_ptr()
        let font_native = font._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 10)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_native), .init(pos_native), .init(text_native), .init(alignment_native), .init(width_native), .init(font_size_native), .init(modulate_native), .init(jst_flags_native), .init(direction_native), .init(orientation_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_string_2552080639._native_ptr(),
                    2552080639)
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
        }
        }
        }
    }
    public func draw_multiline_string(font: Font, pos: Vector2, text: godot.String, alignment: HorizontalAlignment, width: Float64, font_size: Int64, max_lines: Int64, modulate: Color, brk_flags: TextServer.LineBreakFlag, jst_flags: TextServer.JustificationFlag, direction: TextServer.Direction, orientation: TextServer.Orientation)  {
        withUnsafePointer(to: max_lines) { max_lines_native in
        withUnsafePointer(to: font_size) { font_size_native in
        withUnsafePointer(to: width) { width_native in
        withUnsafePointer(to: orientation.rawValue) { orientation_native in
        withUnsafePointer(to: direction.rawValue) { direction_native in
        withUnsafePointer(to: jst_flags.rawValue) { jst_flags_native in
        withUnsafePointer(to: brk_flags.rawValue) { brk_flags_native in
        withUnsafePointer(to: alignment.rawValue) { alignment_native in
        let modulate_native = modulate._native_ptr()
        let text_native = text._native_ptr()
        let pos_native = pos._native_ptr()
        let font_native = font._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 12)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_native), .init(pos_native), .init(text_native), .init(alignment_native), .init(width_native), .init(font_size_native), .init(max_lines_native), .init(modulate_native), .init(brk_flags_native), .init(jst_flags_native), .init(direction_native), .init(orientation_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_multiline_string_4002645436._native_ptr(),
                    4002645436)
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
        }
        }
        }
        }
        }
    }
    public func draw_string_outline(font: Font, pos: Vector2, text: godot.String, alignment: HorizontalAlignment, width: Float64, font_size: Int64, size: Int64, modulate: Color, jst_flags: TextServer.JustificationFlag, direction: TextServer.Direction, orientation: TextServer.Orientation)  {
        withUnsafePointer(to: size) { size_native in
        withUnsafePointer(to: font_size) { font_size_native in
        withUnsafePointer(to: width) { width_native in
        withUnsafePointer(to: orientation.rawValue) { orientation_native in
        withUnsafePointer(to: direction.rawValue) { direction_native in
        withUnsafePointer(to: jst_flags.rawValue) { jst_flags_native in
        withUnsafePointer(to: alignment.rawValue) { alignment_native in
        let modulate_native = modulate._native_ptr()
        let text_native = text._native_ptr()
        let pos_native = pos._native_ptr()
        let font_native = font._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 11)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_native), .init(pos_native), .init(text_native), .init(alignment_native), .init(width_native), .init(font_size_native), .init(size_native), .init(modulate_native), .init(jst_flags_native), .init(direction_native), .init(orientation_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_string_outline_850005221._native_ptr(),
                    850005221)
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
        }
        }
        }
        }
    }
    public func draw_multiline_string_outline(font: Font, pos: Vector2, text: godot.String, alignment: HorizontalAlignment, width: Float64, font_size: Int64, max_lines: Int64, size: Int64, modulate: Color, brk_flags: TextServer.LineBreakFlag, jst_flags: TextServer.JustificationFlag, direction: TextServer.Direction, orientation: TextServer.Orientation)  {
        withUnsafePointer(to: size) { size_native in
        withUnsafePointer(to: max_lines) { max_lines_native in
        withUnsafePointer(to: font_size) { font_size_native in
        withUnsafePointer(to: width) { width_native in
        withUnsafePointer(to: orientation.rawValue) { orientation_native in
        withUnsafePointer(to: direction.rawValue) { direction_native in
        withUnsafePointer(to: jst_flags.rawValue) { jst_flags_native in
        withUnsafePointer(to: brk_flags.rawValue) { brk_flags_native in
        withUnsafePointer(to: alignment.rawValue) { alignment_native in
        let modulate_native = modulate._native_ptr()
        let text_native = text._native_ptr()
        let pos_native = pos._native_ptr()
        let font_native = font._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 13)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_native), .init(pos_native), .init(text_native), .init(alignment_native), .init(width_native), .init(font_size_native), .init(max_lines_native), .init(size_native), .init(modulate_native), .init(brk_flags_native), .init(jst_flags_native), .init(direction_native), .init(orientation_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_multiline_string_outline_3717870722._native_ptr(),
                    3717870722)
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
        }
        }
        }
        }
        }
        }
    }
    public func draw_char(font: Font, pos: Vector2, char: godot.String, font_size: Int64, modulate: Color)  {
        withUnsafePointer(to: font_size) { font_size_native in
        let modulate_native = modulate._native_ptr()
        let char_native = char._native_ptr()
        let pos_native = pos._native_ptr()
        let font_native = font._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_native), .init(pos_native), .init(char_native), .init(font_size_native), .init(modulate_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_char_2329089032._native_ptr(),
                    2329089032)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func draw_char_outline(font: Font, pos: Vector2, char: godot.String, font_size: Int64, size: Int64, modulate: Color)  {
        withUnsafePointer(to: size) { size_native in
        withUnsafePointer(to: font_size) { font_size_native in
        let modulate_native = modulate._native_ptr()
        let char_native = char._native_ptr()
        let pos_native = pos._native_ptr()
        let font_native = font._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_native), .init(pos_native), .init(char_native), .init(font_size_native), .init(size_native), .init(modulate_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_char_outline_419453826._native_ptr(),
                    419453826)
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
    public func draw_mesh(mesh: Mesh, texture: Texture2D, transform: Transform2D, modulate: Color)  {
        let modulate_native = modulate._native_ptr()
        let transform_native = transform._native_ptr()
        let texture_native = texture._native_ptr()
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_native), .init(texture_native), .init(transform_native), .init(modulate_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_mesh_1634855856._native_ptr(),
                    1634855856)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func draw_multimesh(multimesh: MultiMesh, texture: Texture2D)  {
        let texture_native = texture._native_ptr()
        let multimesh_native = multimesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(multimesh_native), .init(texture_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_multimesh_937992368._native_ptr(),
                    937992368)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func draw_set_transform(position: Vector2, rotation: Float64, scale: Vector2)  {
        withUnsafePointer(to: rotation) { rotation_native in
        let scale_native = scale._native_ptr()
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native), .init(rotation_native), .init(scale_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_set_transform_4181505845._native_ptr(),
                    4181505845)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func draw_set_transform_matrix(xform: Transform2D)  {
        let xform_native = xform._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(xform_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_set_transform_matrix_2761652528._native_ptr(),
                    2761652528)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func draw_animation_slice(animation_length: Float64, slice_begin: Float64, slice_end: Float64, offset: Float64)  {
        withUnsafePointer(to: offset) { offset_native in
        withUnsafePointer(to: slice_end) { slice_end_native in
        withUnsafePointer(to: slice_begin) { slice_begin_native in
        withUnsafePointer(to: animation_length) { animation_length_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(animation_length_native), .init(slice_begin_native), .init(slice_end_native), .init(offset_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_animation_slice_2295343543._native_ptr(),
                    2295343543)
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
        }
    }
    public func draw_end_animation()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_end_animation_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_transform() -> Transform2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_transform_3814499831._native_ptr(),
                    3814499831)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(godot: __resPtr.pointee)
    }
    public func get_global_transform() -> Transform2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_global_transform_3814499831._native_ptr(),
                    3814499831)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(godot: __resPtr.pointee)
    }
    public func get_global_transform_with_canvas() -> Transform2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_global_transform_with_canvas_3814499831._native_ptr(),
                    3814499831)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(godot: __resPtr.pointee)
    }
    public func get_viewport_transform() -> Transform2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_viewport_transform_3814499831._native_ptr(),
                    3814499831)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(godot: __resPtr.pointee)
    }
    public func get_viewport_rect() -> Rect2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_viewport_rect_1639390495._native_ptr(),
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
    public func get_canvas_transform() -> Transform2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_canvas_transform_3814499831._native_ptr(),
                    3814499831)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(godot: __resPtr.pointee)
    }
    public func get_screen_transform() -> Transform2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_screen_transform_3814499831._native_ptr(),
                    3814499831)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(godot: __resPtr.pointee)
    }
    public func get_local_mouse_position() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_local_mouse_position_3341600327._native_ptr(),
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
    public func get_global_mouse_position() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_global_mouse_position_3341600327._native_ptr(),
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
    public func get_canvas() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_canvas_2944877500._native_ptr(),
                    2944877500)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
    }
    public func get_world_2d() -> World2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_world_2d_2339128592._native_ptr(),
                    2339128592)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return World2D(godot: __resPtr.pointee)
    }
    public func set_material(material: Material)  {
        let material_native = material._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(material_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_material_2757459619._native_ptr(),
                    2757459619)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_material() -> Material {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_material_5934680._native_ptr(),
                    5934680)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Material(godot: __resPtr.pointee)
    }
    public func set_use_parent_material(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_use_parent_material_2586408642._native_ptr(),
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
    public func get_use_parent_material() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_use_parent_material_36873697._native_ptr(),
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
    public func set_notify_local_transform(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_notify_local_transform_2586408642._native_ptr(),
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
    public func is_local_transform_notification_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_local_transform_notification_enabled_36873697._native_ptr(),
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
    public func set_notify_transform(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_notify_transform_2586408642._native_ptr(),
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
    public func is_transform_notification_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_transform_notification_enabled_36873697._native_ptr(),
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
    public func force_update_transform()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_force_update_transform_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func make_canvas_position_local(screen_point: Vector2) -> Vector2 {
        let screen_point_native = screen_point._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(screen_point_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_make_canvas_position_local_2656412154._native_ptr(),
                    2656412154)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func make_input_local(event: InputEvent) -> InputEvent {
        let event_native = event._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(event_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_make_input_local_811130057._native_ptr(),
                    811130057)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return InputEvent(godot: __resPtr.pointee)
    }
    public func set_visibility_layer(layer: Int64)  {
        withUnsafePointer(to: layer) { layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_visibility_layer_1286410249._native_ptr(),
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
    public func get_visibility_layer() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_visibility_layer_3905245786._native_ptr(),
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
    public func set_visibility_layer_bit(layer: Int64, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        withUnsafePointer(to: layer) { layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native), .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_visibility_layer_bit_300928843._native_ptr(),
                    300928843)
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
    public func get_visibility_layer_bit(layer: Int64) -> UInt8 {
        withUnsafePointer(to: layer) { layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_visibility_layer_bit_1116898809._native_ptr(),
                    1116898809)
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
    public func set_texture_filter(mode: CanvasItem.TextureFilter)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_texture_filter_1037999706._native_ptr(),
                    1037999706)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_texture_filter() -> CanvasItem.TextureFilter {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_texture_filter_121960042._native_ptr(),
                    121960042)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CanvasItem.TextureFilter(godot: __resPtr.pointee)
    }
    public func set_texture_repeat(mode: CanvasItem.TextureRepeat)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_texture_repeat_1716472974._native_ptr(),
                    1716472974)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_texture_repeat() -> CanvasItem.TextureRepeat {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_texture_repeat_2667158319._native_ptr(),
                    2667158319)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CanvasItem.TextureRepeat(godot: __resPtr.pointee)
    }
    public func set_clip_children_mode(mode: CanvasItem.ClipChildrenMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_clip_children_mode_1319393776._native_ptr(),
                    1319393776)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_clip_children_mode() -> CanvasItem.ClipChildrenMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_clip_children_mode_3581808349._native_ptr(),
                    3581808349)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CanvasItem.ClipChildrenMode(godot: __resPtr.pointee)
    }
}