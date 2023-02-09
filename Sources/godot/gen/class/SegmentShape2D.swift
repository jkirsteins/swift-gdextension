import godot_native

fileprivate var __godot_name_SegmentShape2D: StringName! = nil

/// Segment shape resource for 2D physics.
/// 
/// 2D segment shape to be added as a [i]direct[/i] child of a [PhysicsBody2D] or [Area2D] using a [CollisionShape2D] node. Consists of two points, [code]a[/code] and [code]b[/code].
///  
/// [b]Performance:[/b] Being a primitive collision shape, [SegmentShape2D] is fast to check collisions against (though not as fast as [CircleShape2D]).
open class SegmentShape2D : Shape2D {

    

    public override class var __godot_name: StringName { __godot_name_SegmentShape2D }

    static var _method_set_a_743155724: StringName! = nil
    static var _method_get_a_3341600327: StringName! = nil
    static var _method_set_b_743155724: StringName! = nil
    static var _method_get_b_3341600327: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_SegmentShape2D == nil)
        __godot_name_SegmentShape2D = StringName(from: "SegmentShape2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_a_743155724 = StringName(from: "set_a")
        assert(self._method_set_a_743155724 != nil)
        self._method_get_a_3341600327 = StringName(from: "get_a")
        assert(self._method_get_a_3341600327 != nil)
        self._method_set_b_743155724 = StringName(from: "set_b")
        assert(self._method_set_b_743155724 != nil)
        self._method_get_b_3341600327 = StringName(from: "get_b")
        assert(self._method_get_b_3341600327 != nil)
    }

    public func set_a(a: Vector2)  {
        let a_native = a._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(a_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_a_743155724._native_ptr(),
                    743155724)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_a_3341600327._native_ptr(),
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
    public func set_b(b: Vector2)  {
        let b_native = b._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(b_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_b_743155724._native_ptr(),
                    743155724)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_b_3341600327._native_ptr(),
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
}