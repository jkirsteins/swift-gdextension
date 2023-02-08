import godot_native

fileprivate var __godot_name_LightOccluder2D: StringName! = nil

/// Occludes light cast by a Light2D, casting shadows.
/// 
/// Occludes light cast by a Light2D, casting shadows. The LightOccluder2D must be provided with an [OccluderPolygon2D] in order for the shadow to be computed.
open class LightOccluder2D : Node2D {

    

    public override class var __godot_name: StringName { __godot_name_LightOccluder2D }

    static var _method_set_occluder_polygon_3258315893: GDExtensionMethodBindPtr! = nil
    static var _method_get_occluder_polygon_3962317075: GDExtensionMethodBindPtr! = nil
    static var _method_set_occluder_light_mask_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_occluder_light_mask_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_as_sdf_collision_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_set_as_sdf_collision_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_LightOccluder2D = StringName(from: "LightOccluder2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_occluder_polygon_3258315893_name = StringName(from: "set_occluder_polygon")
        self._method_set_occluder_polygon_3258315893 = self.interface.pointee.classdb_get_method_bind(__godot_name_LightOccluder2D._native_ptr(), _method_set_occluder_polygon_3258315893_name._native_ptr(), 3258315893)
        assert(LightOccluder2D._method_set_occluder_polygon_3258315893 != nil)
        let _method_get_occluder_polygon_3962317075_name = StringName(from: "get_occluder_polygon")
        self._method_get_occluder_polygon_3962317075 = self.interface.pointee.classdb_get_method_bind(__godot_name_LightOccluder2D._native_ptr(), _method_get_occluder_polygon_3962317075_name._native_ptr(), 3962317075)
        assert(LightOccluder2D._method_get_occluder_polygon_3962317075 != nil)
        let _method_set_occluder_light_mask_1286410249_name = StringName(from: "set_occluder_light_mask")
        self._method_set_occluder_light_mask_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_LightOccluder2D._native_ptr(), _method_set_occluder_light_mask_1286410249_name._native_ptr(), 1286410249)
        assert(LightOccluder2D._method_set_occluder_light_mask_1286410249 != nil)
        let _method_get_occluder_light_mask_3905245786_name = StringName(from: "get_occluder_light_mask")
        self._method_get_occluder_light_mask_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_LightOccluder2D._native_ptr(), _method_get_occluder_light_mask_3905245786_name._native_ptr(), 3905245786)
        assert(LightOccluder2D._method_get_occluder_light_mask_3905245786 != nil)
        let _method_set_as_sdf_collision_2586408642_name = StringName(from: "set_as_sdf_collision")
        self._method_set_as_sdf_collision_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_LightOccluder2D._native_ptr(), _method_set_as_sdf_collision_2586408642_name._native_ptr(), 2586408642)
        assert(LightOccluder2D._method_set_as_sdf_collision_2586408642 != nil)
        let _method_is_set_as_sdf_collision_36873697_name = StringName(from: "is_set_as_sdf_collision")
        self._method_is_set_as_sdf_collision_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_LightOccluder2D._native_ptr(), _method_is_set_as_sdf_collision_36873697_name._native_ptr(), 36873697)
        assert(LightOccluder2D._method_is_set_as_sdf_collision_36873697 != nil)
    }

    public func set_occluder_polygon(polygon: OccluderPolygon2D)  {
        let polygon_native = polygon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(polygon_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_occluder_polygon_3258315893,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_occluder_polygon_3962317075,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_occluder_light_mask_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_occluder_light_mask_3905245786,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_as_sdf_collision_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_set_as_sdf_collision_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}