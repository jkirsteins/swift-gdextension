import godot_native

fileprivate var __godot_name_StaticBody3D: StringName! = nil

/// Physics body for 3D physics which is static or moves only by script. Useful for floor and walls.
/// 
/// Static body for 3D physics.
///  
/// A static body is a simple body that doesn't move under physics simulation, i.e. it can't be moved by external forces or contacts but its transformation can still be updated manually by the user. It is ideal for implementing objects in the environment, such as walls or platforms. In contrast to [RigidBody3D], it doesn't consume any CPU resources as long as they don't move.
///  
/// They have extra functionalities to move and affect other bodies:
///  
/// [i]Static transform change:[/i] Static bodies can be moved by animation or script. In this case, they are just teleported and don't affect other bodies on their path.
///  
/// [i]Constant velocity:[/i] When [member constant_linear_velocity] or [member constant_angular_velocity] is set, static bodies don't move themselves but affect touching bodies as if they were moving. This is useful for simulating conveyor belts or conveyor wheels.
///  
/// [b]Warning:[/b] With a non-uniform scale this node will probably not function as expected. Please make sure to keep its scale uniform (i.e. the same on all axes), and change the size(s) of its collision shape(s) instead.
open class StaticBody3D : PhysicsBody3D {

    

    public override class var __godot_name: StringName { __godot_name_StaticBody3D }

    static var _method_set_constant_linear_velocity_3460891852: StringName! = nil
    static var _method_set_constant_angular_velocity_3460891852: StringName! = nil
    static var _method_get_constant_linear_velocity_3360562783: StringName! = nil
    static var _method_get_constant_angular_velocity_3360562783: StringName! = nil
    static var _method_set_physics_material_override_1784508650: StringName! = nil
    static var _method_get_physics_material_override_2521850424: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_StaticBody3D == nil)
        __godot_name_StaticBody3D = StringName(from: "StaticBody3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_constant_linear_velocity_3460891852 = StringName(from: "set_constant_linear_velocity")
        assert(self._method_set_constant_linear_velocity_3460891852 != nil)
        self._method_set_constant_angular_velocity_3460891852 = StringName(from: "set_constant_angular_velocity")
        assert(self._method_set_constant_angular_velocity_3460891852 != nil)
        self._method_get_constant_linear_velocity_3360562783 = StringName(from: "get_constant_linear_velocity")
        assert(self._method_get_constant_linear_velocity_3360562783 != nil)
        self._method_get_constant_angular_velocity_3360562783 = StringName(from: "get_constant_angular_velocity")
        assert(self._method_get_constant_angular_velocity_3360562783 != nil)
        self._method_set_physics_material_override_1784508650 = StringName(from: "set_physics_material_override")
        assert(self._method_set_physics_material_override_1784508650 != nil)
        self._method_get_physics_material_override_2521850424 = StringName(from: "get_physics_material_override")
        assert(self._method_get_physics_material_override_2521850424 != nil)
    }

    public func set_constant_linear_velocity(vel: Vector3)  {
        let vel_native = vel._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(vel_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_constant_linear_velocity_3460891852._native_ptr(),
                    3460891852)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_constant_angular_velocity(vel: Vector3)  {
        let vel_native = vel._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(vel_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_constant_angular_velocity_3460891852._native_ptr(),
                    3460891852)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_constant_linear_velocity() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_constant_linear_velocity_3360562783._native_ptr(),
                    3360562783)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func get_constant_angular_velocity() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_constant_angular_velocity_3360562783._native_ptr(),
                    3360562783)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func set_physics_material_override(physics_material_override: PhysicsMaterial)  {
        let physics_material_override_native = physics_material_override._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(physics_material_override_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_physics_material_override_1784508650._native_ptr(),
                    1784508650)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_physics_material_override_2521850424._native_ptr(),
                    2521850424)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PhysicsMaterial(godot: __resPtr.pointee)
    }
}