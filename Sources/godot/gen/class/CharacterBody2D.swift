import godot_native

fileprivate var __godot_name_CharacterBody2D: StringName! = nil

/// Specialized 2D physics body node for characters moved by script.
/// 
/// Character bodies are special types of bodies that are meant to be user-controlled. They are not affected by physics at all; to other types of bodies, such as a rigid body, these are the same as a [AnimatableBody2D]. However, they have two main uses:
///  
/// [b]Kinematic characters:[/b] Character bodies have an API for moving objects with walls and slopes detection ([method move_and_slide] method), in addition to collision detection (also done with [method PhysicsBody2D.move_and_collide]). This makes them really useful to implement characters that move in specific ways and collide with the world, but don't require advanced physics.
///  
/// [b]Kinematic motion:[/b] Character bodies can also be used for kinematic motion (same functionality as [AnimatableBody2D]), which allows them to be moved by code and push other bodies on their path.
public class CharacterBody2D : PhysicsBody2D {

    public enum MotionMode : Int32 {
        case MOTION_MODE_GROUNDED = 0
        case MOTION_MODE_FLOATING = 1
    }
    public enum PlatformOnLeave : Int32 {
        case PLATFORM_ON_LEAVE_ADD_VELOCITY = 0
        case PLATFORM_ON_LEAVE_ADD_UPWARD_VELOCITY = 1
        case PLATFORM_ON_LEAVE_DO_NOTHING = 2
    }

    public override class var __godot_name: StringName { __godot_name_CharacterBody2D }

    static var _method_move_and_slide_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_set_velocity_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_velocity_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_safe_margin_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_safe_margin_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_is_floor_stop_on_slope_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_floor_stop_on_slope_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_set_floor_constant_speed_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_floor_constant_speed_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_floor_block_on_wall_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_floor_block_on_wall_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_slide_on_ceiling_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_slide_on_ceiling_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_platform_floor_layers_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_platform_floor_layers_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_platform_wall_layers_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_platform_wall_layers_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_slides_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_max_slides_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_floor_max_angle_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_floor_max_angle_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_floor_snap_length_191475506: GDExtensionMethodBindPtr! = nil
    static var _method_set_floor_snap_length_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_wall_min_slide_angle_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_wall_min_slide_angle_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_up_direction_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_up_direction_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_set_motion_mode_1224392233: GDExtensionMethodBindPtr! = nil
    static var _method_get_motion_mode_1160151236: GDExtensionMethodBindPtr! = nil
    static var _method_set_platform_on_leave_2423324375: GDExtensionMethodBindPtr! = nil
    static var _method_get_platform_on_leave_4054324341: GDExtensionMethodBindPtr! = nil
    static var _method_is_on_floor_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_is_on_floor_only_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_is_on_ceiling_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_is_on_ceiling_only_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_is_on_wall_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_is_on_wall_only_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_floor_normal_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_get_wall_normal_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_get_last_motion_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_get_position_delta_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_get_real_velocity_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_get_floor_angle_2841063350: GDExtensionMethodBindPtr! = nil
    static var _method_get_platform_velocity_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_get_slide_collision_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_slide_collision_860659811: GDExtensionMethodBindPtr! = nil
    static var _method_get_last_slide_collision_2161834755: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_CharacterBody2D = StringName(from: "CharacterBody2D")

        let _method_move_and_slide_2240911060_name = StringName(from: "move_and_slide")
        self._method_move_and_slide_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_move_and_slide_2240911060_name._native_ptr(), 2240911060)
        assert(CharacterBody2D._method_move_and_slide_2240911060 != nil)
        let _method_set_velocity_743155724_name = StringName(from: "set_velocity")
        self._method_set_velocity_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_velocity_743155724_name._native_ptr(), 743155724)
        assert(CharacterBody2D._method_set_velocity_743155724 != nil)
        let _method_get_velocity_3341600327_name = StringName(from: "get_velocity")
        self._method_get_velocity_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_velocity_3341600327_name._native_ptr(), 3341600327)
        assert(CharacterBody2D._method_get_velocity_3341600327 != nil)
        let _method_set_safe_margin_373806689_name = StringName(from: "set_safe_margin")
        self._method_set_safe_margin_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_safe_margin_373806689_name._native_ptr(), 373806689)
        assert(CharacterBody2D._method_set_safe_margin_373806689 != nil)
        let _method_get_safe_margin_1740695150_name = StringName(from: "get_safe_margin")
        self._method_get_safe_margin_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_safe_margin_1740695150_name._native_ptr(), 1740695150)
        assert(CharacterBody2D._method_get_safe_margin_1740695150 != nil)
        let _method_is_floor_stop_on_slope_enabled_36873697_name = StringName(from: "is_floor_stop_on_slope_enabled")
        self._method_is_floor_stop_on_slope_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_floor_stop_on_slope_enabled_36873697_name._native_ptr(), 36873697)
        assert(CharacterBody2D._method_is_floor_stop_on_slope_enabled_36873697 != nil)
        let _method_set_floor_stop_on_slope_enabled_2586408642_name = StringName(from: "set_floor_stop_on_slope_enabled")
        self._method_set_floor_stop_on_slope_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_floor_stop_on_slope_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(CharacterBody2D._method_set_floor_stop_on_slope_enabled_2586408642 != nil)
        let _method_set_floor_constant_speed_enabled_2586408642_name = StringName(from: "set_floor_constant_speed_enabled")
        self._method_set_floor_constant_speed_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_floor_constant_speed_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(CharacterBody2D._method_set_floor_constant_speed_enabled_2586408642 != nil)
        let _method_is_floor_constant_speed_enabled_36873697_name = StringName(from: "is_floor_constant_speed_enabled")
        self._method_is_floor_constant_speed_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_floor_constant_speed_enabled_36873697_name._native_ptr(), 36873697)
        assert(CharacterBody2D._method_is_floor_constant_speed_enabled_36873697 != nil)
        let _method_set_floor_block_on_wall_enabled_2586408642_name = StringName(from: "set_floor_block_on_wall_enabled")
        self._method_set_floor_block_on_wall_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_floor_block_on_wall_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(CharacterBody2D._method_set_floor_block_on_wall_enabled_2586408642 != nil)
        let _method_is_floor_block_on_wall_enabled_36873697_name = StringName(from: "is_floor_block_on_wall_enabled")
        self._method_is_floor_block_on_wall_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_floor_block_on_wall_enabled_36873697_name._native_ptr(), 36873697)
        assert(CharacterBody2D._method_is_floor_block_on_wall_enabled_36873697 != nil)
        let _method_set_slide_on_ceiling_enabled_2586408642_name = StringName(from: "set_slide_on_ceiling_enabled")
        self._method_set_slide_on_ceiling_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_slide_on_ceiling_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(CharacterBody2D._method_set_slide_on_ceiling_enabled_2586408642 != nil)
        let _method_is_slide_on_ceiling_enabled_36873697_name = StringName(from: "is_slide_on_ceiling_enabled")
        self._method_is_slide_on_ceiling_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_slide_on_ceiling_enabled_36873697_name._native_ptr(), 36873697)
        assert(CharacterBody2D._method_is_slide_on_ceiling_enabled_36873697 != nil)
        let _method_set_platform_floor_layers_1286410249_name = StringName(from: "set_platform_floor_layers")
        self._method_set_platform_floor_layers_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_platform_floor_layers_1286410249_name._native_ptr(), 1286410249)
        assert(CharacterBody2D._method_set_platform_floor_layers_1286410249 != nil)
        let _method_get_platform_floor_layers_3905245786_name = StringName(from: "get_platform_floor_layers")
        self._method_get_platform_floor_layers_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_platform_floor_layers_3905245786_name._native_ptr(), 3905245786)
        assert(CharacterBody2D._method_get_platform_floor_layers_3905245786 != nil)
        let _method_set_platform_wall_layers_1286410249_name = StringName(from: "set_platform_wall_layers")
        self._method_set_platform_wall_layers_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_platform_wall_layers_1286410249_name._native_ptr(), 1286410249)
        assert(CharacterBody2D._method_set_platform_wall_layers_1286410249 != nil)
        let _method_get_platform_wall_layers_3905245786_name = StringName(from: "get_platform_wall_layers")
        self._method_get_platform_wall_layers_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_platform_wall_layers_3905245786_name._native_ptr(), 3905245786)
        assert(CharacterBody2D._method_get_platform_wall_layers_3905245786 != nil)
        let _method_get_max_slides_3905245786_name = StringName(from: "get_max_slides")
        self._method_get_max_slides_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_max_slides_3905245786_name._native_ptr(), 3905245786)
        assert(CharacterBody2D._method_get_max_slides_3905245786 != nil)
        let _method_set_max_slides_1286410249_name = StringName(from: "set_max_slides")
        self._method_set_max_slides_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_max_slides_1286410249_name._native_ptr(), 1286410249)
        assert(CharacterBody2D._method_set_max_slides_1286410249 != nil)
        let _method_get_floor_max_angle_1740695150_name = StringName(from: "get_floor_max_angle")
        self._method_get_floor_max_angle_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_floor_max_angle_1740695150_name._native_ptr(), 1740695150)
        assert(CharacterBody2D._method_get_floor_max_angle_1740695150 != nil)
        let _method_set_floor_max_angle_373806689_name = StringName(from: "set_floor_max_angle")
        self._method_set_floor_max_angle_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_floor_max_angle_373806689_name._native_ptr(), 373806689)
        assert(CharacterBody2D._method_set_floor_max_angle_373806689 != nil)
        let _method_get_floor_snap_length_191475506_name = StringName(from: "get_floor_snap_length")
        self._method_get_floor_snap_length_191475506 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_floor_snap_length_191475506_name._native_ptr(), 191475506)
        assert(CharacterBody2D._method_get_floor_snap_length_191475506 != nil)
        let _method_set_floor_snap_length_373806689_name = StringName(from: "set_floor_snap_length")
        self._method_set_floor_snap_length_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_floor_snap_length_373806689_name._native_ptr(), 373806689)
        assert(CharacterBody2D._method_set_floor_snap_length_373806689 != nil)
        let _method_get_wall_min_slide_angle_1740695150_name = StringName(from: "get_wall_min_slide_angle")
        self._method_get_wall_min_slide_angle_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_wall_min_slide_angle_1740695150_name._native_ptr(), 1740695150)
        assert(CharacterBody2D._method_get_wall_min_slide_angle_1740695150 != nil)
        let _method_set_wall_min_slide_angle_373806689_name = StringName(from: "set_wall_min_slide_angle")
        self._method_set_wall_min_slide_angle_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_wall_min_slide_angle_373806689_name._native_ptr(), 373806689)
        assert(CharacterBody2D._method_set_wall_min_slide_angle_373806689 != nil)
        let _method_get_up_direction_3341600327_name = StringName(from: "get_up_direction")
        self._method_get_up_direction_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_up_direction_3341600327_name._native_ptr(), 3341600327)
        assert(CharacterBody2D._method_get_up_direction_3341600327 != nil)
        let _method_set_up_direction_743155724_name = StringName(from: "set_up_direction")
        self._method_set_up_direction_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_up_direction_743155724_name._native_ptr(), 743155724)
        assert(CharacterBody2D._method_set_up_direction_743155724 != nil)
        let _method_set_motion_mode_1224392233_name = StringName(from: "set_motion_mode")
        self._method_set_motion_mode_1224392233 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_motion_mode_1224392233_name._native_ptr(), 1224392233)
        assert(CharacterBody2D._method_set_motion_mode_1224392233 != nil)
        let _method_get_motion_mode_1160151236_name = StringName(from: "get_motion_mode")
        self._method_get_motion_mode_1160151236 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_motion_mode_1160151236_name._native_ptr(), 1160151236)
        assert(CharacterBody2D._method_get_motion_mode_1160151236 != nil)
        let _method_set_platform_on_leave_2423324375_name = StringName(from: "set_platform_on_leave")
        self._method_set_platform_on_leave_2423324375 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_platform_on_leave_2423324375_name._native_ptr(), 2423324375)
        assert(CharacterBody2D._method_set_platform_on_leave_2423324375 != nil)
        let _method_get_platform_on_leave_4054324341_name = StringName(from: "get_platform_on_leave")
        self._method_get_platform_on_leave_4054324341 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_platform_on_leave_4054324341_name._native_ptr(), 4054324341)
        assert(CharacterBody2D._method_get_platform_on_leave_4054324341 != nil)
        let _method_is_on_floor_36873697_name = StringName(from: "is_on_floor")
        self._method_is_on_floor_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_on_floor_36873697_name._native_ptr(), 36873697)
        assert(CharacterBody2D._method_is_on_floor_36873697 != nil)
        let _method_is_on_floor_only_36873697_name = StringName(from: "is_on_floor_only")
        self._method_is_on_floor_only_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_on_floor_only_36873697_name._native_ptr(), 36873697)
        assert(CharacterBody2D._method_is_on_floor_only_36873697 != nil)
        let _method_is_on_ceiling_36873697_name = StringName(from: "is_on_ceiling")
        self._method_is_on_ceiling_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_on_ceiling_36873697_name._native_ptr(), 36873697)
        assert(CharacterBody2D._method_is_on_ceiling_36873697 != nil)
        let _method_is_on_ceiling_only_36873697_name = StringName(from: "is_on_ceiling_only")
        self._method_is_on_ceiling_only_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_on_ceiling_only_36873697_name._native_ptr(), 36873697)
        assert(CharacterBody2D._method_is_on_ceiling_only_36873697 != nil)
        let _method_is_on_wall_36873697_name = StringName(from: "is_on_wall")
        self._method_is_on_wall_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_on_wall_36873697_name._native_ptr(), 36873697)
        assert(CharacterBody2D._method_is_on_wall_36873697 != nil)
        let _method_is_on_wall_only_36873697_name = StringName(from: "is_on_wall_only")
        self._method_is_on_wall_only_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_on_wall_only_36873697_name._native_ptr(), 36873697)
        assert(CharacterBody2D._method_is_on_wall_only_36873697 != nil)
        let _method_get_floor_normal_3341600327_name = StringName(from: "get_floor_normal")
        self._method_get_floor_normal_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_floor_normal_3341600327_name._native_ptr(), 3341600327)
        assert(CharacterBody2D._method_get_floor_normal_3341600327 != nil)
        let _method_get_wall_normal_3341600327_name = StringName(from: "get_wall_normal")
        self._method_get_wall_normal_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_wall_normal_3341600327_name._native_ptr(), 3341600327)
        assert(CharacterBody2D._method_get_wall_normal_3341600327 != nil)
        let _method_get_last_motion_3341600327_name = StringName(from: "get_last_motion")
        self._method_get_last_motion_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_last_motion_3341600327_name._native_ptr(), 3341600327)
        assert(CharacterBody2D._method_get_last_motion_3341600327 != nil)
        let _method_get_position_delta_3341600327_name = StringName(from: "get_position_delta")
        self._method_get_position_delta_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_position_delta_3341600327_name._native_ptr(), 3341600327)
        assert(CharacterBody2D._method_get_position_delta_3341600327 != nil)
        let _method_get_real_velocity_3341600327_name = StringName(from: "get_real_velocity")
        self._method_get_real_velocity_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_real_velocity_3341600327_name._native_ptr(), 3341600327)
        assert(CharacterBody2D._method_get_real_velocity_3341600327 != nil)
        let _method_get_floor_angle_2841063350_name = StringName(from: "get_floor_angle")
        self._method_get_floor_angle_2841063350 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_floor_angle_2841063350_name._native_ptr(), 2841063350)
        assert(CharacterBody2D._method_get_floor_angle_2841063350 != nil)
        let _method_get_platform_velocity_3341600327_name = StringName(from: "get_platform_velocity")
        self._method_get_platform_velocity_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_platform_velocity_3341600327_name._native_ptr(), 3341600327)
        assert(CharacterBody2D._method_get_platform_velocity_3341600327 != nil)
        let _method_get_slide_collision_count_3905245786_name = StringName(from: "get_slide_collision_count")
        self._method_get_slide_collision_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_slide_collision_count_3905245786_name._native_ptr(), 3905245786)
        assert(CharacterBody2D._method_get_slide_collision_count_3905245786 != nil)
        let _method_get_slide_collision_860659811_name = StringName(from: "get_slide_collision")
        self._method_get_slide_collision_860659811 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_slide_collision_860659811_name._native_ptr(), 860659811)
        assert(CharacterBody2D._method_get_slide_collision_860659811 != nil)
        let _method_get_last_slide_collision_2161834755_name = StringName(from: "get_last_slide_collision")
        self._method_get_last_slide_collision_2161834755 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_last_slide_collision_2161834755_name._native_ptr(), 2161834755)
        assert(CharacterBody2D._method_get_last_slide_collision_2161834755 != nil)
    }

    public func move_and_slide() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_move_and_slide_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_velocity(velocity: Vector2)  {
        let velocity_native = velocity._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(velocity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_velocity_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_velocity() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_velocity_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func set_safe_margin(margin: Float64)  {
        withUnsafePointer(to: margin) { margin_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(margin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_safe_margin_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_safe_margin() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_safe_margin_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func is_floor_stop_on_slope_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_floor_stop_on_slope_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_floor_stop_on_slope_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_floor_stop_on_slope_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_floor_constant_speed_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_floor_constant_speed_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_floor_constant_speed_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_floor_constant_speed_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_floor_block_on_wall_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_floor_block_on_wall_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_floor_block_on_wall_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_floor_block_on_wall_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_slide_on_ceiling_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_slide_on_ceiling_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_slide_on_ceiling_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_slide_on_ceiling_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_platform_floor_layers(exclude_layer: Int64)  {
        withUnsafePointer(to: exclude_layer) { exclude_layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(exclude_layer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_platform_floor_layers_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_platform_floor_layers() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_platform_floor_layers_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_platform_wall_layers(exclude_layer: Int64)  {
        withUnsafePointer(to: exclude_layer) { exclude_layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(exclude_layer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_platform_wall_layers_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_platform_wall_layers() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_platform_wall_layers_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_max_slides() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_max_slides_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_max_slides(max_slides: Int64)  {
        withUnsafePointer(to: max_slides) { max_slides_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_slides_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_max_slides_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_floor_max_angle() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_floor_max_angle_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_floor_max_angle(radians: Float64)  {
        withUnsafePointer(to: radians) { radians_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(radians_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_floor_max_angle_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_floor_snap_length() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_floor_snap_length_191475506,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_floor_snap_length(floor_snap_length: Float64)  {
        withUnsafePointer(to: floor_snap_length) { floor_snap_length_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(floor_snap_length_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_floor_snap_length_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_wall_min_slide_angle() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_wall_min_slide_angle_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_wall_min_slide_angle(radians: Float64)  {
        withUnsafePointer(to: radians) { radians_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(radians_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_wall_min_slide_angle_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_up_direction() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_up_direction_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func set_up_direction(up_direction: Vector2)  {
        let up_direction_native = up_direction._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(up_direction_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_up_direction_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_motion_mode(mode: CharacterBody2D.MotionMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_motion_mode_1224392233,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_motion_mode() -> CharacterBody2D.MotionMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_motion_mode_1160151236,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CharacterBody2D.MotionMode(from: __resPtr.pointee)
    }
    public func set_platform_on_leave(on_leave_apply_velocity: CharacterBody2D.PlatformOnLeave)  {
        withUnsafePointer(to: on_leave_apply_velocity.rawValue) { on_leave_apply_velocity_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(on_leave_apply_velocity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_platform_on_leave_2423324375,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_platform_on_leave() -> CharacterBody2D.PlatformOnLeave {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_platform_on_leave_4054324341,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CharacterBody2D.PlatformOnLeave(from: __resPtr.pointee)
    }
    public func is_on_floor() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_on_floor_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func is_on_floor_only() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_on_floor_only_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func is_on_ceiling() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_on_ceiling_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func is_on_ceiling_only() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_on_ceiling_only_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func is_on_wall() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_on_wall_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func is_on_wall_only() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_on_wall_only_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_floor_normal() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_floor_normal_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func get_wall_normal() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_wall_normal_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func get_last_motion() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_last_motion_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func get_position_delta() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_position_delta_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func get_real_velocity() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_real_velocity_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func get_floor_angle(up_direction: Vector2) -> Float64 {
        let up_direction_native = up_direction._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(up_direction_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_floor_angle_2841063350,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func get_platform_velocity() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_platform_velocity_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func get_slide_collision_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_slide_collision_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_slide_collision(slide_idx: Int64) -> KinematicCollision2D {
        withUnsafePointer(to: slide_idx) { slide_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(slide_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_slide_collision_860659811,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return KinematicCollision2D(from: __resPtr.pointee)
        }
    }
    public func get_last_slide_collision() -> KinematicCollision2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_last_slide_collision_2161834755,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return KinematicCollision2D(from: __resPtr.pointee)
    }
}