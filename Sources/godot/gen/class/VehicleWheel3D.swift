import godot_native

fileprivate var __godot_name_VehicleWheel3D: StringName! = nil

/// Physics object that simulates the behavior of a wheel.
/// 
/// This node needs to be used as a child node of [VehicleBody3D] and simulates the behavior of one of its wheels. This node also acts as a collider to detect if the wheel is touching a surface.
///  
/// [b]Note:[/b] This class has known issues and isn't designed to provide realistic 3D vehicle physics. If you want advanced vehicle physics, you will probably have to write your own physics integration using another [PhysicsBody3D] class.
public class VehicleWheel3D : Node3D {

    

    public override class var __godot_name: StringName { __godot_name_VehicleWheel3D }

    static var _method_set_radius_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_radius_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_suspension_rest_length_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_suspension_rest_length_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_suspension_travel_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_suspension_travel_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_suspension_stiffness_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_suspension_stiffness_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_suspension_max_force_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_suspension_max_force_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_damping_compression_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_damping_compression_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_damping_relaxation_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_damping_relaxation_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_as_traction_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_used_as_traction_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_as_steering_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_used_as_steering_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_friction_slip_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_friction_slip_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_is_in_contact_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_contact_body_151077316: GDExtensionMethodBindPtr! = nil
    static var _method_set_roll_influence_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_roll_influence_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_skidinfo_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_rpm_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_engine_force_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_engine_force_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_brake_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_brake_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_steering_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_steering_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VehicleWheel3D = StringName(from: "VehicleWheel3D")

        let _method_set_radius_373806689_name = StringName(from: "set_radius")
        self._method_set_radius_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_radius_373806689_name._native_ptr(), 373806689)
        assert(VehicleWheel3D._method_set_radius_373806689 != nil)
        let _method_get_radius_1740695150_name = StringName(from: "get_radius")
        self._method_get_radius_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_radius_1740695150_name._native_ptr(), 1740695150)
        assert(VehicleWheel3D._method_get_radius_1740695150 != nil)
        let _method_set_suspension_rest_length_373806689_name = StringName(from: "set_suspension_rest_length")
        self._method_set_suspension_rest_length_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_suspension_rest_length_373806689_name._native_ptr(), 373806689)
        assert(VehicleWheel3D._method_set_suspension_rest_length_373806689 != nil)
        let _method_get_suspension_rest_length_1740695150_name = StringName(from: "get_suspension_rest_length")
        self._method_get_suspension_rest_length_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_suspension_rest_length_1740695150_name._native_ptr(), 1740695150)
        assert(VehicleWheel3D._method_get_suspension_rest_length_1740695150 != nil)
        let _method_set_suspension_travel_373806689_name = StringName(from: "set_suspension_travel")
        self._method_set_suspension_travel_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_suspension_travel_373806689_name._native_ptr(), 373806689)
        assert(VehicleWheel3D._method_set_suspension_travel_373806689 != nil)
        let _method_get_suspension_travel_1740695150_name = StringName(from: "get_suspension_travel")
        self._method_get_suspension_travel_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_suspension_travel_1740695150_name._native_ptr(), 1740695150)
        assert(VehicleWheel3D._method_get_suspension_travel_1740695150 != nil)
        let _method_set_suspension_stiffness_373806689_name = StringName(from: "set_suspension_stiffness")
        self._method_set_suspension_stiffness_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_suspension_stiffness_373806689_name._native_ptr(), 373806689)
        assert(VehicleWheel3D._method_set_suspension_stiffness_373806689 != nil)
        let _method_get_suspension_stiffness_1740695150_name = StringName(from: "get_suspension_stiffness")
        self._method_get_suspension_stiffness_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_suspension_stiffness_1740695150_name._native_ptr(), 1740695150)
        assert(VehicleWheel3D._method_get_suspension_stiffness_1740695150 != nil)
        let _method_set_suspension_max_force_373806689_name = StringName(from: "set_suspension_max_force")
        self._method_set_suspension_max_force_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_suspension_max_force_373806689_name._native_ptr(), 373806689)
        assert(VehicleWheel3D._method_set_suspension_max_force_373806689 != nil)
        let _method_get_suspension_max_force_1740695150_name = StringName(from: "get_suspension_max_force")
        self._method_get_suspension_max_force_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_suspension_max_force_1740695150_name._native_ptr(), 1740695150)
        assert(VehicleWheel3D._method_get_suspension_max_force_1740695150 != nil)
        let _method_set_damping_compression_373806689_name = StringName(from: "set_damping_compression")
        self._method_set_damping_compression_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_damping_compression_373806689_name._native_ptr(), 373806689)
        assert(VehicleWheel3D._method_set_damping_compression_373806689 != nil)
        let _method_get_damping_compression_1740695150_name = StringName(from: "get_damping_compression")
        self._method_get_damping_compression_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_damping_compression_1740695150_name._native_ptr(), 1740695150)
        assert(VehicleWheel3D._method_get_damping_compression_1740695150 != nil)
        let _method_set_damping_relaxation_373806689_name = StringName(from: "set_damping_relaxation")
        self._method_set_damping_relaxation_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_damping_relaxation_373806689_name._native_ptr(), 373806689)
        assert(VehicleWheel3D._method_set_damping_relaxation_373806689 != nil)
        let _method_get_damping_relaxation_1740695150_name = StringName(from: "get_damping_relaxation")
        self._method_get_damping_relaxation_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_damping_relaxation_1740695150_name._native_ptr(), 1740695150)
        assert(VehicleWheel3D._method_get_damping_relaxation_1740695150 != nil)
        let _method_set_use_as_traction_2586408642_name = StringName(from: "set_use_as_traction")
        self._method_set_use_as_traction_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_use_as_traction_2586408642_name._native_ptr(), 2586408642)
        assert(VehicleWheel3D._method_set_use_as_traction_2586408642 != nil)
        let _method_is_used_as_traction_36873697_name = StringName(from: "is_used_as_traction")
        self._method_is_used_as_traction_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_used_as_traction_36873697_name._native_ptr(), 36873697)
        assert(VehicleWheel3D._method_is_used_as_traction_36873697 != nil)
        let _method_set_use_as_steering_2586408642_name = StringName(from: "set_use_as_steering")
        self._method_set_use_as_steering_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_use_as_steering_2586408642_name._native_ptr(), 2586408642)
        assert(VehicleWheel3D._method_set_use_as_steering_2586408642 != nil)
        let _method_is_used_as_steering_36873697_name = StringName(from: "is_used_as_steering")
        self._method_is_used_as_steering_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_used_as_steering_36873697_name._native_ptr(), 36873697)
        assert(VehicleWheel3D._method_is_used_as_steering_36873697 != nil)
        let _method_set_friction_slip_373806689_name = StringName(from: "set_friction_slip")
        self._method_set_friction_slip_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_friction_slip_373806689_name._native_ptr(), 373806689)
        assert(VehicleWheel3D._method_set_friction_slip_373806689 != nil)
        let _method_get_friction_slip_1740695150_name = StringName(from: "get_friction_slip")
        self._method_get_friction_slip_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_friction_slip_1740695150_name._native_ptr(), 1740695150)
        assert(VehicleWheel3D._method_get_friction_slip_1740695150 != nil)
        let _method_is_in_contact_36873697_name = StringName(from: "is_in_contact")
        self._method_is_in_contact_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_in_contact_36873697_name._native_ptr(), 36873697)
        assert(VehicleWheel3D._method_is_in_contact_36873697 != nil)
        let _method_get_contact_body_151077316_name = StringName(from: "get_contact_body")
        self._method_get_contact_body_151077316 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_contact_body_151077316_name._native_ptr(), 151077316)
        assert(VehicleWheel3D._method_get_contact_body_151077316 != nil)
        let _method_set_roll_influence_373806689_name = StringName(from: "set_roll_influence")
        self._method_set_roll_influence_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_roll_influence_373806689_name._native_ptr(), 373806689)
        assert(VehicleWheel3D._method_set_roll_influence_373806689 != nil)
        let _method_get_roll_influence_1740695150_name = StringName(from: "get_roll_influence")
        self._method_get_roll_influence_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_roll_influence_1740695150_name._native_ptr(), 1740695150)
        assert(VehicleWheel3D._method_get_roll_influence_1740695150 != nil)
        let _method_get_skidinfo_1740695150_name = StringName(from: "get_skidinfo")
        self._method_get_skidinfo_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_skidinfo_1740695150_name._native_ptr(), 1740695150)
        assert(VehicleWheel3D._method_get_skidinfo_1740695150 != nil)
        let _method_get_rpm_1740695150_name = StringName(from: "get_rpm")
        self._method_get_rpm_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_rpm_1740695150_name._native_ptr(), 1740695150)
        assert(VehicleWheel3D._method_get_rpm_1740695150 != nil)
        let _method_set_engine_force_373806689_name = StringName(from: "set_engine_force")
        self._method_set_engine_force_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_engine_force_373806689_name._native_ptr(), 373806689)
        assert(VehicleWheel3D._method_set_engine_force_373806689 != nil)
        let _method_get_engine_force_1740695150_name = StringName(from: "get_engine_force")
        self._method_get_engine_force_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_engine_force_1740695150_name._native_ptr(), 1740695150)
        assert(VehicleWheel3D._method_get_engine_force_1740695150 != nil)
        let _method_set_brake_373806689_name = StringName(from: "set_brake")
        self._method_set_brake_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_brake_373806689_name._native_ptr(), 373806689)
        assert(VehicleWheel3D._method_set_brake_373806689 != nil)
        let _method_get_brake_1740695150_name = StringName(from: "get_brake")
        self._method_get_brake_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_brake_1740695150_name._native_ptr(), 1740695150)
        assert(VehicleWheel3D._method_get_brake_1740695150 != nil)
        let _method_set_steering_373806689_name = StringName(from: "set_steering")
        self._method_set_steering_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_steering_373806689_name._native_ptr(), 373806689)
        assert(VehicleWheel3D._method_set_steering_373806689 != nil)
        let _method_get_steering_1740695150_name = StringName(from: "get_steering")
        self._method_get_steering_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_steering_1740695150_name._native_ptr(), 1740695150)
        assert(VehicleWheel3D._method_get_steering_1740695150 != nil)
    }

    public func set_radius(length: Float64)  {
        withUnsafePointer(to: length) { length_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(length_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_radius_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_radius() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_radius_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_suspension_rest_length(length: Float64)  {
        withUnsafePointer(to: length) { length_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(length_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_suspension_rest_length_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_suspension_rest_length() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_suspension_rest_length_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_suspension_travel(length: Float64)  {
        withUnsafePointer(to: length) { length_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(length_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_suspension_travel_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_suspension_travel() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_suspension_travel_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_suspension_stiffness(length: Float64)  {
        withUnsafePointer(to: length) { length_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(length_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_suspension_stiffness_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_suspension_stiffness() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_suspension_stiffness_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_suspension_max_force(length: Float64)  {
        withUnsafePointer(to: length) { length_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(length_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_suspension_max_force_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_suspension_max_force() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_suspension_max_force_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_damping_compression(length: Float64)  {
        withUnsafePointer(to: length) { length_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(length_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_damping_compression_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_damping_compression() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_damping_compression_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_damping_relaxation(length: Float64)  {
        withUnsafePointer(to: length) { length_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(length_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_damping_relaxation_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_damping_relaxation() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_damping_relaxation_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_use_as_traction(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_use_as_traction_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_used_as_traction() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_used_as_traction_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_use_as_steering(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_use_as_steering_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_used_as_steering() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_used_as_steering_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_friction_slip(length: Float64)  {
        withUnsafePointer(to: length) { length_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(length_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_friction_slip_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_friction_slip() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_friction_slip_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func is_in_contact() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_in_contact_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_contact_body() -> Node3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_contact_body_151077316,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node3D(from: __resPtr.pointee)
    }
    public func set_roll_influence(roll_influence: Float64)  {
        withUnsafePointer(to: roll_influence) { roll_influence_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(roll_influence_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_roll_influence_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_roll_influence() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_roll_influence_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func get_skidinfo() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_skidinfo_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func get_rpm() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_rpm_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_engine_force(engine_force: Float64)  {
        withUnsafePointer(to: engine_force) { engine_force_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(engine_force_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_engine_force_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_engine_force() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_engine_force_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_brake(brake: Float64)  {
        withUnsafePointer(to: brake) { brake_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(brake_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_brake_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_brake() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_brake_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_steering(steering: Float64)  {
        withUnsafePointer(to: steering) { steering_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(steering_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_steering_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_steering() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_steering_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
}