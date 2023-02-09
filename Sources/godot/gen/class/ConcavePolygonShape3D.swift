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
open class ConcavePolygonShape3D : Shape3D {

    

    public override class var __godot_name: StringName { __godot_name_ConcavePolygonShape3D }

    static var _method_set_faces_334873810: StringName! = nil
    static var _method_get_faces_497664490: StringName! = nil
    static var _method_set_backface_collision_enabled_2586408642: StringName! = nil
    static var _method_is_backface_collision_enabled_36873697: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_ConcavePolygonShape3D == nil)
        __godot_name_ConcavePolygonShape3D = StringName(from: "ConcavePolygonShape3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_faces_334873810 = StringName(from: "set_faces")
        assert(self._method_set_faces_334873810 != nil)
        self._method_get_faces_497664490 = StringName(from: "get_faces")
        assert(self._method_get_faces_497664490 != nil)
        self._method_set_backface_collision_enabled_2586408642 = StringName(from: "set_backface_collision_enabled")
        assert(self._method_set_backface_collision_enabled_2586408642 != nil)
        self._method_is_backface_collision_enabled_36873697 = StringName(from: "is_backface_collision_enabled")
        assert(self._method_is_backface_collision_enabled_36873697 != nil)
    }

    public func set_faces(faces: PackedVector3Array)  {
        let faces_native = faces._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(faces_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_faces_334873810._native_ptr(),
                    334873810)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_faces_497664490._native_ptr(),
                    497664490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector3Array(godot: __resPtr.pointee)
    }
    public func set_backface_collision_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_backface_collision_enabled_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_backface_collision_enabled_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}