import godot_native

fileprivate var __godot_name_PhysicsBody3D: StringName! = nil

/// Base class for all objects affected by physics in 3D space.
/// 
/// PhysicsBody3D is an abstract base class for implementing a physics body. All *Body3D types inherit from it.
///  
/// [b]Warning:[/b] With a non-uniform scale this node will probably not function as expected. Please make sure to keep its scale uniform (i.e. the same on all axes), and change the size(s) of its collision shape(s) instead.
open class PhysicsBody3D : CollisionObject3D {

    

    public override class var __godot_name: StringName { __godot_name_PhysicsBody3D }

    static var _method_move_and_collide_1140990067: GDExtensionMethodBindPtr! = nil
    static var _method_test_move_2082761915: GDExtensionMethodBindPtr! = nil
    static var _method_set_axis_lock_1787895195: GDExtensionMethodBindPtr! = nil
    static var _method_get_axis_lock_2264617709: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_exceptions_2915620761: GDExtensionMethodBindPtr! = nil
    static var _method_add_collision_exception_with_1078189570: GDExtensionMethodBindPtr! = nil
    static var _method_remove_collision_exception_with_1078189570: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_PhysicsBody3D = StringName(from: "PhysicsBody3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_move_and_collide_1140990067_name = StringName(from: "move_and_collide")
        self._method_move_and_collide_1140990067 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsBody3D._native_ptr(), _method_move_and_collide_1140990067_name._native_ptr(), 1140990067)
        assert(PhysicsBody3D._method_move_and_collide_1140990067 != nil)
        let _method_test_move_2082761915_name = StringName(from: "test_move")
        self._method_test_move_2082761915 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsBody3D._native_ptr(), _method_test_move_2082761915_name._native_ptr(), 2082761915)
        assert(PhysicsBody3D._method_test_move_2082761915 != nil)
        let _method_set_axis_lock_1787895195_name = StringName(from: "set_axis_lock")
        self._method_set_axis_lock_1787895195 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsBody3D._native_ptr(), _method_set_axis_lock_1787895195_name._native_ptr(), 1787895195)
        assert(PhysicsBody3D._method_set_axis_lock_1787895195 != nil)
        let _method_get_axis_lock_2264617709_name = StringName(from: "get_axis_lock")
        self._method_get_axis_lock_2264617709 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsBody3D._native_ptr(), _method_get_axis_lock_2264617709_name._native_ptr(), 2264617709)
        assert(PhysicsBody3D._method_get_axis_lock_2264617709 != nil)
        let _method_get_collision_exceptions_2915620761_name = StringName(from: "get_collision_exceptions")
        self._method_get_collision_exceptions_2915620761 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsBody3D._native_ptr(), _method_get_collision_exceptions_2915620761_name._native_ptr(), 2915620761)
        assert(PhysicsBody3D._method_get_collision_exceptions_2915620761 != nil)
        let _method_add_collision_exception_with_1078189570_name = StringName(from: "add_collision_exception_with")
        self._method_add_collision_exception_with_1078189570 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsBody3D._native_ptr(), _method_add_collision_exception_with_1078189570_name._native_ptr(), 1078189570)
        assert(PhysicsBody3D._method_add_collision_exception_with_1078189570 != nil)
        let _method_remove_collision_exception_with_1078189570_name = StringName(from: "remove_collision_exception_with")
        self._method_remove_collision_exception_with_1078189570 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsBody3D._native_ptr(), _method_remove_collision_exception_with_1078189570_name._native_ptr(), 1078189570)
        assert(PhysicsBody3D._method_remove_collision_exception_with_1078189570 != nil)
    }

    public func move_and_collide(motion: Vector3, test_only: UInt8, safe_margin: Float64, recovery_as_collision: UInt8, max_collisions: Int64) -> KinematicCollision3D {
        withUnsafePointer(to: max_collisions) { max_collisions_native in
        withUnsafePointer(to: recovery_as_collision) { recovery_as_collision_native in
        withUnsafePointer(to: safe_margin) { safe_margin_native in
        withUnsafePointer(to: test_only) { test_only_native in
        let motion_native = motion._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(motion_native), .init(test_only_native), .init(safe_margin_native), .init(recovery_as_collision_native), .init(max_collisions_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_move_and_collide_1140990067,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return KinematicCollision3D(godot: __resPtr.pointee)
        }
        }
        }
        }
    }
    public func test_move(from: Transform3D, motion: Vector3, collision: KinematicCollision3D, safe_margin: Float64, recovery_as_collision: UInt8, max_collisions: Int64) -> UInt8 {
        withUnsafePointer(to: max_collisions) { max_collisions_native in
        withUnsafePointer(to: recovery_as_collision) { recovery_as_collision_native in
        withUnsafePointer(to: safe_margin) { safe_margin_native in
        let collision_native = collision._native_ptr()
        let motion_native = motion._native_ptr()
        let from_native = from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native), .init(motion_native), .init(collision_native), .init(safe_margin_native), .init(recovery_as_collision_native), .init(max_collisions_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_test_move_2082761915,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
        }
        }
    }
    public func set_axis_lock(axis: PhysicsServer3D.BodyAxis, lock: UInt8)  {
        withUnsafePointer(to: lock) { lock_native in
        withUnsafePointer(to: axis.rawValue) { axis_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(axis_native), .init(lock_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_axis_lock_1787895195,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_axis_lock(axis: PhysicsServer3D.BodyAxis) -> UInt8 {
        withUnsafePointer(to: axis.rawValue) { axis_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(axis_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_axis_lock_2264617709,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func get_collision_exceptions() -> [PhysicsBody3D] {
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
            return [PhysicsBody3D](godot: __resPtr.pointee)
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