import godot_native

fileprivate var __godot_name_ConvexPolygonShape2D: StringName! = nil

/// Convex polygon shape resource for 2D physics.
/// 
/// 2D convex polygon shape to be added as a [i]direct[/i] child of a [PhysicsBody2D] or [Area2D] using a [CollisionShape2D] node. A convex polygon, whatever its shape, is internally decomposed into as many convex polygons as needed to ensure all collision checks against it are always done on convex polygons (which are faster to check). See also [CollisionPolygon2D].
///  
/// The main difference between a [ConvexPolygonShape2D] and a [ConcavePolygonShape2D] is that a concave polygon assumes it is concave and uses a more complex method of collision detection, and a convex one forces itself to be convex to speed up collision detection.
///  
/// [b]Performance:[/b] [ConvexPolygonShape2D] is faster to check collisions against compared to [ConcavePolygonShape2D], but it is slower than primitive collision shapes such as [CircleShape2D] or [RectangleShape2D]. Its use should generally be limited to medium-sized objects that cannot have their collision accurately represented by a primitive shape.
public class ConvexPolygonShape2D : Shape2D {

    

    public override class var __godot_name: StringName { __godot_name_ConvexPolygonShape2D }

    static var _method_set_point_cloud_1509147220: GDExtensionMethodBindPtr! = nil
    static var _method_set_points_1509147220: GDExtensionMethodBindPtr! = nil
    static var _method_get_points_2961356807: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_ConvexPolygonShape2D = StringName(from: "ConvexPolygonShape2D")

        let _method_set_point_cloud_1509147220_name = StringName(from: "set_point_cloud")
        self._method_set_point_cloud_1509147220 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_point_cloud_1509147220_name._native_ptr(), 1509147220)
        assert(ConvexPolygonShape2D._method_set_point_cloud_1509147220 != nil)
        let _method_set_points_1509147220_name = StringName(from: "set_points")
        self._method_set_points_1509147220 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_points_1509147220_name._native_ptr(), 1509147220)
        assert(ConvexPolygonShape2D._method_set_points_1509147220 != nil)
        let _method_get_points_2961356807_name = StringName(from: "get_points")
        self._method_get_points_2961356807 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_points_2961356807_name._native_ptr(), 2961356807)
        assert(ConvexPolygonShape2D._method_get_points_2961356807 != nil)
    }

    public func set_point_cloud(point_cloud: PackedVector2Array)  {
        let point_cloud_native = point_cloud._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(point_cloud_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_point_cloud_1509147220,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_points(points: PackedVector2Array)  {
        let points_native = points._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(points_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_points_1509147220,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_points() -> PackedVector2Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_points_2961356807,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(from: __resPtr.pointee)
    }
}