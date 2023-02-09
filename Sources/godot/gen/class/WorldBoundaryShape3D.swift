import godot_native

fileprivate var __godot_name_WorldBoundaryShape3D: StringName! = nil

/// World boundary (infinite plane) shape resource for 3D physics.
/// 
/// 3D world boundary shape to be added as a [i]direct[/i] child of a [PhysicsBody3D] or [Area3D] using a [CollisionShape3D] node. [WorldBoundaryShape3D] works like an infinite plane and will not allow any physics body to go to the negative side. Note that the [Plane]'s normal matters; anything "below" the plane will collide with it. If the [WorldBoundaryShape3D] is used in a [PhysicsBody3D], it will cause colliding objects placed "below" it to teleport "above" the plane.
///  
/// [b]Performance:[/b] Being a primitive collision shape, [WorldBoundaryShape3D] is fast to check collisions against.
open class WorldBoundaryShape3D : Shape3D {

    

    public override class var __godot_name: StringName { __godot_name_WorldBoundaryShape3D }

    static var _method_set_plane_3505987427: StringName! = nil
    static var _method_get_plane_2753500971: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_WorldBoundaryShape3D == nil)
        __godot_name_WorldBoundaryShape3D = StringName(from: "WorldBoundaryShape3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_plane_3505987427 = StringName(from: "set_plane")
        assert(self._method_set_plane_3505987427 != nil)
        self._method_get_plane_2753500971 = StringName(from: "get_plane")
        assert(self._method_get_plane_2753500971 != nil)
    }

    public func set_plane(plane: Plane)  {
        let plane_native = plane._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(plane_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_plane_3505987427._native_ptr(),
                    3505987427)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_plane_2753500971._native_ptr(),
                    2753500971)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Plane(godot: __resPtr.pointee)
    }
}