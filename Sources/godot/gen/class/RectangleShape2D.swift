import godot_native

fileprivate var __godot_name_RectangleShape2D: StringName! = nil

/// Rectangle shape resource for 2D physics.
/// 
/// 2D rectangle shape to be added as a [i]direct[/i] child of a [PhysicsBody2D] or [Area2D] using a [CollisionShape2D] node. This shape is useful for modeling box-like 2D objects.
///  
/// [b]Performance:[/b] Being a primitive collision shape, [RectangleShape2D] is fast to check collisions against (though not as fast as [CircleShape2D]).
public class RectangleShape2D : Shape2D {

    

    public override class var __godot_name: StringName { __godot_name_RectangleShape2D }

    static var _method_set_size_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_size_3341600327: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_RectangleShape2D = StringName(from: "RectangleShape2D")

        let _method_set_size_743155724_name = StringName(from: "set_size")
        self._method_set_size_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_size_743155724_name._native_ptr(), 743155724)
        assert(RectangleShape2D._method_set_size_743155724 != nil)
        let _method_get_size_3341600327_name = StringName(from: "get_size")
        self._method_get_size_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_size_3341600327_name._native_ptr(), 3341600327)
        assert(RectangleShape2D._method_get_size_3341600327 != nil)
    }

    public func set_size(size: Vector2)  {
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_size_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_size() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_size_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
}