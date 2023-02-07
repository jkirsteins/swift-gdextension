import godot_native

fileprivate var __godot_name_Area3D: StringName! = nil

/// 3D area for detection and physics and audio influence.
/// 
/// 3D area that detects [CollisionObject3D] nodes overlapping, entering, or exiting. Can also alter or override local physics parameters (gravity, damping) and route audio to custom audio buses.
///  
/// To give the area its shape, add a [CollisionShape3D] or a [CollisionPolygon3D] node as a [i]direct[/i] child (or add multiple such nodes as direct children) of the area.
///  
/// [b]Warning:[/b] See [ConcavePolygonShape3D] (also called "trimesh") for a warning about possibly unexpected behavior when using that shape for an area.
///  
/// [b]Warning:[/b] With a non-uniform scale this node will probably not function as expected. Please make sure to keep its scale uniform (i.e. the same on all axes), and change the size(s) of its collision shape(s) instead.
public class Area3D : CollisionObject3D {

    public enum SpaceOverride : Int32 {
        case SPACE_OVERRIDE_DISABLED = 0
        case SPACE_OVERRIDE_COMBINE = 1
        case SPACE_OVERRIDE_COMBINE_REPLACE = 2
        case SPACE_OVERRIDE_REPLACE = 3
        case SPACE_OVERRIDE_REPLACE_COMBINE = 4
    }

    public override class var __godot_name: StringName { __godot_name_Area3D }

    static var _method_set_gravity_space_override_mode_2311433571: GDExtensionMethodBindPtr! = nil
    static var _method_get_gravity_space_override_mode_958191869: GDExtensionMethodBindPtr! = nil
    static var _method_set_gravity_is_point_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_gravity_a_point_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_gravity_point_unit_distance_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_gravity_point_unit_distance_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_gravity_point_center_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_gravity_point_center_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_gravity_direction_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_gravity_direction_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_gravity_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_gravity_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_linear_damp_space_override_mode_2311433571: GDExtensionMethodBindPtr! = nil
    static var _method_get_linear_damp_space_override_mode_958191869: GDExtensionMethodBindPtr! = nil
    static var _method_set_angular_damp_space_override_mode_2311433571: GDExtensionMethodBindPtr! = nil
    static var _method_get_angular_damp_space_override_mode_958191869: GDExtensionMethodBindPtr! = nil
    static var _method_set_angular_damp_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_angular_damp_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_linear_damp_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_linear_damp_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_priority_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_priority_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_wind_force_magnitude_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_wind_force_magnitude_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_wind_attenuation_factor_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_wind_attenuation_factor_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_wind_source_path_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_wind_source_path_4075236667: GDExtensionMethodBindPtr! = nil
    static var _method_set_monitorable_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_monitorable_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_monitoring_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_monitoring_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_overlapping_bodies_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_get_overlapping_areas_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_has_overlapping_bodies_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_has_overlapping_areas_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_overlaps_body_3093956946: GDExtensionMethodBindPtr! = nil
    static var _method_overlaps_area_3093956946: GDExtensionMethodBindPtr! = nil
    static var _method_set_audio_bus_override_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_overriding_audio_bus_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_audio_bus_name_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_get_audio_bus_name_2002593661: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_reverb_bus_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_using_reverb_bus_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_reverb_bus_name_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_get_reverb_bus_name_2002593661: GDExtensionMethodBindPtr! = nil
    static var _method_set_reverb_amount_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_reverb_amount_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_reverb_uniformity_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_reverb_uniformity_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Area3D = StringName(from: "Area3D")

        let _method_set_gravity_space_override_mode_2311433571_name = StringName(from: "set_gravity_space_override_mode")
        self._method_set_gravity_space_override_mode_2311433571 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_gravity_space_override_mode_2311433571_name._native_ptr(), 2311433571)
        assert(Area3D._method_set_gravity_space_override_mode_2311433571 != nil)
        let _method_get_gravity_space_override_mode_958191869_name = StringName(from: "get_gravity_space_override_mode")
        self._method_get_gravity_space_override_mode_958191869 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_gravity_space_override_mode_958191869_name._native_ptr(), 958191869)
        assert(Area3D._method_get_gravity_space_override_mode_958191869 != nil)
        let _method_set_gravity_is_point_2586408642_name = StringName(from: "set_gravity_is_point")
        self._method_set_gravity_is_point_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_gravity_is_point_2586408642_name._native_ptr(), 2586408642)
        assert(Area3D._method_set_gravity_is_point_2586408642 != nil)
        let _method_is_gravity_a_point_36873697_name = StringName(from: "is_gravity_a_point")
        self._method_is_gravity_a_point_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_gravity_a_point_36873697_name._native_ptr(), 36873697)
        assert(Area3D._method_is_gravity_a_point_36873697 != nil)
        let _method_set_gravity_point_unit_distance_373806689_name = StringName(from: "set_gravity_point_unit_distance")
        self._method_set_gravity_point_unit_distance_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_gravity_point_unit_distance_373806689_name._native_ptr(), 373806689)
        assert(Area3D._method_set_gravity_point_unit_distance_373806689 != nil)
        let _method_get_gravity_point_unit_distance_1740695150_name = StringName(from: "get_gravity_point_unit_distance")
        self._method_get_gravity_point_unit_distance_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_gravity_point_unit_distance_1740695150_name._native_ptr(), 1740695150)
        assert(Area3D._method_get_gravity_point_unit_distance_1740695150 != nil)
        let _method_set_gravity_point_center_3460891852_name = StringName(from: "set_gravity_point_center")
        self._method_set_gravity_point_center_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_gravity_point_center_3460891852_name._native_ptr(), 3460891852)
        assert(Area3D._method_set_gravity_point_center_3460891852 != nil)
        let _method_get_gravity_point_center_3360562783_name = StringName(from: "get_gravity_point_center")
        self._method_get_gravity_point_center_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_gravity_point_center_3360562783_name._native_ptr(), 3360562783)
        assert(Area3D._method_get_gravity_point_center_3360562783 != nil)
        let _method_set_gravity_direction_3460891852_name = StringName(from: "set_gravity_direction")
        self._method_set_gravity_direction_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_gravity_direction_3460891852_name._native_ptr(), 3460891852)
        assert(Area3D._method_set_gravity_direction_3460891852 != nil)
        let _method_get_gravity_direction_3360562783_name = StringName(from: "get_gravity_direction")
        self._method_get_gravity_direction_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_gravity_direction_3360562783_name._native_ptr(), 3360562783)
        assert(Area3D._method_get_gravity_direction_3360562783 != nil)
        let _method_set_gravity_373806689_name = StringName(from: "set_gravity")
        self._method_set_gravity_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_gravity_373806689_name._native_ptr(), 373806689)
        assert(Area3D._method_set_gravity_373806689 != nil)
        let _method_get_gravity_1740695150_name = StringName(from: "get_gravity")
        self._method_get_gravity_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_gravity_1740695150_name._native_ptr(), 1740695150)
        assert(Area3D._method_get_gravity_1740695150 != nil)
        let _method_set_linear_damp_space_override_mode_2311433571_name = StringName(from: "set_linear_damp_space_override_mode")
        self._method_set_linear_damp_space_override_mode_2311433571 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_linear_damp_space_override_mode_2311433571_name._native_ptr(), 2311433571)
        assert(Area3D._method_set_linear_damp_space_override_mode_2311433571 != nil)
        let _method_get_linear_damp_space_override_mode_958191869_name = StringName(from: "get_linear_damp_space_override_mode")
        self._method_get_linear_damp_space_override_mode_958191869 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_linear_damp_space_override_mode_958191869_name._native_ptr(), 958191869)
        assert(Area3D._method_get_linear_damp_space_override_mode_958191869 != nil)
        let _method_set_angular_damp_space_override_mode_2311433571_name = StringName(from: "set_angular_damp_space_override_mode")
        self._method_set_angular_damp_space_override_mode_2311433571 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_angular_damp_space_override_mode_2311433571_name._native_ptr(), 2311433571)
        assert(Area3D._method_set_angular_damp_space_override_mode_2311433571 != nil)
        let _method_get_angular_damp_space_override_mode_958191869_name = StringName(from: "get_angular_damp_space_override_mode")
        self._method_get_angular_damp_space_override_mode_958191869 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_angular_damp_space_override_mode_958191869_name._native_ptr(), 958191869)
        assert(Area3D._method_get_angular_damp_space_override_mode_958191869 != nil)
        let _method_set_angular_damp_373806689_name = StringName(from: "set_angular_damp")
        self._method_set_angular_damp_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_angular_damp_373806689_name._native_ptr(), 373806689)
        assert(Area3D._method_set_angular_damp_373806689 != nil)
        let _method_get_angular_damp_1740695150_name = StringName(from: "get_angular_damp")
        self._method_get_angular_damp_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_angular_damp_1740695150_name._native_ptr(), 1740695150)
        assert(Area3D._method_get_angular_damp_1740695150 != nil)
        let _method_set_linear_damp_373806689_name = StringName(from: "set_linear_damp")
        self._method_set_linear_damp_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_linear_damp_373806689_name._native_ptr(), 373806689)
        assert(Area3D._method_set_linear_damp_373806689 != nil)
        let _method_get_linear_damp_1740695150_name = StringName(from: "get_linear_damp")
        self._method_get_linear_damp_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_linear_damp_1740695150_name._native_ptr(), 1740695150)
        assert(Area3D._method_get_linear_damp_1740695150 != nil)
        let _method_set_priority_373806689_name = StringName(from: "set_priority")
        self._method_set_priority_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_priority_373806689_name._native_ptr(), 373806689)
        assert(Area3D._method_set_priority_373806689 != nil)
        let _method_get_priority_1740695150_name = StringName(from: "get_priority")
        self._method_get_priority_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_priority_1740695150_name._native_ptr(), 1740695150)
        assert(Area3D._method_get_priority_1740695150 != nil)
        let _method_set_wind_force_magnitude_373806689_name = StringName(from: "set_wind_force_magnitude")
        self._method_set_wind_force_magnitude_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_wind_force_magnitude_373806689_name._native_ptr(), 373806689)
        assert(Area3D._method_set_wind_force_magnitude_373806689 != nil)
        let _method_get_wind_force_magnitude_1740695150_name = StringName(from: "get_wind_force_magnitude")
        self._method_get_wind_force_magnitude_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_wind_force_magnitude_1740695150_name._native_ptr(), 1740695150)
        assert(Area3D._method_get_wind_force_magnitude_1740695150 != nil)
        let _method_set_wind_attenuation_factor_373806689_name = StringName(from: "set_wind_attenuation_factor")
        self._method_set_wind_attenuation_factor_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_wind_attenuation_factor_373806689_name._native_ptr(), 373806689)
        assert(Area3D._method_set_wind_attenuation_factor_373806689 != nil)
        let _method_get_wind_attenuation_factor_1740695150_name = StringName(from: "get_wind_attenuation_factor")
        self._method_get_wind_attenuation_factor_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_wind_attenuation_factor_1740695150_name._native_ptr(), 1740695150)
        assert(Area3D._method_get_wind_attenuation_factor_1740695150 != nil)
        let _method_set_wind_source_path_1348162250_name = StringName(from: "set_wind_source_path")
        self._method_set_wind_source_path_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_wind_source_path_1348162250_name._native_ptr(), 1348162250)
        assert(Area3D._method_set_wind_source_path_1348162250 != nil)
        let _method_get_wind_source_path_4075236667_name = StringName(from: "get_wind_source_path")
        self._method_get_wind_source_path_4075236667 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_wind_source_path_4075236667_name._native_ptr(), 4075236667)
        assert(Area3D._method_get_wind_source_path_4075236667 != nil)
        let _method_set_monitorable_2586408642_name = StringName(from: "set_monitorable")
        self._method_set_monitorable_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_monitorable_2586408642_name._native_ptr(), 2586408642)
        assert(Area3D._method_set_monitorable_2586408642 != nil)
        let _method_is_monitorable_36873697_name = StringName(from: "is_monitorable")
        self._method_is_monitorable_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_monitorable_36873697_name._native_ptr(), 36873697)
        assert(Area3D._method_is_monitorable_36873697 != nil)
        let _method_set_monitoring_2586408642_name = StringName(from: "set_monitoring")
        self._method_set_monitoring_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_monitoring_2586408642_name._native_ptr(), 2586408642)
        assert(Area3D._method_set_monitoring_2586408642 != nil)
        let _method_is_monitoring_36873697_name = StringName(from: "is_monitoring")
        self._method_is_monitoring_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_monitoring_36873697_name._native_ptr(), 36873697)
        assert(Area3D._method_is_monitoring_36873697 != nil)
        let _method_get_overlapping_bodies_3995934104_name = StringName(from: "get_overlapping_bodies")
        self._method_get_overlapping_bodies_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_overlapping_bodies_3995934104_name._native_ptr(), 3995934104)
        assert(Area3D._method_get_overlapping_bodies_3995934104 != nil)
        let _method_get_overlapping_areas_3995934104_name = StringName(from: "get_overlapping_areas")
        self._method_get_overlapping_areas_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_overlapping_areas_3995934104_name._native_ptr(), 3995934104)
        assert(Area3D._method_get_overlapping_areas_3995934104 != nil)
        let _method_has_overlapping_bodies_36873697_name = StringName(from: "has_overlapping_bodies")
        self._method_has_overlapping_bodies_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_overlapping_bodies_36873697_name._native_ptr(), 36873697)
        assert(Area3D._method_has_overlapping_bodies_36873697 != nil)
        let _method_has_overlapping_areas_36873697_name = StringName(from: "has_overlapping_areas")
        self._method_has_overlapping_areas_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_overlapping_areas_36873697_name._native_ptr(), 36873697)
        assert(Area3D._method_has_overlapping_areas_36873697 != nil)
        let _method_overlaps_body_3093956946_name = StringName(from: "overlaps_body")
        self._method_overlaps_body_3093956946 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_overlaps_body_3093956946_name._native_ptr(), 3093956946)
        assert(Area3D._method_overlaps_body_3093956946 != nil)
        let _method_overlaps_area_3093956946_name = StringName(from: "overlaps_area")
        self._method_overlaps_area_3093956946 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_overlaps_area_3093956946_name._native_ptr(), 3093956946)
        assert(Area3D._method_overlaps_area_3093956946 != nil)
        let _method_set_audio_bus_override_2586408642_name = StringName(from: "set_audio_bus_override")
        self._method_set_audio_bus_override_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_audio_bus_override_2586408642_name._native_ptr(), 2586408642)
        assert(Area3D._method_set_audio_bus_override_2586408642 != nil)
        let _method_is_overriding_audio_bus_36873697_name = StringName(from: "is_overriding_audio_bus")
        self._method_is_overriding_audio_bus_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_overriding_audio_bus_36873697_name._native_ptr(), 36873697)
        assert(Area3D._method_is_overriding_audio_bus_36873697 != nil)
        let _method_set_audio_bus_name_3304788590_name = StringName(from: "set_audio_bus_name")
        self._method_set_audio_bus_name_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_audio_bus_name_3304788590_name._native_ptr(), 3304788590)
        assert(Area3D._method_set_audio_bus_name_3304788590 != nil)
        let _method_get_audio_bus_name_2002593661_name = StringName(from: "get_audio_bus_name")
        self._method_get_audio_bus_name_2002593661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_audio_bus_name_2002593661_name._native_ptr(), 2002593661)
        assert(Area3D._method_get_audio_bus_name_2002593661 != nil)
        let _method_set_use_reverb_bus_2586408642_name = StringName(from: "set_use_reverb_bus")
        self._method_set_use_reverb_bus_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_use_reverb_bus_2586408642_name._native_ptr(), 2586408642)
        assert(Area3D._method_set_use_reverb_bus_2586408642 != nil)
        let _method_is_using_reverb_bus_36873697_name = StringName(from: "is_using_reverb_bus")
        self._method_is_using_reverb_bus_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_using_reverb_bus_36873697_name._native_ptr(), 36873697)
        assert(Area3D._method_is_using_reverb_bus_36873697 != nil)
        let _method_set_reverb_bus_name_3304788590_name = StringName(from: "set_reverb_bus_name")
        self._method_set_reverb_bus_name_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_reverb_bus_name_3304788590_name._native_ptr(), 3304788590)
        assert(Area3D._method_set_reverb_bus_name_3304788590 != nil)
        let _method_get_reverb_bus_name_2002593661_name = StringName(from: "get_reverb_bus_name")
        self._method_get_reverb_bus_name_2002593661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_reverb_bus_name_2002593661_name._native_ptr(), 2002593661)
        assert(Area3D._method_get_reverb_bus_name_2002593661 != nil)
        let _method_set_reverb_amount_373806689_name = StringName(from: "set_reverb_amount")
        self._method_set_reverb_amount_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_reverb_amount_373806689_name._native_ptr(), 373806689)
        assert(Area3D._method_set_reverb_amount_373806689 != nil)
        let _method_get_reverb_amount_1740695150_name = StringName(from: "get_reverb_amount")
        self._method_get_reverb_amount_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_reverb_amount_1740695150_name._native_ptr(), 1740695150)
        assert(Area3D._method_get_reverb_amount_1740695150 != nil)
        let _method_set_reverb_uniformity_373806689_name = StringName(from: "set_reverb_uniformity")
        self._method_set_reverb_uniformity_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_reverb_uniformity_373806689_name._native_ptr(), 373806689)
        assert(Area3D._method_set_reverb_uniformity_373806689 != nil)
        let _method_get_reverb_uniformity_1740695150_name = StringName(from: "get_reverb_uniformity")
        self._method_get_reverb_uniformity_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_reverb_uniformity_1740695150_name._native_ptr(), 1740695150)
        assert(Area3D._method_get_reverb_uniformity_1740695150 != nil)
    }

    public func set_gravity_space_override_mode(space_override_mode: Area3D.SpaceOverride)  {
        withUnsafePointer(to: space_override_mode.rawValue) { space_override_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(space_override_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_gravity_space_override_mode_2311433571,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_gravity_space_override_mode() -> Area3D.SpaceOverride {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_gravity_space_override_mode_958191869,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Area3D.SpaceOverride(from: __resPtr.pointee)
    }
    public func set_gravity_is_point(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_gravity_is_point_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_gravity_a_point() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_gravity_a_point_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_gravity_point_unit_distance(distance_scale: Float64)  {
        withUnsafePointer(to: distance_scale) { distance_scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(distance_scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_gravity_point_unit_distance_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_gravity_point_unit_distance() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_gravity_point_unit_distance_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_gravity_point_center(center: Vector3)  {
        let center_native = center._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(center_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_gravity_point_center_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_gravity_point_center() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_gravity_point_center_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func set_gravity_direction(direction: Vector3)  {
        let direction_native = direction._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(direction_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_gravity_direction_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_gravity_direction() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_gravity_direction_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func set_gravity(gravity: Float64)  {
        withUnsafePointer(to: gravity) { gravity_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gravity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_gravity_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_gravity() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_gravity_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_linear_damp_space_override_mode(space_override_mode: Area3D.SpaceOverride)  {
        withUnsafePointer(to: space_override_mode.rawValue) { space_override_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(space_override_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_linear_damp_space_override_mode_2311433571,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_linear_damp_space_override_mode() -> Area3D.SpaceOverride {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_linear_damp_space_override_mode_958191869,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Area3D.SpaceOverride(from: __resPtr.pointee)
    }
    public func set_angular_damp_space_override_mode(space_override_mode: Area3D.SpaceOverride)  {
        withUnsafePointer(to: space_override_mode.rawValue) { space_override_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(space_override_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_angular_damp_space_override_mode_2311433571,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_angular_damp_space_override_mode() -> Area3D.SpaceOverride {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_angular_damp_space_override_mode_958191869,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Area3D.SpaceOverride(from: __resPtr.pointee)
    }
    public func set_angular_damp(angular_damp: Float64)  {
        withUnsafePointer(to: angular_damp) { angular_damp_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(angular_damp_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_angular_damp_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_angular_damp() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_angular_damp_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_linear_damp(linear_damp: Float64)  {
        withUnsafePointer(to: linear_damp) { linear_damp_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(linear_damp_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_linear_damp_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_linear_damp() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_linear_damp_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_priority(priority: Float64)  {
        withUnsafePointer(to: priority) { priority_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(priority_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_priority_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_priority() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_priority_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_wind_force_magnitude(wind_force_magnitude: Float64)  {
        withUnsafePointer(to: wind_force_magnitude) { wind_force_magnitude_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(wind_force_magnitude_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_wind_force_magnitude_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_wind_force_magnitude() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_wind_force_magnitude_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_wind_attenuation_factor(wind_attenuation_factor: Float64)  {
        withUnsafePointer(to: wind_attenuation_factor) { wind_attenuation_factor_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(wind_attenuation_factor_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_wind_attenuation_factor_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_wind_attenuation_factor() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_wind_attenuation_factor_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_wind_source_path(wind_source_path: NodePath)  {
        let wind_source_path_native = wind_source_path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(wind_source_path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_wind_source_path_1348162250,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_wind_source_path() -> NodePath {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_wind_source_path_4075236667,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(from: __resPtr.pointee)
    }
    public func set_monitorable(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_monitorable_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_monitorable() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_monitorable_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_monitoring(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_monitoring_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_monitoring() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_monitoring_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_overlapping_bodies() -> [Node3D] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_overlapping_bodies_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Node3D](from: __resPtr.pointee)
    }
    public func get_overlapping_areas() -> [Area3D] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_overlapping_areas_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Area3D](from: __resPtr.pointee)
    }
    public func has_overlapping_bodies() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_overlapping_bodies_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func has_overlapping_areas() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_overlapping_areas_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func overlaps_body(body: Node) -> UInt8 {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_overlaps_body_3093956946,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func overlaps_area(area: Node) -> UInt8 {
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_overlaps_area_3093956946,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_audio_bus_override(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_audio_bus_override_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_overriding_audio_bus() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_overriding_audio_bus_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_audio_bus_name(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_audio_bus_name_3304788590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_audio_bus_name() -> StringName {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_audio_bus_name_2002593661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(from: __resPtr.pointee)
    }
    public func set_use_reverb_bus(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_use_reverb_bus_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_using_reverb_bus() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_using_reverb_bus_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_reverb_bus_name(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_reverb_bus_name_3304788590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_reverb_bus_name() -> StringName {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_reverb_bus_name_2002593661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(from: __resPtr.pointee)
    }
    public func set_reverb_amount(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_reverb_amount_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_reverb_amount() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_reverb_amount_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_reverb_uniformity(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_reverb_uniformity_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_reverb_uniformity() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_reverb_uniformity_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
}