import godot_native

fileprivate var __godot_name_ConvexPolygonShape3D: StringName! = nil

/// Convex polygon shape resource for 3D physics.
/// 
/// 3D convex polygon shape resource to be added as a [i]direct[/i] child of a [PhysicsBody3D] or [Area3D] using a [CollisionShape3D] node. Unlike [ConcavePolygonShape3D], [ConvexPolygonShape3D] cannot store concave polygon shapes. [ConvexPolygonShape3D]s can be manually drawn in the editor using the [CollisionPolygon3D] node.
///  
/// [b]Convex decomposition:[/b] Concave objects' collisions can be represented accurately using [i]several[/i] [ConvexPolygonShape3D]s. This allows dynamic physics bodies to have complex concave collisions (at a performance cost). This is available in the editor by selecting the [MeshInstance3D], going to the [b]Mesh[/b] menu and choosing [b]Create Multiple Convex Collision Siblings[/b]. Alternatively, [method MeshInstance3D.create_multiple_convex_collisions] can be called in a script to perform this decomposition at run-time.
///  
/// [b]Performance:[/b] [ConvexPolygonShape3D] is faster to check collisions against compared to [ConcavePolygonShape3D], but it is slower than primitive collision shapes such as [SphereShape3D] or [BoxShape3D]. Its use should generally be limited to medium-sized objects that cannot have their collision accurately represented by a primitive shape.
public class ConvexPolygonShape3D : Shape3D {

    

    public override class var __godot_name: StringName { __godot_name_ConvexPolygonShape3D }

    static var _method_set_points_334873810: GDExtensionMethodBindPtr! = nil
    static var _method_get_points_497664490: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_ConvexPolygonShape3D = StringName(from: "ConvexPolygonShape3D")

        let _method_set_points_334873810_name = StringName(from: "set_points")
        self._method_set_points_334873810 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_points_334873810_name._native_ptr(), 334873810)
        assert(ConvexPolygonShape3D._method_set_points_334873810 != nil)
        let _method_get_points_497664490_name = StringName(from: "get_points")
        self._method_get_points_497664490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_points_497664490_name._native_ptr(), 497664490)
        assert(ConvexPolygonShape3D._method_get_points_497664490 != nil)
    }

    public func set_points(points: PackedVector3Array)  {
        let points_native = points._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(points_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_points_334873810,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_points() -> PackedVector3Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_points_497664490,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector3Array(from: __resPtr.pointee)
    }
}