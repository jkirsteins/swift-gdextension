import godot_native

fileprivate var __godot_name_GPUParticlesCollisionHeightField3D: StringName! = nil

/// Real-time heightmap-shaped 3D particle attractor affecting [GPUParticles3D] nodes.
/// 
/// Real-time heightmap-shaped 3D particle attractor affecting [GPUParticles3D] nodes.
///  
/// Heightmap shapes allow for efficiently representing collisions for convex and concave objects with a single "floor" (such as terrain). This is less flexible than [GPUParticlesCollisionSDF3D], but it doesn't require a baking step.
///  
/// [GPUParticlesCollisionHeightField3D] can also be regenerated in real-time when it is moved, when the camera moves, or even continuously. This makes [GPUParticlesCollisionHeightField3D] a good choice for weather effects such as rain and snow and games with highly dynamic geometry. However, since heightmaps cannot represent overhangs, [GPUParticlesCollisionHeightField3D] is not suited for indoor particle collision.
///  
/// [b]Note:[/b] [member ParticleProcessMaterial.collision_mode] must be [code]true[/code] on the [GPUParticles3D]'s process material for collision to work.
///  
/// [b]Note:[/b] Particle collision only affects [GPUParticles3D], not [CPUParticles3D].
public class GPUParticlesCollisionHeightField3D : GPUParticlesCollision3D {

    public enum Resolution : Int32 {
        case RESOLUTION_256 = 0
        case RESOLUTION_512 = 1
        case RESOLUTION_1024 = 2
        case RESOLUTION_2048 = 3
        case RESOLUTION_4096 = 4
        case RESOLUTION_8192 = 5
        case RESOLUTION_MAX = 6
    }
    public enum UpdateMode : Int32 {
        case UPDATE_MODE_WHEN_MOVED = 0
        case UPDATE_MODE_ALWAYS = 1
    }

    public override class var __godot_name: StringName { __godot_name_GPUParticlesCollisionHeightField3D }

    static var _method_set_size_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_size_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_resolution_1009996517: GDExtensionMethodBindPtr! = nil
    static var _method_get_resolution_1156065644: GDExtensionMethodBindPtr! = nil
    static var _method_set_update_mode_673680859: GDExtensionMethodBindPtr! = nil
    static var _method_get_update_mode_1998141380: GDExtensionMethodBindPtr! = nil
    static var _method_set_follow_camera_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_follow_camera_enabled_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_GPUParticlesCollisionHeightField3D = StringName(from: "GPUParticlesCollisionHeightField3D")

        let _method_set_size_3460891852_name = StringName(from: "set_size")
        self._method_set_size_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_size_3460891852_name._native_ptr(), 3460891852)
        assert(GPUParticlesCollisionHeightField3D._method_set_size_3460891852 != nil)
        let _method_get_size_3360562783_name = StringName(from: "get_size")
        self._method_get_size_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_size_3360562783_name._native_ptr(), 3360562783)
        assert(GPUParticlesCollisionHeightField3D._method_get_size_3360562783 != nil)
        let _method_set_resolution_1009996517_name = StringName(from: "set_resolution")
        self._method_set_resolution_1009996517 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_resolution_1009996517_name._native_ptr(), 1009996517)
        assert(GPUParticlesCollisionHeightField3D._method_set_resolution_1009996517 != nil)
        let _method_get_resolution_1156065644_name = StringName(from: "get_resolution")
        self._method_get_resolution_1156065644 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_resolution_1156065644_name._native_ptr(), 1156065644)
        assert(GPUParticlesCollisionHeightField3D._method_get_resolution_1156065644 != nil)
        let _method_set_update_mode_673680859_name = StringName(from: "set_update_mode")
        self._method_set_update_mode_673680859 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_update_mode_673680859_name._native_ptr(), 673680859)
        assert(GPUParticlesCollisionHeightField3D._method_set_update_mode_673680859 != nil)
        let _method_get_update_mode_1998141380_name = StringName(from: "get_update_mode")
        self._method_get_update_mode_1998141380 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_update_mode_1998141380_name._native_ptr(), 1998141380)
        assert(GPUParticlesCollisionHeightField3D._method_get_update_mode_1998141380 != nil)
        let _method_set_follow_camera_enabled_2586408642_name = StringName(from: "set_follow_camera_enabled")
        self._method_set_follow_camera_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_follow_camera_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(GPUParticlesCollisionHeightField3D._method_set_follow_camera_enabled_2586408642 != nil)
        let _method_is_follow_camera_enabled_36873697_name = StringName(from: "is_follow_camera_enabled")
        self._method_is_follow_camera_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_follow_camera_enabled_36873697_name._native_ptr(), 36873697)
        assert(GPUParticlesCollisionHeightField3D._method_is_follow_camera_enabled_36873697 != nil)
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
    public func set_resolution(resolution: GPUParticlesCollisionHeightField3D.Resolution)  {
        withUnsafePointer(to: resolution.rawValue) { resolution_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(resolution_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_resolution_1009996517,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_resolution() -> GPUParticlesCollisionHeightField3D.Resolution {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_resolution_1156065644,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return GPUParticlesCollisionHeightField3D.Resolution(from: __resPtr.pointee)
    }
    public func set_update_mode(update_mode: GPUParticlesCollisionHeightField3D.UpdateMode)  {
        withUnsafePointer(to: update_mode.rawValue) { update_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(update_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_update_mode_673680859,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_update_mode() -> GPUParticlesCollisionHeightField3D.UpdateMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_update_mode_1998141380,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return GPUParticlesCollisionHeightField3D.UpdateMode(from: __resPtr.pointee)
    }
    public func set_follow_camera_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_follow_camera_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_follow_camera_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_follow_camera_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}