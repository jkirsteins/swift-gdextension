import godot_native

fileprivate var __godot_name_PhysicalBone3D: StringName! = nil

/// 
/// 
/// [b]Warning:[/b] With a non-uniform scale this node will probably not function as expected. Please make sure to keep its scale uniform (i.e. the same on all axes), and change the size(s) of its collision shape(s) instead.
public class PhysicalBone3D : PhysicsBody3D {

    public enum DampMode : Int32 {
        case DAMP_MODE_COMBINE = 0
        case DAMP_MODE_REPLACE = 1
    }
    public enum JointType : Int32 {
        case JOINT_TYPE_NONE = 0
        case JOINT_TYPE_PIN = 1
        case JOINT_TYPE_CONE = 2
        case JOINT_TYPE_HINGE = 3
        case JOINT_TYPE_SLIDER = 4
        case JOINT_TYPE_6DOF = 5
    }

    public override class var __godot_name: StringName { __godot_name_PhysicalBone3D }

    static var _method__integrate_forces_0: GDExtensionMethodBindPtr! = nil
    static var _method_apply_central_impulse_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_apply_impulse_1002852006: GDExtensionMethodBindPtr! = nil
    static var _method_set_joint_type_2289552604: GDExtensionMethodBindPtr! = nil
    static var _method_get_joint_type_931347320: GDExtensionMethodBindPtr! = nil
    static var _method_set_joint_offset_2952846383: GDExtensionMethodBindPtr! = nil
    static var _method_get_joint_offset_3229777777: GDExtensionMethodBindPtr! = nil
    static var _method_set_joint_rotation_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_joint_rotation_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_body_offset_2952846383: GDExtensionMethodBindPtr! = nil
    static var _method_get_body_offset_3229777777: GDExtensionMethodBindPtr! = nil
    static var _method_get_simulate_physics_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_is_simulating_physics_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_get_bone_id_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_mass_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_mass_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_friction_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_friction_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_bounce_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_bounce_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_gravity_scale_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_gravity_scale_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_linear_damp_mode_1244972221: GDExtensionMethodBindPtr! = nil
    static var _method_get_linear_damp_mode_205884699: GDExtensionMethodBindPtr! = nil
    static var _method_set_angular_damp_mode_1244972221: GDExtensionMethodBindPtr! = nil
    static var _method_get_angular_damp_mode_205884699: GDExtensionMethodBindPtr! = nil
    static var _method_set_linear_damp_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_linear_damp_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_angular_damp_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_angular_damp_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_linear_velocity_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_linear_velocity_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_angular_velocity_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_angular_velocity_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_custom_integrator_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_using_custom_integrator_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_set_can_sleep_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_able_to_sleep_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_PhysicalBone3D = StringName(from: "PhysicalBone3D")

        let _method_apply_central_impulse_3460891852_name = StringName(from: "apply_central_impulse")
        self._method_apply_central_impulse_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_apply_central_impulse_3460891852_name._native_ptr(), 3460891852)
        assert(PhysicalBone3D._method_apply_central_impulse_3460891852 != nil)
        let _method_apply_impulse_1002852006_name = StringName(from: "apply_impulse")
        self._method_apply_impulse_1002852006 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_apply_impulse_1002852006_name._native_ptr(), 1002852006)
        assert(PhysicalBone3D._method_apply_impulse_1002852006 != nil)
        let _method_set_joint_type_2289552604_name = StringName(from: "set_joint_type")
        self._method_set_joint_type_2289552604 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_joint_type_2289552604_name._native_ptr(), 2289552604)
        assert(PhysicalBone3D._method_set_joint_type_2289552604 != nil)
        let _method_get_joint_type_931347320_name = StringName(from: "get_joint_type")
        self._method_get_joint_type_931347320 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_joint_type_931347320_name._native_ptr(), 931347320)
        assert(PhysicalBone3D._method_get_joint_type_931347320 != nil)
        let _method_set_joint_offset_2952846383_name = StringName(from: "set_joint_offset")
        self._method_set_joint_offset_2952846383 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_joint_offset_2952846383_name._native_ptr(), 2952846383)
        assert(PhysicalBone3D._method_set_joint_offset_2952846383 != nil)
        let _method_get_joint_offset_3229777777_name = StringName(from: "get_joint_offset")
        self._method_get_joint_offset_3229777777 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_joint_offset_3229777777_name._native_ptr(), 3229777777)
        assert(PhysicalBone3D._method_get_joint_offset_3229777777 != nil)
        let _method_set_joint_rotation_3460891852_name = StringName(from: "set_joint_rotation")
        self._method_set_joint_rotation_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_joint_rotation_3460891852_name._native_ptr(), 3460891852)
        assert(PhysicalBone3D._method_set_joint_rotation_3460891852 != nil)
        let _method_get_joint_rotation_3360562783_name = StringName(from: "get_joint_rotation")
        self._method_get_joint_rotation_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_joint_rotation_3360562783_name._native_ptr(), 3360562783)
        assert(PhysicalBone3D._method_get_joint_rotation_3360562783 != nil)
        let _method_set_body_offset_2952846383_name = StringName(from: "set_body_offset")
        self._method_set_body_offset_2952846383 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_body_offset_2952846383_name._native_ptr(), 2952846383)
        assert(PhysicalBone3D._method_set_body_offset_2952846383 != nil)
        let _method_get_body_offset_3229777777_name = StringName(from: "get_body_offset")
        self._method_get_body_offset_3229777777 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_body_offset_3229777777_name._native_ptr(), 3229777777)
        assert(PhysicalBone3D._method_get_body_offset_3229777777 != nil)
        let _method_get_simulate_physics_2240911060_name = StringName(from: "get_simulate_physics")
        self._method_get_simulate_physics_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_simulate_physics_2240911060_name._native_ptr(), 2240911060)
        assert(PhysicalBone3D._method_get_simulate_physics_2240911060 != nil)
        let _method_is_simulating_physics_2240911060_name = StringName(from: "is_simulating_physics")
        self._method_is_simulating_physics_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_simulating_physics_2240911060_name._native_ptr(), 2240911060)
        assert(PhysicalBone3D._method_is_simulating_physics_2240911060 != nil)
        let _method_get_bone_id_3905245786_name = StringName(from: "get_bone_id")
        self._method_get_bone_id_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_bone_id_3905245786_name._native_ptr(), 3905245786)
        assert(PhysicalBone3D._method_get_bone_id_3905245786 != nil)
        let _method_set_mass_373806689_name = StringName(from: "set_mass")
        self._method_set_mass_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_mass_373806689_name._native_ptr(), 373806689)
        assert(PhysicalBone3D._method_set_mass_373806689 != nil)
        let _method_get_mass_1740695150_name = StringName(from: "get_mass")
        self._method_get_mass_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_mass_1740695150_name._native_ptr(), 1740695150)
        assert(PhysicalBone3D._method_get_mass_1740695150 != nil)
        let _method_set_friction_373806689_name = StringName(from: "set_friction")
        self._method_set_friction_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_friction_373806689_name._native_ptr(), 373806689)
        assert(PhysicalBone3D._method_set_friction_373806689 != nil)
        let _method_get_friction_1740695150_name = StringName(from: "get_friction")
        self._method_get_friction_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_friction_1740695150_name._native_ptr(), 1740695150)
        assert(PhysicalBone3D._method_get_friction_1740695150 != nil)
        let _method_set_bounce_373806689_name = StringName(from: "set_bounce")
        self._method_set_bounce_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_bounce_373806689_name._native_ptr(), 373806689)
        assert(PhysicalBone3D._method_set_bounce_373806689 != nil)
        let _method_get_bounce_1740695150_name = StringName(from: "get_bounce")
        self._method_get_bounce_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_bounce_1740695150_name._native_ptr(), 1740695150)
        assert(PhysicalBone3D._method_get_bounce_1740695150 != nil)
        let _method_set_gravity_scale_373806689_name = StringName(from: "set_gravity_scale")
        self._method_set_gravity_scale_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_gravity_scale_373806689_name._native_ptr(), 373806689)
        assert(PhysicalBone3D._method_set_gravity_scale_373806689 != nil)
        let _method_get_gravity_scale_1740695150_name = StringName(from: "get_gravity_scale")
        self._method_get_gravity_scale_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_gravity_scale_1740695150_name._native_ptr(), 1740695150)
        assert(PhysicalBone3D._method_get_gravity_scale_1740695150 != nil)
        let _method_set_linear_damp_mode_1244972221_name = StringName(from: "set_linear_damp_mode")
        self._method_set_linear_damp_mode_1244972221 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_linear_damp_mode_1244972221_name._native_ptr(), 1244972221)
        assert(PhysicalBone3D._method_set_linear_damp_mode_1244972221 != nil)
        let _method_get_linear_damp_mode_205884699_name = StringName(from: "get_linear_damp_mode")
        self._method_get_linear_damp_mode_205884699 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_linear_damp_mode_205884699_name._native_ptr(), 205884699)
        assert(PhysicalBone3D._method_get_linear_damp_mode_205884699 != nil)
        let _method_set_angular_damp_mode_1244972221_name = StringName(from: "set_angular_damp_mode")
        self._method_set_angular_damp_mode_1244972221 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_angular_damp_mode_1244972221_name._native_ptr(), 1244972221)
        assert(PhysicalBone3D._method_set_angular_damp_mode_1244972221 != nil)
        let _method_get_angular_damp_mode_205884699_name = StringName(from: "get_angular_damp_mode")
        self._method_get_angular_damp_mode_205884699 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_angular_damp_mode_205884699_name._native_ptr(), 205884699)
        assert(PhysicalBone3D._method_get_angular_damp_mode_205884699 != nil)
        let _method_set_linear_damp_373806689_name = StringName(from: "set_linear_damp")
        self._method_set_linear_damp_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_linear_damp_373806689_name._native_ptr(), 373806689)
        assert(PhysicalBone3D._method_set_linear_damp_373806689 != nil)
        let _method_get_linear_damp_1740695150_name = StringName(from: "get_linear_damp")
        self._method_get_linear_damp_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_linear_damp_1740695150_name._native_ptr(), 1740695150)
        assert(PhysicalBone3D._method_get_linear_damp_1740695150 != nil)
        let _method_set_angular_damp_373806689_name = StringName(from: "set_angular_damp")
        self._method_set_angular_damp_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_angular_damp_373806689_name._native_ptr(), 373806689)
        assert(PhysicalBone3D._method_set_angular_damp_373806689 != nil)
        let _method_get_angular_damp_1740695150_name = StringName(from: "get_angular_damp")
        self._method_get_angular_damp_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_angular_damp_1740695150_name._native_ptr(), 1740695150)
        assert(PhysicalBone3D._method_get_angular_damp_1740695150 != nil)
        let _method_set_linear_velocity_3460891852_name = StringName(from: "set_linear_velocity")
        self._method_set_linear_velocity_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_linear_velocity_3460891852_name._native_ptr(), 3460891852)
        assert(PhysicalBone3D._method_set_linear_velocity_3460891852 != nil)
        let _method_get_linear_velocity_3360562783_name = StringName(from: "get_linear_velocity")
        self._method_get_linear_velocity_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_linear_velocity_3360562783_name._native_ptr(), 3360562783)
        assert(PhysicalBone3D._method_get_linear_velocity_3360562783 != nil)
        let _method_set_angular_velocity_3460891852_name = StringName(from: "set_angular_velocity")
        self._method_set_angular_velocity_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_angular_velocity_3460891852_name._native_ptr(), 3460891852)
        assert(PhysicalBone3D._method_set_angular_velocity_3460891852 != nil)
        let _method_get_angular_velocity_3360562783_name = StringName(from: "get_angular_velocity")
        self._method_get_angular_velocity_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_angular_velocity_3360562783_name._native_ptr(), 3360562783)
        assert(PhysicalBone3D._method_get_angular_velocity_3360562783 != nil)
        let _method_set_use_custom_integrator_2586408642_name = StringName(from: "set_use_custom_integrator")
        self._method_set_use_custom_integrator_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_use_custom_integrator_2586408642_name._native_ptr(), 2586408642)
        assert(PhysicalBone3D._method_set_use_custom_integrator_2586408642 != nil)
        let _method_is_using_custom_integrator_2240911060_name = StringName(from: "is_using_custom_integrator")
        self._method_is_using_custom_integrator_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_using_custom_integrator_2240911060_name._native_ptr(), 2240911060)
        assert(PhysicalBone3D._method_is_using_custom_integrator_2240911060 != nil)
        let _method_set_can_sleep_2586408642_name = StringName(from: "set_can_sleep")
        self._method_set_can_sleep_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_can_sleep_2586408642_name._native_ptr(), 2586408642)
        assert(PhysicalBone3D._method_set_can_sleep_2586408642 != nil)
        let _method_is_able_to_sleep_36873697_name = StringName(from: "is_able_to_sleep")
        self._method_is_able_to_sleep_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_able_to_sleep_36873697_name._native_ptr(), 36873697)
        assert(PhysicalBone3D._method_is_able_to_sleep_36873697 != nil)
    }

    public func _integrate_forces(state: PhysicsDirectBodyState3D)  {
        let state_native = state._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(state_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__integrate_forces_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func apply_central_impulse(impulse: Vector3)  {
        let impulse_native = impulse._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(impulse_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_apply_central_impulse_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func apply_impulse(impulse: Vector3, position: Vector3)  {
        let position_native = position._native_ptr()
        let impulse_native = impulse._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(impulse_native), .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_apply_impulse_1002852006,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_joint_type(joint_type: PhysicalBone3D.JointType)  {
        withUnsafePointer(to: joint_type.rawValue) { joint_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_joint_type_2289552604,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_joint_type() -> PhysicalBone3D.JointType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_joint_type_931347320,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PhysicalBone3D.JointType(from: __resPtr.pointee)
    }
    public func set_joint_offset(offset: Transform3D)  {
        let offset_native = offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_joint_offset_2952846383,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_joint_offset() -> Transform3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_joint_offset_3229777777,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(from: __resPtr.pointee)
    }
    public func set_joint_rotation(euler: Vector3)  {
        let euler_native = euler._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(euler_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_joint_rotation_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_joint_rotation() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_joint_rotation_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func set_body_offset(offset: Transform3D)  {
        let offset_native = offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_body_offset_2952846383,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_body_offset() -> Transform3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_body_offset_3229777777,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(from: __resPtr.pointee)
    }
    public func get_simulate_physics() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_simulate_physics_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func is_simulating_physics() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_simulating_physics_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_bone_id() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bone_id_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_mass(mass: Float64)  {
        withUnsafePointer(to: mass) { mass_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mass_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_mass_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_mass() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mass_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_friction(friction: Float64)  {
        withUnsafePointer(to: friction) { friction_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(friction_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_friction_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_friction() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_friction_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_bounce(bounce: Float64)  {
        withUnsafePointer(to: bounce) { bounce_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bounce_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bounce_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_bounce() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bounce_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_gravity_scale(gravity_scale: Float64)  {
        withUnsafePointer(to: gravity_scale) { gravity_scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gravity_scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_gravity_scale_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_gravity_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_gravity_scale_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_linear_damp_mode(linear_damp_mode: PhysicalBone3D.DampMode)  {
        withUnsafePointer(to: linear_damp_mode.rawValue) { linear_damp_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(linear_damp_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_linear_damp_mode_1244972221,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_linear_damp_mode() -> PhysicalBone3D.DampMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_linear_damp_mode_205884699,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PhysicalBone3D.DampMode(from: __resPtr.pointee)
    }
    public func set_angular_damp_mode(angular_damp_mode: PhysicalBone3D.DampMode)  {
        withUnsafePointer(to: angular_damp_mode.rawValue) { angular_damp_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(angular_damp_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_angular_damp_mode_1244972221,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_angular_damp_mode() -> PhysicalBone3D.DampMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_angular_damp_mode_205884699,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PhysicalBone3D.DampMode(from: __resPtr.pointee)
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
    public func set_linear_velocity(linear_velocity: Vector3)  {
        let linear_velocity_native = linear_velocity._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(linear_velocity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_linear_velocity_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_linear_velocity() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_linear_velocity_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func set_angular_velocity(angular_velocity: Vector3)  {
        let angular_velocity_native = angular_velocity._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(angular_velocity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_angular_velocity_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_angular_velocity() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_angular_velocity_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func set_use_custom_integrator(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_use_custom_integrator_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_using_custom_integrator() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_using_custom_integrator_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_can_sleep(able_to_sleep: UInt8)  {
        withUnsafePointer(to: able_to_sleep) { able_to_sleep_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(able_to_sleep_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_can_sleep_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_able_to_sleep() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_able_to_sleep_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}