import godot_native

fileprivate var __godot_name_Occluder3D: StringName! = nil

/// Occluder shape resource for use with occlusion culling in [OccluderInstance3D].
/// 
/// [Occluder3D] stores an occluder shape that can be used by the engine's occlusion culling system.
///  
/// See [OccluderInstance3D]'s documentation for instructions on setting up occlusion culling.
public class Occluder3D : Resource {

    

    public override class var __godot_name: StringName { __godot_name_Occluder3D }

    static var _method_get_vertices_497664490: GDExtensionMethodBindPtr! = nil
    static var _method_get_indices_1930428628: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Occluder3D = StringName(from: "Occluder3D")

        let _method_get_vertices_497664490_name = StringName(from: "get_vertices")
        self._method_get_vertices_497664490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_vertices_497664490_name._native_ptr(), 497664490)
        assert(Occluder3D._method_get_vertices_497664490 != nil)
        let _method_get_indices_1930428628_name = StringName(from: "get_indices")
        self._method_get_indices_1930428628 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_indices_1930428628_name._native_ptr(), 1930428628)
        assert(Occluder3D._method_get_indices_1930428628 != nil)
    }

    public func get_vertices() -> PackedVector3Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_vertices_497664490,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector3Array(from: __resPtr.pointee)
    }
    public func get_indices() -> PackedInt32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_indices_1930428628,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(from: __resPtr.pointee)
    }
}