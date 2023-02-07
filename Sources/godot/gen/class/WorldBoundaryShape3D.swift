import godot_native

fileprivate var __godot_name_WorldBoundaryShape3D: StringName! = nil

/// World boundary (infinite plane) shape resource for 3D physics.
/// 
/// 3D world boundary shape to be added as a [i]direct[/i] child of a [PhysicsBody3D] or [Area3D] using a [CollisionShape3D] node. [WorldBoundaryShape3D] works like an infinite plane and will not allow any physics body to go to the negative side. Note that the [Plane]'s normal matters; anything "below" the plane will collide with it. If the [WorldBoundaryShape3D] is used in a [PhysicsBody3D], it will cause colliding objects placed "below" it to teleport "above" the plane.
///  
/// [b]Performance:[/b] Being a primitive collision shape, [WorldBoundaryShape3D] is fast to check collisions against.
public class WorldBoundaryShape3D : Shape3D {

    

    public override class var __godot_name: StringName { __godot_name_WorldBoundaryShape3D }

    static var _method_set_plane_3505987427: GDExtensionMethodBindPtr! = nil
    static var _method_get_plane_2753500971: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_WorldBoundaryShape3D = StringName(from: "WorldBoundaryShape3D")

        let _method_set_plane_3505987427_name = StringName(from: "set_plane")
        self._method_set_plane_3505987427 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_plane_3505987427_name._native_ptr(), 3505987427)
        assert(WorldBoundaryShape3D._method_set_plane_3505987427 != nil)
        let _method_get_plane_2753500971_name = StringName(from: "get_plane")
        self._method_get_plane_2753500971 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_plane_2753500971_name._native_ptr(), 2753500971)
        assert(WorldBoundaryShape3D._method_get_plane_2753500971 != nil)
    }

    public func set_plane(plane: Plane)  {
        let plane_native = plane._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(plane_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_plane_3505987427,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_plane() -> Plane {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_plane_2753500971,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Plane(from: __resPtr.pointee)
    }
}