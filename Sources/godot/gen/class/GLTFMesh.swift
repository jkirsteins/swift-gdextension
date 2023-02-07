import godot_native

fileprivate var __godot_name_GLTFMesh: StringName! = nil

/// MISSING
/// 
/// MISSING
public class GLTFMesh : Resource {

    

    public override class var __godot_name: StringName { __godot_name_GLTFMesh }

    static var _method_get_mesh_3754628756: GDExtensionMethodBindPtr! = nil
    static var _method_set_mesh_2255166972: GDExtensionMethodBindPtr! = nil
    static var _method_get_blend_weights_2445143706: GDExtensionMethodBindPtr! = nil
    static var _method_set_blend_weights_2899603908: GDExtensionMethodBindPtr! = nil
    static var _method_get_instance_materials_2915620761: GDExtensionMethodBindPtr! = nil
    static var _method_set_instance_materials_381264803: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_GLTFMesh = StringName(from: "GLTFMesh")

        let _method_get_mesh_3754628756_name = StringName(from: "get_mesh")
        self._method_get_mesh_3754628756 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_mesh_3754628756_name._native_ptr(), 3754628756)
        assert(GLTFMesh._method_get_mesh_3754628756 != nil)
        let _method_set_mesh_2255166972_name = StringName(from: "set_mesh")
        self._method_set_mesh_2255166972 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_mesh_2255166972_name._native_ptr(), 2255166972)
        assert(GLTFMesh._method_set_mesh_2255166972 != nil)
        let _method_get_blend_weights_2445143706_name = StringName(from: "get_blend_weights")
        self._method_get_blend_weights_2445143706 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_blend_weights_2445143706_name._native_ptr(), 2445143706)
        assert(GLTFMesh._method_get_blend_weights_2445143706 != nil)
        let _method_set_blend_weights_2899603908_name = StringName(from: "set_blend_weights")
        self._method_set_blend_weights_2899603908 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_blend_weights_2899603908_name._native_ptr(), 2899603908)
        assert(GLTFMesh._method_set_blend_weights_2899603908 != nil)
        let _method_get_instance_materials_2915620761_name = StringName(from: "get_instance_materials")
        self._method_get_instance_materials_2915620761 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_instance_materials_2915620761_name._native_ptr(), 2915620761)
        assert(GLTFMesh._method_get_instance_materials_2915620761 != nil)
        let _method_set_instance_materials_381264803_name = StringName(from: "set_instance_materials")
        self._method_set_instance_materials_381264803 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_instance_materials_381264803_name._native_ptr(), 381264803)
        assert(GLTFMesh._method_set_instance_materials_381264803 != nil)
    }

    public func get_mesh() -> ImporterMesh {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mesh_3754628756,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ImporterMesh(from: __resPtr.pointee)
    }
    public func set_mesh(mesh: ImporterMesh)  {
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_mesh_2255166972,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_blend_weights() -> PackedFloat32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_blend_weights_2445143706,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedFloat32Array(from: __resPtr.pointee)
    }
    public func set_blend_weights(blend_weights: PackedFloat32Array)  {
        let blend_weights_native = blend_weights._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(blend_weights_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_blend_weights_2899603908,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_instance_materials() -> [Material] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_instance_materials_2915620761,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Material](from: __resPtr.pointee)
    }
    public func set_instance_materials(instance_materials: [Material])  {
        let instance_materials_native = instance_materials._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_materials_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_instance_materials_381264803,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}