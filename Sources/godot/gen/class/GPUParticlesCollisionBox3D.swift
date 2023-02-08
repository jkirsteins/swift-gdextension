import godot_native

fileprivate var __godot_name_GPUParticlesCollisionBox3D: StringName! = nil

/// Box-shaped 3D particle collision shape affecting [GPUParticles3D] nodes.
/// 
/// Box-shaped 3D particle collision shape affecting [GPUParticles3D] nodes.
///  
/// [b]Note:[/b] [member ParticleProcessMaterial.collision_mode] must be [constant ParticleProcessMaterial.COLLISION_RIGID] or [constant ParticleProcessMaterial.COLLISION_HIDE_ON_CONTACT] on the [GPUParticles3D]'s process material for collision to work.
///  
/// [b]Note:[/b] Particle collision only affects [GPUParticles3D], not [CPUParticles3D].
open class GPUParticlesCollisionBox3D : GPUParticlesCollision3D {

    

    public override class var __godot_name: StringName { __godot_name_GPUParticlesCollisionBox3D }

    static var _method_set_size_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_size_3360562783: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_GPUParticlesCollisionBox3D = StringName(from: "GPUParticlesCollisionBox3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_size_3460891852_name = StringName(from: "set_size")
        self._method_set_size_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticlesCollisionBox3D._native_ptr(), _method_set_size_3460891852_name._native_ptr(), 3460891852)
        assert(GPUParticlesCollisionBox3D._method_set_size_3460891852 != nil)
        let _method_get_size_3360562783_name = StringName(from: "get_size")
        self._method_get_size_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticlesCollisionBox3D._native_ptr(), _method_get_size_3360562783_name._native_ptr(), 3360562783)
        assert(GPUParticlesCollisionBox3D._method_get_size_3360562783 != nil)
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
}