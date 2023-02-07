import godot_native

fileprivate var __godot_name_WorldBoundaryShape2D: StringName! = nil

/// World boundary (infinite plane) shape resource for 2D physics.
/// 
/// 2D world boundary shape to be added as a [i]direct[/i] child of a [PhysicsBody2D] or [Area2D] using a [CollisionShape2D] node. [WorldBoundaryShape2D] works like an infinite plane and will not allow any physics body to go to the negative side. Note that the [member normal] matters; anything "below" the plane will collide with it. If the [WorldBoundaryShape2D] is used in a [PhysicsBody2D], it will cause colliding objects placed "below" it to teleport "above" the plane.
///  
/// [b]Performance:[/b] Being a primitive collision shape, [WorldBoundaryShape2D] is fast to check collisions against.
public class WorldBoundaryShape2D : Shape2D {

    

    public override class var __godot_name: StringName { __godot_name_WorldBoundaryShape2D }

    static var _method_set_normal_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_normal_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_distance_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_distance_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_WorldBoundaryShape2D = StringName(from: "WorldBoundaryShape2D")

        let _method_set_normal_743155724_name = StringName(from: "set_normal")
        self._method_set_normal_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_normal_743155724_name._native_ptr(), 743155724)
        assert(WorldBoundaryShape2D._method_set_normal_743155724 != nil)
        let _method_get_normal_3341600327_name = StringName(from: "get_normal")
        self._method_get_normal_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_normal_3341600327_name._native_ptr(), 3341600327)
        assert(WorldBoundaryShape2D._method_get_normal_3341600327 != nil)
        let _method_set_distance_373806689_name = StringName(from: "set_distance")
        self._method_set_distance_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_distance_373806689_name._native_ptr(), 373806689)
        assert(WorldBoundaryShape2D._method_set_distance_373806689 != nil)
        let _method_get_distance_1740695150_name = StringName(from: "get_distance")
        self._method_get_distance_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_distance_1740695150_name._native_ptr(), 1740695150)
        assert(WorldBoundaryShape2D._method_get_distance_1740695150 != nil)
    }

    public func set_normal(normal: Vector2)  {
        let normal_native = normal._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(normal_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_normal_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_normal() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_normal_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func set_distance(distance: Float64)  {
        withUnsafePointer(to: distance) { distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(distance_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_distance_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_distance() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_distance_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
}