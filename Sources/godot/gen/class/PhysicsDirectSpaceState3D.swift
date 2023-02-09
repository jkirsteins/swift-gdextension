import godot_native

fileprivate var __godot_name_PhysicsDirectSpaceState3D: StringName! = nil

/// Direct access object to a space in the [PhysicsServer3D].
/// 
/// Direct access object to a space in the [PhysicsServer3D]. It's used mainly to do queries against objects and areas residing in a given space.
open class PhysicsDirectSpaceState3D : Object {

    

    public override class var __godot_name: StringName { __godot_name_PhysicsDirectSpaceState3D }

    static var _method_intersect_point_45993382: StringName! = nil
    static var _method_intersect_ray_3957970750: StringName! = nil
    static var _method_intersect_shape_550215980: StringName! = nil
    static var _method_cast_motion_1778757334: StringName! = nil
    static var _method_collide_shape_550215980: StringName! = nil
    static var _method_get_rest_info_1376751592: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_PhysicsDirectSpaceState3D == nil)
        __godot_name_PhysicsDirectSpaceState3D = StringName(from: "PhysicsDirectSpaceState3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_intersect_point_45993382 = StringName(from: "intersect_point")
        assert(self._method_intersect_point_45993382 != nil)
        self._method_intersect_ray_3957970750 = StringName(from: "intersect_ray")
        assert(self._method_intersect_ray_3957970750 != nil)
        self._method_intersect_shape_550215980 = StringName(from: "intersect_shape")
        assert(self._method_intersect_shape_550215980 != nil)
        self._method_cast_motion_1778757334 = StringName(from: "cast_motion")
        assert(self._method_cast_motion_1778757334 != nil)
        self._method_collide_shape_550215980 = StringName(from: "collide_shape")
        assert(self._method_collide_shape_550215980 != nil)
        self._method_get_rest_info_1376751592 = StringName(from: "get_rest_info")
        assert(self._method_get_rest_info_1376751592 != nil)
    }

    public func intersect_point(parameters: PhysicsPointQueryParameters3D, max_results: Int64) -> [Dictionary] {
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
                    Self._method_intersect_point_45993382._native_ptr(),
                    45993382)
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
    public func intersect_ray(parameters: PhysicsRayQueryParameters3D) -> Dictionary {
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
                    Self._method_intersect_ray_3957970750._native_ptr(),
                    3957970750)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
    }
    public func intersect_shape(parameters: PhysicsShapeQueryParameters3D, max_results: Int64) -> [Dictionary] {
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
                    Self._method_intersect_shape_550215980._native_ptr(),
                    550215980)
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
    public func cast_motion(parameters: PhysicsShapeQueryParameters3D) -> PackedFloat32Array {
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
                    Self._method_cast_motion_1778757334._native_ptr(),
                    1778757334)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedFloat32Array(godot: __resPtr.pointee)
    }
    public func collide_shape(parameters: PhysicsShapeQueryParameters3D, max_results: Int64) -> [PackedVector2Array] {
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
                    Self._method_collide_shape_550215980._native_ptr(),
                    550215980)
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
    public func get_rest_info(parameters: PhysicsShapeQueryParameters3D) -> Dictionary {
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
                    Self._method_get_rest_info_1376751592._native_ptr(),
                    1376751592)
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