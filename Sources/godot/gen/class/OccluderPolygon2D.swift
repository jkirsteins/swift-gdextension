import godot_native

fileprivate var __godot_name_OccluderPolygon2D: StringName! = nil

/// Defines a 2D polygon for LightOccluder2D.
/// 
/// Editor facility that helps you draw a 2D polygon used as resource for [LightOccluder2D].
open class OccluderPolygon2D : Resource {

    public enum CullMode : Int32 {
        case CULL_DISABLED = 0
        case CULL_CLOCKWISE = 1
        case CULL_COUNTER_CLOCKWISE = 2
    }

    public override class var __godot_name: StringName { __godot_name_OccluderPolygon2D }

    static var _method_set_closed_2586408642: StringName! = nil
    static var _method_is_closed_36873697: StringName! = nil
    static var _method_set_cull_mode_3500863002: StringName! = nil
    static var _method_get_cull_mode_33931036: StringName! = nil
    static var _method_set_polygon_1509147220: StringName! = nil
    static var _method_get_polygon_2961356807: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_OccluderPolygon2D == nil)
        __godot_name_OccluderPolygon2D = StringName(from: "OccluderPolygon2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_closed_2586408642 = StringName(from: "set_closed")
        assert(self._method_set_closed_2586408642 != nil)
        self._method_is_closed_36873697 = StringName(from: "is_closed")
        assert(self._method_is_closed_36873697 != nil)
        self._method_set_cull_mode_3500863002 = StringName(from: "set_cull_mode")
        assert(self._method_set_cull_mode_3500863002 != nil)
        self._method_get_cull_mode_33931036 = StringName(from: "get_cull_mode")
        assert(self._method_get_cull_mode_33931036 != nil)
        self._method_set_polygon_1509147220 = StringName(from: "set_polygon")
        assert(self._method_set_polygon_1509147220 != nil)
        self._method_get_polygon_2961356807 = StringName(from: "get_polygon")
        assert(self._method_get_polygon_2961356807 != nil)
    }

    public func set_closed(closed: UInt8)  {
        withUnsafePointer(to: closed) { closed_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(closed_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_closed_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_closed_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_cull_mode(cull_mode: OccluderPolygon2D.CullMode)  {
        withUnsafePointer(to: cull_mode.rawValue) { cull_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cull_mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_cull_mode_3500863002._native_ptr(),
                    3500863002)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_cull_mode_33931036._native_ptr(),
                    33931036)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return OccluderPolygon2D.CullMode(godot: __resPtr.pointee)
    }
    public func set_polygon(polygon: PackedVector2Array)  {
        let polygon_native = polygon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(polygon_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_polygon_1509147220._native_ptr(),
                    1509147220)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_polygon_2961356807._native_ptr(),
                    2961356807)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(godot: __resPtr.pointee)
    }
}