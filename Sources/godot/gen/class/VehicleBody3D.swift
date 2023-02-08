import godot_native

fileprivate var __godot_name_VehicleBody3D: StringName! = nil

/// Physics body that simulates the behavior of a car.
/// 
/// This node implements all the physics logic needed to simulate a car. It is based on the raycast vehicle system commonly found in physics engines. You will need to add a [CollisionShape3D] for the main body of your vehicle and add [VehicleWheel3D] nodes for the wheels. You should also add a [MeshInstance3D] to this node for the 3D model of your car but this model should not include meshes for the wheels. You should control the vehicle by using the [member brake], [member engine_force], and [member steering] properties and not change the position or orientation of this node directly.
///  
/// [b]Note:[/b] The origin point of your VehicleBody3D will determine the center of gravity of your vehicle so it is better to keep this low and move the [CollisionShape3D] and [MeshInstance3D] upwards.
///  
/// [b]Note:[/b] This class has known issues and isn't designed to provide realistic 3D vehicle physics. If you want advanced vehicle physics, you will probably have to write your own physics integration using another [PhysicsBody3D] class.
///  
/// [b]Warning:[/b] With a non-uniform scale this node will probably not function as expected. Please make sure to keep its scale uniform (i.e. the same on all axes), and change the size(s) of its collision shape(s) instead.
open class VehicleBody3D : RigidBody3D {

    

    public override class var __godot_name: StringName { __godot_name_VehicleBody3D }

    static var _method_set_engine_force_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_engine_force_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_brake_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_brake_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_steering_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_steering_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VehicleBody3D = StringName(from: "VehicleBody3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_engine_force_373806689_name = StringName(from: "set_engine_force")
        self._method_set_engine_force_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_VehicleBody3D._native_ptr(), _method_set_engine_force_373806689_name._native_ptr(), 373806689)
        assert(VehicleBody3D._method_set_engine_force_373806689 != nil)
        let _method_get_engine_force_1740695150_name = StringName(from: "get_engine_force")
        self._method_get_engine_force_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_VehicleBody3D._native_ptr(), _method_get_engine_force_1740695150_name._native_ptr(), 1740695150)
        assert(VehicleBody3D._method_get_engine_force_1740695150 != nil)
        let _method_set_brake_373806689_name = StringName(from: "set_brake")
        self._method_set_brake_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_VehicleBody3D._native_ptr(), _method_set_brake_373806689_name._native_ptr(), 373806689)
        assert(VehicleBody3D._method_set_brake_373806689 != nil)
        let _method_get_brake_1740695150_name = StringName(from: "get_brake")
        self._method_get_brake_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_VehicleBody3D._native_ptr(), _method_get_brake_1740695150_name._native_ptr(), 1740695150)
        assert(VehicleBody3D._method_get_brake_1740695150 != nil)
        let _method_set_steering_373806689_name = StringName(from: "set_steering")
        self._method_set_steering_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_VehicleBody3D._native_ptr(), _method_set_steering_373806689_name._native_ptr(), 373806689)
        assert(VehicleBody3D._method_set_steering_373806689 != nil)
        let _method_get_steering_1740695150_name = StringName(from: "get_steering")
        self._method_get_steering_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_VehicleBody3D._native_ptr(), _method_get_steering_1740695150_name._native_ptr(), 1740695150)
        assert(VehicleBody3D._method_get_steering_1740695150 != nil)
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
            return Float64(godot: __resPtr.pointee)
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
            return Float64(godot: __resPtr.pointee)
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
            return Float64(godot: __resPtr.pointee)
    }
}