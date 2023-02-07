import godot_native

fileprivate var __godot_name_Area2D: StringName! = nil

/// 2D area for detection and physics and audio influence.
/// 
/// 2D area that detects [CollisionObject2D] nodes overlapping, entering, or exiting. Can also alter or override local physics parameters (gravity, damping) and route audio to custom audio buses.
///  
/// To give the area its shape, add a [CollisionShape2D] or a [CollisionPolygon2D] node as a [i]direct[/i] child (or add multiple such nodes as direct children) of the area.
///  
/// [b]Warning:[/b] See [ConcavePolygonShape2D] for a warning about possibly unexpected behavior when using that shape for an area.
public class Area2D : CollisionObject2D {

    public enum SpaceOverride : Int32 {
        case SPACE_OVERRIDE_DISABLED = 0
        case SPACE_OVERRIDE_COMBINE = 1
        case SPACE_OVERRIDE_COMBINE_REPLACE = 2
        case SPACE_OVERRIDE_REPLACE = 3
        case SPACE_OVERRIDE_REPLACE_COMBINE = 4
    }

    public override class var __godot_name: StringName { __godot_name_Area2D }

    static var _method_set_gravity_space_override_mode_2879900038: GDExtensionMethodBindPtr! = nil
    static var _method_get_gravity_space_override_mode_3990256304: GDExtensionMethodBindPtr! = nil
    static var _method_set_gravity_is_point_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_gravity_a_point_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_gravity_point_unit_distance_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_gravity_point_unit_distance_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_gravity_point_center_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_gravity_point_center_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_gravity_direction_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_gravity_direction_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_gravity_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_gravity_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_linear_damp_space_override_mode_2879900038: GDExtensionMethodBindPtr! = nil
    static var _method_get_linear_damp_space_override_mode_3990256304: GDExtensionMethodBindPtr! = nil
    static var _method_set_angular_damp_space_override_mode_2879900038: GDExtensionMethodBindPtr! = nil
    static var _method_get_angular_damp_space_override_mode_3990256304: GDExtensionMethodBindPtr! = nil
    static var _method_set_linear_damp_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_linear_damp_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_angular_damp_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_angular_damp_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_priority_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_priority_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_monitoring_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_monitoring_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_monitorable_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_monitorable_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_overlapping_bodies_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_get_overlapping_areas_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_has_overlapping_bodies_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_has_overlapping_areas_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_overlaps_body_3093956946: GDExtensionMethodBindPtr! = nil
    static var _method_overlaps_area_3093956946: GDExtensionMethodBindPtr! = nil
    static var _method_set_audio_bus_name_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_get_audio_bus_name_2002593661: GDExtensionMethodBindPtr! = nil
    static var _method_set_audio_bus_override_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_overriding_audio_bus_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Area2D = StringName(from: "Area2D")

        let _method_set_gravity_space_override_mode_2879900038_name = StringName(from: "set_gravity_space_override_mode")
        self._method_set_gravity_space_override_mode_2879900038 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_gravity_space_override_mode_2879900038_name._native_ptr(), 2879900038)
        assert(Area2D._method_set_gravity_space_override_mode_2879900038 != nil)
        let _method_get_gravity_space_override_mode_3990256304_name = StringName(from: "get_gravity_space_override_mode")
        self._method_get_gravity_space_override_mode_3990256304 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_gravity_space_override_mode_3990256304_name._native_ptr(), 3990256304)
        assert(Area2D._method_get_gravity_space_override_mode_3990256304 != nil)
        let _method_set_gravity_is_point_2586408642_name = StringName(from: "set_gravity_is_point")
        self._method_set_gravity_is_point_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_gravity_is_point_2586408642_name._native_ptr(), 2586408642)
        assert(Area2D._method_set_gravity_is_point_2586408642 != nil)
        let _method_is_gravity_a_point_36873697_name = StringName(from: "is_gravity_a_point")
        self._method_is_gravity_a_point_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_gravity_a_point_36873697_name._native_ptr(), 36873697)
        assert(Area2D._method_is_gravity_a_point_36873697 != nil)
        let _method_set_gravity_point_unit_distance_373806689_name = StringName(from: "set_gravity_point_unit_distance")
        self._method_set_gravity_point_unit_distance_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_gravity_point_unit_distance_373806689_name._native_ptr(), 373806689)
        assert(Area2D._method_set_gravity_point_unit_distance_373806689 != nil)
        let _method_get_gravity_point_unit_distance_1740695150_name = StringName(from: "get_gravity_point_unit_distance")
        self._method_get_gravity_point_unit_distance_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_gravity_point_unit_distance_1740695150_name._native_ptr(), 1740695150)
        assert(Area2D._method_get_gravity_point_unit_distance_1740695150 != nil)
        let _method_set_gravity_point_center_743155724_name = StringName(from: "set_gravity_point_center")
        self._method_set_gravity_point_center_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_gravity_point_center_743155724_name._native_ptr(), 743155724)
        assert(Area2D._method_set_gravity_point_center_743155724 != nil)
        let _method_get_gravity_point_center_3341600327_name = StringName(from: "get_gravity_point_center")
        self._method_get_gravity_point_center_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_gravity_point_center_3341600327_name._native_ptr(), 3341600327)
        assert(Area2D._method_get_gravity_point_center_3341600327 != nil)
        let _method_set_gravity_direction_743155724_name = StringName(from: "set_gravity_direction")
        self._method_set_gravity_direction_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_gravity_direction_743155724_name._native_ptr(), 743155724)
        assert(Area2D._method_set_gravity_direction_743155724 != nil)
        let _method_get_gravity_direction_3341600327_name = StringName(from: "get_gravity_direction")
        self._method_get_gravity_direction_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_gravity_direction_3341600327_name._native_ptr(), 3341600327)
        assert(Area2D._method_get_gravity_direction_3341600327 != nil)
        let _method_set_gravity_373806689_name = StringName(from: "set_gravity")
        self._method_set_gravity_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_gravity_373806689_name._native_ptr(), 373806689)
        assert(Area2D._method_set_gravity_373806689 != nil)
        let _method_get_gravity_1740695150_name = StringName(from: "get_gravity")
        self._method_get_gravity_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_gravity_1740695150_name._native_ptr(), 1740695150)
        assert(Area2D._method_get_gravity_1740695150 != nil)
        let _method_set_linear_damp_space_override_mode_2879900038_name = StringName(from: "set_linear_damp_space_override_mode")
        self._method_set_linear_damp_space_override_mode_2879900038 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_linear_damp_space_override_mode_2879900038_name._native_ptr(), 2879900038)
        assert(Area2D._method_set_linear_damp_space_override_mode_2879900038 != nil)
        let _method_get_linear_damp_space_override_mode_3990256304_name = StringName(from: "get_linear_damp_space_override_mode")
        self._method_get_linear_damp_space_override_mode_3990256304 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_linear_damp_space_override_mode_3990256304_name._native_ptr(), 3990256304)
        assert(Area2D._method_get_linear_damp_space_override_mode_3990256304 != nil)
        let _method_set_angular_damp_space_override_mode_2879900038_name = StringName(from: "set_angular_damp_space_override_mode")
        self._method_set_angular_damp_space_override_mode_2879900038 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_angular_damp_space_override_mode_2879900038_name._native_ptr(), 2879900038)
        assert(Area2D._method_set_angular_damp_space_override_mode_2879900038 != nil)
        let _method_get_angular_damp_space_override_mode_3990256304_name = StringName(from: "get_angular_damp_space_override_mode")
        self._method_get_angular_damp_space_override_mode_3990256304 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_angular_damp_space_override_mode_3990256304_name._native_ptr(), 3990256304)
        assert(Area2D._method_get_angular_damp_space_override_mode_3990256304 != nil)
        let _method_set_linear_damp_373806689_name = StringName(from: "set_linear_damp")
        self._method_set_linear_damp_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_linear_damp_373806689_name._native_ptr(), 373806689)
        assert(Area2D._method_set_linear_damp_373806689 != nil)
        let _method_get_linear_damp_1740695150_name = StringName(from: "get_linear_damp")
        self._method_get_linear_damp_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_linear_damp_1740695150_name._native_ptr(), 1740695150)
        assert(Area2D._method_get_linear_damp_1740695150 != nil)
        let _method_set_angular_damp_373806689_name = StringName(from: "set_angular_damp")
        self._method_set_angular_damp_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_angular_damp_373806689_name._native_ptr(), 373806689)
        assert(Area2D._method_set_angular_damp_373806689 != nil)
        let _method_get_angular_damp_1740695150_name = StringName(from: "get_angular_damp")
        self._method_get_angular_damp_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_angular_damp_1740695150_name._native_ptr(), 1740695150)
        assert(Area2D._method_get_angular_damp_1740695150 != nil)
        let _method_set_priority_373806689_name = StringName(from: "set_priority")
        self._method_set_priority_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_priority_373806689_name._native_ptr(), 373806689)
        assert(Area2D._method_set_priority_373806689 != nil)
        let _method_get_priority_1740695150_name = StringName(from: "get_priority")
        self._method_get_priority_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_priority_1740695150_name._native_ptr(), 1740695150)
        assert(Area2D._method_get_priority_1740695150 != nil)
        let _method_set_monitoring_2586408642_name = StringName(from: "set_monitoring")
        self._method_set_monitoring_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_monitoring_2586408642_name._native_ptr(), 2586408642)
        assert(Area2D._method_set_monitoring_2586408642 != nil)
        let _method_is_monitoring_36873697_name = StringName(from: "is_monitoring")
        self._method_is_monitoring_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_monitoring_36873697_name._native_ptr(), 36873697)
        assert(Area2D._method_is_monitoring_36873697 != nil)
        let _method_set_monitorable_2586408642_name = StringName(from: "set_monitorable")
        self._method_set_monitorable_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_monitorable_2586408642_name._native_ptr(), 2586408642)
        assert(Area2D._method_set_monitorable_2586408642 != nil)
        let _method_is_monitorable_36873697_name = StringName(from: "is_monitorable")
        self._method_is_monitorable_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_monitorable_36873697_name._native_ptr(), 36873697)
        assert(Area2D._method_is_monitorable_36873697 != nil)
        let _method_get_overlapping_bodies_3995934104_name = StringName(from: "get_overlapping_bodies")
        self._method_get_overlapping_bodies_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_overlapping_bodies_3995934104_name._native_ptr(), 3995934104)
        assert(Area2D._method_get_overlapping_bodies_3995934104 != nil)
        let _method_get_overlapping_areas_3995934104_name = StringName(from: "get_overlapping_areas")
        self._method_get_overlapping_areas_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_overlapping_areas_3995934104_name._native_ptr(), 3995934104)
        assert(Area2D._method_get_overlapping_areas_3995934104 != nil)
        let _method_has_overlapping_bodies_36873697_name = StringName(from: "has_overlapping_bodies")
        self._method_has_overlapping_bodies_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_overlapping_bodies_36873697_name._native_ptr(), 36873697)
        assert(Area2D._method_has_overlapping_bodies_36873697 != nil)
        let _method_has_overlapping_areas_36873697_name = StringName(from: "has_overlapping_areas")
        self._method_has_overlapping_areas_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_overlapping_areas_36873697_name._native_ptr(), 36873697)
        assert(Area2D._method_has_overlapping_areas_36873697 != nil)
        let _method_overlaps_body_3093956946_name = StringName(from: "overlaps_body")
        self._method_overlaps_body_3093956946 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_overlaps_body_3093956946_name._native_ptr(), 3093956946)
        assert(Area2D._method_overlaps_body_3093956946 != nil)
        let _method_overlaps_area_3093956946_name = StringName(from: "overlaps_area")
        self._method_overlaps_area_3093956946 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_overlaps_area_3093956946_name._native_ptr(), 3093956946)
        assert(Area2D._method_overlaps_area_3093956946 != nil)
        let _method_set_audio_bus_name_3304788590_name = StringName(from: "set_audio_bus_name")
        self._method_set_audio_bus_name_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_audio_bus_name_3304788590_name._native_ptr(), 3304788590)
        assert(Area2D._method_set_audio_bus_name_3304788590 != nil)
        let _method_get_audio_bus_name_2002593661_name = StringName(from: "get_audio_bus_name")
        self._method_get_audio_bus_name_2002593661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_audio_bus_name_2002593661_name._native_ptr(), 2002593661)
        assert(Area2D._method_get_audio_bus_name_2002593661 != nil)
        let _method_set_audio_bus_override_2586408642_name = StringName(from: "set_audio_bus_override")
        self._method_set_audio_bus_override_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_audio_bus_override_2586408642_name._native_ptr(), 2586408642)
        assert(Area2D._method_set_audio_bus_override_2586408642 != nil)
        let _method_is_overriding_audio_bus_36873697_name = StringName(from: "is_overriding_audio_bus")
        self._method_is_overriding_audio_bus_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_overriding_audio_bus_36873697_name._native_ptr(), 36873697)
        assert(Area2D._method_is_overriding_audio_bus_36873697 != nil)
    }

    public func set_gravity_space_override_mode(space_override_mode: Area2D.SpaceOverride)  {
        withUnsafePointer(to: space_override_mode.rawValue) { space_override_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(space_override_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_gravity_space_override_mode_2879900038,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_gravity_space_override_mode() -> Area2D.SpaceOverride {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_gravity_space_override_mode_3990256304,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Area2D.SpaceOverride(from: __resPtr.pointee)
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
    public func set_gravity_point_center(center: Vector2)  {
        let center_native = center._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(center_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_gravity_point_center_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_gravity_point_center() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_gravity_point_center_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func set_gravity_direction(direction: Vector2)  {
        let direction_native = direction._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(direction_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_gravity_direction_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_gravity_direction() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_gravity_direction_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
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
    public func set_linear_damp_space_override_mode(space_override_mode: Area2D.SpaceOverride)  {
        withUnsafePointer(to: space_override_mode.rawValue) { space_override_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(space_override_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_linear_damp_space_override_mode_2879900038,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_linear_damp_space_override_mode() -> Area2D.SpaceOverride {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_linear_damp_space_override_mode_3990256304,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Area2D.SpaceOverride(from: __resPtr.pointee)
    }
    public func set_angular_damp_space_override_mode(space_override_mode: Area2D.SpaceOverride)  {
        withUnsafePointer(to: space_override_mode.rawValue) { space_override_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(space_override_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_angular_damp_space_override_mode_2879900038,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_angular_damp_space_override_mode() -> Area2D.SpaceOverride {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_angular_damp_space_override_mode_3990256304,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Area2D.SpaceOverride(from: __resPtr.pointee)
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
    public func get_overlapping_bodies() -> [Node2D] {
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
            return [Node2D](from: __resPtr.pointee)
    }
    public func get_overlapping_areas() -> [Area2D] {
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
            return [Area2D](from: __resPtr.pointee)
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
}