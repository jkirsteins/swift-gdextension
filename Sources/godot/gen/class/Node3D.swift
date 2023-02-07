import godot_native

fileprivate var __godot_name_Node3D: StringName! = nil

/// Most basic 3D game object, parent of all 3D-related nodes.
/// 
/// Most basic 3D game object, with a 3D [Transform3D] and visibility settings. All other 3D game objects inherit from Node3D. Use [Node3D] as a parent node to move, scale, rotate and show/hide children in a 3D project.
///  
/// Affine operations (rotate, scale, translate) happen in parent's local coordinate system, unless the [Node3D] object is set as top-level. Affine operations in this coordinate system correspond to direct affine operations on the [Node3D]'s transform. The word local below refers to this coordinate system. The coordinate system that is attached to the [Node3D] object itself is referred to as object-local coordinate system.
///  
/// [b]Note:[/b] Unless otherwise specified, all methods that have angle parameters must have angles specified as [i]radians[/i]. To convert degrees to radians, use [method @GlobalScope.deg_to_rad].
public class Node3D : Node {

    public enum RotationEditMode : Int32 {
        case ROTATION_EDIT_MODE_EULER = 0
        case ROTATION_EDIT_MODE_QUATERNION = 1
        case ROTATION_EDIT_MODE_BASIS = 2
    }

    public override class var __godot_name: StringName { __godot_name_Node3D }

    static var _method_set_transform_2952846383: GDExtensionMethodBindPtr! = nil
    static var _method_get_transform_3229777777: GDExtensionMethodBindPtr! = nil
    static var _method_set_position_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_position_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_rotation_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_rotation_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_rotation_degrees_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_rotation_degrees_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_rotation_order_1820889989: GDExtensionMethodBindPtr! = nil
    static var _method_get_rotation_order_916939469: GDExtensionMethodBindPtr! = nil
    static var _method_set_rotation_edit_mode_141483330: GDExtensionMethodBindPtr! = nil
    static var _method_get_rotation_edit_mode_1572188370: GDExtensionMethodBindPtr! = nil
    static var _method_set_scale_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_scale_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_quaternion_1727505552: GDExtensionMethodBindPtr! = nil
    static var _method_get_quaternion_1222331677: GDExtensionMethodBindPtr! = nil
    static var _method_set_basis_1055510324: GDExtensionMethodBindPtr! = nil
    static var _method_get_basis_2716978435: GDExtensionMethodBindPtr! = nil
    static var _method_set_global_transform_2952846383: GDExtensionMethodBindPtr! = nil
    static var _method_get_global_transform_3229777777: GDExtensionMethodBindPtr! = nil
    static var _method_set_global_position_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_global_position_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_global_rotation_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_global_rotation_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_global_rotation_degrees_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_global_rotation_degrees_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_get_parent_node_3d_151077316: GDExtensionMethodBindPtr! = nil
    static var _method_set_ignore_transform_notification_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_set_as_top_level_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_set_as_top_level_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_disable_scale_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_scale_disabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_world_3d_317588385: GDExtensionMethodBindPtr! = nil
    static var _method_force_update_transform_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_visibility_parent_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_visibility_parent_4075236667: GDExtensionMethodBindPtr! = nil
    static var _method_update_gizmos_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_add_gizmo_1544533845: GDExtensionMethodBindPtr! = nil
    static var _method_get_gizmos_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_clear_gizmos_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_subgizmo_selection_3317607635: GDExtensionMethodBindPtr! = nil
    static var _method_clear_subgizmo_selection_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_visible_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_visible_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_is_visible_in_tree_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_show_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_hide_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_notify_local_transform_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_local_transform_notification_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_notify_transform_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_transform_notification_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_rotate_3436291937: GDExtensionMethodBindPtr! = nil
    static var _method_global_rotate_3436291937: GDExtensionMethodBindPtr! = nil
    static var _method_global_scale_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_global_translate_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_rotate_object_local_3436291937: GDExtensionMethodBindPtr! = nil
    static var _method_scale_object_local_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_translate_object_local_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_rotate_x_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_rotate_y_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_rotate_z_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_translate_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_orthonormalize_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_identity_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_look_at_1002852006: GDExtensionMethodBindPtr! = nil
    static var _method_look_at_from_position_735115603: GDExtensionMethodBindPtr! = nil
    static var _method_to_local_192990374: GDExtensionMethodBindPtr! = nil
    static var _method_to_global_192990374: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Node3D = StringName(from: "Node3D")

        let _method_set_transform_2952846383_name = StringName(from: "set_transform")
        self._method_set_transform_2952846383 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_transform_2952846383_name._native_ptr(), 2952846383)
        assert(Node3D._method_set_transform_2952846383 != nil)
        let _method_get_transform_3229777777_name = StringName(from: "get_transform")
        self._method_get_transform_3229777777 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_transform_3229777777_name._native_ptr(), 3229777777)
        assert(Node3D._method_get_transform_3229777777 != nil)
        let _method_set_position_3460891852_name = StringName(from: "set_position")
        self._method_set_position_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_position_3460891852_name._native_ptr(), 3460891852)
        assert(Node3D._method_set_position_3460891852 != nil)
        let _method_get_position_3360562783_name = StringName(from: "get_position")
        self._method_get_position_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_position_3360562783_name._native_ptr(), 3360562783)
        assert(Node3D._method_get_position_3360562783 != nil)
        let _method_set_rotation_3460891852_name = StringName(from: "set_rotation")
        self._method_set_rotation_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_rotation_3460891852_name._native_ptr(), 3460891852)
        assert(Node3D._method_set_rotation_3460891852 != nil)
        let _method_get_rotation_3360562783_name = StringName(from: "get_rotation")
        self._method_get_rotation_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_rotation_3360562783_name._native_ptr(), 3360562783)
        assert(Node3D._method_get_rotation_3360562783 != nil)
        let _method_set_rotation_degrees_3460891852_name = StringName(from: "set_rotation_degrees")
        self._method_set_rotation_degrees_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_rotation_degrees_3460891852_name._native_ptr(), 3460891852)
        assert(Node3D._method_set_rotation_degrees_3460891852 != nil)
        let _method_get_rotation_degrees_3360562783_name = StringName(from: "get_rotation_degrees")
        self._method_get_rotation_degrees_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_rotation_degrees_3360562783_name._native_ptr(), 3360562783)
        assert(Node3D._method_get_rotation_degrees_3360562783 != nil)
        let _method_set_rotation_order_1820889989_name = StringName(from: "set_rotation_order")
        self._method_set_rotation_order_1820889989 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_rotation_order_1820889989_name._native_ptr(), 1820889989)
        assert(Node3D._method_set_rotation_order_1820889989 != nil)
        let _method_get_rotation_order_916939469_name = StringName(from: "get_rotation_order")
        self._method_get_rotation_order_916939469 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_rotation_order_916939469_name._native_ptr(), 916939469)
        assert(Node3D._method_get_rotation_order_916939469 != nil)
        let _method_set_rotation_edit_mode_141483330_name = StringName(from: "set_rotation_edit_mode")
        self._method_set_rotation_edit_mode_141483330 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_rotation_edit_mode_141483330_name._native_ptr(), 141483330)
        assert(Node3D._method_set_rotation_edit_mode_141483330 != nil)
        let _method_get_rotation_edit_mode_1572188370_name = StringName(from: "get_rotation_edit_mode")
        self._method_get_rotation_edit_mode_1572188370 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_rotation_edit_mode_1572188370_name._native_ptr(), 1572188370)
        assert(Node3D._method_get_rotation_edit_mode_1572188370 != nil)
        let _method_set_scale_3460891852_name = StringName(from: "set_scale")
        self._method_set_scale_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_scale_3460891852_name._native_ptr(), 3460891852)
        assert(Node3D._method_set_scale_3460891852 != nil)
        let _method_get_scale_3360562783_name = StringName(from: "get_scale")
        self._method_get_scale_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_scale_3360562783_name._native_ptr(), 3360562783)
        assert(Node3D._method_get_scale_3360562783 != nil)
        let _method_set_quaternion_1727505552_name = StringName(from: "set_quaternion")
        self._method_set_quaternion_1727505552 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_quaternion_1727505552_name._native_ptr(), 1727505552)
        assert(Node3D._method_set_quaternion_1727505552 != nil)
        let _method_get_quaternion_1222331677_name = StringName(from: "get_quaternion")
        self._method_get_quaternion_1222331677 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_quaternion_1222331677_name._native_ptr(), 1222331677)
        assert(Node3D._method_get_quaternion_1222331677 != nil)
        let _method_set_basis_1055510324_name = StringName(from: "set_basis")
        self._method_set_basis_1055510324 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_basis_1055510324_name._native_ptr(), 1055510324)
        assert(Node3D._method_set_basis_1055510324 != nil)
        let _method_get_basis_2716978435_name = StringName(from: "get_basis")
        self._method_get_basis_2716978435 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_basis_2716978435_name._native_ptr(), 2716978435)
        assert(Node3D._method_get_basis_2716978435 != nil)
        let _method_set_global_transform_2952846383_name = StringName(from: "set_global_transform")
        self._method_set_global_transform_2952846383 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_global_transform_2952846383_name._native_ptr(), 2952846383)
        assert(Node3D._method_set_global_transform_2952846383 != nil)
        let _method_get_global_transform_3229777777_name = StringName(from: "get_global_transform")
        self._method_get_global_transform_3229777777 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_global_transform_3229777777_name._native_ptr(), 3229777777)
        assert(Node3D._method_get_global_transform_3229777777 != nil)
        let _method_set_global_position_3460891852_name = StringName(from: "set_global_position")
        self._method_set_global_position_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_global_position_3460891852_name._native_ptr(), 3460891852)
        assert(Node3D._method_set_global_position_3460891852 != nil)
        let _method_get_global_position_3360562783_name = StringName(from: "get_global_position")
        self._method_get_global_position_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_global_position_3360562783_name._native_ptr(), 3360562783)
        assert(Node3D._method_get_global_position_3360562783 != nil)
        let _method_set_global_rotation_3460891852_name = StringName(from: "set_global_rotation")
        self._method_set_global_rotation_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_global_rotation_3460891852_name._native_ptr(), 3460891852)
        assert(Node3D._method_set_global_rotation_3460891852 != nil)
        let _method_get_global_rotation_3360562783_name = StringName(from: "get_global_rotation")
        self._method_get_global_rotation_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_global_rotation_3360562783_name._native_ptr(), 3360562783)
        assert(Node3D._method_get_global_rotation_3360562783 != nil)
        let _method_set_global_rotation_degrees_3460891852_name = StringName(from: "set_global_rotation_degrees")
        self._method_set_global_rotation_degrees_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_global_rotation_degrees_3460891852_name._native_ptr(), 3460891852)
        assert(Node3D._method_set_global_rotation_degrees_3460891852 != nil)
        let _method_get_global_rotation_degrees_3360562783_name = StringName(from: "get_global_rotation_degrees")
        self._method_get_global_rotation_degrees_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_global_rotation_degrees_3360562783_name._native_ptr(), 3360562783)
        assert(Node3D._method_get_global_rotation_degrees_3360562783 != nil)
        let _method_get_parent_node_3d_151077316_name = StringName(from: "get_parent_node_3d")
        self._method_get_parent_node_3d_151077316 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_parent_node_3d_151077316_name._native_ptr(), 151077316)
        assert(Node3D._method_get_parent_node_3d_151077316 != nil)
        let _method_set_ignore_transform_notification_2586408642_name = StringName(from: "set_ignore_transform_notification")
        self._method_set_ignore_transform_notification_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ignore_transform_notification_2586408642_name._native_ptr(), 2586408642)
        assert(Node3D._method_set_ignore_transform_notification_2586408642 != nil)
        let _method_set_as_top_level_2586408642_name = StringName(from: "set_as_top_level")
        self._method_set_as_top_level_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_as_top_level_2586408642_name._native_ptr(), 2586408642)
        assert(Node3D._method_set_as_top_level_2586408642 != nil)
        let _method_is_set_as_top_level_36873697_name = StringName(from: "is_set_as_top_level")
        self._method_is_set_as_top_level_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_set_as_top_level_36873697_name._native_ptr(), 36873697)
        assert(Node3D._method_is_set_as_top_level_36873697 != nil)
        let _method_set_disable_scale_2586408642_name = StringName(from: "set_disable_scale")
        self._method_set_disable_scale_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_disable_scale_2586408642_name._native_ptr(), 2586408642)
        assert(Node3D._method_set_disable_scale_2586408642 != nil)
        let _method_is_scale_disabled_36873697_name = StringName(from: "is_scale_disabled")
        self._method_is_scale_disabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_scale_disabled_36873697_name._native_ptr(), 36873697)
        assert(Node3D._method_is_scale_disabled_36873697 != nil)
        let _method_get_world_3d_317588385_name = StringName(from: "get_world_3d")
        self._method_get_world_3d_317588385 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_world_3d_317588385_name._native_ptr(), 317588385)
        assert(Node3D._method_get_world_3d_317588385 != nil)
        let _method_force_update_transform_3218959716_name = StringName(from: "force_update_transform")
        self._method_force_update_transform_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_force_update_transform_3218959716_name._native_ptr(), 3218959716)
        assert(Node3D._method_force_update_transform_3218959716 != nil)
        let _method_set_visibility_parent_1348162250_name = StringName(from: "set_visibility_parent")
        self._method_set_visibility_parent_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_visibility_parent_1348162250_name._native_ptr(), 1348162250)
        assert(Node3D._method_set_visibility_parent_1348162250 != nil)
        let _method_get_visibility_parent_4075236667_name = StringName(from: "get_visibility_parent")
        self._method_get_visibility_parent_4075236667 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_visibility_parent_4075236667_name._native_ptr(), 4075236667)
        assert(Node3D._method_get_visibility_parent_4075236667 != nil)
        let _method_update_gizmos_3218959716_name = StringName(from: "update_gizmos")
        self._method_update_gizmos_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_update_gizmos_3218959716_name._native_ptr(), 3218959716)
        assert(Node3D._method_update_gizmos_3218959716 != nil)
        let _method_add_gizmo_1544533845_name = StringName(from: "add_gizmo")
        self._method_add_gizmo_1544533845 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_gizmo_1544533845_name._native_ptr(), 1544533845)
        assert(Node3D._method_add_gizmo_1544533845 != nil)
        let _method_get_gizmos_3995934104_name = StringName(from: "get_gizmos")
        self._method_get_gizmos_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_gizmos_3995934104_name._native_ptr(), 3995934104)
        assert(Node3D._method_get_gizmos_3995934104 != nil)
        let _method_clear_gizmos_3218959716_name = StringName(from: "clear_gizmos")
        self._method_clear_gizmos_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_gizmos_3218959716_name._native_ptr(), 3218959716)
        assert(Node3D._method_clear_gizmos_3218959716 != nil)
        let _method_set_subgizmo_selection_3317607635_name = StringName(from: "set_subgizmo_selection")
        self._method_set_subgizmo_selection_3317607635 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_subgizmo_selection_3317607635_name._native_ptr(), 3317607635)
        assert(Node3D._method_set_subgizmo_selection_3317607635 != nil)
        let _method_clear_subgizmo_selection_3218959716_name = StringName(from: "clear_subgizmo_selection")
        self._method_clear_subgizmo_selection_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_subgizmo_selection_3218959716_name._native_ptr(), 3218959716)
        assert(Node3D._method_clear_subgizmo_selection_3218959716 != nil)
        let _method_set_visible_2586408642_name = StringName(from: "set_visible")
        self._method_set_visible_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_visible_2586408642_name._native_ptr(), 2586408642)
        assert(Node3D._method_set_visible_2586408642 != nil)
        let _method_is_visible_36873697_name = StringName(from: "is_visible")
        self._method_is_visible_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_visible_36873697_name._native_ptr(), 36873697)
        assert(Node3D._method_is_visible_36873697 != nil)
        let _method_is_visible_in_tree_36873697_name = StringName(from: "is_visible_in_tree")
        self._method_is_visible_in_tree_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_visible_in_tree_36873697_name._native_ptr(), 36873697)
        assert(Node3D._method_is_visible_in_tree_36873697 != nil)
        let _method_show_3218959716_name = StringName(from: "show")
        self._method_show_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_show_3218959716_name._native_ptr(), 3218959716)
        assert(Node3D._method_show_3218959716 != nil)
        let _method_hide_3218959716_name = StringName(from: "hide")
        self._method_hide_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_hide_3218959716_name._native_ptr(), 3218959716)
        assert(Node3D._method_hide_3218959716 != nil)
        let _method_set_notify_local_transform_2586408642_name = StringName(from: "set_notify_local_transform")
        self._method_set_notify_local_transform_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_notify_local_transform_2586408642_name._native_ptr(), 2586408642)
        assert(Node3D._method_set_notify_local_transform_2586408642 != nil)
        let _method_is_local_transform_notification_enabled_36873697_name = StringName(from: "is_local_transform_notification_enabled")
        self._method_is_local_transform_notification_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_local_transform_notification_enabled_36873697_name._native_ptr(), 36873697)
        assert(Node3D._method_is_local_transform_notification_enabled_36873697 != nil)
        let _method_set_notify_transform_2586408642_name = StringName(from: "set_notify_transform")
        self._method_set_notify_transform_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_notify_transform_2586408642_name._native_ptr(), 2586408642)
        assert(Node3D._method_set_notify_transform_2586408642 != nil)
        let _method_is_transform_notification_enabled_36873697_name = StringName(from: "is_transform_notification_enabled")
        self._method_is_transform_notification_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_transform_notification_enabled_36873697_name._native_ptr(), 36873697)
        assert(Node3D._method_is_transform_notification_enabled_36873697 != nil)
        let _method_rotate_3436291937_name = StringName(from: "rotate")
        self._method_rotate_3436291937 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_rotate_3436291937_name._native_ptr(), 3436291937)
        assert(Node3D._method_rotate_3436291937 != nil)
        let _method_global_rotate_3436291937_name = StringName(from: "global_rotate")
        self._method_global_rotate_3436291937 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_rotate_3436291937_name._native_ptr(), 3436291937)
        assert(Node3D._method_global_rotate_3436291937 != nil)
        let _method_global_scale_3460891852_name = StringName(from: "global_scale")
        self._method_global_scale_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_scale_3460891852_name._native_ptr(), 3460891852)
        assert(Node3D._method_global_scale_3460891852 != nil)
        let _method_global_translate_3460891852_name = StringName(from: "global_translate")
        self._method_global_translate_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_translate_3460891852_name._native_ptr(), 3460891852)
        assert(Node3D._method_global_translate_3460891852 != nil)
        let _method_rotate_object_local_3436291937_name = StringName(from: "rotate_object_local")
        self._method_rotate_object_local_3436291937 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_rotate_object_local_3436291937_name._native_ptr(), 3436291937)
        assert(Node3D._method_rotate_object_local_3436291937 != nil)
        let _method_scale_object_local_3460891852_name = StringName(from: "scale_object_local")
        self._method_scale_object_local_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_scale_object_local_3460891852_name._native_ptr(), 3460891852)
        assert(Node3D._method_scale_object_local_3460891852 != nil)
        let _method_translate_object_local_3460891852_name = StringName(from: "translate_object_local")
        self._method_translate_object_local_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_translate_object_local_3460891852_name._native_ptr(), 3460891852)
        assert(Node3D._method_translate_object_local_3460891852 != nil)
        let _method_rotate_x_373806689_name = StringName(from: "rotate_x")
        self._method_rotate_x_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_rotate_x_373806689_name._native_ptr(), 373806689)
        assert(Node3D._method_rotate_x_373806689 != nil)
        let _method_rotate_y_373806689_name = StringName(from: "rotate_y")
        self._method_rotate_y_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_rotate_y_373806689_name._native_ptr(), 373806689)
        assert(Node3D._method_rotate_y_373806689 != nil)
        let _method_rotate_z_373806689_name = StringName(from: "rotate_z")
        self._method_rotate_z_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_rotate_z_373806689_name._native_ptr(), 373806689)
        assert(Node3D._method_rotate_z_373806689 != nil)
        let _method_translate_3460891852_name = StringName(from: "translate")
        self._method_translate_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_translate_3460891852_name._native_ptr(), 3460891852)
        assert(Node3D._method_translate_3460891852 != nil)
        let _method_orthonormalize_3218959716_name = StringName(from: "orthonormalize")
        self._method_orthonormalize_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_orthonormalize_3218959716_name._native_ptr(), 3218959716)
        assert(Node3D._method_orthonormalize_3218959716 != nil)
        let _method_set_identity_3218959716_name = StringName(from: "set_identity")
        self._method_set_identity_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_identity_3218959716_name._native_ptr(), 3218959716)
        assert(Node3D._method_set_identity_3218959716 != nil)
        let _method_look_at_1002852006_name = StringName(from: "look_at")
        self._method_look_at_1002852006 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_look_at_1002852006_name._native_ptr(), 1002852006)
        assert(Node3D._method_look_at_1002852006 != nil)
        let _method_look_at_from_position_735115603_name = StringName(from: "look_at_from_position")
        self._method_look_at_from_position_735115603 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_look_at_from_position_735115603_name._native_ptr(), 735115603)
        assert(Node3D._method_look_at_from_position_735115603 != nil)
        let _method_to_local_192990374_name = StringName(from: "to_local")
        self._method_to_local_192990374 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_to_local_192990374_name._native_ptr(), 192990374)
        assert(Node3D._method_to_local_192990374 != nil)
        let _method_to_global_192990374_name = StringName(from: "to_global")
        self._method_to_global_192990374 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_to_global_192990374_name._native_ptr(), 192990374)
        assert(Node3D._method_to_global_192990374 != nil)
    }

    public func set_transform(local: Transform3D)  {
        let local_native = local._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(local_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_transform_2952846383,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_transform() -> Transform3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_transform_3229777777,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(from: __resPtr.pointee)
    }
    public func set_position(position: Vector3)  {
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_position_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_position() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_position_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func set_rotation(euler_radians: Vector3)  {
        let euler_radians_native = euler_radians._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(euler_radians_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_rotation_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_rotation() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_rotation_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func set_rotation_degrees(euler_degrees: Vector3)  {
        let euler_degrees_native = euler_degrees._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(euler_degrees_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_rotation_degrees_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_rotation_degrees() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_rotation_degrees_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func set_rotation_order(order: EulerOrder)  {
        withUnsafePointer(to: order.rawValue) { order_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(order_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_rotation_order_1820889989,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_rotation_order() -> EulerOrder {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_rotation_order_916939469,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return EulerOrder(from: __resPtr.pointee)
    }
    public func set_rotation_edit_mode(edit_mode: Node3D.RotationEditMode)  {
        withUnsafePointer(to: edit_mode.rawValue) { edit_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(edit_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_rotation_edit_mode_141483330,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_rotation_edit_mode() -> Node3D.RotationEditMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_rotation_edit_mode_1572188370,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node3D.RotationEditMode(from: __resPtr.pointee)
    }
    public func set_scale(scale: Vector3)  {
        let scale_native = scale._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_scale_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_scale() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_scale_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func set_quaternion(quaternion: Quaternion)  {
        let quaternion_native = quaternion._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(quaternion_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_quaternion_1727505552,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_quaternion() -> Quaternion {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_quaternion_1222331677,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Quaternion(from: __resPtr.pointee)
    }
    public func set_basis(basis: Basis)  {
        let basis_native = basis._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(basis_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_basis_1055510324,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_basis() -> Basis {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_basis_2716978435,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Basis(from: __resPtr.pointee)
    }
    public func set_global_transform(global: Transform3D)  {
        let global_native = global._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(global_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_global_transform_2952846383,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_global_transform() -> Transform3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_global_transform_3229777777,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(from: __resPtr.pointee)
    }
    public func set_global_position(position: Vector3)  {
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_global_position_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_global_position() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_global_position_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func set_global_rotation(euler_radians: Vector3)  {
        let euler_radians_native = euler_radians._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(euler_radians_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_global_rotation_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_global_rotation() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_global_rotation_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func set_global_rotation_degrees(euler_degrees: Vector3)  {
        let euler_degrees_native = euler_degrees._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(euler_degrees_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_global_rotation_degrees_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_global_rotation_degrees() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_global_rotation_degrees_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func get_parent_node_3d() -> Node3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_parent_node_3d_151077316,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node3D(from: __resPtr.pointee)
    }
    public func set_ignore_transform_notification(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ignore_transform_notification_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_as_top_level(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_as_top_level_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_set_as_top_level_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_disable_scale(disable: UInt8)  {
        withUnsafePointer(to: disable) { disable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(disable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_disable_scale_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_scale_disabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_scale_disabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_world_3d() -> World3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_world_3d_317588385,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return World3D(from: __resPtr.pointee)
    }
    public func force_update_transform()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_force_update_transform_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_visibility_parent(path: NodePath)  {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_visibility_parent_1348162250,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_visibility_parent() -> NodePath {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_visibility_parent_4075236667,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(from: __resPtr.pointee)
    }
    public func update_gizmos()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_update_gizmos_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_gizmo(gizmo: Node3DGizmo)  {
        let gizmo_native = gizmo._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gizmo_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_gizmo_1544533845,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_gizmos() -> [Node3DGizmo] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_gizmos_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Node3DGizmo](from: __resPtr.pointee)
    }
    public func clear_gizmos()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_gizmos_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_subgizmo_selection(gizmo: Node3DGizmo, id: Int64, transform: Transform3D)  {
        withUnsafePointer(to: id) { id_native in
        let transform_native = transform._native_ptr()
        let gizmo_native = gizmo._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gizmo_native), .init(id_native), .init(transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_subgizmo_selection_3317607635,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func clear_subgizmo_selection()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_subgizmo_selection_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_visible(visible: UInt8)  {
        withUnsafePointer(to: visible) { visible_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(visible_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_visible_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_visible_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func is_visible_in_tree() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_visible_in_tree_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func show()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_show_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_hide_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_notify_local_transform(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_notify_local_transform_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_local_transform_notification_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_notify_transform(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_notify_transform_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_transform_notification_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func rotate(axis: Vector3, angle: Float64)  {
        withUnsafePointer(to: angle) { angle_native in
        let axis_native = axis._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(axis_native), .init(angle_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_rotate_3436291937,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func global_rotate(axis: Vector3, angle: Float64)  {
        withUnsafePointer(to: angle) { angle_native in
        let axis_native = axis._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(axis_native), .init(angle_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_rotate_3436291937,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func global_scale(scale: Vector3)  {
        let scale_native = scale._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_scale_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func global_translate(offset: Vector3)  {
        let offset_native = offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_translate_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func rotate_object_local(axis: Vector3, angle: Float64)  {
        withUnsafePointer(to: angle) { angle_native in
        let axis_native = axis._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(axis_native), .init(angle_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_rotate_object_local_3436291937,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func scale_object_local(scale: Vector3)  {
        let scale_native = scale._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_scale_object_local_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func translate_object_local(offset: Vector3)  {
        let offset_native = offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_translate_object_local_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func rotate_x(angle: Float64)  {
        withUnsafePointer(to: angle) { angle_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(angle_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_rotate_x_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func rotate_y(angle: Float64)  {
        withUnsafePointer(to: angle) { angle_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(angle_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_rotate_y_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func rotate_z(angle: Float64)  {
        withUnsafePointer(to: angle) { angle_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(angle_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_rotate_z_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func translate(offset: Vector3)  {
        let offset_native = offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_translate_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func orthonormalize()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_orthonormalize_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_identity()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_identity_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func look_at(target: Vector3, up: Vector3)  {
        let up_native = up._native_ptr()
        let target_native = target._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(target_native), .init(up_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_look_at_1002852006,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func look_at_from_position(position: Vector3, target: Vector3, up: Vector3)  {
        let up_native = up._native_ptr()
        let target_native = target._native_ptr()
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native), .init(target_native), .init(up_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_look_at_from_position_735115603,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func to_local(global_point: Vector3) -> Vector3 {
        let global_point_native = global_point._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(global_point_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_to_local_192990374,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func to_global(local_point: Vector3) -> Vector3 {
        let local_point_native = local_point._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(local_point_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_to_global_192990374,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
}