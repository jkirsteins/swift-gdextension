import godot_native

fileprivate var __godot_name_PhysicsMaterial: StringName! = nil

/// A material for physics properties.
/// 
/// Provides a means of modifying the collision properties of a [PhysicsBody3D].
public class PhysicsMaterial : Resource {

    

    public override class var __godot_name: StringName { __godot_name_PhysicsMaterial }

    static var _method_set_friction_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_friction_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_rough_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_rough_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_bounce_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_bounce_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_absorbent_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_absorbent_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_PhysicsMaterial = StringName(from: "PhysicsMaterial")

        let _method_set_friction_373806689_name = StringName(from: "set_friction")
        self._method_set_friction_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_friction_373806689_name._native_ptr(), 373806689)
        assert(PhysicsMaterial._method_set_friction_373806689 != nil)
        let _method_get_friction_1740695150_name = StringName(from: "get_friction")
        self._method_get_friction_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_friction_1740695150_name._native_ptr(), 1740695150)
        assert(PhysicsMaterial._method_get_friction_1740695150 != nil)
        let _method_set_rough_2586408642_name = StringName(from: "set_rough")
        self._method_set_rough_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_rough_2586408642_name._native_ptr(), 2586408642)
        assert(PhysicsMaterial._method_set_rough_2586408642 != nil)
        let _method_is_rough_36873697_name = StringName(from: "is_rough")
        self._method_is_rough_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_rough_36873697_name._native_ptr(), 36873697)
        assert(PhysicsMaterial._method_is_rough_36873697 != nil)
        let _method_set_bounce_373806689_name = StringName(from: "set_bounce")
        self._method_set_bounce_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_bounce_373806689_name._native_ptr(), 373806689)
        assert(PhysicsMaterial._method_set_bounce_373806689 != nil)
        let _method_get_bounce_1740695150_name = StringName(from: "get_bounce")
        self._method_get_bounce_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_bounce_1740695150_name._native_ptr(), 1740695150)
        assert(PhysicsMaterial._method_get_bounce_1740695150 != nil)
        let _method_set_absorbent_2586408642_name = StringName(from: "set_absorbent")
        self._method_set_absorbent_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_absorbent_2586408642_name._native_ptr(), 2586408642)
        assert(PhysicsMaterial._method_set_absorbent_2586408642 != nil)
        let _method_is_absorbent_36873697_name = StringName(from: "is_absorbent")
        self._method_is_absorbent_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_absorbent_36873697_name._native_ptr(), 36873697)
        assert(PhysicsMaterial._method_is_absorbent_36873697 != nil)
    }

    public func set_friction(friction: Float64)  {
        withUnsafePointer(to: friction) { friction_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(friction_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_friction_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_friction() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_friction_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_rough(rough: UInt8)  {
        withUnsafePointer(to: rough) { rough_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rough_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_rough_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_rough() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_rough_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_bounce(bounce: Float64)  {
        withUnsafePointer(to: bounce) { bounce_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bounce_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bounce_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_bounce() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bounce_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_absorbent(absorbent: UInt8)  {
        withUnsafePointer(to: absorbent) { absorbent_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(absorbent_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_absorbent_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_absorbent() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_absorbent_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}