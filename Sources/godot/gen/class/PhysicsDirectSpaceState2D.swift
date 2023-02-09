import godot_native

fileprivate var __godot_name_PhysicsDirectSpaceState2D: StringName! = nil

/// Direct access object to a space in the [PhysicsServer2D].
/// 
/// Direct access object to a space in the [PhysicsServer2D]. It's used mainly to do queries against objects and areas residing in a given space.
open class PhysicsDirectSpaceState2D : Object {

    

    public override class var __godot_name: StringName { __godot_name_PhysicsDirectSpaceState2D }

    static var _method_intersect_point_3278207904: StringName! = nil
    static var _method_intersect_ray_1590275562: StringName! = nil
    static var _method_intersect_shape_3803848594: StringName! = nil
    static var _method_cast_motion_711275086: StringName! = nil
    static var _method_collide_shape_3803848594: StringName! = nil
    static var _method_get_rest_info_2803666496: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_PhysicsDirectSpaceState2D == nil)
        __godot_name_PhysicsDirectSpaceState2D = StringName(from: "PhysicsDirectSpaceState2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_intersect_point_3278207904 = StringName(from: "intersect_point")
        assert(self._method_intersect_point_3278207904 != nil)
        self._method_intersect_ray_1590275562 = StringName(from: "intersect_ray")
        assert(self._method_intersect_ray_1590275562 != nil)
        self._method_intersect_shape_3803848594 = StringName(from: "intersect_shape")
        assert(self._method_intersect_shape_3803848594 != nil)
        self._method_cast_motion_711275086 = StringName(from: "cast_motion")
        assert(self._method_cast_motion_711275086 != nil)
        self._method_collide_shape_3803848594 = StringName(from: "collide_shape")
        assert(self._method_collide_shape_3803848594 != nil)
        self._method_get_rest_info_2803666496 = StringName(from: "get_rest_info")
        assert(self._method_get_rest_info_2803666496 != nil)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_intersect_point_3278207904._native_ptr(),
                    3278207904)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_intersect_ray_1590275562._native_ptr(),
                    1590275562)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_intersect_shape_3803848594._native_ptr(),
                    3803848594)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_cast_motion_711275086._native_ptr(),
                    711275086)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_collide_shape_3803848594._native_ptr(),
                    3803848594)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_rest_info_2803666496._native_ptr(),
                    2803666496)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
    }
}