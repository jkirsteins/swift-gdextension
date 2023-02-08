import godot_native

fileprivate var __godot_name_VisualShaderNodeParticleMeshEmitter: StringName! = nil

/// A visual shader node that makes particles emitted in a shape defined by a [Mesh].
/// 
/// [VisualShaderNodeParticleEmitter] that makes the particles emitted in a shape of the assigned [member mesh]. It will emit from the mesh's surfaces, either all or only the specified one.
open class VisualShaderNodeParticleMeshEmitter : VisualShaderNodeParticleEmitter {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeParticleMeshEmitter }

    static var _method_set_mesh_194775623: GDExtensionMethodBindPtr! = nil
    static var _method_get_mesh_1808005922: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_all_surfaces_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_use_all_surfaces_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_surface_index_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_surface_index_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VisualShaderNodeParticleMeshEmitter = StringName(from: "VisualShaderNodeParticleMeshEmitter")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_mesh_194775623_name = StringName(from: "set_mesh")
        self._method_set_mesh_194775623 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeParticleMeshEmitter._native_ptr(), _method_set_mesh_194775623_name._native_ptr(), 194775623)
        assert(VisualShaderNodeParticleMeshEmitter._method_set_mesh_194775623 != nil)
        let _method_get_mesh_1808005922_name = StringName(from: "get_mesh")
        self._method_get_mesh_1808005922 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeParticleMeshEmitter._native_ptr(), _method_get_mesh_1808005922_name._native_ptr(), 1808005922)
        assert(VisualShaderNodeParticleMeshEmitter._method_get_mesh_1808005922 != nil)
        let _method_set_use_all_surfaces_2586408642_name = StringName(from: "set_use_all_surfaces")
        self._method_set_use_all_surfaces_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeParticleMeshEmitter._native_ptr(), _method_set_use_all_surfaces_2586408642_name._native_ptr(), 2586408642)
        assert(VisualShaderNodeParticleMeshEmitter._method_set_use_all_surfaces_2586408642 != nil)
        let _method_is_use_all_surfaces_36873697_name = StringName(from: "is_use_all_surfaces")
        self._method_is_use_all_surfaces_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeParticleMeshEmitter._native_ptr(), _method_is_use_all_surfaces_36873697_name._native_ptr(), 36873697)
        assert(VisualShaderNodeParticleMeshEmitter._method_is_use_all_surfaces_36873697 != nil)
        let _method_set_surface_index_1286410249_name = StringName(from: "set_surface_index")
        self._method_set_surface_index_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeParticleMeshEmitter._native_ptr(), _method_set_surface_index_1286410249_name._native_ptr(), 1286410249)
        assert(VisualShaderNodeParticleMeshEmitter._method_set_surface_index_1286410249 != nil)
        let _method_get_surface_index_3905245786_name = StringName(from: "get_surface_index")
        self._method_get_surface_index_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeParticleMeshEmitter._native_ptr(), _method_get_surface_index_3905245786_name._native_ptr(), 3905245786)
        assert(VisualShaderNodeParticleMeshEmitter._method_get_surface_index_3905245786 != nil)
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
                    Self._method_get_mesh_1808005922,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Mesh(godot: __resPtr.pointee)
    }
    public func set_use_all_surfaces(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_use_all_surfaces_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_use_all_surfaces() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_use_all_surfaces_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_surface_index(surface_index: Int64)  {
        withUnsafePointer(to: surface_index) { surface_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(surface_index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_surface_index_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_surface_index() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_surface_index_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
}