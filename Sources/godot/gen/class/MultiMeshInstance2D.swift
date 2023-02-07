import godot_native

fileprivate var __godot_name_MultiMeshInstance2D: StringName! = nil

/// Node that instances a [MultiMesh] in 2D.
/// 
/// [MultiMeshInstance2D] is a specialized node to instance a [MultiMesh] resource in 2D.
///  
/// Usage is the same as [MultiMeshInstance3D].
public class MultiMeshInstance2D : Node2D {

    

    public override class var __godot_name: StringName { __godot_name_MultiMeshInstance2D }

    static var _method_set_multimesh_2246127404: GDExtensionMethodBindPtr! = nil
    static var _method_get_multimesh_1385450523: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_4051416890: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_3635182373: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_MultiMeshInstance2D = StringName(from: "MultiMeshInstance2D")

        let _method_set_multimesh_2246127404_name = StringName(from: "set_multimesh")
        self._method_set_multimesh_2246127404 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_multimesh_2246127404_name._native_ptr(), 2246127404)
        assert(MultiMeshInstance2D._method_set_multimesh_2246127404 != nil)
        let _method_get_multimesh_1385450523_name = StringName(from: "get_multimesh")
        self._method_get_multimesh_1385450523 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_multimesh_1385450523_name._native_ptr(), 1385450523)
        assert(MultiMeshInstance2D._method_get_multimesh_1385450523 != nil)
        let _method_set_texture_4051416890_name = StringName(from: "set_texture")
        self._method_set_texture_4051416890 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_texture_4051416890_name._native_ptr(), 4051416890)
        assert(MultiMeshInstance2D._method_set_texture_4051416890 != nil)
        let _method_get_texture_3635182373_name = StringName(from: "get_texture")
        self._method_get_texture_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_texture_3635182373_name._native_ptr(), 3635182373)
        assert(MultiMeshInstance2D._method_get_texture_3635182373 != nil)
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
    public func set_texture(texture: Texture2D)  {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_4051416890,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_texture() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_3635182373,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(from: __resPtr.pointee)
    }
}