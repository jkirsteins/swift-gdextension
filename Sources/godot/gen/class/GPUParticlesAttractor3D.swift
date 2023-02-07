import godot_native

fileprivate var __godot_name_GPUParticlesAttractor3D: StringName! = nil

/// Abstract class for 3D particle attractors affecting [GPUParticles3D] nodes.
/// 
/// Particle attractors can be used to attract particles towards the attractor's origin, or to push them away from the attractor's origin.
///  
/// Particle attractors work in real-time and can be moved, rotated and scaled during gameplay. Unlike collision shapes, non-uniform scaling of attractors is also supported.
///  
/// Attractors can be temporarily disabled by hiding them, or by setting their [member strength] to [code]0.0[/code].
///  
/// [b]Note:[/b] Particle attractors only affect [GPUParticles3D], not [CPUParticles3D].
public class GPUParticlesAttractor3D : VisualInstance3D {

    

    public override class var __godot_name: StringName { __godot_name_GPUParticlesAttractor3D }

    static var _method_set_cull_mask_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_cull_mask_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_strength_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_strength_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_attenuation_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_attenuation_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_directionality_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_directionality_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_GPUParticlesAttractor3D = StringName(from: "GPUParticlesAttractor3D")

        let _method_set_cull_mask_1286410249_name = StringName(from: "set_cull_mask")
        self._method_set_cull_mask_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_cull_mask_1286410249_name._native_ptr(), 1286410249)
        assert(GPUParticlesAttractor3D._method_set_cull_mask_1286410249 != nil)
        let _method_get_cull_mask_3905245786_name = StringName(from: "get_cull_mask")
        self._method_get_cull_mask_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_cull_mask_3905245786_name._native_ptr(), 3905245786)
        assert(GPUParticlesAttractor3D._method_get_cull_mask_3905245786 != nil)
        let _method_set_strength_373806689_name = StringName(from: "set_strength")
        self._method_set_strength_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_strength_373806689_name._native_ptr(), 373806689)
        assert(GPUParticlesAttractor3D._method_set_strength_373806689 != nil)
        let _method_get_strength_1740695150_name = StringName(from: "get_strength")
        self._method_get_strength_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_strength_1740695150_name._native_ptr(), 1740695150)
        assert(GPUParticlesAttractor3D._method_get_strength_1740695150 != nil)
        let _method_set_attenuation_373806689_name = StringName(from: "set_attenuation")
        self._method_set_attenuation_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_attenuation_373806689_name._native_ptr(), 373806689)
        assert(GPUParticlesAttractor3D._method_set_attenuation_373806689 != nil)
        let _method_get_attenuation_1740695150_name = StringName(from: "get_attenuation")
        self._method_get_attenuation_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_attenuation_1740695150_name._native_ptr(), 1740695150)
        assert(GPUParticlesAttractor3D._method_get_attenuation_1740695150 != nil)
        let _method_set_directionality_373806689_name = StringName(from: "set_directionality")
        self._method_set_directionality_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_directionality_373806689_name._native_ptr(), 373806689)
        assert(GPUParticlesAttractor3D._method_set_directionality_373806689 != nil)
        let _method_get_directionality_1740695150_name = StringName(from: "get_directionality")
        self._method_get_directionality_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_directionality_1740695150_name._native_ptr(), 1740695150)
        assert(GPUParticlesAttractor3D._method_get_directionality_1740695150 != nil)
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
    public func set_strength(strength: Float64)  {
        withUnsafePointer(to: strength) { strength_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(strength_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_strength_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_strength() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_strength_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_attenuation(attenuation: Float64)  {
        withUnsafePointer(to: attenuation) { attenuation_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(attenuation_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_attenuation_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_attenuation() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_attenuation_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_directionality(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_directionality_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_directionality() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_directionality_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
}