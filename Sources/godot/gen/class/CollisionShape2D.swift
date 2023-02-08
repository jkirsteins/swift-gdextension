import godot_native

fileprivate var __godot_name_CollisionShape2D: StringName! = nil

/// Node that represents collision shape data in 2D space.
/// 
/// Editor facility for creating and editing collision shapes in 2D space. Set the [member shape] property to configure the shape. [b]IMPORTANT[/b]: this is an Editor-only helper to create shapes, use [method CollisionObject2D.shape_owner_get_shape] to get the actual shape.
///  
/// You can use this node to represent all sorts of collision shapes, for example, add this to an [Area2D] to give it a detection shape, or add it to a [PhysicsBody2D] to create a solid object.
open class CollisionShape2D : Node2D {

    

    public override class var __godot_name: StringName { __godot_name_CollisionShape2D }

    static var _method_set_shape_771364740: GDExtensionMethodBindPtr! = nil
    static var _method_get_shape_522005891: GDExtensionMethodBindPtr! = nil
    static var _method_set_disabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_disabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_one_way_collision_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_one_way_collision_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_one_way_collision_margin_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_one_way_collision_margin_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_debug_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_debug_color_3444240500: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_CollisionShape2D = StringName(from: "CollisionShape2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_shape_771364740_name = StringName(from: "set_shape")
        self._method_set_shape_771364740 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionShape2D._native_ptr(), _method_set_shape_771364740_name._native_ptr(), 771364740)
        assert(CollisionShape2D._method_set_shape_771364740 != nil)
        let _method_get_shape_522005891_name = StringName(from: "get_shape")
        self._method_get_shape_522005891 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionShape2D._native_ptr(), _method_get_shape_522005891_name._native_ptr(), 522005891)
        assert(CollisionShape2D._method_get_shape_522005891 != nil)
        let _method_set_disabled_2586408642_name = StringName(from: "set_disabled")
        self._method_set_disabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionShape2D._native_ptr(), _method_set_disabled_2586408642_name._native_ptr(), 2586408642)
        assert(CollisionShape2D._method_set_disabled_2586408642 != nil)
        let _method_is_disabled_36873697_name = StringName(from: "is_disabled")
        self._method_is_disabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionShape2D._native_ptr(), _method_is_disabled_36873697_name._native_ptr(), 36873697)
        assert(CollisionShape2D._method_is_disabled_36873697 != nil)
        let _method_set_one_way_collision_2586408642_name = StringName(from: "set_one_way_collision")
        self._method_set_one_way_collision_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionShape2D._native_ptr(), _method_set_one_way_collision_2586408642_name._native_ptr(), 2586408642)
        assert(CollisionShape2D._method_set_one_way_collision_2586408642 != nil)
        let _method_is_one_way_collision_enabled_36873697_name = StringName(from: "is_one_way_collision_enabled")
        self._method_is_one_way_collision_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionShape2D._native_ptr(), _method_is_one_way_collision_enabled_36873697_name._native_ptr(), 36873697)
        assert(CollisionShape2D._method_is_one_way_collision_enabled_36873697 != nil)
        let _method_set_one_way_collision_margin_373806689_name = StringName(from: "set_one_way_collision_margin")
        self._method_set_one_way_collision_margin_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionShape2D._native_ptr(), _method_set_one_way_collision_margin_373806689_name._native_ptr(), 373806689)
        assert(CollisionShape2D._method_set_one_way_collision_margin_373806689 != nil)
        let _method_get_one_way_collision_margin_1740695150_name = StringName(from: "get_one_way_collision_margin")
        self._method_get_one_way_collision_margin_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionShape2D._native_ptr(), _method_get_one_way_collision_margin_1740695150_name._native_ptr(), 1740695150)
        assert(CollisionShape2D._method_get_one_way_collision_margin_1740695150 != nil)
        let _method_set_debug_color_2920490490_name = StringName(from: "set_debug_color")
        self._method_set_debug_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionShape2D._native_ptr(), _method_set_debug_color_2920490490_name._native_ptr(), 2920490490)
        assert(CollisionShape2D._method_set_debug_color_2920490490 != nil)
        let _method_get_debug_color_3444240500_name = StringName(from: "get_debug_color")
        self._method_get_debug_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionShape2D._native_ptr(), _method_get_debug_color_3444240500_name._native_ptr(), 3444240500)
        assert(CollisionShape2D._method_get_debug_color_3444240500 != nil)
    }

    public func set_shape(shape: Shape2D)  {
        let shape_native = shape._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_shape_771364740,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_shape() -> Shape2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_shape_522005891,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Shape2D(godot: __resPtr.pointee)
    }
    public func set_disabled(disabled: UInt8)  {
        withUnsafePointer(to: disabled) { disabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(disabled_native)
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
    public func set_one_way_collision(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_one_way_collision_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_one_way_collision_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_one_way_collision_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_one_way_collision_margin(margin: Float64)  {
        withUnsafePointer(to: margin) { margin_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(margin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_one_way_collision_margin_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_one_way_collision_margin() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_one_way_collision_margin_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_debug_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_debug_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_debug_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_debug_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
}