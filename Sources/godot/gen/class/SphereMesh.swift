import godot_native

fileprivate var __godot_name_SphereMesh: StringName! = nil

/// Class representing a spherical [PrimitiveMesh].
/// 
/// Class representing a spherical [PrimitiveMesh].
public class SphereMesh : PrimitiveMesh {

    

    public override class var __godot_name: StringName { __godot_name_SphereMesh }

    static var _method_set_radius_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_radius_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_height_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_height_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_radial_segments_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_radial_segments_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_rings_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_rings_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_is_hemisphere_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_is_hemisphere_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_SphereMesh = StringName(from: "SphereMesh")

        let _method_set_radius_373806689_name = StringName(from: "set_radius")
        self._method_set_radius_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_radius_373806689_name._native_ptr(), 373806689)
        assert(SphereMesh._method_set_radius_373806689 != nil)
        let _method_get_radius_1740695150_name = StringName(from: "get_radius")
        self._method_get_radius_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_radius_1740695150_name._native_ptr(), 1740695150)
        assert(SphereMesh._method_get_radius_1740695150 != nil)
        let _method_set_height_373806689_name = StringName(from: "set_height")
        self._method_set_height_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_height_373806689_name._native_ptr(), 373806689)
        assert(SphereMesh._method_set_height_373806689 != nil)
        let _method_get_height_1740695150_name = StringName(from: "get_height")
        self._method_get_height_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_height_1740695150_name._native_ptr(), 1740695150)
        assert(SphereMesh._method_get_height_1740695150 != nil)
        let _method_set_radial_segments_1286410249_name = StringName(from: "set_radial_segments")
        self._method_set_radial_segments_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_radial_segments_1286410249_name._native_ptr(), 1286410249)
        assert(SphereMesh._method_set_radial_segments_1286410249 != nil)
        let _method_get_radial_segments_3905245786_name = StringName(from: "get_radial_segments")
        self._method_get_radial_segments_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_radial_segments_3905245786_name._native_ptr(), 3905245786)
        assert(SphereMesh._method_get_radial_segments_3905245786 != nil)
        let _method_set_rings_1286410249_name = StringName(from: "set_rings")
        self._method_set_rings_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_rings_1286410249_name._native_ptr(), 1286410249)
        assert(SphereMesh._method_set_rings_1286410249 != nil)
        let _method_get_rings_3905245786_name = StringName(from: "get_rings")
        self._method_get_rings_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_rings_3905245786_name._native_ptr(), 3905245786)
        assert(SphereMesh._method_get_rings_3905245786 != nil)
        let _method_set_is_hemisphere_2586408642_name = StringName(from: "set_is_hemisphere")
        self._method_set_is_hemisphere_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_is_hemisphere_2586408642_name._native_ptr(), 2586408642)
        assert(SphereMesh._method_set_is_hemisphere_2586408642 != nil)
        let _method_get_is_hemisphere_36873697_name = StringName(from: "get_is_hemisphere")
        self._method_get_is_hemisphere_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_is_hemisphere_36873697_name._native_ptr(), 36873697)
        assert(SphereMesh._method_get_is_hemisphere_36873697 != nil)
    }

    public func set_radius(radius: Float64)  {
        withUnsafePointer(to: radius) { radius_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(radius_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_radius_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_radius() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_radius_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_height(height: Float64)  {
        withUnsafePointer(to: height) { height_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(height_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_height_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_height() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_height_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_radial_segments(radial_segments: Int64)  {
        withUnsafePointer(to: radial_segments) { radial_segments_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(radial_segments_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_radial_segments_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_radial_segments() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_radial_segments_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
    public func set_is_hemisphere(is_hemisphere: UInt8)  {
        withUnsafePointer(to: is_hemisphere) { is_hemisphere_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(is_hemisphere_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_is_hemisphere_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_is_hemisphere() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_is_hemisphere_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}