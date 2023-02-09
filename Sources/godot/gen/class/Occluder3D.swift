import godot_native

fileprivate var __godot_name_Occluder3D: StringName! = nil

/// Occluder shape resource for use with occlusion culling in [OccluderInstance3D].
/// 
/// [Occluder3D] stores an occluder shape that can be used by the engine's occlusion culling system.
///  
/// See [OccluderInstance3D]'s documentation for instructions on setting up occlusion culling.
open class Occluder3D : Resource {

    

    public override class var __godot_name: StringName { __godot_name_Occluder3D }

    static var _method_get_vertices_497664490: StringName! = nil
    static var _method_get_indices_1930428628: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_Occluder3D == nil)
        __godot_name_Occluder3D = StringName(from: "Occluder3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_vertices_497664490 = StringName(from: "get_vertices")
        assert(self._method_get_vertices_497664490 != nil)
        self._method_get_indices_1930428628 = StringName(from: "get_indices")
        assert(self._method_get_indices_1930428628 != nil)
    }

    public func get_vertices() -> PackedVector3Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_vertices_497664490._native_ptr(),
                    497664490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector3Array(godot: __resPtr.pointee)
    }
    public func get_indices() -> PackedInt32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_indices_1930428628._native_ptr(),
                    1930428628)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
    }
}