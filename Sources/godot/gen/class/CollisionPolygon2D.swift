import godot_native

fileprivate var __godot_name_CollisionPolygon2D: StringName! = nil

/// Defines a 2D collision polygon.
/// 
/// Provides a concave or convex 2D collision polygon to a [CollisionObject2D] parent. Polygons can be drawn in the editor or specified by a list of vertices. See also [ConvexPolygonShape2D].
///  
/// In the editor, a [CollisionPolygon2D] can be generated from a [Sprite2D]'s outline by selecting a [Sprite2D] node, going to the [b]Sprite2D[/b] menu at the top of the 2D editor viewport then choosing [b]Create CollisionPolygon2D Sibling[/b].
open class CollisionPolygon2D : Node2D {

    public enum BuildMode : Int32 {
        case BUILD_SOLIDS = 0
        case BUILD_SEGMENTS = 1
    }

    public override class var __godot_name: StringName { __godot_name_CollisionPolygon2D }

    static var _method_set_polygon_1509147220: GDExtensionMethodBindPtr! = nil
    static var _method_get_polygon_2961356807: GDExtensionMethodBindPtr! = nil
    static var _method_set_build_mode_2780803135: GDExtensionMethodBindPtr! = nil
    static var _method_get_build_mode_3044948800: GDExtensionMethodBindPtr! = nil
    static var _method_set_disabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_disabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_one_way_collision_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_one_way_collision_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_one_way_collision_margin_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_one_way_collision_margin_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_CollisionPolygon2D = StringName(from: "CollisionPolygon2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_polygon_1509147220_name = StringName(from: "set_polygon")
        self._method_set_polygon_1509147220 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionPolygon2D._native_ptr(), _method_set_polygon_1509147220_name._native_ptr(), 1509147220)
        assert(CollisionPolygon2D._method_set_polygon_1509147220 != nil)
        let _method_get_polygon_2961356807_name = StringName(from: "get_polygon")
        self._method_get_polygon_2961356807 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionPolygon2D._native_ptr(), _method_get_polygon_2961356807_name._native_ptr(), 2961356807)
        assert(CollisionPolygon2D._method_get_polygon_2961356807 != nil)
        let _method_set_build_mode_2780803135_name = StringName(from: "set_build_mode")
        self._method_set_build_mode_2780803135 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionPolygon2D._native_ptr(), _method_set_build_mode_2780803135_name._native_ptr(), 2780803135)
        assert(CollisionPolygon2D._method_set_build_mode_2780803135 != nil)
        let _method_get_build_mode_3044948800_name = StringName(from: "get_build_mode")
        self._method_get_build_mode_3044948800 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionPolygon2D._native_ptr(), _method_get_build_mode_3044948800_name._native_ptr(), 3044948800)
        assert(CollisionPolygon2D._method_get_build_mode_3044948800 != nil)
        let _method_set_disabled_2586408642_name = StringName(from: "set_disabled")
        self._method_set_disabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionPolygon2D._native_ptr(), _method_set_disabled_2586408642_name._native_ptr(), 2586408642)
        assert(CollisionPolygon2D._method_set_disabled_2586408642 != nil)
        let _method_is_disabled_36873697_name = StringName(from: "is_disabled")
        self._method_is_disabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionPolygon2D._native_ptr(), _method_is_disabled_36873697_name._native_ptr(), 36873697)
        assert(CollisionPolygon2D._method_is_disabled_36873697 != nil)
        let _method_set_one_way_collision_2586408642_name = StringName(from: "set_one_way_collision")
        self._method_set_one_way_collision_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionPolygon2D._native_ptr(), _method_set_one_way_collision_2586408642_name._native_ptr(), 2586408642)
        assert(CollisionPolygon2D._method_set_one_way_collision_2586408642 != nil)
        let _method_is_one_way_collision_enabled_36873697_name = StringName(from: "is_one_way_collision_enabled")
        self._method_is_one_way_collision_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionPolygon2D._native_ptr(), _method_is_one_way_collision_enabled_36873697_name._native_ptr(), 36873697)
        assert(CollisionPolygon2D._method_is_one_way_collision_enabled_36873697 != nil)
        let _method_set_one_way_collision_margin_373806689_name = StringName(from: "set_one_way_collision_margin")
        self._method_set_one_way_collision_margin_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionPolygon2D._native_ptr(), _method_set_one_way_collision_margin_373806689_name._native_ptr(), 373806689)
        assert(CollisionPolygon2D._method_set_one_way_collision_margin_373806689 != nil)
        let _method_get_one_way_collision_margin_1740695150_name = StringName(from: "get_one_way_collision_margin")
        self._method_get_one_way_collision_margin_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionPolygon2D._native_ptr(), _method_get_one_way_collision_margin_1740695150_name._native_ptr(), 1740695150)
        assert(CollisionPolygon2D._method_get_one_way_collision_margin_1740695150 != nil)
    }

    public func set_polygon(polygon: PackedVector2Array)  {
        let polygon_native = polygon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(polygon_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_polygon_1509147220,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_polygon() -> PackedVector2Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_polygon_2961356807,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(godot: __resPtr.pointee)
    }
    public func set_build_mode(build_mode: CollisionPolygon2D.BuildMode)  {
        withUnsafePointer(to: build_mode.rawValue) { build_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(build_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_build_mode_2780803135,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_build_mode() -> CollisionPolygon2D.BuildMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_build_mode_3044948800,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CollisionPolygon2D.BuildMode(godot: __resPtr.pointee)
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
}