import godot_native

fileprivate var __godot_name_GPUParticlesCollision3D: StringName! = nil

/// Abstract class for 3D particle collision shapes affecting [GPUParticles3D] nodes.
/// 
/// Particle collision shapes can be used to make particles stop or bounce against them.
///  
/// Particle collision shapes in real-time and can be moved, rotated and scaled during gameplay. Unlike attractors, non-uniform scaling of collision shapes is [i]not[/i] supported.
///  
/// Particle collision shapes can be temporarily disabled by hiding them.
///  
/// [b]Note:[/b] [member ParticleProcessMaterial.collision_mode] must be [constant ParticleProcessMaterial.COLLISION_RIGID] or [constant ParticleProcessMaterial.COLLISION_HIDE_ON_CONTACT] on the [GPUParticles3D]'s process material for collision to work.
///  
/// [b]Note:[/b] Particle collision only affects [GPUParticles3D], not [CPUParticles3D].
///  
/// [b]Note:[/b] Particles pushed by a collider that is being moved will not be interpolated, which can result in visible stuttering. This can be alleviated by setting [member GPUParticles3D.fixed_fps] to [code]0[/code] or a value that matches or exceeds the target framerate.
public class GPUParticlesCollision3D : VisualInstance3D {

    

    public override class var __godot_name: StringName { __godot_name_GPUParticlesCollision3D }

    static var _method_set_cull_mask_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_cull_mask_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_GPUParticlesCollision3D = StringName(from: "GPUParticlesCollision3D")

        let _method_set_cull_mask_1286410249_name = StringName(from: "set_cull_mask")
        self._method_set_cull_mask_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_cull_mask_1286410249_name._native_ptr(), 1286410249)
        assert(GPUParticlesCollision3D._method_set_cull_mask_1286410249 != nil)
        let _method_get_cull_mask_3905245786_name = StringName(from: "get_cull_mask")
        self._method_get_cull_mask_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_cull_mask_3905245786_name._native_ptr(), 3905245786)
        assert(GPUParticlesCollision3D._method_get_cull_mask_3905245786 != nil)
    }

    public func set_cull_mask(mask: Int64)  {
        withUnsafePointer(to: mask) { mask_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cull_mask_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_cull_mask() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cull_mask_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
}