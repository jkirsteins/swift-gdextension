import godot_native

fileprivate var __godot_name_ImporterMeshInstance3D: StringName! = nil

/// 
/// 
/// 
open class ImporterMeshInstance3D : Node3D {

    

    public override class var __godot_name: StringName { __godot_name_ImporterMeshInstance3D }

    static var _method_set_mesh_2255166972: StringName! = nil
    static var _method_get_mesh_3161779525: StringName! = nil
    static var _method_set_skin_3971435618: StringName! = nil
    static var _method_get_skin_2074563878: StringName! = nil
    static var _method_set_skeleton_path_1348162250: StringName! = nil
    static var _method_get_skeleton_path_4075236667: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_ImporterMeshInstance3D == nil)
        __godot_name_ImporterMeshInstance3D = StringName(from: "ImporterMeshInstance3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_mesh_2255166972 = StringName(from: "set_mesh")
        assert(self._method_set_mesh_2255166972 != nil)
        self._method_get_mesh_3161779525 = StringName(from: "get_mesh")
        assert(self._method_get_mesh_3161779525 != nil)
        self._method_set_skin_3971435618 = StringName(from: "set_skin")
        assert(self._method_set_skin_3971435618 != nil)
        self._method_get_skin_2074563878 = StringName(from: "get_skin")
        assert(self._method_get_skin_2074563878 != nil)
        self._method_set_skeleton_path_1348162250 = StringName(from: "set_skeleton_path")
        assert(self._method_set_skeleton_path_1348162250 != nil)
        self._method_get_skeleton_path_4075236667 = StringName(from: "get_skeleton_path")
        assert(self._method_get_skeleton_path_4075236667 != nil)
    }

    public func set_mesh(mesh: ImporterMesh)  {
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_mesh_2255166972._native_ptr(),
                    2255166972)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_mesh_3161779525._native_ptr(),
                    3161779525)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_skin_3971435618._native_ptr(),
                    3971435618)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_skin_2074563878._native_ptr(),
                    2074563878)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_skeleton_path_1348162250._native_ptr(),
                    1348162250)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_skeleton_path_4075236667._native_ptr(),
                    4075236667)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(godot: __resPtr.pointee)
    }
}