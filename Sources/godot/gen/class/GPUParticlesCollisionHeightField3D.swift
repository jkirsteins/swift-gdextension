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
open class GPUParticlesCollisionHeightField3D : GPUParticlesCollision3D {

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

    static var _method_set_size_3460891852: StringName! = nil
    static var _method_get_size_3360562783: StringName! = nil
    static var _method_set_resolution_1009996517: StringName! = nil
    static var _method_get_resolution_1156065644: StringName! = nil
    static var _method_set_update_mode_673680859: StringName! = nil
    static var _method_get_update_mode_1998141380: StringName! = nil
    static var _method_set_follow_camera_enabled_2586408642: StringName! = nil
    static var _method_is_follow_camera_enabled_36873697: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_GPUParticlesCollisionHeightField3D == nil)
        __godot_name_GPUParticlesCollisionHeightField3D = StringName(from: "GPUParticlesCollisionHeightField3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_size_3460891852 = StringName(from: "set_size")
        assert(self._method_set_size_3460891852 != nil)
        self._method_get_size_3360562783 = StringName(from: "get_size")
        assert(self._method_get_size_3360562783 != nil)
        self._method_set_resolution_1009996517 = StringName(from: "set_resolution")
        assert(self._method_set_resolution_1009996517 != nil)
        self._method_get_resolution_1156065644 = StringName(from: "get_resolution")
        assert(self._method_get_resolution_1156065644 != nil)
        self._method_set_update_mode_673680859 = StringName(from: "set_update_mode")
        assert(self._method_set_update_mode_673680859 != nil)
        self._method_get_update_mode_1998141380 = StringName(from: "get_update_mode")
        assert(self._method_get_update_mode_1998141380 != nil)
        self._method_set_follow_camera_enabled_2586408642 = StringName(from: "set_follow_camera_enabled")
        assert(self._method_set_follow_camera_enabled_2586408642 != nil)
        self._method_is_follow_camera_enabled_36873697 = StringName(from: "is_follow_camera_enabled")
        assert(self._method_is_follow_camera_enabled_36873697 != nil)
    }

    public func set_size(size: Vector3)  {
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_size_3460891852._native_ptr(),
                    3460891852)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_size_3360562783._native_ptr(),
                    3360562783)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func set_resolution(resolution: GPUParticlesCollisionHeightField3D.Resolution)  {
        withUnsafePointer(to: resolution.rawValue) { resolution_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(resolution_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_resolution_1009996517._native_ptr(),
                    1009996517)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_resolution_1156065644._native_ptr(),
                    1156065644)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return GPUParticlesCollisionHeightField3D.Resolution(godot: __resPtr.pointee)
    }
    public func set_update_mode(update_mode: GPUParticlesCollisionHeightField3D.UpdateMode)  {
        withUnsafePointer(to: update_mode.rawValue) { update_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(update_mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_update_mode_673680859._native_ptr(),
                    673680859)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_update_mode_1998141380._native_ptr(),
                    1998141380)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return GPUParticlesCollisionHeightField3D.UpdateMode(godot: __resPtr.pointee)
    }
    public func set_follow_camera_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_follow_camera_enabled_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_follow_camera_enabled_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}