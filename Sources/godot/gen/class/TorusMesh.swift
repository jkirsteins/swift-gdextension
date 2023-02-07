import godot_native

fileprivate var __godot_name_TorusMesh: StringName! = nil

/// Class representing a torus [PrimitiveMesh].
/// 
/// Class representing a torus [PrimitiveMesh].
public class TorusMesh : PrimitiveMesh {

    

    public override class var __godot_name: StringName { __godot_name_TorusMesh }

    static var _method_set_inner_radius_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_inner_radius_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_outer_radius_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_outer_radius_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_rings_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_rings_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_ring_segments_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_ring_segments_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_TorusMesh = StringName(from: "TorusMesh")

        let _method_set_inner_radius_373806689_name = StringName(from: "set_inner_radius")
        self._method_set_inner_radius_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_inner_radius_373806689_name._native_ptr(), 373806689)
        assert(TorusMesh._method_set_inner_radius_373806689 != nil)
        let _method_get_inner_radius_1740695150_name = StringName(from: "get_inner_radius")
        self._method_get_inner_radius_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_inner_radius_1740695150_name._native_ptr(), 1740695150)
        assert(TorusMesh._method_get_inner_radius_1740695150 != nil)
        let _method_set_outer_radius_373806689_name = StringName(from: "set_outer_radius")
        self._method_set_outer_radius_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_outer_radius_373806689_name._native_ptr(), 373806689)
        assert(TorusMesh._method_set_outer_radius_373806689 != nil)
        let _method_get_outer_radius_1740695150_name = StringName(from: "get_outer_radius")
        self._method_get_outer_radius_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_outer_radius_1740695150_name._native_ptr(), 1740695150)
        assert(TorusMesh._method_get_outer_radius_1740695150 != nil)
        let _method_set_rings_1286410249_name = StringName(from: "set_rings")
        self._method_set_rings_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_rings_1286410249_name._native_ptr(), 1286410249)
        assert(TorusMesh._method_set_rings_1286410249 != nil)
        let _method_get_rings_3905245786_name = StringName(from: "get_rings")
        self._method_get_rings_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_rings_3905245786_name._native_ptr(), 3905245786)
        assert(TorusMesh._method_get_rings_3905245786 != nil)
        let _method_set_ring_segments_1286410249_name = StringName(from: "set_ring_segments")
        self._method_set_ring_segments_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ring_segments_1286410249_name._native_ptr(), 1286410249)
        assert(TorusMesh._method_set_ring_segments_1286410249 != nil)
        let _method_get_ring_segments_3905245786_name = StringName(from: "get_ring_segments")
        self._method_get_ring_segments_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_ring_segments_3905245786_name._native_ptr(), 3905245786)
        assert(TorusMesh._method_get_ring_segments_3905245786 != nil)
    }

    public func set_inner_radius(radius: Float64)  {
        withUnsafePointer(to: radius) { radius_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(radius_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_inner_radius_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_inner_radius() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_inner_radius_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_outer_radius(radius: Float64)  {
        withUnsafePointer(to: radius) { radius_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(radius_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_outer_radius_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_outer_radius() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_outer_radius_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_rings(rings: Int64)  {
        withUnsafePointer(to: rings) { rings_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rings_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_rings_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_rings() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_rings_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_ring_segments(rings: Int64)  {
        withUnsafePointer(to: rings) { rings_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rings_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ring_segments_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_ring_segments() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ring_segments_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
}