import godot_native

fileprivate var __godot_name_WorldBoundaryShape2D: StringName! = nil

/// World boundary (infinite plane) shape resource for 2D physics.
/// 
/// 2D world boundary shape to be added as a [i]direct[/i] child of a [PhysicsBody2D] or [Area2D] using a [CollisionShape2D] node. [WorldBoundaryShape2D] works like an infinite plane and will not allow any physics body to go to the negative side. Note that the [member normal] matters; anything "below" the plane will collide with it. If the [WorldBoundaryShape2D] is used in a [PhysicsBody2D], it will cause colliding objects placed "below" it to teleport "above" the plane.
///  
/// [b]Performance:[/b] Being a primitive collision shape, [WorldBoundaryShape2D] is fast to check collisions against.
open class WorldBoundaryShape2D : Shape2D {

    

    public override class var __godot_name: StringName { __godot_name_WorldBoundaryShape2D }

    static var _method_set_normal_743155724: StringName! = nil
    static var _method_get_normal_3341600327: StringName! = nil
    static var _method_set_distance_373806689: StringName! = nil
    static var _method_get_distance_1740695150: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_WorldBoundaryShape2D == nil)
        __godot_name_WorldBoundaryShape2D = StringName(from: "WorldBoundaryShape2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_normal_743155724 = StringName(from: "set_normal")
        assert(self._method_set_normal_743155724 != nil)
        self._method_get_normal_3341600327 = StringName(from: "get_normal")
        assert(self._method_get_normal_3341600327 != nil)
        self._method_set_distance_373806689 = StringName(from: "set_distance")
        assert(self._method_set_distance_373806689 != nil)
        self._method_get_distance_1740695150 = StringName(from: "get_distance")
        assert(self._method_get_distance_1740695150 != nil)
    }

    public func set_normal(normal: Vector2)  {
        let normal_native = normal._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(normal_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_normal_743155724._native_ptr(),
                    743155724)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_normal_3341600327._native_ptr(),
                    3341600327)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func set_distance(distance: Float64)  {
        withUnsafePointer(to: distance) { distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(distance_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_distance_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_distance_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
}