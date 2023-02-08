import godot_native

fileprivate var __godot_name_PhysicsDirectSpaceState2DExtension: StringName! = nil

/// 
/// 
/// 
open class PhysicsDirectSpaceState2DExtension : PhysicsDirectSpaceState2D {

    

    public override class var __godot_name: StringName { __godot_name_PhysicsDirectSpaceState2DExtension }

    static var _method__intersect_ray_0: GDExtensionMethodBindPtr! = nil
    static var _method__intersect_point_0: GDExtensionMethodBindPtr! = nil
    static var _method__intersect_shape_0: GDExtensionMethodBindPtr! = nil
    static var _method__cast_motion_0: GDExtensionMethodBindPtr! = nil
    static var _method__collide_shape_0: GDExtensionMethodBindPtr! = nil
    static var _method__rest_info_0: GDExtensionMethodBindPtr! = nil
    static var _method_is_body_excluded_from_query_4155700596: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_PhysicsDirectSpaceState2DExtension = StringName(from: "PhysicsDirectSpaceState2DExtension")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_is_body_excluded_from_query_4155700596_name = StringName(from: "is_body_excluded_from_query")
        self._method_is_body_excluded_from_query_4155700596 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectSpaceState2DExtension._native_ptr(), _method_is_body_excluded_from_query_4155700596_name._native_ptr(), 4155700596)
        assert(PhysicsDirectSpaceState2DExtension._method_is_body_excluded_from_query_4155700596 != nil)
    }

    public func _intersect_ray(from: Vector2, to: Vector2, collision_mask: Int64, collide_with_bodies: UInt8, collide_with_areas: UInt8, hit_from_inside: UInt8, result: UnsafePointer<PhysicsServer2DExtensionRayResult>) -> UInt8 {
        withUnsafePointer(to: result) { result_native in
        withUnsafePointer(to: hit_from_inside) { hit_from_inside_native in
        withUnsafePointer(to: collide_with_areas) { collide_with_areas_native in
        withUnsafePointer(to: collide_with_bodies) { collide_with_bodies_native in
        withUnsafePointer(to: collision_mask) { collision_mask_native in
        let to_native = to._native_ptr()
        let from_native = from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 7)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native), .init(to_native), .init(collision_mask_native), .init(collide_with_bodies_native), .init(collide_with_areas_native), .init(hit_from_inside_native), .init(result_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__intersect_ray_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
        }
        }
        }
        }
    }
    public func _intersect_point(position: Vector2, canvas_instance_id: Int64, collision_mask: Int64, collide_with_bodies: UInt8, collide_with_areas: UInt8, results: UnsafePointer<PhysicsServer2DExtensionShapeResult>, max_results: Int64) -> Int64 {
        withUnsafePointer(to: max_results) { max_results_native in
        withUnsafePointer(to: results) { results_native in
        withUnsafePointer(to: collide_with_areas) { collide_with_areas_native in
        withUnsafePointer(to: collide_with_bodies) { collide_with_bodies_native in
        withUnsafePointer(to: collision_mask) { collision_mask_native in
        withUnsafePointer(to: canvas_instance_id) { canvas_instance_id_native in
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 7)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native), .init(canvas_instance_id_native), .init(collision_mask_native), .init(collide_with_bodies_native), .init(collide_with_areas_native), .init(results_native), .init(max_results_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__intersect_point_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
        }
        }
        }
        }
        }
    }
    public func _intersect_shape(shape_rid: RID, transform: Transform2D, motion: Vector2, margin: Float64, collision_mask: Int64, collide_with_bodies: UInt8, collide_with_areas: UInt8, result: UnsafePointer<PhysicsServer2DExtensionShapeResult>, max_results: Int64) -> Int64 {
        withUnsafePointer(to: max_results) { max_results_native in
        withUnsafePointer(to: result) { result_native in
        withUnsafePointer(to: collide_with_areas) { collide_with_areas_native in
        withUnsafePointer(to: collide_with_bodies) { collide_with_bodies_native in
        withUnsafePointer(to: collision_mask) { collision_mask_native in
        withUnsafePointer(to: margin) { margin_native in
        let motion_native = motion._native_ptr()
        let transform_native = transform._native_ptr()
        let shape_rid_native = shape_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 9)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_rid_native), .init(transform_native), .init(motion_native), .init(margin_native), .init(collision_mask_native), .init(collide_with_bodies_native), .init(collide_with_areas_native), .init(result_native), .init(max_results_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__intersect_shape_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
        }
        }
        }
        }
        }
    }
    public func _cast_motion(shape_rid: RID, transform: Transform2D, motion: Vector2, margin: Float64, collision_mask: Int64, collide_with_bodies: UInt8, collide_with_areas: UInt8, closest_safe: UnsafeMutablePointer<Float64>, closest_unsafe: UnsafeMutablePointer<Float64>) -> UInt8 {
        withUnsafePointer(to: closest_unsafe) { closest_unsafe_native in
        withUnsafePointer(to: closest_safe) { closest_safe_native in
        withUnsafePointer(to: collide_with_areas) { collide_with_areas_native in
        withUnsafePointer(to: collide_with_bodies) { collide_with_bodies_native in
        withUnsafePointer(to: collision_mask) { collision_mask_native in
        withUnsafePointer(to: margin) { margin_native in
        let motion_native = motion._native_ptr()
        let transform_native = transform._native_ptr()
        let shape_rid_native = shape_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 9)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_rid_native), .init(transform_native), .init(motion_native), .init(margin_native), .init(collision_mask_native), .init(collide_with_bodies_native), .init(collide_with_areas_native), .init(closest_safe_native), .init(closest_unsafe_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__cast_motion_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
        }
        }
        }
        }
        }
    }
    public func _collide_shape(shape_rid: RID, transform: Transform2D, motion: Vector2, margin: Float64, collision_mask: Int64, collide_with_bodies: UInt8, collide_with_areas: UInt8, results: UnsafeMutableRawPointer, max_results: Int64, result_count: UnsafeMutablePointer<Int32>) -> UInt8 {
        withUnsafePointer(to: result_count) { result_count_native in
        withUnsafePointer(to: max_results) { max_results_native in
        withUnsafePointer(to: results) { results_native in
        withUnsafePointer(to: collide_with_areas) { collide_with_areas_native in
        withUnsafePointer(to: collide_with_bodies) { collide_with_bodies_native in
        withUnsafePointer(to: collision_mask) { collision_mask_native in
        withUnsafePointer(to: margin) { margin_native in
        let motion_native = motion._native_ptr()
        let transform_native = transform._native_ptr()
        let shape_rid_native = shape_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 10)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_rid_native), .init(transform_native), .init(motion_native), .init(margin_native), .init(collision_mask_native), .init(collide_with_bodies_native), .init(collide_with_areas_native), .init(results_native), .init(max_results_native), .init(result_count_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__collide_shape_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
        }
        }
        }
        }
        }
        }
    }
    public func _rest_info(shape_rid: RID, transform: Transform2D, motion: Vector2, margin: Float64, collision_mask: Int64, collide_with_bodies: UInt8, collide_with_areas: UInt8, rest_info: UnsafePointer<PhysicsServer2DExtensionShapeRestInfo>) -> UInt8 {
        withUnsafePointer(to: rest_info) { rest_info_native in
        withUnsafePointer(to: collide_with_areas) { collide_with_areas_native in
        withUnsafePointer(to: collide_with_bodies) { collide_with_bodies_native in
        withUnsafePointer(to: collision_mask) { collision_mask_native in
        withUnsafePointer(to: margin) { margin_native in
        let motion_native = motion._native_ptr()
        let transform_native = transform._native_ptr()
        let shape_rid_native = shape_rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 8)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_rid_native), .init(transform_native), .init(motion_native), .init(margin_native), .init(collision_mask_native), .init(collide_with_bodies_native), .init(collide_with_areas_native), .init(rest_info_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__rest_info_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
        }
        }
        }
        }
    }
    public func is_body_excluded_from_query(body: RID) -> UInt8 {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_body_excluded_from_query_4155700596,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}