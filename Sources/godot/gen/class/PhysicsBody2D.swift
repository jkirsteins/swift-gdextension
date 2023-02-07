import godot_native

fileprivate var __godot_name_PhysicsBody2D: StringName! = nil

/// Base class for all objects affected by physics in 2D space.
/// 
/// PhysicsBody2D is an abstract base class for implementing a physics body. All *Body2D types inherit from it.
public class PhysicsBody2D : CollisionObject2D {

    

    public override class var __godot_name: StringName { __godot_name_PhysicsBody2D }

    static var _method_move_and_collide_3198110832: GDExtensionMethodBindPtr! = nil
    static var _method_test_move_1369208982: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_exceptions_2915620761: GDExtensionMethodBindPtr! = nil
    static var _method_add_collision_exception_with_1078189570: GDExtensionMethodBindPtr! = nil
    static var _method_remove_collision_exception_with_1078189570: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_PhysicsBody2D = StringName(from: "PhysicsBody2D")

        let _method_move_and_collide_3198110832_name = StringName(from: "move_and_collide")
        self._method_move_and_collide_3198110832 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_move_and_collide_3198110832_name._native_ptr(), 3198110832)
        assert(PhysicsBody2D._method_move_and_collide_3198110832 != nil)
        let _method_test_move_1369208982_name = StringName(from: "test_move")
        self._method_test_move_1369208982 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_test_move_1369208982_name._native_ptr(), 1369208982)
        assert(PhysicsBody2D._method_test_move_1369208982 != nil)
        let _method_get_collision_exceptions_2915620761_name = StringName(from: "get_collision_exceptions")
        self._method_get_collision_exceptions_2915620761 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collision_exceptions_2915620761_name._native_ptr(), 2915620761)
        assert(PhysicsBody2D._method_get_collision_exceptions_2915620761 != nil)
        let _method_add_collision_exception_with_1078189570_name = StringName(from: "add_collision_exception_with")
        self._method_add_collision_exception_with_1078189570 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_collision_exception_with_1078189570_name._native_ptr(), 1078189570)
        assert(PhysicsBody2D._method_add_collision_exception_with_1078189570 != nil)
        let _method_remove_collision_exception_with_1078189570_name = StringName(from: "remove_collision_exception_with")
        self._method_remove_collision_exception_with_1078189570 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_collision_exception_with_1078189570_name._native_ptr(), 1078189570)
        assert(PhysicsBody2D._method_remove_collision_exception_with_1078189570 != nil)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_move_and_collide_3198110832,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return KinematicCollision2D(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_test_move_1369208982,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collision_exceptions_2915620761,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [PhysicsBody2D](from: __resPtr.pointee)
    }
    public func add_collision_exception_with(body: Node)  {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_collision_exception_with_1078189570,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_collision_exception_with_1078189570,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}