import godot_native

fileprivate var __godot_name_SegmentShape2D: StringName! = nil

/// Segment shape resource for 2D physics.
/// 
/// 2D segment shape to be added as a [i]direct[/i] child of a [PhysicsBody2D] or [Area2D] using a [CollisionShape2D] node. Consists of two points, [code]a[/code] and [code]b[/code].
///  
/// [b]Performance:[/b] Being a primitive collision shape, [SegmentShape2D] is fast to check collisions against (though not as fast as [CircleShape2D]).
public class SegmentShape2D : Shape2D {

    

    public override class var __godot_name: StringName { __godot_name_SegmentShape2D }

    static var _method_set_a_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_a_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_b_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_b_3341600327: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_SegmentShape2D = StringName(from: "SegmentShape2D")

        let _method_set_a_743155724_name = StringName(from: "set_a")
        self._method_set_a_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_a_743155724_name._native_ptr(), 743155724)
        assert(SegmentShape2D._method_set_a_743155724 != nil)
        let _method_get_a_3341600327_name = StringName(from: "get_a")
        self._method_get_a_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_a_3341600327_name._native_ptr(), 3341600327)
        assert(SegmentShape2D._method_get_a_3341600327 != nil)
        let _method_set_b_743155724_name = StringName(from: "set_b")
        self._method_set_b_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_b_743155724_name._native_ptr(), 743155724)
        assert(SegmentShape2D._method_set_b_743155724 != nil)
        let _method_get_b_3341600327_name = StringName(from: "get_b")
        self._method_get_b_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_b_3341600327_name._native_ptr(), 3341600327)
        assert(SegmentShape2D._method_get_b_3341600327 != nil)
    }

    public func set_a(a: Vector2)  {
        let a_native = a._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(a_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_a_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_a() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_a_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func set_b(b: Vector2)  {
        let b_native = b._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(b_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_b_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_b() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_b_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
}