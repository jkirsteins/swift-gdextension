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
open class SpringArm3D : Node3D {

    

    public override class var __godot_name: StringName { __godot_name_SpringArm3D }

    static var _method_get_hit_length_191475506: StringName! = nil
    static var _method_set_length_373806689: StringName! = nil
    static var _method_get_length_1740695150: StringName! = nil
    static var _method_set_shape_1549710052: StringName! = nil
    static var _method_get_shape_3214262478: StringName! = nil
    static var _method_add_excluded_object_2722037293: StringName! = nil
    static var _method_remove_excluded_object_3521089500: StringName! = nil
    static var _method_clear_excluded_objects_3218959716: StringName! = nil
    static var _method_set_collision_mask_1286410249: StringName! = nil
    static var _method_get_collision_mask_2455072627: StringName! = nil
    static var _method_set_margin_373806689: StringName! = nil
    static var _method_get_margin_191475506: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_SpringArm3D == nil)
        __godot_name_SpringArm3D = StringName(from: "SpringArm3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_hit_length_191475506 = StringName(from: "get_hit_length")
        assert(self._method_get_hit_length_191475506 != nil)
        self._method_set_length_373806689 = StringName(from: "set_length")
        assert(self._method_set_length_373806689 != nil)
        self._method_get_length_1740695150 = StringName(from: "get_length")
        assert(self._method_get_length_1740695150 != nil)
        self._method_set_shape_1549710052 = StringName(from: "set_shape")
        assert(self._method_set_shape_1549710052 != nil)
        self._method_get_shape_3214262478 = StringName(from: "get_shape")
        assert(self._method_get_shape_3214262478 != nil)
        self._method_add_excluded_object_2722037293 = StringName(from: "add_excluded_object")
        assert(self._method_add_excluded_object_2722037293 != nil)
        self._method_remove_excluded_object_3521089500 = StringName(from: "remove_excluded_object")
        assert(self._method_remove_excluded_object_3521089500 != nil)
        self._method_clear_excluded_objects_3218959716 = StringName(from: "clear_excluded_objects")
        assert(self._method_clear_excluded_objects_3218959716 != nil)
        self._method_set_collision_mask_1286410249 = StringName(from: "set_collision_mask")
        assert(self._method_set_collision_mask_1286410249 != nil)
        self._method_get_collision_mask_2455072627 = StringName(from: "get_collision_mask")
        assert(self._method_get_collision_mask_2455072627 != nil)
        self._method_set_margin_373806689 = StringName(from: "set_margin")
        assert(self._method_set_margin_373806689 != nil)
        self._method_get_margin_191475506 = StringName(from: "get_margin")
        assert(self._method_get_margin_191475506 != nil)
    }

    public func get_hit_length() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_hit_length_191475506._native_ptr(),
                    191475506)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_length(length: Float64)  {
        withUnsafePointer(to: length) { length_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(length_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_length_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_length_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_shape(shape: Shape3D)  {
        let shape_native = shape._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_shape_1549710052._native_ptr(),
                    1549710052)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_shape_3214262478._native_ptr(),
                    3214262478)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Shape3D(godot: __resPtr.pointee)
    }
    public func add_excluded_object(RID: RID)  {
        let RID_native = RID._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(RID_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_excluded_object_2722037293._native_ptr(),
                    2722037293)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_excluded_object_3521089500._native_ptr(),
                    3521089500)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func clear_excluded_objects()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_excluded_objects_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_collision_mask_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_collision_mask_2455072627._native_ptr(),
                    2455072627)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_margin(margin: Float64)  {
        withUnsafePointer(to: margin) { margin_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(margin_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_margin_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_margin_191475506._native_ptr(),
                    191475506)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
}