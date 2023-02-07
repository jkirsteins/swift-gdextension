import godot_native

fileprivate var __godot_name_BoxMesh: StringName! = nil

/// Generate an axis-aligned box [PrimitiveMesh].
/// 
/// Generate an axis-aligned box [PrimitiveMesh].
///  
/// The box's UV layout is arranged in a 3×2 layout that allows texturing each face individually. To apply the same texture on all faces, change the material's UV property to [code]Vector3(3, 2, 1)[/code].
///  
/// [b]Note:[/b] When using a large textured [BoxMesh] (e.g. as a floor), you may stumble upon UV jittering issues depending on the camera angle. To solve this, increase [member subdivide_depth], [member subdivide_height] and [member subdivide_width] until you no longer notice UV jittering.
public class BoxMesh : PrimitiveMesh {

    

    public override class var __godot_name: StringName { __godot_name_BoxMesh }

    static var _method_set_size_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_size_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_subdivide_width_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_subdivide_width_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_subdivide_height_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_subdivide_height_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_subdivide_depth_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_subdivide_depth_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_BoxMesh = StringName(from: "BoxMesh")

        let _method_set_size_3460891852_name = StringName(from: "set_size")
        self._method_set_size_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_size_3460891852_name._native_ptr(), 3460891852)
        assert(BoxMesh._method_set_size_3460891852 != nil)
        let _method_get_size_3360562783_name = StringName(from: "get_size")
        self._method_get_size_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_size_3360562783_name._native_ptr(), 3360562783)
        assert(BoxMesh._method_get_size_3360562783 != nil)
        let _method_set_subdivide_width_1286410249_name = StringName(from: "set_subdivide_width")
        self._method_set_subdivide_width_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_subdivide_width_1286410249_name._native_ptr(), 1286410249)
        assert(BoxMesh._method_set_subdivide_width_1286410249 != nil)
        let _method_get_subdivide_width_3905245786_name = StringName(from: "get_subdivide_width")
        self._method_get_subdivide_width_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_subdivide_width_3905245786_name._native_ptr(), 3905245786)
        assert(BoxMesh._method_get_subdivide_width_3905245786 != nil)
        let _method_set_subdivide_height_1286410249_name = StringName(from: "set_subdivide_height")
        self._method_set_subdivide_height_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_subdivide_height_1286410249_name._native_ptr(), 1286410249)
        assert(BoxMesh._method_set_subdivide_height_1286410249 != nil)
        let _method_get_subdivide_height_3905245786_name = StringName(from: "get_subdivide_height")
        self._method_get_subdivide_height_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_subdivide_height_3905245786_name._native_ptr(), 3905245786)
        assert(BoxMesh._method_get_subdivide_height_3905245786 != nil)
        let _method_set_subdivide_depth_1286410249_name = StringName(from: "set_subdivide_depth")
        self._method_set_subdivide_depth_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_subdivide_depth_1286410249_name._native_ptr(), 1286410249)
        assert(BoxMesh._method_set_subdivide_depth_1286410249 != nil)
        let _method_get_subdivide_depth_3905245786_name = StringName(from: "get_subdivide_depth")
        self._method_get_subdivide_depth_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_subdivide_depth_3905245786_name._native_ptr(), 3905245786)
        assert(BoxMesh._method_get_subdivide_depth_3905245786 != nil)
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
    public func set_subdivide_width(subdivide: Int64)  {
        withUnsafePointer(to: subdivide) { subdivide_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(subdivide_native)
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
    public func set_subdivide_height(divisions: Int64)  {
        withUnsafePointer(to: divisions) { divisions_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(divisions_native)
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
    public func set_subdivide_depth(divisions: Int64)  {
        withUnsafePointer(to: divisions) { divisions_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(divisions_native)
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