import godot_native

fileprivate var __godot_name_Skeleton3D: StringName! = nil

/// Skeleton for characters and animated objects.
/// 
/// Skeleton3D provides a hierarchical interface for managing bones, including pose, rest and animation (see [Animation]). It can also use ragdoll physics.
///  
/// The overall transform of a bone with respect to the skeleton is determined by the following hierarchical order: rest pose, custom pose and pose.
///  
/// Note that "global pose" below refers to the overall transform of the bone with respect to skeleton, so it not the actual global/world transform of the bone.
///  
/// To setup different types of inverse kinematics, consider using [SkeletonIK3D], or add a custom IK implementation in [method Node._process] as a child node.
open class Skeleton3D : Node3D {

    

    public override class var __godot_name: StringName { __godot_name_Skeleton3D }

    static var _method_add_bone_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_find_bone_1321353865: GDExtensionMethodBindPtr! = nil
    static var _method_get_bone_name_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_set_bone_name_501894301: GDExtensionMethodBindPtr! = nil
    static var _method_get_bone_parent_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_set_bone_parent_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_get_bone_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_version_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_unparent_bone_and_rest_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_bone_children_1706082319: GDExtensionMethodBindPtr! = nil
    static var _method_get_parentless_bones_1930428628: GDExtensionMethodBindPtr! = nil
    static var _method_get_bone_rest_1965739696: GDExtensionMethodBindPtr! = nil
    static var _method_set_bone_rest_3616898986: GDExtensionMethodBindPtr! = nil
    static var _method_get_bone_global_rest_1965739696: GDExtensionMethodBindPtr! = nil
    static var _method_create_skin_from_rest_transforms_1032037385: GDExtensionMethodBindPtr! = nil
    static var _method_register_skin_3405789568: GDExtensionMethodBindPtr! = nil
    static var _method_localize_rests_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_clear_bones_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_bone_pose_1965739696: GDExtensionMethodBindPtr! = nil
    static var _method_set_bone_pose_position_1530502735: GDExtensionMethodBindPtr! = nil
    static var _method_set_bone_pose_rotation_2823819782: GDExtensionMethodBindPtr! = nil
    static var _method_set_bone_pose_scale_1530502735: GDExtensionMethodBindPtr! = nil
    static var _method_get_bone_pose_position_711720468: GDExtensionMethodBindPtr! = nil
    static var _method_get_bone_pose_rotation_476865136: GDExtensionMethodBindPtr! = nil
    static var _method_get_bone_pose_scale_711720468: GDExtensionMethodBindPtr! = nil
    static var _method_reset_bone_pose_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_reset_bone_poses_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_is_bone_enabled_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_bone_enabled_4023243586: GDExtensionMethodBindPtr! = nil
    static var _method_clear_bones_global_pose_override_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_bone_global_pose_override_3483398371: GDExtensionMethodBindPtr! = nil
    static var _method_get_bone_global_pose_override_1965739696: GDExtensionMethodBindPtr! = nil
    static var _method_get_bone_global_pose_1965739696: GDExtensionMethodBindPtr! = nil
    static var _method_get_bone_global_pose_no_override_1965739696: GDExtensionMethodBindPtr! = nil
    static var _method_force_update_all_bone_transforms_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_force_update_bone_child_transform_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_motion_scale_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_motion_scale_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_show_rest_only_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_show_rest_only_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_animate_physical_bones_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_animate_physical_bones_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_physical_bones_stop_simulation_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_physical_bones_start_simulation_2787316981: GDExtensionMethodBindPtr! = nil
    static var _method_physical_bones_add_collision_exception_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_physical_bones_remove_collision_exception_2722037293: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_Skeleton3D = StringName(from: "Skeleton3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_add_bone_83702148_name = StringName(from: "add_bone")
        self._method_add_bone_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_add_bone_83702148_name._native_ptr(), 83702148)
        assert(Skeleton3D._method_add_bone_83702148 != nil)
        let _method_find_bone_1321353865_name = StringName(from: "find_bone")
        self._method_find_bone_1321353865 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_find_bone_1321353865_name._native_ptr(), 1321353865)
        assert(Skeleton3D._method_find_bone_1321353865 != nil)
        let _method_get_bone_name_844755477_name = StringName(from: "get_bone_name")
        self._method_get_bone_name_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_get_bone_name_844755477_name._native_ptr(), 844755477)
        assert(Skeleton3D._method_get_bone_name_844755477 != nil)
        let _method_set_bone_name_501894301_name = StringName(from: "set_bone_name")
        self._method_set_bone_name_501894301 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_set_bone_name_501894301_name._native_ptr(), 501894301)
        assert(Skeleton3D._method_set_bone_name_501894301 != nil)
        let _method_get_bone_parent_923996154_name = StringName(from: "get_bone_parent")
        self._method_get_bone_parent_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_get_bone_parent_923996154_name._native_ptr(), 923996154)
        assert(Skeleton3D._method_get_bone_parent_923996154 != nil)
        let _method_set_bone_parent_3937882851_name = StringName(from: "set_bone_parent")
        self._method_set_bone_parent_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_set_bone_parent_3937882851_name._native_ptr(), 3937882851)
        assert(Skeleton3D._method_set_bone_parent_3937882851 != nil)
        let _method_get_bone_count_3905245786_name = StringName(from: "get_bone_count")
        self._method_get_bone_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_get_bone_count_3905245786_name._native_ptr(), 3905245786)
        assert(Skeleton3D._method_get_bone_count_3905245786 != nil)
        let _method_get_version_3905245786_name = StringName(from: "get_version")
        self._method_get_version_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_get_version_3905245786_name._native_ptr(), 3905245786)
        assert(Skeleton3D._method_get_version_3905245786 != nil)
        let _method_unparent_bone_and_rest_1286410249_name = StringName(from: "unparent_bone_and_rest")
        self._method_unparent_bone_and_rest_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_unparent_bone_and_rest_1286410249_name._native_ptr(), 1286410249)
        assert(Skeleton3D._method_unparent_bone_and_rest_1286410249 != nil)
        let _method_get_bone_children_1706082319_name = StringName(from: "get_bone_children")
        self._method_get_bone_children_1706082319 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_get_bone_children_1706082319_name._native_ptr(), 1706082319)
        assert(Skeleton3D._method_get_bone_children_1706082319 != nil)
        let _method_get_parentless_bones_1930428628_name = StringName(from: "get_parentless_bones")
        self._method_get_parentless_bones_1930428628 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_get_parentless_bones_1930428628_name._native_ptr(), 1930428628)
        assert(Skeleton3D._method_get_parentless_bones_1930428628 != nil)
        let _method_get_bone_rest_1965739696_name = StringName(from: "get_bone_rest")
        self._method_get_bone_rest_1965739696 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_get_bone_rest_1965739696_name._native_ptr(), 1965739696)
        assert(Skeleton3D._method_get_bone_rest_1965739696 != nil)
        let _method_set_bone_rest_3616898986_name = StringName(from: "set_bone_rest")
        self._method_set_bone_rest_3616898986 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_set_bone_rest_3616898986_name._native_ptr(), 3616898986)
        assert(Skeleton3D._method_set_bone_rest_3616898986 != nil)
        let _method_get_bone_global_rest_1965739696_name = StringName(from: "get_bone_global_rest")
        self._method_get_bone_global_rest_1965739696 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_get_bone_global_rest_1965739696_name._native_ptr(), 1965739696)
        assert(Skeleton3D._method_get_bone_global_rest_1965739696 != nil)
        let _method_create_skin_from_rest_transforms_1032037385_name = StringName(from: "create_skin_from_rest_transforms")
        self._method_create_skin_from_rest_transforms_1032037385 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_create_skin_from_rest_transforms_1032037385_name._native_ptr(), 1032037385)
        assert(Skeleton3D._method_create_skin_from_rest_transforms_1032037385 != nil)
        let _method_register_skin_3405789568_name = StringName(from: "register_skin")
        self._method_register_skin_3405789568 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_register_skin_3405789568_name._native_ptr(), 3405789568)
        assert(Skeleton3D._method_register_skin_3405789568 != nil)
        let _method_localize_rests_3218959716_name = StringName(from: "localize_rests")
        self._method_localize_rests_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_localize_rests_3218959716_name._native_ptr(), 3218959716)
        assert(Skeleton3D._method_localize_rests_3218959716 != nil)
        let _method_clear_bones_3218959716_name = StringName(from: "clear_bones")
        self._method_clear_bones_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_clear_bones_3218959716_name._native_ptr(), 3218959716)
        assert(Skeleton3D._method_clear_bones_3218959716 != nil)
        let _method_get_bone_pose_1965739696_name = StringName(from: "get_bone_pose")
        self._method_get_bone_pose_1965739696 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_get_bone_pose_1965739696_name._native_ptr(), 1965739696)
        assert(Skeleton3D._method_get_bone_pose_1965739696 != nil)
        let _method_set_bone_pose_position_1530502735_name = StringName(from: "set_bone_pose_position")
        self._method_set_bone_pose_position_1530502735 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_set_bone_pose_position_1530502735_name._native_ptr(), 1530502735)
        assert(Skeleton3D._method_set_bone_pose_position_1530502735 != nil)
        let _method_set_bone_pose_rotation_2823819782_name = StringName(from: "set_bone_pose_rotation")
        self._method_set_bone_pose_rotation_2823819782 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_set_bone_pose_rotation_2823819782_name._native_ptr(), 2823819782)
        assert(Skeleton3D._method_set_bone_pose_rotation_2823819782 != nil)
        let _method_set_bone_pose_scale_1530502735_name = StringName(from: "set_bone_pose_scale")
        self._method_set_bone_pose_scale_1530502735 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_set_bone_pose_scale_1530502735_name._native_ptr(), 1530502735)
        assert(Skeleton3D._method_set_bone_pose_scale_1530502735 != nil)
        let _method_get_bone_pose_position_711720468_name = StringName(from: "get_bone_pose_position")
        self._method_get_bone_pose_position_711720468 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_get_bone_pose_position_711720468_name._native_ptr(), 711720468)
        assert(Skeleton3D._method_get_bone_pose_position_711720468 != nil)
        let _method_get_bone_pose_rotation_476865136_name = StringName(from: "get_bone_pose_rotation")
        self._method_get_bone_pose_rotation_476865136 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_get_bone_pose_rotation_476865136_name._native_ptr(), 476865136)
        assert(Skeleton3D._method_get_bone_pose_rotation_476865136 != nil)
        let _method_get_bone_pose_scale_711720468_name = StringName(from: "get_bone_pose_scale")
        self._method_get_bone_pose_scale_711720468 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_get_bone_pose_scale_711720468_name._native_ptr(), 711720468)
        assert(Skeleton3D._method_get_bone_pose_scale_711720468 != nil)
        let _method_reset_bone_pose_1286410249_name = StringName(from: "reset_bone_pose")
        self._method_reset_bone_pose_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_reset_bone_pose_1286410249_name._native_ptr(), 1286410249)
        assert(Skeleton3D._method_reset_bone_pose_1286410249 != nil)
        let _method_reset_bone_poses_3218959716_name = StringName(from: "reset_bone_poses")
        self._method_reset_bone_poses_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_reset_bone_poses_3218959716_name._native_ptr(), 3218959716)
        assert(Skeleton3D._method_reset_bone_poses_3218959716 != nil)
        let _method_is_bone_enabled_1116898809_name = StringName(from: "is_bone_enabled")
        self._method_is_bone_enabled_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_is_bone_enabled_1116898809_name._native_ptr(), 1116898809)
        assert(Skeleton3D._method_is_bone_enabled_1116898809 != nil)
        let _method_set_bone_enabled_4023243586_name = StringName(from: "set_bone_enabled")
        self._method_set_bone_enabled_4023243586 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_set_bone_enabled_4023243586_name._native_ptr(), 4023243586)
        assert(Skeleton3D._method_set_bone_enabled_4023243586 != nil)
        let _method_clear_bones_global_pose_override_3218959716_name = StringName(from: "clear_bones_global_pose_override")
        self._method_clear_bones_global_pose_override_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_clear_bones_global_pose_override_3218959716_name._native_ptr(), 3218959716)
        assert(Skeleton3D._method_clear_bones_global_pose_override_3218959716 != nil)
        let _method_set_bone_global_pose_override_3483398371_name = StringName(from: "set_bone_global_pose_override")
        self._method_set_bone_global_pose_override_3483398371 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_set_bone_global_pose_override_3483398371_name._native_ptr(), 3483398371)
        assert(Skeleton3D._method_set_bone_global_pose_override_3483398371 != nil)
        let _method_get_bone_global_pose_override_1965739696_name = StringName(from: "get_bone_global_pose_override")
        self._method_get_bone_global_pose_override_1965739696 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_get_bone_global_pose_override_1965739696_name._native_ptr(), 1965739696)
        assert(Skeleton3D._method_get_bone_global_pose_override_1965739696 != nil)
        let _method_get_bone_global_pose_1965739696_name = StringName(from: "get_bone_global_pose")
        self._method_get_bone_global_pose_1965739696 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_get_bone_global_pose_1965739696_name._native_ptr(), 1965739696)
        assert(Skeleton3D._method_get_bone_global_pose_1965739696 != nil)
        let _method_get_bone_global_pose_no_override_1965739696_name = StringName(from: "get_bone_global_pose_no_override")
        self._method_get_bone_global_pose_no_override_1965739696 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_get_bone_global_pose_no_override_1965739696_name._native_ptr(), 1965739696)
        assert(Skeleton3D._method_get_bone_global_pose_no_override_1965739696 != nil)
        let _method_force_update_all_bone_transforms_3218959716_name = StringName(from: "force_update_all_bone_transforms")
        self._method_force_update_all_bone_transforms_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_force_update_all_bone_transforms_3218959716_name._native_ptr(), 3218959716)
        assert(Skeleton3D._method_force_update_all_bone_transforms_3218959716 != nil)
        let _method_force_update_bone_child_transform_1286410249_name = StringName(from: "force_update_bone_child_transform")
        self._method_force_update_bone_child_transform_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_force_update_bone_child_transform_1286410249_name._native_ptr(), 1286410249)
        assert(Skeleton3D._method_force_update_bone_child_transform_1286410249 != nil)
        let _method_set_motion_scale_373806689_name = StringName(from: "set_motion_scale")
        self._method_set_motion_scale_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_set_motion_scale_373806689_name._native_ptr(), 373806689)
        assert(Skeleton3D._method_set_motion_scale_373806689 != nil)
        let _method_get_motion_scale_1740695150_name = StringName(from: "get_motion_scale")
        self._method_get_motion_scale_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_get_motion_scale_1740695150_name._native_ptr(), 1740695150)
        assert(Skeleton3D._method_get_motion_scale_1740695150 != nil)
        let _method_set_show_rest_only_2586408642_name = StringName(from: "set_show_rest_only")
        self._method_set_show_rest_only_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_set_show_rest_only_2586408642_name._native_ptr(), 2586408642)
        assert(Skeleton3D._method_set_show_rest_only_2586408642 != nil)
        let _method_is_show_rest_only_36873697_name = StringName(from: "is_show_rest_only")
        self._method_is_show_rest_only_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_is_show_rest_only_36873697_name._native_ptr(), 36873697)
        assert(Skeleton3D._method_is_show_rest_only_36873697 != nil)
        let _method_set_animate_physical_bones_2586408642_name = StringName(from: "set_animate_physical_bones")
        self._method_set_animate_physical_bones_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_set_animate_physical_bones_2586408642_name._native_ptr(), 2586408642)
        assert(Skeleton3D._method_set_animate_physical_bones_2586408642 != nil)
        let _method_get_animate_physical_bones_36873697_name = StringName(from: "get_animate_physical_bones")
        self._method_get_animate_physical_bones_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_get_animate_physical_bones_36873697_name._native_ptr(), 36873697)
        assert(Skeleton3D._method_get_animate_physical_bones_36873697 != nil)
        let _method_physical_bones_stop_simulation_3218959716_name = StringName(from: "physical_bones_stop_simulation")
        self._method_physical_bones_stop_simulation_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_physical_bones_stop_simulation_3218959716_name._native_ptr(), 3218959716)
        assert(Skeleton3D._method_physical_bones_stop_simulation_3218959716 != nil)
        let _method_physical_bones_start_simulation_2787316981_name = StringName(from: "physical_bones_start_simulation")
        self._method_physical_bones_start_simulation_2787316981 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_physical_bones_start_simulation_2787316981_name._native_ptr(), 2787316981)
        assert(Skeleton3D._method_physical_bones_start_simulation_2787316981 != nil)
        let _method_physical_bones_add_collision_exception_2722037293_name = StringName(from: "physical_bones_add_collision_exception")
        self._method_physical_bones_add_collision_exception_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_physical_bones_add_collision_exception_2722037293_name._native_ptr(), 2722037293)
        assert(Skeleton3D._method_physical_bones_add_collision_exception_2722037293 != nil)
        let _method_physical_bones_remove_collision_exception_2722037293_name = StringName(from: "physical_bones_remove_collision_exception")
        self._method_physical_bones_remove_collision_exception_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skeleton3D._native_ptr(), _method_physical_bones_remove_collision_exception_2722037293_name._native_ptr(), 2722037293)
        assert(Skeleton3D._method_physical_bones_remove_collision_exception_2722037293 != nil)
    }

    public func add_bone(name: godot.String)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_bone_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func find_bone(name: godot.String) -> Int64 {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_find_bone_1321353865,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_bone_name(bone_idx: Int64) -> godot.String {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bone_name_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func set_bone_name(bone_idx: Int64, name: godot.String)  {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native), .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bone_name_501894301,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_bone_parent(bone_idx: Int64) -> Int64 {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bone_parent_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func set_bone_parent(bone_idx: Int64, parent_idx: Int64)  {
        withUnsafePointer(to: parent_idx) { parent_idx_native in
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native), .init(parent_idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bone_parent_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_bone_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bone_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_version() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_version_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func unparent_bone_and_rest(bone_idx: Int64)  {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_unparent_bone_and_rest_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_bone_children(bone_idx: Int64) -> PackedInt32Array {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bone_children_1706082319,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
        }
    }
    public func get_parentless_bones() -> PackedInt32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_parentless_bones_1930428628,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
    }
    public func get_bone_rest(bone_idx: Int64) -> Transform3D {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bone_rest_1965739696,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(godot: __resPtr.pointee)
        }
    }
    public func set_bone_rest(bone_idx: Int64, rest: Transform3D)  {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let rest_native = rest._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native), .init(rest_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bone_rest_3616898986,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_bone_global_rest(bone_idx: Int64) -> Transform3D {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bone_global_rest_1965739696,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(godot: __resPtr.pointee)
        }
    }
    public func create_skin_from_rest_transforms() -> Skin {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_skin_from_rest_transforms_1032037385,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Skin(godot: __resPtr.pointee)
    }
    public func register_skin(skin: Skin) -> SkinReference {
        let skin_native = skin._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(skin_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_register_skin_3405789568,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return SkinReference(godot: __resPtr.pointee)
    }
    public func localize_rests()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_localize_rests_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func clear_bones()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_bones_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_bone_pose(bone_idx: Int64) -> Transform3D {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bone_pose_1965739696,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(godot: __resPtr.pointee)
        }
    }
    public func set_bone_pose_position(bone_idx: Int64, position: Vector3)  {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native), .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bone_pose_position_1530502735,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_bone_pose_rotation(bone_idx: Int64, rotation: Quaternion)  {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let rotation_native = rotation._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native), .init(rotation_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bone_pose_rotation_2823819782,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_bone_pose_scale(bone_idx: Int64, scale: Vector3)  {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let scale_native = scale._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native), .init(scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bone_pose_scale_1530502735,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_bone_pose_position(bone_idx: Int64) -> Vector3 {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bone_pose_position_711720468,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
        }
    }
    public func get_bone_pose_rotation(bone_idx: Int64) -> Quaternion {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bone_pose_rotation_476865136,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Quaternion(godot: __resPtr.pointee)
        }
    }
    public func get_bone_pose_scale(bone_idx: Int64) -> Vector3 {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bone_pose_scale_711720468,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
        }
    }
    public func reset_bone_pose(bone_idx: Int64)  {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_reset_bone_pose_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func reset_bone_poses()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_reset_bone_poses_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func is_bone_enabled(bone_idx: Int64) -> UInt8 {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_bone_enabled_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func set_bone_enabled(bone_idx: Int64, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native), .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bone_enabled_4023243586,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func clear_bones_global_pose_override()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_bones_global_pose_override_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_bone_global_pose_override(bone_idx: Int64, pose: Transform3D, amount: Float64, persistent: UInt8)  {
        withUnsafePointer(to: persistent) { persistent_native in
        withUnsafePointer(to: amount) { amount_native in
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let pose_native = pose._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native), .init(pose_native), .init(amount_native), .init(persistent_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bone_global_pose_override_3483398371,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func get_bone_global_pose_override(bone_idx: Int64) -> Transform3D {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bone_global_pose_override_1965739696,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(godot: __resPtr.pointee)
        }
    }
    public func get_bone_global_pose(bone_idx: Int64) -> Transform3D {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bone_global_pose_1965739696,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(godot: __resPtr.pointee)
        }
    }
    public func get_bone_global_pose_no_override(bone_idx: Int64) -> Transform3D {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bone_global_pose_no_override_1965739696,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(godot: __resPtr.pointee)
        }
    }
    public func force_update_all_bone_transforms()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_force_update_all_bone_transforms_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func force_update_bone_child_transform(bone_idx: Int64)  {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_force_update_bone_child_transform_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_motion_scale(motion_scale: Float64)  {
        withUnsafePointer(to: motion_scale) { motion_scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(motion_scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_motion_scale_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_motion_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_motion_scale_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_show_rest_only(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_show_rest_only_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_show_rest_only() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_show_rest_only_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_animate_physical_bones(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_animate_physical_bones_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_animate_physical_bones() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_animate_physical_bones_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func physical_bones_stop_simulation()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_physical_bones_stop_simulation_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func physical_bones_start_simulation(bones: [StringName])  {
        let bones_native = bones._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bones_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_physical_bones_start_simulation_2787316981,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func physical_bones_add_collision_exception(exception: RID)  {
        let exception_native = exception._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(exception_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_physical_bones_add_collision_exception_2722037293,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func physical_bones_remove_collision_exception(exception: RID)  {
        let exception_native = exception._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(exception_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_physical_bones_remove_collision_exception_2722037293,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}