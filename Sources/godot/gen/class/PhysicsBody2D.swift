import godot_native

fileprivate var __godot_name_PhysicsBody2D: StringName! = nil

/// Base class for all objects affected by physics in 2D space.
/// 
/// PhysicsBody2D is an abstract base class for implementing a physics body. All *Body2D types inherit from it.
open class PhysicsBody2D : CollisionObject2D {

    

    public override class var __godot_name: StringName { __godot_name_PhysicsBody2D }

    static var _method_move_and_collide_3198110832: StringName! = nil
    static var _method_test_move_1369208982: StringName! = nil
    static var _method_get_collision_exceptions_2915620761: StringName! = nil
    static var _method_add_collision_exception_with_1078189570: StringName! = nil
    static var _method_remove_collision_exception_with_1078189570: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_PhysicsBody2D == nil)
        __godot_name_PhysicsBody2D = StringName(from: "PhysicsBody2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_move_and_collide_3198110832 = StringName(from: "move_and_collide")
        assert(self._method_move_and_collide_3198110832 != nil)
        self._method_test_move_1369208982 = StringName(from: "test_move")
        assert(self._method_test_move_1369208982 != nil)
        self._method_get_collision_exceptions_2915620761 = StringName(from: "get_collision_exceptions")
        assert(self._method_get_collision_exceptions_2915620761 != nil)
        self._method_add_collision_exception_with_1078189570 = StringName(from: "add_collision_exception_with")
        assert(self._method_add_collision_exception_with_1078189570 != nil)
        self._method_remove_collision_exception_with_1078189570 = StringName(from: "remove_collision_exception_with")
        assert(self._method_remove_collision_exception_with_1078189570 != nil)
    }

    public func move_and_collide(motion: Vector2, test_only: UInt8, safe_margin: Float64, recovery_as_collision: UInt8) -> KinematicCollision2D {
        withUnsafePointer(to: recovery_as_collision) { recovery_as_collision_native in
        withUnsafePointer(to: safe_margin) { safe_margin_native in
        withUnsafePointer(to: test_only) { test_only_native in
        let motion_native = motion._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(motion_native), .init(test_only_native), .init(safe_margin_native), .init(recovery_as_collision_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_move_and_collide_3198110832._native_ptr(),
                    3198110832)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return KinematicCollision2D(godot: __resPtr.pointee)
        }
        }
        }
    }
    public func test_move(from: Transform2D, motion: Vector2, collision: KinematicCollision2D, safe_margin: Float64, recovery_as_collision: UInt8) -> UInt8 {
        withUnsafePointer(to: recovery_as_collision) { recovery_as_collision_native in
        withUnsafePointer(to: safe_margin) { safe_margin_native in
        let collision_native = collision._native_ptr()
        let motion_native = motion._native_ptr()
        let from_native = from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native), .init(motion_native), .init(collision_native), .init(safe_margin_native), .init(recovery_as_collision_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_test_move_1369208982._native_ptr(),
                    1369208982)
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
    }
    public func get_collision_exceptions() -> [PhysicsBody2D] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_collision_exceptions_2915620761._native_ptr(),
                    2915620761)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [PhysicsBody2D](godot: __resPtr.pointee)
    }
    public func add_collision_exception_with(body: Node)  {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_collision_exception_with_1078189570._native_ptr(),
                    1078189570)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_collision_exception_with(body: Node)  {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_collision_exception_with_1078189570._native_ptr(),
                    1078189570)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}