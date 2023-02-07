import godot_native

fileprivate var __godot_name_CSGMesh3D: StringName! = nil

/// MISSING
/// 
/// MISSING
public class CSGMesh3D : CSGPrimitive3D {

    

    public override class var __godot_name: StringName { __godot_name_CSGMesh3D }

    static var _method_set_mesh_194775623: GDExtensionMethodBindPtr! = nil
    static var _method_get_mesh_4081188045: GDExtensionMethodBindPtr! = nil
    static var _method_set_material_2757459619: GDExtensionMethodBindPtr! = nil
    static var _method_get_material_5934680: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_CSGMesh3D = StringName(from: "CSGMesh3D")

        let _method_set_mesh_194775623_name = StringName(from: "set_mesh")
        self._method_set_mesh_194775623 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_mesh_194775623_name._native_ptr(), 194775623)
        assert(CSGMesh3D._method_set_mesh_194775623 != nil)
        let _method_get_mesh_4081188045_name = StringName(from: "get_mesh")
        self._method_get_mesh_4081188045 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_mesh_4081188045_name._native_ptr(), 4081188045)
        assert(CSGMesh3D._method_get_mesh_4081188045 != nil)
        let _method_set_material_2757459619_name = StringName(from: "set_material")
        self._method_set_material_2757459619 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_material_2757459619_name._native_ptr(), 2757459619)
        assert(CSGMesh3D._method_set_material_2757459619 != nil)
        let _method_get_material_5934680_name = StringName(from: "get_material")
        self._method_get_material_5934680 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_material_5934680_name._native_ptr(), 5934680)
        assert(CSGMesh3D._method_get_material_5934680 != nil)
    }

    public func set_mesh(mesh: Mesh)  {
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_mesh_194775623,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_mesh() -> Mesh {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mesh_4081188045,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Mesh(from: __resPtr.pointee)
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
}