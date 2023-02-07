import godot_native

fileprivate var __godot_name_Camera2D: StringName! = nil

/// Camera node for 2D scenes.
/// 
/// Camera node for 2D scenes. It forces the screen (current layer) to scroll following this node. This makes it easier (and faster) to program scrollable scenes than manually changing the position of [CanvasItem]-based nodes.
///  
/// Cameras register themselves in the nearest [Viewport] node (when ascending the tree). Only one camera can be active per viewport. If no viewport is available ascending the tree, the camera will register in the global viewport.
///  
/// This node is intended to be a simple helper to get things going quickly, but more functionality may be desired to change how the camera works. To make your own custom camera node, inherit it from [Node2D] and change the transform of the canvas by setting [member Viewport.canvas_transform] in [Viewport] (you can obtain the current [Viewport] by using [method Node.get_viewport]).
///  
/// Note that the [Camera2D] node's [code]position[/code] doesn't represent the actual position of the screen, which may differ due to applied smoothing or limits. You can use [method get_screen_center_position] to get the real position.
public class Camera2D : Node2D {

    public enum AnchorMode : Int32 {
        case ANCHOR_MODE_FIXED_TOP_LEFT = 0
        case ANCHOR_MODE_DRAG_CENTER = 1
    }
    public enum Camera2DProcessCallback : Int32 {
        case CAMERA2D_PROCESS_PHYSICS = 0
        case CAMERA2D_PROCESS_IDLE = 1
    }

    public override class var __godot_name: StringName { __godot_name_Camera2D }

    static var _method_set_offset_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_offset_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_anchor_mode_2050398218: GDExtensionMethodBindPtr! = nil
    static var _method_get_anchor_mode_155978067: GDExtensionMethodBindPtr! = nil
    static var _method_set_ignore_rotation_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_ignoring_rotation_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_process_callback_4201947462: GDExtensionMethodBindPtr! = nil
    static var _method_get_process_callback_2325344499: GDExtensionMethodBindPtr! = nil
    static var _method_set_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_make_current_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_is_current_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_limit_437707142: GDExtensionMethodBindPtr! = nil
    static var _method_get_limit_1983885014: GDExtensionMethodBindPtr! = nil
    static var _method_set_limit_smoothing_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_limit_smoothing_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_drag_vertical_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_drag_vertical_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_drag_horizontal_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_drag_horizontal_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_drag_vertical_offset_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_drag_vertical_offset_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_drag_horizontal_offset_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_drag_horizontal_offset_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_drag_margin_4290182280: GDExtensionMethodBindPtr! = nil
    static var _method_get_drag_margin_2869120046: GDExtensionMethodBindPtr! = nil
    static var _method_get_target_position_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_get_screen_center_position_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_zoom_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_zoom_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_custom_viewport_1078189570: GDExtensionMethodBindPtr! = nil
    static var _method_get_custom_viewport_3160264692: GDExtensionMethodBindPtr! = nil
    static var _method_set_position_smoothing_speed_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_position_smoothing_speed_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_position_smoothing_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_position_smoothing_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_rotation_smoothing_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_rotation_smoothing_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_rotation_smoothing_speed_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_rotation_smoothing_speed_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_force_update_scroll_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_reset_smoothing_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_align_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_screen_drawing_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_screen_drawing_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_limit_drawing_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_limit_drawing_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_margin_drawing_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_margin_drawing_enabled_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Camera2D = StringName(from: "Camera2D")

        let _method_set_offset_743155724_name = StringName(from: "set_offset")
        self._method_set_offset_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_offset_743155724_name._native_ptr(), 743155724)
        assert(Camera2D._method_set_offset_743155724 != nil)
        let _method_get_offset_3341600327_name = StringName(from: "get_offset")
        self._method_get_offset_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_offset_3341600327_name._native_ptr(), 3341600327)
        assert(Camera2D._method_get_offset_3341600327 != nil)
        let _method_set_anchor_mode_2050398218_name = StringName(from: "set_anchor_mode")
        self._method_set_anchor_mode_2050398218 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_anchor_mode_2050398218_name._native_ptr(), 2050398218)
        assert(Camera2D._method_set_anchor_mode_2050398218 != nil)
        let _method_get_anchor_mode_155978067_name = StringName(from: "get_anchor_mode")
        self._method_get_anchor_mode_155978067 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_anchor_mode_155978067_name._native_ptr(), 155978067)
        assert(Camera2D._method_get_anchor_mode_155978067 != nil)
        let _method_set_ignore_rotation_2586408642_name = StringName(from: "set_ignore_rotation")
        self._method_set_ignore_rotation_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ignore_rotation_2586408642_name._native_ptr(), 2586408642)
        assert(Camera2D._method_set_ignore_rotation_2586408642 != nil)
        let _method_is_ignoring_rotation_36873697_name = StringName(from: "is_ignoring_rotation")
        self._method_is_ignoring_rotation_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_ignoring_rotation_36873697_name._native_ptr(), 36873697)
        assert(Camera2D._method_is_ignoring_rotation_36873697 != nil)
        let _method_set_process_callback_4201947462_name = StringName(from: "set_process_callback")
        self._method_set_process_callback_4201947462 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_process_callback_4201947462_name._native_ptr(), 4201947462)
        assert(Camera2D._method_set_process_callback_4201947462 != nil)
        let _method_get_process_callback_2325344499_name = StringName(from: "get_process_callback")
        self._method_get_process_callback_2325344499 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_process_callback_2325344499_name._native_ptr(), 2325344499)
        assert(Camera2D._method_get_process_callback_2325344499 != nil)
        let _method_set_enabled_2586408642_name = StringName(from: "set_enabled")
        self._method_set_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(Camera2D._method_set_enabled_2586408642 != nil)
        let _method_is_enabled_36873697_name = StringName(from: "is_enabled")
        self._method_is_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_enabled_36873697_name._native_ptr(), 36873697)
        assert(Camera2D._method_is_enabled_36873697 != nil)
        let _method_make_current_3218959716_name = StringName(from: "make_current")
        self._method_make_current_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_make_current_3218959716_name._native_ptr(), 3218959716)
        assert(Camera2D._method_make_current_3218959716 != nil)
        let _method_is_current_36873697_name = StringName(from: "is_current")
        self._method_is_current_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_current_36873697_name._native_ptr(), 36873697)
        assert(Camera2D._method_is_current_36873697 != nil)
        let _method_set_limit_437707142_name = StringName(from: "set_limit")
        self._method_set_limit_437707142 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_limit_437707142_name._native_ptr(), 437707142)
        assert(Camera2D._method_set_limit_437707142 != nil)
        let _method_get_limit_1983885014_name = StringName(from: "get_limit")
        self._method_get_limit_1983885014 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_limit_1983885014_name._native_ptr(), 1983885014)
        assert(Camera2D._method_get_limit_1983885014 != nil)
        let _method_set_limit_smoothing_enabled_2586408642_name = StringName(from: "set_limit_smoothing_enabled")
        self._method_set_limit_smoothing_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_limit_smoothing_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(Camera2D._method_set_limit_smoothing_enabled_2586408642 != nil)
        let _method_is_limit_smoothing_enabled_36873697_name = StringName(from: "is_limit_smoothing_enabled")
        self._method_is_limit_smoothing_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_limit_smoothing_enabled_36873697_name._native_ptr(), 36873697)
        assert(Camera2D._method_is_limit_smoothing_enabled_36873697 != nil)
        let _method_set_drag_vertical_enabled_2586408642_name = StringName(from: "set_drag_vertical_enabled")
        self._method_set_drag_vertical_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_drag_vertical_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(Camera2D._method_set_drag_vertical_enabled_2586408642 != nil)
        let _method_is_drag_vertical_enabled_36873697_name = StringName(from: "is_drag_vertical_enabled")
        self._method_is_drag_vertical_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_drag_vertical_enabled_36873697_name._native_ptr(), 36873697)
        assert(Camera2D._method_is_drag_vertical_enabled_36873697 != nil)
        let _method_set_drag_horizontal_enabled_2586408642_name = StringName(from: "set_drag_horizontal_enabled")
        self._method_set_drag_horizontal_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_drag_horizontal_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(Camera2D._method_set_drag_horizontal_enabled_2586408642 != nil)
        let _method_is_drag_horizontal_enabled_36873697_name = StringName(from: "is_drag_horizontal_enabled")
        self._method_is_drag_horizontal_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_drag_horizontal_enabled_36873697_name._native_ptr(), 36873697)
        assert(Camera2D._method_is_drag_horizontal_enabled_36873697 != nil)
        let _method_set_drag_vertical_offset_373806689_name = StringName(from: "set_drag_vertical_offset")
        self._method_set_drag_vertical_offset_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_drag_vertical_offset_373806689_name._native_ptr(), 373806689)
        assert(Camera2D._method_set_drag_vertical_offset_373806689 != nil)
        let _method_get_drag_vertical_offset_1740695150_name = StringName(from: "get_drag_vertical_offset")
        self._method_get_drag_vertical_offset_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_drag_vertical_offset_1740695150_name._native_ptr(), 1740695150)
        assert(Camera2D._method_get_drag_vertical_offset_1740695150 != nil)
        let _method_set_drag_horizontal_offset_373806689_name = StringName(from: "set_drag_horizontal_offset")
        self._method_set_drag_horizontal_offset_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_drag_horizontal_offset_373806689_name._native_ptr(), 373806689)
        assert(Camera2D._method_set_drag_horizontal_offset_373806689 != nil)
        let _method_get_drag_horizontal_offset_1740695150_name = StringName(from: "get_drag_horizontal_offset")
        self._method_get_drag_horizontal_offset_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_drag_horizontal_offset_1740695150_name._native_ptr(), 1740695150)
        assert(Camera2D._method_get_drag_horizontal_offset_1740695150 != nil)
        let _method_set_drag_margin_4290182280_name = StringName(from: "set_drag_margin")
        self._method_set_drag_margin_4290182280 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_drag_margin_4290182280_name._native_ptr(), 4290182280)
        assert(Camera2D._method_set_drag_margin_4290182280 != nil)
        let _method_get_drag_margin_2869120046_name = StringName(from: "get_drag_margin")
        self._method_get_drag_margin_2869120046 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_drag_margin_2869120046_name._native_ptr(), 2869120046)
        assert(Camera2D._method_get_drag_margin_2869120046 != nil)
        let _method_get_target_position_3341600327_name = StringName(from: "get_target_position")
        self._method_get_target_position_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_target_position_3341600327_name._native_ptr(), 3341600327)
        assert(Camera2D._method_get_target_position_3341600327 != nil)
        let _method_get_screen_center_position_3341600327_name = StringName(from: "get_screen_center_position")
        self._method_get_screen_center_position_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_screen_center_position_3341600327_name._native_ptr(), 3341600327)
        assert(Camera2D._method_get_screen_center_position_3341600327 != nil)
        let _method_set_zoom_743155724_name = StringName(from: "set_zoom")
        self._method_set_zoom_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_zoom_743155724_name._native_ptr(), 743155724)
        assert(Camera2D._method_set_zoom_743155724 != nil)
        let _method_get_zoom_3341600327_name = StringName(from: "get_zoom")
        self._method_get_zoom_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_zoom_3341600327_name._native_ptr(), 3341600327)
        assert(Camera2D._method_get_zoom_3341600327 != nil)
        let _method_set_custom_viewport_1078189570_name = StringName(from: "set_custom_viewport")
        self._method_set_custom_viewport_1078189570 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_custom_viewport_1078189570_name._native_ptr(), 1078189570)
        assert(Camera2D._method_set_custom_viewport_1078189570 != nil)
        let _method_get_custom_viewport_3160264692_name = StringName(from: "get_custom_viewport")
        self._method_get_custom_viewport_3160264692 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_custom_viewport_3160264692_name._native_ptr(), 3160264692)
        assert(Camera2D._method_get_custom_viewport_3160264692 != nil)
        let _method_set_position_smoothing_speed_373806689_name = StringName(from: "set_position_smoothing_speed")
        self._method_set_position_smoothing_speed_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_position_smoothing_speed_373806689_name._native_ptr(), 373806689)
        assert(Camera2D._method_set_position_smoothing_speed_373806689 != nil)
        let _method_get_position_smoothing_speed_1740695150_name = StringName(from: "get_position_smoothing_speed")
        self._method_get_position_smoothing_speed_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_position_smoothing_speed_1740695150_name._native_ptr(), 1740695150)
        assert(Camera2D._method_get_position_smoothing_speed_1740695150 != nil)
        let _method_set_position_smoothing_enabled_2586408642_name = StringName(from: "set_position_smoothing_enabled")
        self._method_set_position_smoothing_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_position_smoothing_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(Camera2D._method_set_position_smoothing_enabled_2586408642 != nil)
        let _method_is_position_smoothing_enabled_36873697_name = StringName(from: "is_position_smoothing_enabled")
        self._method_is_position_smoothing_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_position_smoothing_enabled_36873697_name._native_ptr(), 36873697)
        assert(Camera2D._method_is_position_smoothing_enabled_36873697 != nil)
        let _method_set_rotation_smoothing_enabled_2586408642_name = StringName(from: "set_rotation_smoothing_enabled")
        self._method_set_rotation_smoothing_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_rotation_smoothing_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(Camera2D._method_set_rotation_smoothing_enabled_2586408642 != nil)
        let _method_is_rotation_smoothing_enabled_36873697_name = StringName(from: "is_rotation_smoothing_enabled")
        self._method_is_rotation_smoothing_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_rotation_smoothing_enabled_36873697_name._native_ptr(), 36873697)
        assert(Camera2D._method_is_rotation_smoothing_enabled_36873697 != nil)
        let _method_set_rotation_smoothing_speed_373806689_name = StringName(from: "set_rotation_smoothing_speed")
        self._method_set_rotation_smoothing_speed_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_rotation_smoothing_speed_373806689_name._native_ptr(), 373806689)
        assert(Camera2D._method_set_rotation_smoothing_speed_373806689 != nil)
        let _method_get_rotation_smoothing_speed_1740695150_name = StringName(from: "get_rotation_smoothing_speed")
        self._method_get_rotation_smoothing_speed_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_rotation_smoothing_speed_1740695150_name._native_ptr(), 1740695150)
        assert(Camera2D._method_get_rotation_smoothing_speed_1740695150 != nil)
        let _method_force_update_scroll_3218959716_name = StringName(from: "force_update_scroll")
        self._method_force_update_scroll_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_force_update_scroll_3218959716_name._native_ptr(), 3218959716)
        assert(Camera2D._method_force_update_scroll_3218959716 != nil)
        let _method_reset_smoothing_3218959716_name = StringName(from: "reset_smoothing")
        self._method_reset_smoothing_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_reset_smoothing_3218959716_name._native_ptr(), 3218959716)
        assert(Camera2D._method_reset_smoothing_3218959716 != nil)
        let _method_align_3218959716_name = StringName(from: "align")
        self._method_align_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_align_3218959716_name._native_ptr(), 3218959716)
        assert(Camera2D._method_align_3218959716 != nil)
        let _method_set_screen_drawing_enabled_2586408642_name = StringName(from: "set_screen_drawing_enabled")
        self._method_set_screen_drawing_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_screen_drawing_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(Camera2D._method_set_screen_drawing_enabled_2586408642 != nil)
        let _method_is_screen_drawing_enabled_36873697_name = StringName(from: "is_screen_drawing_enabled")
        self._method_is_screen_drawing_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_screen_drawing_enabled_36873697_name._native_ptr(), 36873697)
        assert(Camera2D._method_is_screen_drawing_enabled_36873697 != nil)
        let _method_set_limit_drawing_enabled_2586408642_name = StringName(from: "set_limit_drawing_enabled")
        self._method_set_limit_drawing_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_limit_drawing_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(Camera2D._method_set_limit_drawing_enabled_2586408642 != nil)
        let _method_is_limit_drawing_enabled_36873697_name = StringName(from: "is_limit_drawing_enabled")
        self._method_is_limit_drawing_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_limit_drawing_enabled_36873697_name._native_ptr(), 36873697)
        assert(Camera2D._method_is_limit_drawing_enabled_36873697 != nil)
        let _method_set_margin_drawing_enabled_2586408642_name = StringName(from: "set_margin_drawing_enabled")
        self._method_set_margin_drawing_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_margin_drawing_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(Camera2D._method_set_margin_drawing_enabled_2586408642 != nil)
        let _method_is_margin_drawing_enabled_36873697_name = StringName(from: "is_margin_drawing_enabled")
        self._method_is_margin_drawing_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_margin_drawing_enabled_36873697_name._native_ptr(), 36873697)
        assert(Camera2D._method_is_margin_drawing_enabled_36873697 != nil)
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
    public func set_anchor_mode(anchor_mode: Camera2D.AnchorMode)  {
        withUnsafePointer(to: anchor_mode.rawValue) { anchor_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(anchor_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_anchor_mode_2050398218,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_anchor_mode() -> Camera2D.AnchorMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_anchor_mode_155978067,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Camera2D.AnchorMode(from: __resPtr.pointee)
    }
    public func set_ignore_rotation(ignore: UInt8)  {
        withUnsafePointer(to: ignore) { ignore_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ignore_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ignore_rotation_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_ignoring_rotation() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_ignoring_rotation_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_process_callback(mode: Camera2D.Camera2DProcessCallback)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_process_callback_4201947462,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_process_callback() -> Camera2D.Camera2DProcessCallback {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_process_callback_2325344499,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Camera2D.Camera2DProcessCallback(from: __resPtr.pointee)
    }
    public func set_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func make_current()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_make_current_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func is_current() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_current_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_limit(margin: Side, limit: Int64)  {
        withUnsafePointer(to: limit) { limit_native in
        withUnsafePointer(to: margin.rawValue) { margin_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(margin_native), .init(limit_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_limit_437707142,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_limit(margin: Side) -> Int64 {
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
                    Self._method_get_limit_1983885014,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func set_limit_smoothing_enabled(limit_smoothing_enabled: UInt8)  {
        withUnsafePointer(to: limit_smoothing_enabled) { limit_smoothing_enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(limit_smoothing_enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_limit_smoothing_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_limit_smoothing_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_limit_smoothing_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_drag_vertical_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_drag_vertical_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_drag_vertical_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_drag_vertical_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_drag_horizontal_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_drag_horizontal_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_drag_horizontal_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_drag_horizontal_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_drag_vertical_offset(offset: Float64)  {
        withUnsafePointer(to: offset) { offset_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_drag_vertical_offset_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_drag_vertical_offset() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_drag_vertical_offset_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_drag_horizontal_offset(offset: Float64)  {
        withUnsafePointer(to: offset) { offset_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_drag_horizontal_offset_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_drag_horizontal_offset() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_drag_horizontal_offset_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_drag_margin(margin: Side, drag_margin: Float64)  {
        withUnsafePointer(to: drag_margin) { drag_margin_native in
        withUnsafePointer(to: margin.rawValue) { margin_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(margin_native), .init(drag_margin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_drag_margin_4290182280,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_drag_margin(margin: Side) -> Float64 {
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
                    Self._method_get_drag_margin_2869120046,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func get_target_position() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_target_position_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func get_screen_center_position() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_screen_center_position_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func set_zoom(zoom: Vector2)  {
        let zoom_native = zoom._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(zoom_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_zoom_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_zoom() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_zoom_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func set_custom_viewport(viewport: Node)  {
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_custom_viewport_1078189570,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_custom_viewport() -> Node {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_custom_viewport_3160264692,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node(from: __resPtr.pointee)
    }
    public func set_position_smoothing_speed(position_smoothing_speed: Float64)  {
        withUnsafePointer(to: position_smoothing_speed) { position_smoothing_speed_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_smoothing_speed_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_position_smoothing_speed_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_position_smoothing_speed() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_position_smoothing_speed_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_position_smoothing_enabled(position_smoothing_speed: UInt8)  {
        withUnsafePointer(to: position_smoothing_speed) { position_smoothing_speed_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_smoothing_speed_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_position_smoothing_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_position_smoothing_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_position_smoothing_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_rotation_smoothing_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_rotation_smoothing_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_rotation_smoothing_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_rotation_smoothing_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_rotation_smoothing_speed(speed: Float64)  {
        withUnsafePointer(to: speed) { speed_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(speed_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_rotation_smoothing_speed_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_rotation_smoothing_speed() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_rotation_smoothing_speed_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func force_update_scroll()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_force_update_scroll_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func reset_smoothing()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_reset_smoothing_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func align()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_align_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_screen_drawing_enabled(screen_drawing_enabled: UInt8)  {
        withUnsafePointer(to: screen_drawing_enabled) { screen_drawing_enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(screen_drawing_enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_screen_drawing_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_screen_drawing_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_screen_drawing_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_limit_drawing_enabled(limit_drawing_enabled: UInt8)  {
        withUnsafePointer(to: limit_drawing_enabled) { limit_drawing_enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(limit_drawing_enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_limit_drawing_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_limit_drawing_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_limit_drawing_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_margin_drawing_enabled(margin_drawing_enabled: UInt8)  {
        withUnsafePointer(to: margin_drawing_enabled) { margin_drawing_enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(margin_drawing_enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_margin_drawing_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_margin_drawing_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_margin_drawing_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}