import godot_native

fileprivate var __godot_name_ImporterMeshInstance3D: StringName! = nil

/// 
/// 
/// 
open class ImporterMeshInstance3D : Node3D {

    

    public override class var __godot_name: StringName { __godot_name_ImporterMeshInstance3D }

    static var _method_set_mesh_2255166972: GDExtensionMethodBindPtr! = nil
    static var _method_get_mesh_3161779525: GDExtensionMethodBindPtr! = nil
    static var _method_set_skin_3971435618: GDExtensionMethodBindPtr! = nil
    static var _method_get_skin_2074563878: GDExtensionMethodBindPtr! = nil
    static var _method_set_skeleton_path_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_skeleton_path_4075236667: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_ImporterMeshInstance3D = StringName(from: "ImporterMeshInstance3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_mesh_2255166972_name = StringName(from: "set_mesh")
        self._method_set_mesh_2255166972 = self.interface.pointee.classdb_get_method_bind(__godot_name_ImporterMeshInstance3D._native_ptr(), _method_set_mesh_2255166972_name._native_ptr(), 2255166972)
        assert(ImporterMeshInstance3D._method_set_mesh_2255166972 != nil)
        let _method_get_mesh_3161779525_name = StringName(from: "get_mesh")
        self._method_get_mesh_3161779525 = self.interface.pointee.classdb_get_method_bind(__godot_name_ImporterMeshInstance3D._native_ptr(), _method_get_mesh_3161779525_name._native_ptr(), 3161779525)
        assert(ImporterMeshInstance3D._method_get_mesh_3161779525 != nil)
        let _method_set_skin_3971435618_name = StringName(from: "set_skin")
        self._method_set_skin_3971435618 = self.interface.pointee.classdb_get_method_bind(__godot_name_ImporterMeshInstance3D._native_ptr(), _method_set_skin_3971435618_name._native_ptr(), 3971435618)
        assert(ImporterMeshInstance3D._method_set_skin_3971435618 != nil)
        let _method_get_skin_2074563878_name = StringName(from: "get_skin")
        self._method_get_skin_2074563878 = self.interface.pointee.classdb_get_method_bind(__godot_name_ImporterMeshInstance3D._native_ptr(), _method_get_skin_2074563878_name._native_ptr(), 2074563878)
        assert(ImporterMeshInstance3D._method_get_skin_2074563878 != nil)
        let _method_set_skeleton_path_1348162250_name = StringName(from: "set_skeleton_path")
        self._method_set_skeleton_path_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name_ImporterMeshInstance3D._native_ptr(), _method_set_skeleton_path_1348162250_name._native_ptr(), 1348162250)
        assert(ImporterMeshInstance3D._method_set_skeleton_path_1348162250 != nil)
        let _method_get_skeleton_path_4075236667_name = StringName(from: "get_skeleton_path")
        self._method_get_skeleton_path_4075236667 = self.interface.pointee.classdb_get_method_bind(__godot_name_ImporterMeshInstance3D._native_ptr(), _method_get_skeleton_path_4075236667_name._native_ptr(), 4075236667)
        assert(ImporterMeshInstance3D._method_get_skeleton_path_4075236667 != nil)
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
    public func get_mesh() -> ImporterMesh {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mesh_3161779525,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ImporterMesh(godot: __resPtr.pointee)
    }
    public func set_skin(skin: Skin)  {
        let skin_native = skin._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(skin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_skin_3971435618,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_skin() -> Skin {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_skin_2074563878,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Skin(godot: __resPtr.pointee)
    }
    public func set_skeleton_path(skeleton_path: NodePath)  {
        let skeleton_path_native = skeleton_path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(skeleton_path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_skeleton_path_1348162250,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_skeleton_path() -> NodePath {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_skeleton_path_4075236667,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(godot: __resPtr.pointee)
    }
}