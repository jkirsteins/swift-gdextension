import godot_native

fileprivate var __godot_name_PrimitiveMesh: StringName! = nil

/// Base class for all primitive meshes. Handles applying a [Material] to a primitive mesh.
/// 
/// Base class for all primitive meshes. Handles applying a [Material] to a primitive mesh. Examples include [BoxMesh], [CapsuleMesh], [CylinderMesh], [PlaneMesh], [PrismMesh], and [SphereMesh].
public class PrimitiveMesh : Mesh {

    

    public override class var __godot_name: StringName { __godot_name_PrimitiveMesh }

    static var _method__create_mesh_array_0: GDExtensionMethodBindPtr! = nil
    static var _method_set_material_2757459619: GDExtensionMethodBindPtr! = nil
    static var _method_get_material_5934680: GDExtensionMethodBindPtr! = nil
    static var _method_get_mesh_arrays_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_set_custom_aabb_259215842: GDExtensionMethodBindPtr! = nil
    static var _method_get_custom_aabb_1068685055: GDExtensionMethodBindPtr! = nil
    static var _method_set_flip_faces_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_flip_faces_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_add_uv2_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_add_uv2_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_uv2_padding_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_uv2_padding_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_PrimitiveMesh = StringName(from: "PrimitiveMesh")

        let _method_set_material_2757459619_name = StringName(from: "set_material")
        self._method_set_material_2757459619 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_material_2757459619_name._native_ptr(), 2757459619)
        assert(PrimitiveMesh._method_set_material_2757459619 != nil)
        let _method_get_material_5934680_name = StringName(from: "get_material")
        self._method_get_material_5934680 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_material_5934680_name._native_ptr(), 5934680)
        assert(PrimitiveMesh._method_get_material_5934680 != nil)
        let _method_get_mesh_arrays_3995934104_name = StringName(from: "get_mesh_arrays")
        self._method_get_mesh_arrays_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_mesh_arrays_3995934104_name._native_ptr(), 3995934104)
        assert(PrimitiveMesh._method_get_mesh_arrays_3995934104 != nil)
        let _method_set_custom_aabb_259215842_name = StringName(from: "set_custom_aabb")
        self._method_set_custom_aabb_259215842 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_custom_aabb_259215842_name._native_ptr(), 259215842)
        assert(PrimitiveMesh._method_set_custom_aabb_259215842 != nil)
        let _method_get_custom_aabb_1068685055_name = StringName(from: "get_custom_aabb")
        self._method_get_custom_aabb_1068685055 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_custom_aabb_1068685055_name._native_ptr(), 1068685055)
        assert(PrimitiveMesh._method_get_custom_aabb_1068685055 != nil)
        let _method_set_flip_faces_2586408642_name = StringName(from: "set_flip_faces")
        self._method_set_flip_faces_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_flip_faces_2586408642_name._native_ptr(), 2586408642)
        assert(PrimitiveMesh._method_set_flip_faces_2586408642 != nil)
        let _method_get_flip_faces_36873697_name = StringName(from: "get_flip_faces")
        self._method_get_flip_faces_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_flip_faces_36873697_name._native_ptr(), 36873697)
        assert(PrimitiveMesh._method_get_flip_faces_36873697 != nil)
        let _method_set_add_uv2_2586408642_name = StringName(from: "set_add_uv2")
        self._method_set_add_uv2_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_add_uv2_2586408642_name._native_ptr(), 2586408642)
        assert(PrimitiveMesh._method_set_add_uv2_2586408642 != nil)
        let _method_get_add_uv2_36873697_name = StringName(from: "get_add_uv2")
        self._method_get_add_uv2_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_add_uv2_36873697_name._native_ptr(), 36873697)
        assert(PrimitiveMesh._method_get_add_uv2_36873697 != nil)
        let _method_set_uv2_padding_373806689_name = StringName(from: "set_uv2_padding")
        self._method_set_uv2_padding_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_uv2_padding_373806689_name._native_ptr(), 373806689)
        assert(PrimitiveMesh._method_set_uv2_padding_373806689 != nil)
        let _method_get_uv2_padding_1740695150_name = StringName(from: "get_uv2_padding")
        self._method_get_uv2_padding_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_uv2_padding_1740695150_name._native_ptr(), 1740695150)
        assert(PrimitiveMesh._method_get_uv2_padding_1740695150 != nil)
    }

    public func _create_mesh_array() -> Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__create_mesh_array_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(from: __resPtr.pointee)
    }
    public func set_material(material: Material)  {
        let material_native = material._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(material_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_material_2757459619,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_material() -> Material {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_material_5934680,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Material(from: __resPtr.pointee)
    }
    public func get_mesh_arrays() -> Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mesh_arrays_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(from: __resPtr.pointee)
    }
    public func set_custom_aabb(aabb: AABB)  {
        let aabb_native = aabb._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(aabb_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_custom_aabb_259215842,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_custom_aabb() -> AABB {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_custom_aabb_1068685055,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AABB(from: __resPtr.pointee)
    }
    public func set_flip_faces(flip_faces: UInt8)  {
        withUnsafePointer(to: flip_faces) { flip_faces_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flip_faces_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_flip_faces_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_flip_faces() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_flip_faces_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_add_uv2(add_uv2: UInt8)  {
        withUnsafePointer(to: add_uv2) { add_uv2_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(add_uv2_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_add_uv2_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_add_uv2() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_add_uv2_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_uv2_padding(uv2_padding: Float64)  {
        withUnsafePointer(to: uv2_padding) { uv2_padding_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(uv2_padding_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_uv2_padding_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_uv2_padding() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_uv2_padding_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
}