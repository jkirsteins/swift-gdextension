import godot_native

fileprivate var __godot_name_CollisionPolygon3D: StringName! = nil

/// Editor-only node for defining a collision polygon in 3D space.
/// 
/// Allows editing a concave or convex collision polygon's vertices on a selected plane. Can also set a depth perpendicular to that plane. This class is only available in the editor. It will not appear in the scene tree at run-time. Creates several [ConvexPolygonShape3D]s at run-time to represent the original polygon using convex decomposition.
///  
/// [b]Note:[/b] Since this is an editor-only helper, properties modified during gameplay will have no effect.
///  
/// [b]Warning:[/b] A non-uniformly scaled CollisionPolygon3D node will probably not function as expected. Please make sure to keep its scale uniform (i.e. the same on all axes), and change its [member polygon]'s vertices instead.
public class CollisionPolygon3D : Node3D {

    

    public override class var __godot_name: StringName { __godot_name_CollisionPolygon3D }

    static var _method_set_depth_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_depth_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_polygon_1509147220: GDExtensionMethodBindPtr! = nil
    static var _method_get_polygon_2961356807: GDExtensionMethodBindPtr! = nil
    static var _method_set_disabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_disabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_margin_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_margin_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_CollisionPolygon3D = StringName(from: "CollisionPolygon3D")

        let _method_set_depth_373806689_name = StringName(from: "set_depth")
        self._method_set_depth_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_depth_373806689_name._native_ptr(), 373806689)
        assert(CollisionPolygon3D._method_set_depth_373806689 != nil)
        let _method_get_depth_1740695150_name = StringName(from: "get_depth")
        self._method_get_depth_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_depth_1740695150_name._native_ptr(), 1740695150)
        assert(CollisionPolygon3D._method_get_depth_1740695150 != nil)
        let _method_set_polygon_1509147220_name = StringName(from: "set_polygon")
        self._method_set_polygon_1509147220 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_polygon_1509147220_name._native_ptr(), 1509147220)
        assert(CollisionPolygon3D._method_set_polygon_1509147220 != nil)
        let _method_get_polygon_2961356807_name = StringName(from: "get_polygon")
        self._method_get_polygon_2961356807 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_polygon_2961356807_name._native_ptr(), 2961356807)
        assert(CollisionPolygon3D._method_get_polygon_2961356807 != nil)
        let _method_set_disabled_2586408642_name = StringName(from: "set_disabled")
        self._method_set_disabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_disabled_2586408642_name._native_ptr(), 2586408642)
        assert(CollisionPolygon3D._method_set_disabled_2586408642 != nil)
        let _method_is_disabled_36873697_name = StringName(from: "is_disabled")
        self._method_is_disabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_disabled_36873697_name._native_ptr(), 36873697)
        assert(CollisionPolygon3D._method_is_disabled_36873697 != nil)
        let _method_set_margin_373806689_name = StringName(from: "set_margin")
        self._method_set_margin_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_margin_373806689_name._native_ptr(), 373806689)
        assert(CollisionPolygon3D._method_set_margin_373806689 != nil)
        let _method_get_margin_1740695150_name = StringName(from: "get_margin")
        self._method_get_margin_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_margin_1740695150_name._native_ptr(), 1740695150)
        assert(CollisionPolygon3D._method_get_margin_1740695150 != nil)
    }

    public func set_depth(depth: Float64)  {
        withUnsafePointer(to: depth) { depth_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(depth_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_depth_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_depth() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_depth_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
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
            return PackedVector2Array(from: __resPtr.pointee)
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
            return UInt8(from: __resPtr.pointee)
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
}