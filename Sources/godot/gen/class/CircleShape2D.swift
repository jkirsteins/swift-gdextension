import godot_native

fileprivate var __godot_name_CircleShape2D: StringName! = nil

/// Circular shape resource for 2D physics.
/// 
/// 2D circular shape to be added as a [i]direct[/i] child of a [PhysicsBody2D] or [Area2D] using a [CollisionShape2D] node. This shape is useful for modeling balls or small characters and its collision detection with everything else is very fast.
///  
/// [b]Performance:[/b] Being a primitive collision shape, [CircleShape2D] is the fastest collision shape to check collisions against, as it only requires a distance check with the shape's origin.
open class CircleShape2D : Shape2D {

    

    public override class var __godot_name: StringName { __godot_name_CircleShape2D }

    static var _method_set_radius_373806689: StringName! = nil
    static var _method_get_radius_1740695150: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_CircleShape2D == nil)
        __godot_name_CircleShape2D = StringName(from: "CircleShape2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_radius_373806689 = StringName(from: "set_radius")
        assert(self._method_set_radius_373806689 != nil)
        self._method_get_radius_1740695150 = StringName(from: "get_radius")
        assert(self._method_get_radius_1740695150 != nil)
    }

    public func set_radius(radius: Float64)  {
        withUnsafePointer(to: radius) { radius_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(radius_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_radius_373806689._native_ptr(),
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
    public func get_radius() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_radius_1740695150._native_ptr(),
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