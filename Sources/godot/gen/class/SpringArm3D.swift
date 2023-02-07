import godot_native

fileprivate var __godot_name_SpringArm3D: StringName! = nil

/// A helper node, mostly used in 3rd person cameras.
/// 
/// The SpringArm3D node is a node that casts a ray (or collision shape) along its z axis and moves all its direct children to the collision point, minus a margin.
///  
/// The most common use case for this is to make a 3rd person camera that reacts to collisions in the environment.
///  
/// The SpringArm3D will either cast a ray, or if a shape is given, it will cast the shape in the direction of its z axis.
///  
/// If you use the SpringArm3D as a camera controller for your player, you might need to exclude the player's collider from the SpringArm3D's collision check.
public class SpringArm3D : Node3D {

    

    public override class var __godot_name: StringName { __godot_name_SpringArm3D }

    static var _method_get_hit_length_191475506: GDExtensionMethodBindPtr! = nil
    static var _method_set_length_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_length_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_shape_1549710052: GDExtensionMethodBindPtr! = nil
    static var _method_get_shape_3214262478: GDExtensionMethodBindPtr! = nil
    static var _method_add_excluded_object_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_remove_excluded_object_3521089500: GDExtensionMethodBindPtr! = nil
    static var _method_clear_excluded_objects_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_collision_mask_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_mask_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_set_margin_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_margin_191475506: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_SpringArm3D = StringName(from: "SpringArm3D")

        let _method_get_hit_length_191475506_name = StringName(from: "get_hit_length")
        self._method_get_hit_length_191475506 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_hit_length_191475506_name._native_ptr(), 191475506)
        assert(SpringArm3D._method_get_hit_length_191475506 != nil)
        let _method_set_length_373806689_name = StringName(from: "set_length")
        self._method_set_length_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_length_373806689_name._native_ptr(), 373806689)
        assert(SpringArm3D._method_set_length_373806689 != nil)
        let _method_get_length_1740695150_name = StringName(from: "get_length")
        self._method_get_length_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_length_1740695150_name._native_ptr(), 1740695150)
        assert(SpringArm3D._method_get_length_1740695150 != nil)
        let _method_set_shape_1549710052_name = StringName(from: "set_shape")
        self._method_set_shape_1549710052 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_shape_1549710052_name._native_ptr(), 1549710052)
        assert(SpringArm3D._method_set_shape_1549710052 != nil)
        let _method_get_shape_3214262478_name = StringName(from: "get_shape")
        self._method_get_shape_3214262478 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_shape_3214262478_name._native_ptr(), 3214262478)
        assert(SpringArm3D._method_get_shape_3214262478 != nil)
        let _method_add_excluded_object_2722037293_name = StringName(from: "add_excluded_object")
        self._method_add_excluded_object_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_excluded_object_2722037293_name._native_ptr(), 2722037293)
        assert(SpringArm3D._method_add_excluded_object_2722037293 != nil)
        let _method_remove_excluded_object_3521089500_name = StringName(from: "remove_excluded_object")
        self._method_remove_excluded_object_3521089500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_excluded_object_3521089500_name._native_ptr(), 3521089500)
        assert(SpringArm3D._method_remove_excluded_object_3521089500 != nil)
        let _method_clear_excluded_objects_3218959716_name = StringName(from: "clear_excluded_objects")
        self._method_clear_excluded_objects_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_excluded_objects_3218959716_name._native_ptr(), 3218959716)
        assert(SpringArm3D._method_clear_excluded_objects_3218959716 != nil)
        let _method_set_collision_mask_1286410249_name = StringName(from: "set_collision_mask")
        self._method_set_collision_mask_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collision_mask_1286410249_name._native_ptr(), 1286410249)
        assert(SpringArm3D._method_set_collision_mask_1286410249 != nil)
        let _method_get_collision_mask_2455072627_name = StringName(from: "get_collision_mask")
        self._method_get_collision_mask_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collision_mask_2455072627_name._native_ptr(), 2455072627)
        assert(SpringArm3D._method_get_collision_mask_2455072627 != nil)
        let _method_set_margin_373806689_name = StringName(from: "set_margin")
        self._method_set_margin_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_margin_373806689_name._native_ptr(), 373806689)
        assert(SpringArm3D._method_set_margin_373806689 != nil)
        let _method_get_margin_191475506_name = StringName(from: "get_margin")
        self._method_get_margin_191475506 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_margin_191475506_name._native_ptr(), 191475506)
        assert(SpringArm3D._method_get_margin_191475506 != nil)
    }

    public func get_hit_length() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_hit_length_191475506,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
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
            return Shape3D(from: __resPtr.pointee)
    }
    public func add_excluded_object(RID: RID)  {
        let RID_native = RID._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(RID_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_excluded_object_2722037293,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_excluded_object(RID: RID) -> UInt8 {
        let RID_native = RID._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(RID_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_excluded_object_3521089500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func clear_excluded_objects()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_excluded_objects_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_collision_mask(mask: Int64)  {
        withUnsafePointer(to: mask) { mask_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mask_native)
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
                    Self._method_get_collision_mask_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
                    Self._method_get_margin_191475506,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
}