import godot_native

fileprivate var __godot_name_ArrayOccluder3D: StringName! = nil

/// 3D polygon shape for use with occlusion culling in [OccluderInstance3D].
/// 
/// [ArrayOccluder3D] stores an arbitrary 3D polygon shape that can be used by the engine's occlusion culling system. This is analogous to [ArrayMesh], but for occluders.
///  
/// See [OccluderInstance3D]'s documentation for instructions on setting up occlusion culling.
open class ArrayOccluder3D : Occluder3D {

    

    public override class var __godot_name: StringName { __godot_name_ArrayOccluder3D }

    static var _method_set_arrays_3233972621: GDExtensionMethodBindPtr! = nil
    static var _method_set_vertices_334873810: GDExtensionMethodBindPtr! = nil
    static var _method_set_indices_3614634198: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_ArrayOccluder3D = StringName(from: "ArrayOccluder3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_arrays_3233972621_name = StringName(from: "set_arrays")
        self._method_set_arrays_3233972621 = self.interface.pointee.classdb_get_method_bind(__godot_name_ArrayOccluder3D._native_ptr(), _method_set_arrays_3233972621_name._native_ptr(), 3233972621)
        assert(ArrayOccluder3D._method_set_arrays_3233972621 != nil)
        let _method_set_vertices_334873810_name = StringName(from: "set_vertices")
        self._method_set_vertices_334873810 = self.interface.pointee.classdb_get_method_bind(__godot_name_ArrayOccluder3D._native_ptr(), _method_set_vertices_334873810_name._native_ptr(), 334873810)
        assert(ArrayOccluder3D._method_set_vertices_334873810 != nil)
        let _method_set_indices_3614634198_name = StringName(from: "set_indices")
        self._method_set_indices_3614634198 = self.interface.pointee.classdb_get_method_bind(__godot_name_ArrayOccluder3D._native_ptr(), _method_set_indices_3614634198_name._native_ptr(), 3614634198)
        assert(ArrayOccluder3D._method_set_indices_3614634198 != nil)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_arrays_3233972621,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_vertices_334873810,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_indices_3614634198,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}