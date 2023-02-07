import godot_native

fileprivate var __godot_name_ConcavePolygonShape3D: StringName! = nil

/// Concave polygon shape resource (also called "trimesh") for 3D physics.
/// 
/// 3D concave polygon shape resource (also called "trimesh") to be added as a [i]direct[/i] child of a [PhysicsBody3D] or [Area3D] using a [CollisionShape3D] node. This shape is created by feeding a list of triangles. Despite its name, [ConcavePolygonShape3D] can also store convex polygon shapes. However, unlike [ConvexPolygonShape3D], [ConcavePolygonShape3D] is [i]not[/i] limited to storing convex shapes exclusively.
///  
/// [b]Note:[/b] When used for collision, [ConcavePolygonShape3D] is intended to work with static [PhysicsBody3D] nodes like [StaticBody3D] and will not work with [CharacterBody3D] or [RigidBody3D] with a mode other than Static.
///  
/// [b]Performance:[/b] Due to its complexity, [ConcavePolygonShape3D] is the slowest collision shape to check collisions against. Its use should generally be limited to level geometry. For convex geometry, using [ConvexPolygonShape3D] will perform better. For dynamic physics bodies that need concave collision, several [ConvexPolygonShape3D]s can be used to represent its collision by using convex decomposition; see [ConvexPolygonShape3D]'s documentation for instructions. However, consider using primitive collision shapes such as [SphereShape3D] or [BoxShape3D] first.
///  
/// [b]Warning:[/b] Using this shape for an [Area3D] (via a [CollisionShape3D] node, created e.g. by using the [i]Create Trimesh Collision Sibling[/i] option in the [i]Mesh[/i] menu that appears when selecting a [MeshInstance3D] node) may give unexpected results: the area will only detect collisions with the triangle faces in the [ConcavePolygonShape3D] (and not with any "inside" of the shape, for example); moreover it will only detect all such collisions if [member backface_collision] is [code]true[/code].
public class ConcavePolygonShape3D : Shape3D {

    

    public override class var __godot_name: StringName { __godot_name_ConcavePolygonShape3D }

    static var _method_set_faces_334873810: GDExtensionMethodBindPtr! = nil
    static var _method_get_faces_497664490: GDExtensionMethodBindPtr! = nil
    static var _method_set_backface_collision_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_backface_collision_enabled_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_ConcavePolygonShape3D = StringName(from: "ConcavePolygonShape3D")

        let _method_set_faces_334873810_name = StringName(from: "set_faces")
        self._method_set_faces_334873810 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_faces_334873810_name._native_ptr(), 334873810)
        assert(ConcavePolygonShape3D._method_set_faces_334873810 != nil)
        let _method_get_faces_497664490_name = StringName(from: "get_faces")
        self._method_get_faces_497664490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_faces_497664490_name._native_ptr(), 497664490)
        assert(ConcavePolygonShape3D._method_get_faces_497664490 != nil)
        let _method_set_backface_collision_enabled_2586408642_name = StringName(from: "set_backface_collision_enabled")
        self._method_set_backface_collision_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_backface_collision_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(ConcavePolygonShape3D._method_set_backface_collision_enabled_2586408642 != nil)
        let _method_is_backface_collision_enabled_36873697_name = StringName(from: "is_backface_collision_enabled")
        self._method_is_backface_collision_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_backface_collision_enabled_36873697_name._native_ptr(), 36873697)
        assert(ConcavePolygonShape3D._method_is_backface_collision_enabled_36873697 != nil)
    }

    public func set_faces(faces: PackedVector3Array)  {
        let faces_native = faces._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(faces_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_faces_334873810,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_faces() -> PackedVector3Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_faces_497664490,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector3Array(from: __resPtr.pointee)
    }
    public func set_backface_collision_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_backface_collision_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_backface_collision_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_backface_collision_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}