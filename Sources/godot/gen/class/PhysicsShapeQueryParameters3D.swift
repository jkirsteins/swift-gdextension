import godot_native

fileprivate var __godot_name_PhysicsShapeQueryParameters3D: StringName! = nil

/// Parameters to be sent to a 3D shape physics query.
/// 
/// This class contains the shape and other parameters for [PhysicsDirectSpaceState3D] intersection/collision queries.
public class PhysicsShapeQueryParameters3D : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_PhysicsShapeQueryParameters3D }

    static var _method_set_shape_968641751: GDExtensionMethodBindPtr! = nil
    static var _method_get_shape_121922552: GDExtensionMethodBindPtr! = nil
    static var _method_set_shape_rid_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_get_shape_rid_2944877500: GDExtensionMethodBindPtr! = nil
    static var _method_set_transform_2952846383: GDExtensionMethodBindPtr! = nil
    static var _method_get_transform_3229777777: GDExtensionMethodBindPtr! = nil
    static var _method_set_motion_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_motion_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_margin_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_margin_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_collision_mask_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_mask_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_exclude_381264803: GDExtensionMethodBindPtr! = nil
    static var _method_get_exclude_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_set_collide_with_bodies_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_collide_with_bodies_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_collide_with_areas_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_collide_with_areas_enabled_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_PhysicsShapeQueryParameters3D = StringName(from: "PhysicsShapeQueryParameters3D")

        let _method_set_shape_968641751_name = StringName(from: "set_shape")
        self._method_set_shape_968641751 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_shape_968641751_name._native_ptr(), 968641751)
        assert(PhysicsShapeQueryParameters3D._method_set_shape_968641751 != nil)
        let _method_get_shape_121922552_name = StringName(from: "get_shape")
        self._method_get_shape_121922552 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_shape_121922552_name._native_ptr(), 121922552)
        assert(PhysicsShapeQueryParameters3D._method_get_shape_121922552 != nil)
        let _method_set_shape_rid_2722037293_name = StringName(from: "set_shape_rid")
        self._method_set_shape_rid_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_shape_rid_2722037293_name._native_ptr(), 2722037293)
        assert(PhysicsShapeQueryParameters3D._method_set_shape_rid_2722037293 != nil)
        let _method_get_shape_rid_2944877500_name = StringName(from: "get_shape_rid")
        self._method_get_shape_rid_2944877500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_shape_rid_2944877500_name._native_ptr(), 2944877500)
        assert(PhysicsShapeQueryParameters3D._method_get_shape_rid_2944877500 != nil)
        let _method_set_transform_2952846383_name = StringName(from: "set_transform")
        self._method_set_transform_2952846383 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_transform_2952846383_name._native_ptr(), 2952846383)
        assert(PhysicsShapeQueryParameters3D._method_set_transform_2952846383 != nil)
        let _method_get_transform_3229777777_name = StringName(from: "get_transform")
        self._method_get_transform_3229777777 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_transform_3229777777_name._native_ptr(), 3229777777)
        assert(PhysicsShapeQueryParameters3D._method_get_transform_3229777777 != nil)
        let _method_set_motion_3460891852_name = StringName(from: "set_motion")
        self._method_set_motion_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_motion_3460891852_name._native_ptr(), 3460891852)
        assert(PhysicsShapeQueryParameters3D._method_set_motion_3460891852 != nil)
        let _method_get_motion_3360562783_name = StringName(from: "get_motion")
        self._method_get_motion_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_motion_3360562783_name._native_ptr(), 3360562783)
        assert(PhysicsShapeQueryParameters3D._method_get_motion_3360562783 != nil)
        let _method_set_margin_373806689_name = StringName(from: "set_margin")
        self._method_set_margin_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_margin_373806689_name._native_ptr(), 373806689)
        assert(PhysicsShapeQueryParameters3D._method_set_margin_373806689 != nil)
        let _method_get_margin_1740695150_name = StringName(from: "get_margin")
        self._method_get_margin_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_margin_1740695150_name._native_ptr(), 1740695150)
        assert(PhysicsShapeQueryParameters3D._method_get_margin_1740695150 != nil)
        let _method_set_collision_mask_1286410249_name = StringName(from: "set_collision_mask")
        self._method_set_collision_mask_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collision_mask_1286410249_name._native_ptr(), 1286410249)
        assert(PhysicsShapeQueryParameters3D._method_set_collision_mask_1286410249 != nil)
        let _method_get_collision_mask_3905245786_name = StringName(from: "get_collision_mask")
        self._method_get_collision_mask_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collision_mask_3905245786_name._native_ptr(), 3905245786)
        assert(PhysicsShapeQueryParameters3D._method_get_collision_mask_3905245786 != nil)
        let _method_set_exclude_381264803_name = StringName(from: "set_exclude")
        self._method_set_exclude_381264803 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_exclude_381264803_name._native_ptr(), 381264803)
        assert(PhysicsShapeQueryParameters3D._method_set_exclude_381264803 != nil)
        let _method_get_exclude_3995934104_name = StringName(from: "get_exclude")
        self._method_get_exclude_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_exclude_3995934104_name._native_ptr(), 3995934104)
        assert(PhysicsShapeQueryParameters3D._method_get_exclude_3995934104 != nil)
        let _method_set_collide_with_bodies_2586408642_name = StringName(from: "set_collide_with_bodies")
        self._method_set_collide_with_bodies_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collide_with_bodies_2586408642_name._native_ptr(), 2586408642)
        assert(PhysicsShapeQueryParameters3D._method_set_collide_with_bodies_2586408642 != nil)
        let _method_is_collide_with_bodies_enabled_36873697_name = StringName(from: "is_collide_with_bodies_enabled")
        self._method_is_collide_with_bodies_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_collide_with_bodies_enabled_36873697_name._native_ptr(), 36873697)
        assert(PhysicsShapeQueryParameters3D._method_is_collide_with_bodies_enabled_36873697 != nil)
        let _method_set_collide_with_areas_2586408642_name = StringName(from: "set_collide_with_areas")
        self._method_set_collide_with_areas_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collide_with_areas_2586408642_name._native_ptr(), 2586408642)
        assert(PhysicsShapeQueryParameters3D._method_set_collide_with_areas_2586408642 != nil)
        let _method_is_collide_with_areas_enabled_36873697_name = StringName(from: "is_collide_with_areas_enabled")
        self._method_is_collide_with_areas_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_collide_with_areas_enabled_36873697_name._native_ptr(), 36873697)
        assert(PhysicsShapeQueryParameters3D._method_is_collide_with_areas_enabled_36873697 != nil)
    }

    public func set_shape(shape: Resource)  {
        let shape_native = shape._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_shape_968641751,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_shape() -> Resource {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_shape_121922552,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Resource(from: __resPtr.pointee)
    }
    public func set_shape_rid(shape: RID)  {
        let shape_native = shape._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_shape_rid_2722037293,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_shape_rid() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_shape_rid_2944877500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func set_transform(transform: Transform3D)  {
        let transform_native = transform._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_transform_2952846383,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_transform() -> Transform3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_transform_3229777777,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(from: __resPtr.pointee)
    }
    public func set_motion(motion: Vector3)  {
        let motion_native = motion._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(motion_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_motion_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_motion() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_motion_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func set_margin(margin: Float64)  {
        withUnsafePointer(to: margin) { margin_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(margin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_margin_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_margin() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_margin_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_collision_mask(collision_mask: Int64)  {
        withUnsafePointer(to: collision_mask) { collision_mask_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(collision_mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_collision_mask_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_collision_mask() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collision_mask_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_exclude(exclude: [RID])  {
        let exclude_native = exclude._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(exclude_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_exclude_381264803,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_exclude() -> [RID] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_exclude_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [RID](from: __resPtr.pointee)
    }
    public func set_collide_with_bodies(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_collide_with_bodies_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_collide_with_bodies_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_collide_with_bodies_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_collide_with_areas(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_collide_with_areas_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_collide_with_areas_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_collide_with_areas_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}