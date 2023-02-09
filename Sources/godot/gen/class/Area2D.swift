import godot_native

fileprivate var __godot_name_Area2D: StringName! = nil

/// 2D area for detection and physics and audio influence.
/// 
/// 2D area that detects [CollisionObject2D] nodes overlapping, entering, or exiting. Can also alter or override local physics parameters (gravity, damping) and route audio to custom audio buses.
///  
/// To give the area its shape, add a [CollisionShape2D] or a [CollisionPolygon2D] node as a [i]direct[/i] child (or add multiple such nodes as direct children) of the area.
///  
/// [b]Warning:[/b] See [ConcavePolygonShape2D] for a warning about possibly unexpected behavior when using that shape for an area.
open class Area2D : CollisionObject2D {

    public enum SpaceOverride : Int32 {
        case SPACE_OVERRIDE_DISABLED = 0
        case SPACE_OVERRIDE_COMBINE = 1
        case SPACE_OVERRIDE_COMBINE_REPLACE = 2
        case SPACE_OVERRIDE_REPLACE = 3
        case SPACE_OVERRIDE_REPLACE_COMBINE = 4
    }

    public override class var __godot_name: StringName { __godot_name_Area2D }

    static var _method_set_gravity_space_override_mode_2879900038: StringName! = nil
    static var _method_get_gravity_space_override_mode_3990256304: StringName! = nil
    static var _method_set_gravity_is_point_2586408642: StringName! = nil
    static var _method_is_gravity_a_point_36873697: StringName! = nil
    static var _method_set_gravity_point_unit_distance_373806689: StringName! = nil
    static var _method_get_gravity_point_unit_distance_1740695150: StringName! = nil
    static var _method_set_gravity_point_center_743155724: StringName! = nil
    static var _method_get_gravity_point_center_3341600327: StringName! = nil
    static var _method_set_gravity_direction_743155724: StringName! = nil
    static var _method_get_gravity_direction_3341600327: StringName! = nil
    static var _method_set_gravity_373806689: StringName! = nil
    static var _method_get_gravity_1740695150: StringName! = nil
    static var _method_set_linear_damp_space_override_mode_2879900038: StringName! = nil
    static var _method_get_linear_damp_space_override_mode_3990256304: StringName! = nil
    static var _method_set_angular_damp_space_override_mode_2879900038: StringName! = nil
    static var _method_get_angular_damp_space_override_mode_3990256304: StringName! = nil
    static var _method_set_linear_damp_373806689: StringName! = nil
    static var _method_get_linear_damp_1740695150: StringName! = nil
    static var _method_set_angular_damp_373806689: StringName! = nil
    static var _method_get_angular_damp_1740695150: StringName! = nil
    static var _method_set_priority_373806689: StringName! = nil
    static var _method_get_priority_1740695150: StringName! = nil
    static var _method_set_monitoring_2586408642: StringName! = nil
    static var _method_is_monitoring_36873697: StringName! = nil
    static var _method_set_monitorable_2586408642: StringName! = nil
    static var _method_is_monitorable_36873697: StringName! = nil
    static var _method_get_overlapping_bodies_3995934104: StringName! = nil
    static var _method_get_overlapping_areas_3995934104: StringName! = nil
    static var _method_has_overlapping_bodies_36873697: StringName! = nil
    static var _method_has_overlapping_areas_36873697: StringName! = nil
    static var _method_overlaps_body_3093956946: StringName! = nil
    static var _method_overlaps_area_3093956946: StringName! = nil
    static var _method_set_audio_bus_name_3304788590: StringName! = nil
    static var _method_get_audio_bus_name_2002593661: StringName! = nil
    static var _method_set_audio_bus_override_2586408642: StringName! = nil
    static var _method_is_overriding_audio_bus_36873697: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_Area2D == nil)
        __godot_name_Area2D = StringName(from: "Area2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_gravity_space_override_mode_2879900038 = StringName(from: "set_gravity_space_override_mode")
        assert(self._method_set_gravity_space_override_mode_2879900038 != nil)
        self._method_get_gravity_space_override_mode_3990256304 = StringName(from: "get_gravity_space_override_mode")
        assert(self._method_get_gravity_space_override_mode_3990256304 != nil)
        self._method_set_gravity_is_point_2586408642 = StringName(from: "set_gravity_is_point")
        assert(self._method_set_gravity_is_point_2586408642 != nil)
        self._method_is_gravity_a_point_36873697 = StringName(from: "is_gravity_a_point")
        assert(self._method_is_gravity_a_point_36873697 != nil)
        self._method_set_gravity_point_unit_distance_373806689 = StringName(from: "set_gravity_point_unit_distance")
        assert(self._method_set_gravity_point_unit_distance_373806689 != nil)
        self._method_get_gravity_point_unit_distance_1740695150 = StringName(from: "get_gravity_point_unit_distance")
        assert(self._method_get_gravity_point_unit_distance_1740695150 != nil)
        self._method_set_gravity_point_center_743155724 = StringName(from: "set_gravity_point_center")
        assert(self._method_set_gravity_point_center_743155724 != nil)
        self._method_get_gravity_point_center_3341600327 = StringName(from: "get_gravity_point_center")
        assert(self._method_get_gravity_point_center_3341600327 != nil)
        self._method_set_gravity_direction_743155724 = StringName(from: "set_gravity_direction")
        assert(self._method_set_gravity_direction_743155724 != nil)
        self._method_get_gravity_direction_3341600327 = StringName(from: "get_gravity_direction")
        assert(self._method_get_gravity_direction_3341600327 != nil)
        self._method_set_gravity_373806689 = StringName(from: "set_gravity")
        assert(self._method_set_gravity_373806689 != nil)
        self._method_get_gravity_1740695150 = StringName(from: "get_gravity")
        assert(self._method_get_gravity_1740695150 != nil)
        self._method_set_linear_damp_space_override_mode_2879900038 = StringName(from: "set_linear_damp_space_override_mode")
        assert(self._method_set_linear_damp_space_override_mode_2879900038 != nil)
        self._method_get_linear_damp_space_override_mode_3990256304 = StringName(from: "get_linear_damp_space_override_mode")
        assert(self._method_get_linear_damp_space_override_mode_3990256304 != nil)
        self._method_set_angular_damp_space_override_mode_2879900038 = StringName(from: "set_angular_damp_space_override_mode")
        assert(self._method_set_angular_damp_space_override_mode_2879900038 != nil)
        self._method_get_angular_damp_space_override_mode_3990256304 = StringName(from: "get_angular_damp_space_override_mode")
        assert(self._method_get_angular_damp_space_override_mode_3990256304 != nil)
        self._method_set_linear_damp_373806689 = StringName(from: "set_linear_damp")
        assert(self._method_set_linear_damp_373806689 != nil)
        self._method_get_linear_damp_1740695150 = StringName(from: "get_linear_damp")
        assert(self._method_get_linear_damp_1740695150 != nil)
        self._method_set_angular_damp_373806689 = StringName(from: "set_angular_damp")
        assert(self._method_set_angular_damp_373806689 != nil)
        self._method_get_angular_damp_1740695150 = StringName(from: "get_angular_damp")
        assert(self._method_get_angular_damp_1740695150 != nil)
        self._method_set_priority_373806689 = StringName(from: "set_priority")
        assert(self._method_set_priority_373806689 != nil)
        self._method_get_priority_1740695150 = StringName(from: "get_priority")
        assert(self._method_get_priority_1740695150 != nil)
        self._method_set_monitoring_2586408642 = StringName(from: "set_monitoring")
        assert(self._method_set_monitoring_2586408642 != nil)
        self._method_is_monitoring_36873697 = StringName(from: "is_monitoring")
        assert(self._method_is_monitoring_36873697 != nil)
        self._method_set_monitorable_2586408642 = StringName(from: "set_monitorable")
        assert(self._method_set_monitorable_2586408642 != nil)
        self._method_is_monitorable_36873697 = StringName(from: "is_monitorable")
        assert(self._method_is_monitorable_36873697 != nil)
        self._method_get_overlapping_bodies_3995934104 = StringName(from: "get_overlapping_bodies")
        assert(self._method_get_overlapping_bodies_3995934104 != nil)
        self._method_get_overlapping_areas_3995934104 = StringName(from: "get_overlapping_areas")
        assert(self._method_get_overlapping_areas_3995934104 != nil)
        self._method_has_overlapping_bodies_36873697 = StringName(from: "has_overlapping_bodies")
        assert(self._method_has_overlapping_bodies_36873697 != nil)
        self._method_has_overlapping_areas_36873697 = StringName(from: "has_overlapping_areas")
        assert(self._method_has_overlapping_areas_36873697 != nil)
        self._method_overlaps_body_3093956946 = StringName(from: "overlaps_body")
        assert(self._method_overlaps_body_3093956946 != nil)
        self._method_overlaps_area_3093956946 = StringName(from: "overlaps_area")
        assert(self._method_overlaps_area_3093956946 != nil)
        self._method_set_audio_bus_name_3304788590 = StringName(from: "set_audio_bus_name")
        assert(self._method_set_audio_bus_name_3304788590 != nil)
        self._method_get_audio_bus_name_2002593661 = StringName(from: "get_audio_bus_name")
        assert(self._method_get_audio_bus_name_2002593661 != nil)
        self._method_set_audio_bus_override_2586408642 = StringName(from: "set_audio_bus_override")
        assert(self._method_set_audio_bus_override_2586408642 != nil)
        self._method_is_overriding_audio_bus_36873697 = StringName(from: "is_overriding_audio_bus")
        assert(self._method_is_overriding_audio_bus_36873697 != nil)
    }

    public func set_gravity_space_override_mode(space_override_mode: Area2D.SpaceOverride)  {
        withUnsafePointer(to: space_override_mode.rawValue) { space_override_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(space_override_mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_gravity_space_override_mode_2879900038._native_ptr(),
                    2879900038)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_gravity_space_override_mode_3990256304._native_ptr(),
                    3990256304)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Area2D.SpaceOverride(godot: __resPtr.pointee)
    }
    public func set_gravity_is_point(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_gravity_is_point_2586408642._native_ptr(),
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
    public func is_gravity_a_point() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_gravity_a_point_36873697._native_ptr(),
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
    public func set_gravity_point_unit_distance(distance_scale: Float64)  {
        withUnsafePointer(to: distance_scale) { distance_scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(distance_scale_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_gravity_point_unit_distance_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_gravity_point_unit_distance_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_gravity_point_center(center: Vector2)  {
        let center_native = center._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(center_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_gravity_point_center_743155724._native_ptr(),
                    743155724)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_gravity_point_center_3341600327._native_ptr(),
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
    public func set_gravity_direction(direction: Vector2)  {
        let direction_native = direction._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(direction_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_gravity_direction_743155724._native_ptr(),
                    743155724)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_gravity_direction_3341600327._native_ptr(),
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
    public func set_gravity(gravity: Float64)  {
        withUnsafePointer(to: gravity) { gravity_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gravity_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_gravity_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_gravity_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_linear_damp_space_override_mode(space_override_mode: Area2D.SpaceOverride)  {
        withUnsafePointer(to: space_override_mode.rawValue) { space_override_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(space_override_mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_linear_damp_space_override_mode_2879900038._native_ptr(),
                    2879900038)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_linear_damp_space_override_mode_3990256304._native_ptr(),
                    3990256304)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Area2D.SpaceOverride(godot: __resPtr.pointee)
    }
    public func set_angular_damp_space_override_mode(space_override_mode: Area2D.SpaceOverride)  {
        withUnsafePointer(to: space_override_mode.rawValue) { space_override_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(space_override_mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_angular_damp_space_override_mode_2879900038._native_ptr(),
                    2879900038)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_angular_damp_space_override_mode_3990256304._native_ptr(),
                    3990256304)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Area2D.SpaceOverride(godot: __resPtr.pointee)
    }
    public func set_linear_damp(linear_damp: Float64)  {
        withUnsafePointer(to: linear_damp) { linear_damp_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(linear_damp_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_linear_damp_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_linear_damp_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_angular_damp(angular_damp: Float64)  {
        withUnsafePointer(to: angular_damp) { angular_damp_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(angular_damp_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_angular_damp_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_angular_damp_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_priority(priority: Float64)  {
        withUnsafePointer(to: priority) { priority_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(priority_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_priority_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_priority_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_monitoring(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_monitoring_2586408642._native_ptr(),
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
    public func is_monitoring() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_monitoring_36873697._native_ptr(),
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
    public func set_monitorable(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_monitorable_2586408642._native_ptr(),
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
    public func is_monitorable() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_monitorable_36873697._native_ptr(),
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
    public func get_overlapping_bodies() -> [Node2D] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_overlapping_bodies_3995934104._native_ptr(),
                    3995934104)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Node2D](godot: __resPtr.pointee)
    }
    public func get_overlapping_areas() -> [Area2D] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_overlapping_areas_3995934104._native_ptr(),
                    3995934104)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Area2D](godot: __resPtr.pointee)
    }
    public func has_overlapping_bodies() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_overlapping_bodies_36873697._native_ptr(),
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
    public func has_overlapping_areas() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_overlapping_areas_36873697._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_overlaps_body_3093956946._native_ptr(),
                    3093956946)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_overlaps_area_3093956946._native_ptr(),
                    3093956946)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_audio_bus_name(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_audio_bus_name_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_audio_bus_name_2002593661._native_ptr(),
                    2002593661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
    }
    public func set_audio_bus_override(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_audio_bus_override_2586408642._native_ptr(),
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
    public func is_overriding_audio_bus() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_overriding_audio_bus_36873697._native_ptr(),
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
}