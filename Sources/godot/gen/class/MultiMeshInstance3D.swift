import godot_native

fileprivate var __godot_name_MultiMeshInstance3D: StringName! = nil

/// Node that instances a [MultiMesh].
/// 
/// [MultiMeshInstance3D] is a specialized node to instance [GeometryInstance3D]s based on a [MultiMesh] resource.
///  
/// This is useful to optimize the rendering of a high number of instances of a given mesh (for example trees in a forest or grass strands).
open class MultiMeshInstance3D : GeometryInstance3D {

    

    public override class var __godot_name: StringName { __godot_name_MultiMeshInstance3D }

    static var _method_set_multimesh_2246127404: StringName! = nil
    static var _method_get_multimesh_1385450523: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_MultiMeshInstance3D == nil)
        __godot_name_MultiMeshInstance3D = StringName(from: "MultiMeshInstance3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_multimesh_2246127404 = StringName(from: "set_multimesh")
        assert(self._method_set_multimesh_2246127404 != nil)
        self._method_get_multimesh_1385450523 = StringName(from: "get_multimesh")
        assert(self._method_get_multimesh_1385450523 != nil)
    }

    public func set_multimesh(multimesh: MultiMesh)  {
        let multimesh_native = multimesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(multimesh_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_multimesh_2246127404._native_ptr(),
                    2246127404)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_multimesh_1385450523._native_ptr(),
                    1385450523)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return MultiMesh(godot: __resPtr.pointee)
    }
}