import godot_native

fileprivate var __godot_name_ArrayOccluder3D: StringName! = nil

/// 3D polygon shape for use with occlusion culling in [OccluderInstance3D].
/// 
/// [ArrayOccluder3D] stores an arbitrary 3D polygon shape that can be used by the engine's occlusion culling system. This is analogous to [ArrayMesh], but for occluders.
///  
/// See [OccluderInstance3D]'s documentation for instructions on setting up occlusion culling.
open class ArrayOccluder3D : Occluder3D {

    

    public override class var __godot_name: StringName { __godot_name_ArrayOccluder3D }

    static var _method_set_arrays_3233972621: StringName! = nil
    static var _method_set_vertices_334873810: StringName! = nil
    static var _method_set_indices_3614634198: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_ArrayOccluder3D == nil)
        __godot_name_ArrayOccluder3D = StringName(from: "ArrayOccluder3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_arrays_3233972621 = StringName(from: "set_arrays")
        assert(self._method_set_arrays_3233972621 != nil)
        self._method_set_vertices_334873810 = StringName(from: "set_vertices")
        assert(self._method_set_vertices_334873810 != nil)
        self._method_set_indices_3614634198 = StringName(from: "set_indices")
        assert(self._method_set_indices_3614634198 != nil)
    }

    public func set_arrays(vertices: PackedVector3Array, indices: PackedInt32Array)  {
        let indices_native = indices._native_ptr()
        let vertices_native = vertices._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(vertices_native), .init(indices_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_arrays_3233972621._native_ptr(),
                    3233972621)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_vertices(vertices: PackedVector3Array)  {
        let vertices_native = vertices._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(vertices_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_vertices_334873810._native_ptr(),
                    334873810)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_indices(indices: PackedInt32Array)  {
        let indices_native = indices._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(indices_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_indices_3614634198._native_ptr(),
                    3614634198)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}