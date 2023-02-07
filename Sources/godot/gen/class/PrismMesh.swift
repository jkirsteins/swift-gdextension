import godot_native

fileprivate var __godot_name_PrismMesh: StringName! = nil

/// Class representing a prism-shaped [PrimitiveMesh].
/// 
/// Class representing a prism-shaped [PrimitiveMesh].
public class PrismMesh : PrimitiveMesh {

    

    public override class var __godot_name: StringName { __godot_name_PrismMesh }

    static var _method_set_left_to_right_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_left_to_right_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_size_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_size_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_subdivide_width_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_subdivide_width_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_subdivide_height_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_subdivide_height_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_subdivide_depth_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_subdivide_depth_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_PrismMesh = StringName(from: "PrismMesh")

        let _method_set_left_to_right_373806689_name = StringName(from: "set_left_to_right")
        self._method_set_left_to_right_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_left_to_right_373806689_name._native_ptr(), 373806689)
        assert(PrismMesh._method_set_left_to_right_373806689 != nil)
        let _method_get_left_to_right_1740695150_name = StringName(from: "get_left_to_right")
        self._method_get_left_to_right_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_left_to_right_1740695150_name._native_ptr(), 1740695150)
        assert(PrismMesh._method_get_left_to_right_1740695150 != nil)
        let _method_set_size_3460891852_name = StringName(from: "set_size")
        self._method_set_size_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_size_3460891852_name._native_ptr(), 3460891852)
        assert(PrismMesh._method_set_size_3460891852 != nil)
        let _method_get_size_3360562783_name = StringName(from: "get_size")
        self._method_get_size_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_size_3360562783_name._native_ptr(), 3360562783)
        assert(PrismMesh._method_get_size_3360562783 != nil)
        let _method_set_subdivide_width_1286410249_name = StringName(from: "set_subdivide_width")
        self._method_set_subdivide_width_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_subdivide_width_1286410249_name._native_ptr(), 1286410249)
        assert(PrismMesh._method_set_subdivide_width_1286410249 != nil)
        let _method_get_subdivide_width_3905245786_name = StringName(from: "get_subdivide_width")
        self._method_get_subdivide_width_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_subdivide_width_3905245786_name._native_ptr(), 3905245786)
        assert(PrismMesh._method_get_subdivide_width_3905245786 != nil)
        let _method_set_subdivide_height_1286410249_name = StringName(from: "set_subdivide_height")
        self._method_set_subdivide_height_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_subdivide_height_1286410249_name._native_ptr(), 1286410249)
        assert(PrismMesh._method_set_subdivide_height_1286410249 != nil)
        let _method_get_subdivide_height_3905245786_name = StringName(from: "get_subdivide_height")
        self._method_get_subdivide_height_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_subdivide_height_3905245786_name._native_ptr(), 3905245786)
        assert(PrismMesh._method_get_subdivide_height_3905245786 != nil)
        let _method_set_subdivide_depth_1286410249_name = StringName(from: "set_subdivide_depth")
        self._method_set_subdivide_depth_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_subdivide_depth_1286410249_name._native_ptr(), 1286410249)
        assert(PrismMesh._method_set_subdivide_depth_1286410249 != nil)
        let _method_get_subdivide_depth_3905245786_name = StringName(from: "get_subdivide_depth")
        self._method_get_subdivide_depth_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_subdivide_depth_3905245786_name._native_ptr(), 3905245786)
        assert(PrismMesh._method_get_subdivide_depth_3905245786 != nil)
    }

    public func set_left_to_right(left_to_right: Float64)  {
        withUnsafePointer(to: left_to_right) { left_to_right_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(left_to_right_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_left_to_right_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_left_to_right() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_left_to_right_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_size(size: Vector3)  {
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_size_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_size() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_size_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func set_subdivide_width(segments: Int64)  {
        withUnsafePointer(to: segments) { segments_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(segments_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_subdivide_width_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_subdivide_width() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_subdivide_width_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_subdivide_height(segments: Int64)  {
        withUnsafePointer(to: segments) { segments_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(segments_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_subdivide_height_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_subdivide_height() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_subdivide_height_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_subdivide_depth(segments: Int64)  {
        withUnsafePointer(to: segments) { segments_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(segments_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_subdivide_depth_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_subdivide_depth() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_subdivide_depth_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
}