import godot_native

fileprivate var __godot_name_DampedSpringJoint2D: StringName! = nil

/// Damped spring constraint for 2D physics.
/// 
/// Damped spring constraint for 2D physics. This resembles a spring joint that always wants to go back to a given length.
public class DampedSpringJoint2D : Joint2D {

    

    public override class var __godot_name: StringName { __godot_name_DampedSpringJoint2D }

    static var _method_set_length_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_length_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_rest_length_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_rest_length_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_stiffness_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_stiffness_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_damping_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_damping_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_DampedSpringJoint2D = StringName(from: "DampedSpringJoint2D")

        let _method_set_length_373806689_name = StringName(from: "set_length")
        self._method_set_length_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_length_373806689_name._native_ptr(), 373806689)
        assert(DampedSpringJoint2D._method_set_length_373806689 != nil)
        let _method_get_length_1740695150_name = StringName(from: "get_length")
        self._method_get_length_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_length_1740695150_name._native_ptr(), 1740695150)
        assert(DampedSpringJoint2D._method_get_length_1740695150 != nil)
        let _method_set_rest_length_373806689_name = StringName(from: "set_rest_length")
        self._method_set_rest_length_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_rest_length_373806689_name._native_ptr(), 373806689)
        assert(DampedSpringJoint2D._method_set_rest_length_373806689 != nil)
        let _method_get_rest_length_1740695150_name = StringName(from: "get_rest_length")
        self._method_get_rest_length_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_rest_length_1740695150_name._native_ptr(), 1740695150)
        assert(DampedSpringJoint2D._method_get_rest_length_1740695150 != nil)
        let _method_set_stiffness_373806689_name = StringName(from: "set_stiffness")
        self._method_set_stiffness_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_stiffness_373806689_name._native_ptr(), 373806689)
        assert(DampedSpringJoint2D._method_set_stiffness_373806689 != nil)
        let _method_get_stiffness_1740695150_name = StringName(from: "get_stiffness")
        self._method_get_stiffness_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_stiffness_1740695150_name._native_ptr(), 1740695150)
        assert(DampedSpringJoint2D._method_get_stiffness_1740695150 != nil)
        let _method_set_damping_373806689_name = StringName(from: "set_damping")
        self._method_set_damping_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_damping_373806689_name._native_ptr(), 373806689)
        assert(DampedSpringJoint2D._method_set_damping_373806689 != nil)
        let _method_get_damping_1740695150_name = StringName(from: "get_damping")
        self._method_get_damping_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_damping_1740695150_name._native_ptr(), 1740695150)
        assert(DampedSpringJoint2D._method_get_damping_1740695150 != nil)
    }

    public func set_length(length: Float64)  {
        withUnsafePointer(to: length) { length_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(length_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_length_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_length() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_length_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_rest_length(rest_length: Float64)  {
        withUnsafePointer(to: rest_length) { rest_length_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rest_length_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_rest_length_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_rest_length() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_rest_length_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_stiffness(stiffness: Float64)  {
        withUnsafePointer(to: stiffness) { stiffness_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(stiffness_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_stiffness_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_stiffness() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_stiffness_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_damping(damping: Float64)  {
        withUnsafePointer(to: damping) { damping_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(damping_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_damping_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_damping() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_damping_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
}