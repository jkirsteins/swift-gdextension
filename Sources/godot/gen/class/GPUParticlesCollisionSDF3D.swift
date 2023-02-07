import godot_native

fileprivate var __godot_name_GPUParticlesCollisionSDF3D: StringName! = nil

/// Baked signed distance field 3D particle attractor affecting [GPUParticles3D] nodes.
/// 
/// Baked signed distance field 3D particle attractor affecting [GPUParticles3D] nodes.
///  
/// Signed distance fields (SDF) allow for efficiently representing approximate collision shapes for convex and concave objects of any shape. This is more flexible than [GPUParticlesCollisionHeightField3D], but it requires a baking step.
///  
/// [b]Baking:[/b] The signed distance field texture can be baked by selecting the [GPUParticlesCollisionSDF3D] node in the editor, then clicking [b]Bake SDF[/b] at the top of the 3D viewport. Any [i]visible[/i] [MeshInstance3D]s within the [member size] will be taken into account for baking, regardless of their [member GeometryInstance3D.gi_mode].
///  
/// [b]Note:[/b] Baking a [GPUParticlesCollisionSDF3D]'s [member texture] is only possible within the editor, as there is no bake method exposed for use in exported projects. However, it's still possible to load pre-baked [Texture3D]s into its [member texture] property in an exported project.
///  
/// [b]Note:[/b] [member ParticleProcessMaterial.collision_mode] must be [constant ParticleProcessMaterial.COLLISION_RIGID] or [constant ParticleProcessMaterial.COLLISION_HIDE_ON_CONTACT] on the [GPUParticles3D]'s process material for collision to work.
///  
/// [b]Note:[/b] Particle collision only affects [GPUParticles3D], not [CPUParticles3D].
public class GPUParticlesCollisionSDF3D : GPUParticlesCollision3D {

    public enum Resolution : Int32 {
        case RESOLUTION_16 = 0
        case RESOLUTION_32 = 1
        case RESOLUTION_64 = 2
        case RESOLUTION_128 = 3
        case RESOLUTION_256 = 4
        case RESOLUTION_512 = 5
        case RESOLUTION_MAX = 6
    }

    public override class var __godot_name: StringName { __godot_name_GPUParticlesCollisionSDF3D }

    static var _method_set_size_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_size_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_resolution_1155629297: GDExtensionMethodBindPtr! = nil
    static var _method_get_resolution_2919555867: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_1188404210: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_373985333: GDExtensionMethodBindPtr! = nil
    static var _method_set_thickness_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_thickness_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_bake_mask_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_bake_mask_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_bake_mask_value_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_get_bake_mask_value_1116898809: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_GPUParticlesCollisionSDF3D = StringName(from: "GPUParticlesCollisionSDF3D")

        let _method_set_size_3460891852_name = StringName(from: "set_size")
        self._method_set_size_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_size_3460891852_name._native_ptr(), 3460891852)
        assert(GPUParticlesCollisionSDF3D._method_set_size_3460891852 != nil)
        let _method_get_size_3360562783_name = StringName(from: "get_size")
        self._method_get_size_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_size_3360562783_name._native_ptr(), 3360562783)
        assert(GPUParticlesCollisionSDF3D._method_get_size_3360562783 != nil)
        let _method_set_resolution_1155629297_name = StringName(from: "set_resolution")
        self._method_set_resolution_1155629297 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_resolution_1155629297_name._native_ptr(), 1155629297)
        assert(GPUParticlesCollisionSDF3D._method_set_resolution_1155629297 != nil)
        let _method_get_resolution_2919555867_name = StringName(from: "get_resolution")
        self._method_get_resolution_2919555867 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_resolution_2919555867_name._native_ptr(), 2919555867)
        assert(GPUParticlesCollisionSDF3D._method_get_resolution_2919555867 != nil)
        let _method_set_texture_1188404210_name = StringName(from: "set_texture")
        self._method_set_texture_1188404210 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_texture_1188404210_name._native_ptr(), 1188404210)
        assert(GPUParticlesCollisionSDF3D._method_set_texture_1188404210 != nil)
        let _method_get_texture_373985333_name = StringName(from: "get_texture")
        self._method_get_texture_373985333 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_texture_373985333_name._native_ptr(), 373985333)
        assert(GPUParticlesCollisionSDF3D._method_get_texture_373985333 != nil)
        let _method_set_thickness_373806689_name = StringName(from: "set_thickness")
        self._method_set_thickness_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_thickness_373806689_name._native_ptr(), 373806689)
        assert(GPUParticlesCollisionSDF3D._method_set_thickness_373806689 != nil)
        let _method_get_thickness_1740695150_name = StringName(from: "get_thickness")
        self._method_get_thickness_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_thickness_1740695150_name._native_ptr(), 1740695150)
        assert(GPUParticlesCollisionSDF3D._method_get_thickness_1740695150 != nil)
        let _method_set_bake_mask_1286410249_name = StringName(from: "set_bake_mask")
        self._method_set_bake_mask_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_bake_mask_1286410249_name._native_ptr(), 1286410249)
        assert(GPUParticlesCollisionSDF3D._method_set_bake_mask_1286410249 != nil)
        let _method_get_bake_mask_3905245786_name = StringName(from: "get_bake_mask")
        self._method_get_bake_mask_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_bake_mask_3905245786_name._native_ptr(), 3905245786)
        assert(GPUParticlesCollisionSDF3D._method_get_bake_mask_3905245786 != nil)
        let _method_set_bake_mask_value_300928843_name = StringName(from: "set_bake_mask_value")
        self._method_set_bake_mask_value_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_bake_mask_value_300928843_name._native_ptr(), 300928843)
        assert(GPUParticlesCollisionSDF3D._method_set_bake_mask_value_300928843 != nil)
        let _method_get_bake_mask_value_1116898809_name = StringName(from: "get_bake_mask_value")
        self._method_get_bake_mask_value_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_bake_mask_value_1116898809_name._native_ptr(), 1116898809)
        assert(GPUParticlesCollisionSDF3D._method_get_bake_mask_value_1116898809 != nil)
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
    public func set_resolution(resolution: GPUParticlesCollisionSDF3D.Resolution)  {
        withUnsafePointer(to: resolution.rawValue) { resolution_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(resolution_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_resolution_1155629297,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_resolution() -> GPUParticlesCollisionSDF3D.Resolution {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_resolution_2919555867,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return GPUParticlesCollisionSDF3D.Resolution(from: __resPtr.pointee)
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
            return Texture3D(from: __resPtr.pointee)
    }
    public func set_thickness(thickness: Float64)  {
        withUnsafePointer(to: thickness) { thickness_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(thickness_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_thickness_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_thickness() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_thickness_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_bake_mask(mask: Int64)  {
        withUnsafePointer(to: mask) { mask_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bake_mask_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_bake_mask() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bake_mask_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_bake_mask_value(layer_number: Int64, value: UInt8)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: layer_number) { layer_number_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_number_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bake_mask_value_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_bake_mask_value(layer_number: Int64) -> UInt8 {
        withUnsafePointer(to: layer_number) { layer_number_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_number_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bake_mask_value_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
}