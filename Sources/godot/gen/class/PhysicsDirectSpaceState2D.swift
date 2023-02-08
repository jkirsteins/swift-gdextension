import godot_native

fileprivate var __godot_name_PhysicsDirectSpaceState2D: StringName! = nil

/// Direct access object to a space in the [PhysicsServer2D].
/// 
/// Direct access object to a space in the [PhysicsServer2D]. It's used mainly to do queries against objects and areas residing in a given space.
open class PhysicsDirectSpaceState2D : Object {

    

    public override class var __godot_name: StringName { __godot_name_PhysicsDirectSpaceState2D }

    static var _method_intersect_point_3278207904: GDExtensionMethodBindPtr! = nil
    static var _method_intersect_ray_1590275562: GDExtensionMethodBindPtr! = nil
    static var _method_intersect_shape_3803848594: GDExtensionMethodBindPtr! = nil
    static var _method_cast_motion_711275086: GDExtensionMethodBindPtr! = nil
    static var _method_collide_shape_3803848594: GDExtensionMethodBindPtr! = nil
    static var _method_get_rest_info_2803666496: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_PhysicsDirectSpaceState2D = StringName(from: "PhysicsDirectSpaceState2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_intersect_point_3278207904_name = StringName(from: "intersect_point")
        self._method_intersect_point_3278207904 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectSpaceState2D._native_ptr(), _method_intersect_point_3278207904_name._native_ptr(), 3278207904)
        assert(PhysicsDirectSpaceState2D._method_intersect_point_3278207904 != nil)
        let _method_intersect_ray_1590275562_name = StringName(from: "intersect_ray")
        self._method_intersect_ray_1590275562 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectSpaceState2D._native_ptr(), _method_intersect_ray_1590275562_name._native_ptr(), 1590275562)
        assert(PhysicsDirectSpaceState2D._method_intersect_ray_1590275562 != nil)
        let _method_intersect_shape_3803848594_name = StringName(from: "intersect_shape")
        self._method_intersect_shape_3803848594 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectSpaceState2D._native_ptr(), _method_intersect_shape_3803848594_name._native_ptr(), 3803848594)
        assert(PhysicsDirectSpaceState2D._method_intersect_shape_3803848594 != nil)
        let _method_cast_motion_711275086_name = StringName(from: "cast_motion")
        self._method_cast_motion_711275086 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectSpaceState2D._native_ptr(), _method_cast_motion_711275086_name._native_ptr(), 711275086)
        assert(PhysicsDirectSpaceState2D._method_cast_motion_711275086 != nil)
        let _method_collide_shape_3803848594_name = StringName(from: "collide_shape")
        self._method_collide_shape_3803848594 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectSpaceState2D._native_ptr(), _method_collide_shape_3803848594_name._native_ptr(), 3803848594)
        assert(PhysicsDirectSpaceState2D._method_collide_shape_3803848594 != nil)
        let _method_get_rest_info_2803666496_name = StringName(from: "get_rest_info")
        self._method_get_rest_info_2803666496 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectSpaceState2D._native_ptr(), _method_get_rest_info_2803666496_name._native_ptr(), 2803666496)
        assert(PhysicsDirectSpaceState2D._method_get_rest_info_2803666496 != nil)
    }

    public func intersect_point(parameters: PhysicsPointQueryParameters2D, max_results: Int64) -> [Dictionary] {
        withUnsafePointer(to: max_results) { max_results_native in
        let parameters_native = parameters._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(parameters_native), .init(max_results_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_intersect_point_3278207904,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](godot: __resPtr.pointee)
        }
    }
    public func intersect_ray(parameters: PhysicsRayQueryParameters2D) -> Dictionary {
        let parameters_native = parameters._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(parameters_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_intersect_ray_1590275562,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
    }
    public func intersect_shape(parameters: PhysicsShapeQueryParameters2D, max_results: Int64) -> [Dictionary] {
        withUnsafePointer(to: max_results) { max_results_native in
        let parameters_native = parameters._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(parameters_native), .init(max_results_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_intersect_shape_3803848594,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](godot: __resPtr.pointee)
        }
    }
    public func cast_motion(parameters: PhysicsShapeQueryParameters2D) -> PackedFloat32Array {
        let parameters_native = parameters._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(parameters_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_cast_motion_711275086,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedFloat32Array(godot: __resPtr.pointee)
    }
    public func collide_shape(parameters: PhysicsShapeQueryParameters2D, max_results: Int64) -> [PackedVector2Array] {
        withUnsafePointer(to: max_results) { max_results_native in
        let parameters_native = parameters._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(parameters_native), .init(max_results_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_collide_shape_3803848594,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [PackedVector2Array](godot: __resPtr.pointee)
        }
    }
    public func get_rest_info(parameters: PhysicsShapeQueryParameters2D) -> Dictionary {
        let parameters_native = parameters._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(parameters_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_rest_info_2803666496,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
    }
}