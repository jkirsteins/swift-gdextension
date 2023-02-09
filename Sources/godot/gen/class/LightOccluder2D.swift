import godot_native

fileprivate var __godot_name_LightOccluder2D: StringName! = nil

/// Occludes light cast by a Light2D, casting shadows.
/// 
/// Occludes light cast by a Light2D, casting shadows. The LightOccluder2D must be provided with an [OccluderPolygon2D] in order for the shadow to be computed.
open class LightOccluder2D : Node2D {

    

    public override class var __godot_name: StringName { __godot_name_LightOccluder2D }

    static var _method_set_occluder_polygon_3258315893: StringName! = nil
    static var _method_get_occluder_polygon_3962317075: StringName! = nil
    static var _method_set_occluder_light_mask_1286410249: StringName! = nil
    static var _method_get_occluder_light_mask_3905245786: StringName! = nil
    static var _method_set_as_sdf_collision_2586408642: StringName! = nil
    static var _method_is_set_as_sdf_collision_36873697: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_LightOccluder2D == nil)
        __godot_name_LightOccluder2D = StringName(from: "LightOccluder2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_occluder_polygon_3258315893 = StringName(from: "set_occluder_polygon")
        assert(self._method_set_occluder_polygon_3258315893 != nil)
        self._method_get_occluder_polygon_3962317075 = StringName(from: "get_occluder_polygon")
        assert(self._method_get_occluder_polygon_3962317075 != nil)
        self._method_set_occluder_light_mask_1286410249 = StringName(from: "set_occluder_light_mask")
        assert(self._method_set_occluder_light_mask_1286410249 != nil)
        self._method_get_occluder_light_mask_3905245786 = StringName(from: "get_occluder_light_mask")
        assert(self._method_get_occluder_light_mask_3905245786 != nil)
        self._method_set_as_sdf_collision_2586408642 = StringName(from: "set_as_sdf_collision")
        assert(self._method_set_as_sdf_collision_2586408642 != nil)
        self._method_is_set_as_sdf_collision_36873697 = StringName(from: "is_set_as_sdf_collision")
        assert(self._method_is_set_as_sdf_collision_36873697 != nil)
    }

    public func set_occluder_polygon(polygon: OccluderPolygon2D)  {
        let polygon_native = polygon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(polygon_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_occluder_polygon_3258315893._native_ptr(),
                    3258315893)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_occluder_polygon() -> OccluderPolygon2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_occluder_polygon_3962317075._native_ptr(),
                    3962317075)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return OccluderPolygon2D(godot: __resPtr.pointee)
    }
    public func set_occluder_light_mask(mask: Int64)  {
        withUnsafePointer(to: mask) { mask_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mask_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_occluder_light_mask_1286410249._native_ptr(),
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
    public func get_occluder_light_mask() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_occluder_light_mask_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_as_sdf_collision(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_as_sdf_collision_2586408642._native_ptr(),
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
    public func is_set_as_sdf_collision() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_set_as_sdf_collision_36873697._native_ptr(),
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
}