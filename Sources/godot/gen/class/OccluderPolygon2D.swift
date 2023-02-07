import godot_native

fileprivate var __godot_name_OccluderPolygon2D: StringName! = nil

/// Defines a 2D polygon for LightOccluder2D.
/// 
/// Editor facility that helps you draw a 2D polygon used as resource for [LightOccluder2D].
public class OccluderPolygon2D : Resource {

    public enum CullMode : Int32 {
        case CULL_DISABLED = 0
        case CULL_CLOCKWISE = 1
        case CULL_COUNTER_CLOCKWISE = 2
    }

    public override class var __godot_name: StringName { __godot_name_OccluderPolygon2D }

    static var _method_set_closed_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_closed_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_cull_mode_3500863002: GDExtensionMethodBindPtr! = nil
    static var _method_get_cull_mode_33931036: GDExtensionMethodBindPtr! = nil
    static var _method_set_polygon_1509147220: GDExtensionMethodBindPtr! = nil
    static var _method_get_polygon_2961356807: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_OccluderPolygon2D = StringName(from: "OccluderPolygon2D")

        let _method_set_closed_2586408642_name = StringName(from: "set_closed")
        self._method_set_closed_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_closed_2586408642_name._native_ptr(), 2586408642)
        assert(OccluderPolygon2D._method_set_closed_2586408642 != nil)
        let _method_is_closed_36873697_name = StringName(from: "is_closed")
        self._method_is_closed_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_closed_36873697_name._native_ptr(), 36873697)
        assert(OccluderPolygon2D._method_is_closed_36873697 != nil)
        let _method_set_cull_mode_3500863002_name = StringName(from: "set_cull_mode")
        self._method_set_cull_mode_3500863002 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_cull_mode_3500863002_name._native_ptr(), 3500863002)
        assert(OccluderPolygon2D._method_set_cull_mode_3500863002 != nil)
        let _method_get_cull_mode_33931036_name = StringName(from: "get_cull_mode")
        self._method_get_cull_mode_33931036 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_cull_mode_33931036_name._native_ptr(), 33931036)
        assert(OccluderPolygon2D._method_get_cull_mode_33931036 != nil)
        let _method_set_polygon_1509147220_name = StringName(from: "set_polygon")
        self._method_set_polygon_1509147220 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_polygon_1509147220_name._native_ptr(), 1509147220)
        assert(OccluderPolygon2D._method_set_polygon_1509147220 != nil)
        let _method_get_polygon_2961356807_name = StringName(from: "get_polygon")
        self._method_get_polygon_2961356807 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_polygon_2961356807_name._native_ptr(), 2961356807)
        assert(OccluderPolygon2D._method_get_polygon_2961356807 != nil)
    }

    public func set_closed(closed: UInt8)  {
        withUnsafePointer(to: closed) { closed_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(closed_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_closed_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_closed() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_closed_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_cull_mode(cull_mode: OccluderPolygon2D.CullMode)  {
        withUnsafePointer(to: cull_mode.rawValue) { cull_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cull_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cull_mode_3500863002,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_cull_mode() -> OccluderPolygon2D.CullMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cull_mode_33931036,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return OccluderPolygon2D.CullMode(from: __resPtr.pointee)
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
}