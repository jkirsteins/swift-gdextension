import godot_native

fileprivate var __godot_name_Camera3D: StringName! = nil

/// Camera node, displays from a point of view.
/// 
/// [Camera3D] is a special node that displays what is visible from its current location. Cameras register themselves in the nearest [Viewport] node (when ascending the tree). Only one camera can be active per viewport. If no viewport is available ascending the tree, the camera will register in the global viewport. In other words, a camera just provides 3D display capabilities to a [Viewport], and, without one, a scene registered in that [Viewport] (or higher viewports) can't be displayed.
open class Camera3D : Node3D {

    public enum ProjectionType : Int32 {
        case PROJECTION_PERSPECTIVE = 0
        case PROJECTION_ORTHOGONAL = 1
        case PROJECTION_FRUSTUM = 2
    }
    public enum KeepAspect : Int32 {
        case KEEP_WIDTH = 0
        case KEEP_HEIGHT = 1
    }
    public enum DopplerTracking : Int32 {
        case DOPPLER_TRACKING_DISABLED = 0
        case DOPPLER_TRACKING_IDLE_STEP = 1
        case DOPPLER_TRACKING_PHYSICS_STEP = 2
    }

    public override class var __godot_name: StringName { __godot_name_Camera3D }

    static var _method_project_ray_normal_1718073306: GDExtensionMethodBindPtr! = nil
    static var _method_project_local_ray_normal_1718073306: GDExtensionMethodBindPtr! = nil
    static var _method_project_ray_origin_1718073306: GDExtensionMethodBindPtr! = nil
    static var _method_unproject_position_3758901831: GDExtensionMethodBindPtr! = nil
    static var _method_is_position_behind_3108956480: GDExtensionMethodBindPtr! = nil
    static var _method_project_position_2171975744: GDExtensionMethodBindPtr! = nil
    static var _method_set_perspective_2385087082: GDExtensionMethodBindPtr! = nil
    static var _method_set_orthogonal_2385087082: GDExtensionMethodBindPtr! = nil
    static var _method_set_frustum_354890663: GDExtensionMethodBindPtr! = nil
    static var _method_make_current_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_clear_current_3216645846: GDExtensionMethodBindPtr! = nil
    static var _method_set_current_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_current_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_camera_transform_3229777777: GDExtensionMethodBindPtr! = nil
    static var _method_get_fov_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_frustum_offset_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_get_size_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_far_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_near_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_fov_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_set_frustum_offset_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_set_size_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_set_far_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_set_near_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_projection_2624185235: GDExtensionMethodBindPtr! = nil
    static var _method_set_projection_4218540108: GDExtensionMethodBindPtr! = nil
    static var _method_set_h_offset_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_h_offset_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_v_offset_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_v_offset_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_cull_mask_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_cull_mask_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_environment_4143518816: GDExtensionMethodBindPtr! = nil
    static var _method_get_environment_3082064660: GDExtensionMethodBindPtr! = nil
    static var _method_set_attributes_2817810567: GDExtensionMethodBindPtr! = nil
    static var _method_get_attributes_3921283215: GDExtensionMethodBindPtr! = nil
    static var _method_set_keep_aspect_mode_1740651252: GDExtensionMethodBindPtr! = nil
    static var _method_get_keep_aspect_mode_2790278316: GDExtensionMethodBindPtr! = nil
    static var _method_set_doppler_tracking_3109431270: GDExtensionMethodBindPtr! = nil
    static var _method_get_doppler_tracking_1584483649: GDExtensionMethodBindPtr! = nil
    static var _method_get_frustum_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_is_position_in_frustum_3108956480: GDExtensionMethodBindPtr! = nil
    static var _method_get_camera_rid_2944877500: GDExtensionMethodBindPtr! = nil
    static var _method_get_pyramid_shape_rid_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_set_cull_mask_value_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_get_cull_mask_value_1116898809: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_Camera3D = StringName(from: "Camera3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_project_ray_normal_1718073306_name = StringName(from: "project_ray_normal")
        self._method_project_ray_normal_1718073306 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_project_ray_normal_1718073306_name._native_ptr(), 1718073306)
        assert(Camera3D._method_project_ray_normal_1718073306 != nil)
        let _method_project_local_ray_normal_1718073306_name = StringName(from: "project_local_ray_normal")
        self._method_project_local_ray_normal_1718073306 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_project_local_ray_normal_1718073306_name._native_ptr(), 1718073306)
        assert(Camera3D._method_project_local_ray_normal_1718073306 != nil)
        let _method_project_ray_origin_1718073306_name = StringName(from: "project_ray_origin")
        self._method_project_ray_origin_1718073306 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_project_ray_origin_1718073306_name._native_ptr(), 1718073306)
        assert(Camera3D._method_project_ray_origin_1718073306 != nil)
        let _method_unproject_position_3758901831_name = StringName(from: "unproject_position")
        self._method_unproject_position_3758901831 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_unproject_position_3758901831_name._native_ptr(), 3758901831)
        assert(Camera3D._method_unproject_position_3758901831 != nil)
        let _method_is_position_behind_3108956480_name = StringName(from: "is_position_behind")
        self._method_is_position_behind_3108956480 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_is_position_behind_3108956480_name._native_ptr(), 3108956480)
        assert(Camera3D._method_is_position_behind_3108956480 != nil)
        let _method_project_position_2171975744_name = StringName(from: "project_position")
        self._method_project_position_2171975744 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_project_position_2171975744_name._native_ptr(), 2171975744)
        assert(Camera3D._method_project_position_2171975744 != nil)
        let _method_set_perspective_2385087082_name = StringName(from: "set_perspective")
        self._method_set_perspective_2385087082 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_set_perspective_2385087082_name._native_ptr(), 2385087082)
        assert(Camera3D._method_set_perspective_2385087082 != nil)
        let _method_set_orthogonal_2385087082_name = StringName(from: "set_orthogonal")
        self._method_set_orthogonal_2385087082 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_set_orthogonal_2385087082_name._native_ptr(), 2385087082)
        assert(Camera3D._method_set_orthogonal_2385087082 != nil)
        let _method_set_frustum_354890663_name = StringName(from: "set_frustum")
        self._method_set_frustum_354890663 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_set_frustum_354890663_name._native_ptr(), 354890663)
        assert(Camera3D._method_set_frustum_354890663 != nil)
        let _method_make_current_3218959716_name = StringName(from: "make_current")
        self._method_make_current_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_make_current_3218959716_name._native_ptr(), 3218959716)
        assert(Camera3D._method_make_current_3218959716 != nil)
        let _method_clear_current_3216645846_name = StringName(from: "clear_current")
        self._method_clear_current_3216645846 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_clear_current_3216645846_name._native_ptr(), 3216645846)
        assert(Camera3D._method_clear_current_3216645846 != nil)
        let _method_set_current_2586408642_name = StringName(from: "set_current")
        self._method_set_current_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_set_current_2586408642_name._native_ptr(), 2586408642)
        assert(Camera3D._method_set_current_2586408642 != nil)
        let _method_is_current_36873697_name = StringName(from: "is_current")
        self._method_is_current_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_is_current_36873697_name._native_ptr(), 36873697)
        assert(Camera3D._method_is_current_36873697 != nil)
        let _method_get_camera_transform_3229777777_name = StringName(from: "get_camera_transform")
        self._method_get_camera_transform_3229777777 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_get_camera_transform_3229777777_name._native_ptr(), 3229777777)
        assert(Camera3D._method_get_camera_transform_3229777777 != nil)
        let _method_get_fov_1740695150_name = StringName(from: "get_fov")
        self._method_get_fov_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_get_fov_1740695150_name._native_ptr(), 1740695150)
        assert(Camera3D._method_get_fov_1740695150 != nil)
        let _method_get_frustum_offset_3341600327_name = StringName(from: "get_frustum_offset")
        self._method_get_frustum_offset_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_get_frustum_offset_3341600327_name._native_ptr(), 3341600327)
        assert(Camera3D._method_get_frustum_offset_3341600327 != nil)
        let _method_get_size_1740695150_name = StringName(from: "get_size")
        self._method_get_size_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_get_size_1740695150_name._native_ptr(), 1740695150)
        assert(Camera3D._method_get_size_1740695150 != nil)
        let _method_get_far_1740695150_name = StringName(from: "get_far")
        self._method_get_far_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_get_far_1740695150_name._native_ptr(), 1740695150)
        assert(Camera3D._method_get_far_1740695150 != nil)
        let _method_get_near_1740695150_name = StringName(from: "get_near")
        self._method_get_near_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_get_near_1740695150_name._native_ptr(), 1740695150)
        assert(Camera3D._method_get_near_1740695150 != nil)
        let _method_set_fov_373806689_name = StringName(from: "set_fov")
        self._method_set_fov_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_set_fov_373806689_name._native_ptr(), 373806689)
        assert(Camera3D._method_set_fov_373806689 != nil)
        let _method_set_frustum_offset_743155724_name = StringName(from: "set_frustum_offset")
        self._method_set_frustum_offset_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_set_frustum_offset_743155724_name._native_ptr(), 743155724)
        assert(Camera3D._method_set_frustum_offset_743155724 != nil)
        let _method_set_size_373806689_name = StringName(from: "set_size")
        self._method_set_size_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_set_size_373806689_name._native_ptr(), 373806689)
        assert(Camera3D._method_set_size_373806689 != nil)
        let _method_set_far_373806689_name = StringName(from: "set_far")
        self._method_set_far_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_set_far_373806689_name._native_ptr(), 373806689)
        assert(Camera3D._method_set_far_373806689 != nil)
        let _method_set_near_373806689_name = StringName(from: "set_near")
        self._method_set_near_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_set_near_373806689_name._native_ptr(), 373806689)
        assert(Camera3D._method_set_near_373806689 != nil)
        let _method_get_projection_2624185235_name = StringName(from: "get_projection")
        self._method_get_projection_2624185235 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_get_projection_2624185235_name._native_ptr(), 2624185235)
        assert(Camera3D._method_get_projection_2624185235 != nil)
        let _method_set_projection_4218540108_name = StringName(from: "set_projection")
        self._method_set_projection_4218540108 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_set_projection_4218540108_name._native_ptr(), 4218540108)
        assert(Camera3D._method_set_projection_4218540108 != nil)
        let _method_set_h_offset_373806689_name = StringName(from: "set_h_offset")
        self._method_set_h_offset_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_set_h_offset_373806689_name._native_ptr(), 373806689)
        assert(Camera3D._method_set_h_offset_373806689 != nil)
        let _method_get_h_offset_1740695150_name = StringName(from: "get_h_offset")
        self._method_get_h_offset_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_get_h_offset_1740695150_name._native_ptr(), 1740695150)
        assert(Camera3D._method_get_h_offset_1740695150 != nil)
        let _method_set_v_offset_373806689_name = StringName(from: "set_v_offset")
        self._method_set_v_offset_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_set_v_offset_373806689_name._native_ptr(), 373806689)
        assert(Camera3D._method_set_v_offset_373806689 != nil)
        let _method_get_v_offset_1740695150_name = StringName(from: "get_v_offset")
        self._method_get_v_offset_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_get_v_offset_1740695150_name._native_ptr(), 1740695150)
        assert(Camera3D._method_get_v_offset_1740695150 != nil)
        let _method_set_cull_mask_1286410249_name = StringName(from: "set_cull_mask")
        self._method_set_cull_mask_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_set_cull_mask_1286410249_name._native_ptr(), 1286410249)
        assert(Camera3D._method_set_cull_mask_1286410249 != nil)
        let _method_get_cull_mask_3905245786_name = StringName(from: "get_cull_mask")
        self._method_get_cull_mask_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_get_cull_mask_3905245786_name._native_ptr(), 3905245786)
        assert(Camera3D._method_get_cull_mask_3905245786 != nil)
        let _method_set_environment_4143518816_name = StringName(from: "set_environment")
        self._method_set_environment_4143518816 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_set_environment_4143518816_name._native_ptr(), 4143518816)
        assert(Camera3D._method_set_environment_4143518816 != nil)
        let _method_get_environment_3082064660_name = StringName(from: "get_environment")
        self._method_get_environment_3082064660 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_get_environment_3082064660_name._native_ptr(), 3082064660)
        assert(Camera3D._method_get_environment_3082064660 != nil)
        let _method_set_attributes_2817810567_name = StringName(from: "set_attributes")
        self._method_set_attributes_2817810567 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_set_attributes_2817810567_name._native_ptr(), 2817810567)
        assert(Camera3D._method_set_attributes_2817810567 != nil)
        let _method_get_attributes_3921283215_name = StringName(from: "get_attributes")
        self._method_get_attributes_3921283215 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_get_attributes_3921283215_name._native_ptr(), 3921283215)
        assert(Camera3D._method_get_attributes_3921283215 != nil)
        let _method_set_keep_aspect_mode_1740651252_name = StringName(from: "set_keep_aspect_mode")
        self._method_set_keep_aspect_mode_1740651252 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_set_keep_aspect_mode_1740651252_name._native_ptr(), 1740651252)
        assert(Camera3D._method_set_keep_aspect_mode_1740651252 != nil)
        let _method_get_keep_aspect_mode_2790278316_name = StringName(from: "get_keep_aspect_mode")
        self._method_get_keep_aspect_mode_2790278316 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_get_keep_aspect_mode_2790278316_name._native_ptr(), 2790278316)
        assert(Camera3D._method_get_keep_aspect_mode_2790278316 != nil)
        let _method_set_doppler_tracking_3109431270_name = StringName(from: "set_doppler_tracking")
        self._method_set_doppler_tracking_3109431270 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_set_doppler_tracking_3109431270_name._native_ptr(), 3109431270)
        assert(Camera3D._method_set_doppler_tracking_3109431270 != nil)
        let _method_get_doppler_tracking_1584483649_name = StringName(from: "get_doppler_tracking")
        self._method_get_doppler_tracking_1584483649 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_get_doppler_tracking_1584483649_name._native_ptr(), 1584483649)
        assert(Camera3D._method_get_doppler_tracking_1584483649 != nil)
        let _method_get_frustum_3995934104_name = StringName(from: "get_frustum")
        self._method_get_frustum_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_get_frustum_3995934104_name._native_ptr(), 3995934104)
        assert(Camera3D._method_get_frustum_3995934104 != nil)
        let _method_is_position_in_frustum_3108956480_name = StringName(from: "is_position_in_frustum")
        self._method_is_position_in_frustum_3108956480 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_is_position_in_frustum_3108956480_name._native_ptr(), 3108956480)
        assert(Camera3D._method_is_position_in_frustum_3108956480 != nil)
        let _method_get_camera_rid_2944877500_name = StringName(from: "get_camera_rid")
        self._method_get_camera_rid_2944877500 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_get_camera_rid_2944877500_name._native_ptr(), 2944877500)
        assert(Camera3D._method_get_camera_rid_2944877500 != nil)
        let _method_get_pyramid_shape_rid_529393457_name = StringName(from: "get_pyramid_shape_rid")
        self._method_get_pyramid_shape_rid_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_get_pyramid_shape_rid_529393457_name._native_ptr(), 529393457)
        assert(Camera3D._method_get_pyramid_shape_rid_529393457 != nil)
        let _method_set_cull_mask_value_300928843_name = StringName(from: "set_cull_mask_value")
        self._method_set_cull_mask_value_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_set_cull_mask_value_300928843_name._native_ptr(), 300928843)
        assert(Camera3D._method_set_cull_mask_value_300928843 != nil)
        let _method_get_cull_mask_value_1116898809_name = StringName(from: "get_cull_mask_value")
        self._method_get_cull_mask_value_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name_Camera3D._native_ptr(), _method_get_cull_mask_value_1116898809_name._native_ptr(), 1116898809)
        assert(Camera3D._method_get_cull_mask_value_1116898809 != nil)
    }

    public func project_ray_normal(screen_point: Vector2) -> Vector3 {
        let screen_point_native = screen_point._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(screen_point_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_project_ray_normal_1718073306,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func project_local_ray_normal(screen_point: Vector2) -> Vector3 {
        let screen_point_native = screen_point._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(screen_point_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_project_local_ray_normal_1718073306,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func project_ray_origin(screen_point: Vector2) -> Vector3 {
        let screen_point_native = screen_point._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(screen_point_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_project_ray_origin_1718073306,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func unproject_position(world_point: Vector3) -> Vector2 {
        let world_point_native = world_point._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(world_point_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_unproject_position_3758901831,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func is_position_behind(world_point: Vector3) -> UInt8 {
        let world_point_native = world_point._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(world_point_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_position_behind_3108956480,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func project_position(screen_point: Vector2, z_depth: Float64) -> Vector3 {
        withUnsafePointer(to: z_depth) { z_depth_native in
        let screen_point_native = screen_point._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(screen_point_native), .init(z_depth_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_project_position_2171975744,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
        }
    }
    public func set_perspective(fov: Float64, z_near: Float64, z_far: Float64)  {
        withUnsafePointer(to: z_far) { z_far_native in
        withUnsafePointer(to: z_near) { z_near_native in
        withUnsafePointer(to: fov) { fov_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(fov_native), .init(z_near_native), .init(z_far_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_perspective_2385087082,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func set_orthogonal(size: Float64, z_near: Float64, z_far: Float64)  {
        withUnsafePointer(to: z_far) { z_far_native in
        withUnsafePointer(to: z_near) { z_near_native in
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native), .init(z_near_native), .init(z_far_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_orthogonal_2385087082,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func set_frustum(size: Float64, offset: Vector2, z_near: Float64, z_far: Float64)  {
        withUnsafePointer(to: z_far) { z_far_native in
        withUnsafePointer(to: z_near) { z_near_native in
        withUnsafePointer(to: size) { size_native in
        let offset_native = offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native), .init(offset_native), .init(z_near_native), .init(z_far_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_frustum_354890663,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
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
    public func clear_current(enable_next: UInt8)  {
        withUnsafePointer(to: enable_next) { enable_next_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_next_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_current_3216645846,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_current(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_current_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
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
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_camera_transform() -> Transform3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_camera_transform_3229777777,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(godot: __resPtr.pointee)
    }
    public func get_fov() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_fov_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func get_frustum_offset() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_frustum_offset_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func get_size() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_size_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func get_far() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_far_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func get_near() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_near_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_fov(fov: Float64)  {
        withUnsafePointer(to: fov) { fov_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(fov_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fov_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_frustum_offset(offset: Vector2)  {
        let offset_native = offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_frustum_offset_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_size(size: Float64)  {
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_size_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_far(far: Float64)  {
        withUnsafePointer(to: far) { far_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(far_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_far_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_near(near: Float64)  {
        withUnsafePointer(to: near) { near_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(near_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_near_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_projection() -> Camera3D.ProjectionType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_projection_2624185235,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Camera3D.ProjectionType(godot: __resPtr.pointee)
    }
    public func set_projection(mode: Camera3D.ProjectionType)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_projection_4218540108,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_h_offset(offset: Float64)  {
        withUnsafePointer(to: offset) { offset_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_h_offset_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_h_offset() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_h_offset_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_v_offset(offset: Float64)  {
        withUnsafePointer(to: offset) { offset_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_v_offset_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_v_offset() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_v_offset_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_cull_mask(mask: Int64)  {
        withUnsafePointer(to: mask) { mask_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cull_mask_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_cull_mask() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cull_mask_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_environment(env: Environment)  {
        let env_native = env._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(env_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_environment_4143518816,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_environment() -> Environment {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_environment_3082064660,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Environment(godot: __resPtr.pointee)
    }
    public func set_attributes(env: CameraAttributes)  {
        let env_native = env._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(env_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_attributes_2817810567,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_attributes() -> CameraAttributes {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_attributes_3921283215,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CameraAttributes(godot: __resPtr.pointee)
    }
    public func set_keep_aspect_mode(mode: Camera3D.KeepAspect)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_keep_aspect_mode_1740651252,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_keep_aspect_mode() -> Camera3D.KeepAspect {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_keep_aspect_mode_2790278316,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Camera3D.KeepAspect(godot: __resPtr.pointee)
    }
    public func set_doppler_tracking(mode: Camera3D.DopplerTracking)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_doppler_tracking_3109431270,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_doppler_tracking() -> Camera3D.DopplerTracking {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_doppler_tracking_1584483649,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Camera3D.DopplerTracking(godot: __resPtr.pointee)
    }
    public func get_frustum() -> [Plane] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_frustum_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Plane](godot: __resPtr.pointee)
    }
    public func is_position_in_frustum(world_point: Vector3) -> UInt8 {
        let world_point_native = world_point._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(world_point_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_position_in_frustum_3108956480,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_camera_rid() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_camera_rid_2944877500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
    }
    public func get_pyramid_shape_rid() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_pyramid_shape_rid_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
    }
    public func set_cull_mask_value(layer_number: Int64, value: UInt8)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: layer_number) { layer_number_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_number_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cull_mask_value_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_cull_mask_value(layer_number: Int64) -> UInt8 {
        withUnsafePointer(to: layer_number) { layer_number_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_number_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cull_mask_value_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
}