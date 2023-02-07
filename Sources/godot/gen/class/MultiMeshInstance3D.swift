import godot_native

fileprivate var __godot_name_MultiMeshInstance3D: StringName! = nil

/// Node that instances a [MultiMesh].
/// 
/// [MultiMeshInstance3D] is a specialized node to instance [GeometryInstance3D]s based on a [MultiMesh] resource.
///  
/// This is useful to optimize the rendering of a high number of instances of a given mesh (for example trees in a forest or grass strands).
public class MultiMeshInstance3D : GeometryInstance3D {

    

    public override class var __godot_name: StringName { __godot_name_MultiMeshInstance3D }

    static var _method_set_multimesh_2246127404: GDExtensionMethodBindPtr! = nil
    static var _method_get_multimesh_1385450523: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_MultiMeshInstance3D = StringName(from: "MultiMeshInstance3D")

        let _method_set_multimesh_2246127404_name = StringName(from: "set_multimesh")
        self._method_set_multimesh_2246127404 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_multimesh_2246127404_name._native_ptr(), 2246127404)
        assert(MultiMeshInstance3D._method_set_multimesh_2246127404 != nil)
        let _method_get_multimesh_1385450523_name = StringName(from: "get_multimesh")
        self._method_get_multimesh_1385450523 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_multimesh_1385450523_name._native_ptr(), 1385450523)
        assert(MultiMeshInstance3D._method_get_multimesh_1385450523 != nil)
    }

    public func set_multimesh(multimesh: MultiMesh)  {
        let multimesh_native = multimesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(multimesh_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_multimesh_2246127404,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_multimesh() -> MultiMesh {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_multimesh_1385450523,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return MultiMesh(from: __resPtr.pointee)
    }
}