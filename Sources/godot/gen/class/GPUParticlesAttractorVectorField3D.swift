import godot_native

fileprivate var __godot_name_GPUParticlesAttractorVectorField3D: StringName! = nil

/// Box-shaped 3D particle attractor with strength varying within the box, affecting [GPUParticles3D] nodes.
/// 
/// Box-shaped 3D particle attractor with strength varying within the box, affecting [GPUParticles3D] nodes.
///  
/// Unlike [GPUParticlesAttractorBox3D], [GPUParticlesAttractorVectorField3D] uses a [member texture] to affect attraction strength within the box. This can be used to create complex attraction scenarios where particles travel in different directions depending on their location. This can be useful for weather effects such as sandstorms.
///  
/// [b]Note:[/b] Particle attractors only affect [GPUParticles3D], not [CPUParticles3D].
open class GPUParticlesAttractorVectorField3D : GPUParticlesAttractor3D {

    

    public override class var __godot_name: StringName { __godot_name_GPUParticlesAttractorVectorField3D }

    static var _method_set_size_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_size_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_1188404210: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_373985333: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_GPUParticlesAttractorVectorField3D = StringName(from: "GPUParticlesAttractorVectorField3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_size_3460891852_name = StringName(from: "set_size")
        self._method_set_size_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticlesAttractorVectorField3D._native_ptr(), _method_set_size_3460891852_name._native_ptr(), 3460891852)
        assert(GPUParticlesAttractorVectorField3D._method_set_size_3460891852 != nil)
        let _method_get_size_3360562783_name = StringName(from: "get_size")
        self._method_get_size_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticlesAttractorVectorField3D._native_ptr(), _method_get_size_3360562783_name._native_ptr(), 3360562783)
        assert(GPUParticlesAttractorVectorField3D._method_get_size_3360562783 != nil)
        let _method_set_texture_1188404210_name = StringName(from: "set_texture")
        self._method_set_texture_1188404210 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticlesAttractorVectorField3D._native_ptr(), _method_set_texture_1188404210_name._native_ptr(), 1188404210)
        assert(GPUParticlesAttractorVectorField3D._method_set_texture_1188404210 != nil)
        let _method_get_texture_373985333_name = StringName(from: "get_texture")
        self._method_get_texture_373985333 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticlesAttractorVectorField3D._native_ptr(), _method_get_texture_373985333_name._native_ptr(), 373985333)
        assert(GPUParticlesAttractorVectorField3D._method_get_texture_373985333 != nil)
    }

    public func set_size(size: Vector3)  {
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_size_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_size() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_size_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func set_texture(texture: Texture3D)  {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_1188404210,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_texture() -> Texture3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_373985333,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture3D(godot: __resPtr.pointee)
    }
}