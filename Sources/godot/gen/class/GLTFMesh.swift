import godot_native

fileprivate var __godot_name_GLTFMesh: StringName! = nil

/// MISSING
/// 
/// MISSING
open class GLTFMesh : Resource {

    

    public override class var __godot_name: StringName { __godot_name_GLTFMesh }

    static var _method_get_mesh_3754628756: StringName! = nil
    static var _method_set_mesh_2255166972: StringName! = nil
    static var _method_get_blend_weights_2445143706: StringName! = nil
    static var _method_set_blend_weights_2899603908: StringName! = nil
    static var _method_get_instance_materials_2915620761: StringName! = nil
    static var _method_set_instance_materials_381264803: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_GLTFMesh == nil)
        __godot_name_GLTFMesh = StringName(from: "GLTFMesh")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_mesh_3754628756 = StringName(from: "get_mesh")
        assert(self._method_get_mesh_3754628756 != nil)
        self._method_set_mesh_2255166972 = StringName(from: "set_mesh")
        assert(self._method_set_mesh_2255166972 != nil)
        self._method_get_blend_weights_2445143706 = StringName(from: "get_blend_weights")
        assert(self._method_get_blend_weights_2445143706 != nil)
        self._method_set_blend_weights_2899603908 = StringName(from: "set_blend_weights")
        assert(self._method_set_blend_weights_2899603908 != nil)
        self._method_get_instance_materials_2915620761 = StringName(from: "get_instance_materials")
        assert(self._method_get_instance_materials_2915620761 != nil)
        self._method_set_instance_materials_381264803 = StringName(from: "set_instance_materials")
        assert(self._method_set_instance_materials_381264803 != nil)
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
                    Self._method_get_mesh_3754628756._native_ptr(),
                    3754628756)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ImporterMesh(godot: __resPtr.pointee)
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
    public func get_blend_weights() -> PackedFloat32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_blend_weights_2445143706._native_ptr(),
                    2445143706)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedFloat32Array(godot: __resPtr.pointee)
    }
    public func set_blend_weights(blend_weights: PackedFloat32Array)  {
        let blend_weights_native = blend_weights._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(blend_weights_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_blend_weights_2899603908._native_ptr(),
                    2899603908)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_instance_materials() -> [Material] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_instance_materials_2915620761._native_ptr(),
                    2915620761)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Material](godot: __resPtr.pointee)
    }
    public func set_instance_materials(instance_materials: [Material])  {
        let instance_materials_native = instance_materials._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_materials_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_instance_materials_381264803._native_ptr(),
                    381264803)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}