import godot_native

fileprivate var __godot_name_GPUParticlesAttractorBox3D: StringName! = nil

/// Box-shaped 3D particle attractor affecting [GPUParticles3D] nodes.
/// 
/// Box-shaped 3D particle attractor affecting [GPUParticles3D] nodes.
///  
/// [b]Note:[/b] Particle attractors only affect [GPUParticles3D], not [CPUParticles3D].
public class GPUParticlesAttractorBox3D : GPUParticlesAttractor3D {

    

    public override class var __godot_name: StringName { __godot_name_GPUParticlesAttractorBox3D }

    static var _method_set_size_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_size_3360562783: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_GPUParticlesAttractorBox3D = StringName(from: "GPUParticlesAttractorBox3D")

        let _method_set_size_3460891852_name = StringName(from: "set_size")
        self._method_set_size_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_size_3460891852_name._native_ptr(), 3460891852)
        assert(GPUParticlesAttractorBox3D._method_set_size_3460891852 != nil)
        let _method_get_size_3360562783_name = StringName(from: "get_size")
        self._method_get_size_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_size_3360562783_name._native_ptr(), 3360562783)
        assert(GPUParticlesAttractorBox3D._method_get_size_3360562783 != nil)
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
            return Vector3(from: __resPtr.pointee)
    }
}