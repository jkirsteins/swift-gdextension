import godot_native

fileprivate var __godot_name_CollisionShape3D: StringName! = nil

/// Node that represents collision shape data in 3D space.
/// 
/// Editor facility for creating and editing collision shapes in 3D space. Set the [member shape] property to configure the shape. [b]IMPORTANT[/b]: this is an Editor-only helper to create shapes, use [method CollisionObject3D.shape_owner_get_shape] to get the actual shape.
///  
/// You can use this node to represent all sorts of collision shapes, for example, add this to an [Area3D] to give it a detection shape, or add it to a [PhysicsBody3D] to create a solid object.
///  
/// [b]Warning:[/b] A non-uniformly scaled CollisionShape3D node will probably not function as expected. Please make sure to keep its scale uniform (i.e. the same on all axes), and change the size of its [member shape] resource instead.
open class CollisionShape3D : Node3D {

    

    public override class var __godot_name: StringName { __godot_name_CollisionShape3D }

    static var _method_resource_changed_968641751: GDExtensionMethodBindPtr! = nil
    static var _method_set_shape_1549710052: GDExtensionMethodBindPtr! = nil
    static var _method_get_shape_3214262478: GDExtensionMethodBindPtr! = nil
    static var _method_set_disabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_disabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_make_convex_from_siblings_3218959716: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_CollisionShape3D = StringName(from: "CollisionShape3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_resource_changed_968641751_name = StringName(from: "resource_changed")
        self._method_resource_changed_968641751 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionShape3D._native_ptr(), _method_resource_changed_968641751_name._native_ptr(), 968641751)
        assert(CollisionShape3D._method_resource_changed_968641751 != nil)
        let _method_set_shape_1549710052_name = StringName(from: "set_shape")
        self._method_set_shape_1549710052 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionShape3D._native_ptr(), _method_set_shape_1549710052_name._native_ptr(), 1549710052)
        assert(CollisionShape3D._method_set_shape_1549710052 != nil)
        let _method_get_shape_3214262478_name = StringName(from: "get_shape")
        self._method_get_shape_3214262478 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionShape3D._native_ptr(), _method_get_shape_3214262478_name._native_ptr(), 3214262478)
        assert(CollisionShape3D._method_get_shape_3214262478 != nil)
        let _method_set_disabled_2586408642_name = StringName(from: "set_disabled")
        self._method_set_disabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionShape3D._native_ptr(), _method_set_disabled_2586408642_name._native_ptr(), 2586408642)
        assert(CollisionShape3D._method_set_disabled_2586408642 != nil)
        let _method_is_disabled_36873697_name = StringName(from: "is_disabled")
        self._method_is_disabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionShape3D._native_ptr(), _method_is_disabled_36873697_name._native_ptr(), 36873697)
        assert(CollisionShape3D._method_is_disabled_36873697 != nil)
        let _method_make_convex_from_siblings_3218959716_name = StringName(from: "make_convex_from_siblings")
        self._method_make_convex_from_siblings_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionShape3D._native_ptr(), _method_make_convex_from_siblings_3218959716_name._native_ptr(), 3218959716)
        assert(CollisionShape3D._method_make_convex_from_siblings_3218959716 != nil)
    }

    public func resource_changed(resource: Resource)  {
        let resource_native = resource._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(resource_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_resource_changed_968641751,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_shape(shape: Shape3D)  {
        let shape_native = shape._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_shape_1549710052,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_shape() -> Shape3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_shape_3214262478,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Shape3D(godot: __resPtr.pointee)
    }
    public func set_disabled(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_disabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_disabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_disabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func make_convex_from_siblings()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_make_convex_from_siblings_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}