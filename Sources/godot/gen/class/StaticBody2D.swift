import godot_native

fileprivate var __godot_name_StaticBody2D: StringName! = nil

/// Physics body for 2D physics which is static or moves only by script. Useful for floor and walls.
/// 
/// Static body for 2D physics.
///  
/// A static body is a simple body that doesn't move under physics simulation, i.e. it can't be moved by external forces or contacts but its transformation can still be updated manually by the user. It is ideal for implementing objects in the environment, such as walls or platforms. In contrast to [RigidBody2D], it doesn't consume any CPU resources as long as they don't move.
///  
/// They have extra functionalities to move and affect other bodies:
///  
/// [b]Static transform change:[/b] Static bodies can be moved by animation or script. In this case, they are just teleported and don't affect other bodies on their path.
///  
/// [b]Constant velocity:[/b] When [member constant_linear_velocity] or [member constant_angular_velocity] is set, static bodies don't move themselves but affect touching bodies as if they were moving. This is useful for simulating conveyor belts or conveyor wheels.
public class StaticBody2D : PhysicsBody2D {

    

    public override class var __godot_name: StringName { __godot_name_StaticBody2D }

    static var _method_set_constant_linear_velocity_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_set_constant_angular_velocity_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_constant_linear_velocity_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_get_constant_angular_velocity_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_physics_material_override_1784508650: GDExtensionMethodBindPtr! = nil
    static var _method_get_physics_material_override_2521850424: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_StaticBody2D = StringName(from: "StaticBody2D")

        let _method_set_constant_linear_velocity_743155724_name = StringName(from: "set_constant_linear_velocity")
        self._method_set_constant_linear_velocity_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_constant_linear_velocity_743155724_name._native_ptr(), 743155724)
        assert(StaticBody2D._method_set_constant_linear_velocity_743155724 != nil)
        let _method_set_constant_angular_velocity_373806689_name = StringName(from: "set_constant_angular_velocity")
        self._method_set_constant_angular_velocity_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_constant_angular_velocity_373806689_name._native_ptr(), 373806689)
        assert(StaticBody2D._method_set_constant_angular_velocity_373806689 != nil)
        let _method_get_constant_linear_velocity_3341600327_name = StringName(from: "get_constant_linear_velocity")
        self._method_get_constant_linear_velocity_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_constant_linear_velocity_3341600327_name._native_ptr(), 3341600327)
        assert(StaticBody2D._method_get_constant_linear_velocity_3341600327 != nil)
        let _method_get_constant_angular_velocity_1740695150_name = StringName(from: "get_constant_angular_velocity")
        self._method_get_constant_angular_velocity_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_constant_angular_velocity_1740695150_name._native_ptr(), 1740695150)
        assert(StaticBody2D._method_get_constant_angular_velocity_1740695150 != nil)
        let _method_set_physics_material_override_1784508650_name = StringName(from: "set_physics_material_override")
        self._method_set_physics_material_override_1784508650 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_physics_material_override_1784508650_name._native_ptr(), 1784508650)
        assert(StaticBody2D._method_set_physics_material_override_1784508650 != nil)
        let _method_get_physics_material_override_2521850424_name = StringName(from: "get_physics_material_override")
        self._method_get_physics_material_override_2521850424 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_physics_material_override_2521850424_name._native_ptr(), 2521850424)
        assert(StaticBody2D._method_get_physics_material_override_2521850424 != nil)
    }

    public func set_constant_linear_velocity(vel: Vector2)  {
        let vel_native = vel._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(vel_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_constant_linear_velocity_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_constant_angular_velocity(vel: Float64)  {
        withUnsafePointer(to: vel) { vel_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(vel_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_constant_angular_velocity_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_constant_linear_velocity() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_constant_linear_velocity_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func get_constant_angular_velocity() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_constant_angular_velocity_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_physics_material_override(physics_material_override: PhysicsMaterial)  {
        let physics_material_override_native = physics_material_override._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(physics_material_override_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_physics_material_override_1784508650,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_physics_material_override() -> PhysicsMaterial {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_physics_material_override_2521850424,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PhysicsMaterial(from: __resPtr.pointee)
    }
}