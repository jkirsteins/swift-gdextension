import godot_native

fileprivate var __godot_name_PhysicsRayQueryParameters2D: StringName! = nil

/// Parameters to be sent to a 2D ray physics query.
/// 
/// This class contains the ray position and other parameters to be used for [method PhysicsDirectSpaceState2D.intersect_ray].
public class PhysicsRayQueryParameters2D : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_PhysicsRayQueryParameters2D }

    static var _method_create_1118143851: GDExtensionMethodBindPtr! = nil
    static var _method_set_from_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_from_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_to_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_to_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_collision_mask_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_mask_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_exclude_381264803: GDExtensionMethodBindPtr! = nil
    static var _method_get_exclude_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_set_collide_with_bodies_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_collide_with_bodies_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_collide_with_areas_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_collide_with_areas_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_hit_from_inside_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_hit_from_inside_enabled_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_PhysicsRayQueryParameters2D = StringName(from: "PhysicsRayQueryParameters2D")

        let _method_create_1118143851_name = StringName(from: "create")
        self._method_create_1118143851 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_1118143851_name._native_ptr(), 1118143851)
        assert(PhysicsRayQueryParameters2D._method_create_1118143851 != nil)
        let _method_set_from_743155724_name = StringName(from: "set_from")
        self._method_set_from_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_from_743155724_name._native_ptr(), 743155724)
        assert(PhysicsRayQueryParameters2D._method_set_from_743155724 != nil)
        let _method_get_from_3341600327_name = StringName(from: "get_from")
        self._method_get_from_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_from_3341600327_name._native_ptr(), 3341600327)
        assert(PhysicsRayQueryParameters2D._method_get_from_3341600327 != nil)
        let _method_set_to_743155724_name = StringName(from: "set_to")
        self._method_set_to_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_to_743155724_name._native_ptr(), 743155724)
        assert(PhysicsRayQueryParameters2D._method_set_to_743155724 != nil)
        let _method_get_to_3341600327_name = StringName(from: "get_to")
        self._method_get_to_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_to_3341600327_name._native_ptr(), 3341600327)
        assert(PhysicsRayQueryParameters2D._method_get_to_3341600327 != nil)
        let _method_set_collision_mask_1286410249_name = StringName(from: "set_collision_mask")
        self._method_set_collision_mask_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collision_mask_1286410249_name._native_ptr(), 1286410249)
        assert(PhysicsRayQueryParameters2D._method_set_collision_mask_1286410249 != nil)
        let _method_get_collision_mask_3905245786_name = StringName(from: "get_collision_mask")
        self._method_get_collision_mask_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collision_mask_3905245786_name._native_ptr(), 3905245786)
        assert(PhysicsRayQueryParameters2D._method_get_collision_mask_3905245786 != nil)
        let _method_set_exclude_381264803_name = StringName(from: "set_exclude")
        self._method_set_exclude_381264803 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_exclude_381264803_name._native_ptr(), 381264803)
        assert(PhysicsRayQueryParameters2D._method_set_exclude_381264803 != nil)
        let _method_get_exclude_3995934104_name = StringName(from: "get_exclude")
        self._method_get_exclude_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_exclude_3995934104_name._native_ptr(), 3995934104)
        assert(PhysicsRayQueryParameters2D._method_get_exclude_3995934104 != nil)
        let _method_set_collide_with_bodies_2586408642_name = StringName(from: "set_collide_with_bodies")
        self._method_set_collide_with_bodies_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collide_with_bodies_2586408642_name._native_ptr(), 2586408642)
        assert(PhysicsRayQueryParameters2D._method_set_collide_with_bodies_2586408642 != nil)
        let _method_is_collide_with_bodies_enabled_36873697_name = StringName(from: "is_collide_with_bodies_enabled")
        self._method_is_collide_with_bodies_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_collide_with_bodies_enabled_36873697_name._native_ptr(), 36873697)
        assert(PhysicsRayQueryParameters2D._method_is_collide_with_bodies_enabled_36873697 != nil)
        let _method_set_collide_with_areas_2586408642_name = StringName(from: "set_collide_with_areas")
        self._method_set_collide_with_areas_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collide_with_areas_2586408642_name._native_ptr(), 2586408642)
        assert(PhysicsRayQueryParameters2D._method_set_collide_with_areas_2586408642 != nil)
        let _method_is_collide_with_areas_enabled_36873697_name = StringName(from: "is_collide_with_areas_enabled")
        self._method_is_collide_with_areas_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_collide_with_areas_enabled_36873697_name._native_ptr(), 36873697)
        assert(PhysicsRayQueryParameters2D._method_is_collide_with_areas_enabled_36873697 != nil)
        let _method_set_hit_from_inside_2586408642_name = StringName(from: "set_hit_from_inside")
        self._method_set_hit_from_inside_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_hit_from_inside_2586408642_name._native_ptr(), 2586408642)
        assert(PhysicsRayQueryParameters2D._method_set_hit_from_inside_2586408642 != nil)
        let _method_is_hit_from_inside_enabled_36873697_name = StringName(from: "is_hit_from_inside_enabled")
        self._method_is_hit_from_inside_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_hit_from_inside_enabled_36873697_name._native_ptr(), 36873697)
        assert(PhysicsRayQueryParameters2D._method_is_hit_from_inside_enabled_36873697 != nil)
    }

    public func create(from: Vector2, to: Vector2, collision_mask: Int64, exclude: [RID]) -> PhysicsRayQueryParameters2D {
        withUnsafePointer(to: collision_mask) { collision_mask_native in
        let exclude_native = exclude._native_ptr()
        let to_native = to._native_ptr()
        let from_native = from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native), .init(to_native), .init(collision_mask_native), .init(exclude_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_1118143851,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PhysicsRayQueryParameters2D(from: __resPtr.pointee)
        }
    }
    public func set_from(from: Vector2)  {
        let from_native = from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_from_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_from() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_from_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func set_to(to: Vector2)  {
        let to_native = to._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(to_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_to_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_to() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_to_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
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
    public func set_hit_from_inside(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_hit_from_inside_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_hit_from_inside_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_hit_from_inside_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}