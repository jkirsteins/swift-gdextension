import godot_native

fileprivate var __godot_name_CanvasItemMaterial: StringName! = nil

/// A material for [CanvasItem]s.
/// 
/// [CanvasItemMaterial]s provide a means of modifying the textures associated with a CanvasItem. They specialize in describing blend and lighting behaviors for textures. Use a [ShaderMaterial] to more fully customize a material's interactions with a [CanvasItem].
open class CanvasItemMaterial : Material {

    public enum BlendMode : Int32 {
        case BLEND_MODE_MIX = 0
        case BLEND_MODE_ADD = 1
        case BLEND_MODE_SUB = 2
        case BLEND_MODE_MUL = 3
        case BLEND_MODE_PREMULT_ALPHA = 4
    }
    public enum LightMode : Int32 {
        case LIGHT_MODE_NORMAL = 0
        case LIGHT_MODE_UNSHADED = 1
        case LIGHT_MODE_LIGHT_ONLY = 2
    }

    public override class var __godot_name: StringName { __godot_name_CanvasItemMaterial }

    static var _method_set_blend_mode_1786054936: GDExtensionMethodBindPtr! = nil
    static var _method_get_blend_mode_3318684035: GDExtensionMethodBindPtr! = nil
    static var _method_set_light_mode_628074070: GDExtensionMethodBindPtr! = nil
    static var _method_get_light_mode_3863292382: GDExtensionMethodBindPtr! = nil
    static var _method_set_particles_animation_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_particles_animation_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_particles_anim_h_frames_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_particles_anim_h_frames_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_particles_anim_v_frames_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_particles_anim_v_frames_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_particles_anim_loop_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_particles_anim_loop_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_CanvasItemMaterial = StringName(from: "CanvasItemMaterial")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_blend_mode_1786054936_name = StringName(from: "set_blend_mode")
        self._method_set_blend_mode_1786054936 = self.interface.pointee.classdb_get_method_bind(__godot_name_CanvasItemMaterial._native_ptr(), _method_set_blend_mode_1786054936_name._native_ptr(), 1786054936)
        assert(CanvasItemMaterial._method_set_blend_mode_1786054936 != nil)
        let _method_get_blend_mode_3318684035_name = StringName(from: "get_blend_mode")
        self._method_get_blend_mode_3318684035 = self.interface.pointee.classdb_get_method_bind(__godot_name_CanvasItemMaterial._native_ptr(), _method_get_blend_mode_3318684035_name._native_ptr(), 3318684035)
        assert(CanvasItemMaterial._method_get_blend_mode_3318684035 != nil)
        let _method_set_light_mode_628074070_name = StringName(from: "set_light_mode")
        self._method_set_light_mode_628074070 = self.interface.pointee.classdb_get_method_bind(__godot_name_CanvasItemMaterial._native_ptr(), _method_set_light_mode_628074070_name._native_ptr(), 628074070)
        assert(CanvasItemMaterial._method_set_light_mode_628074070 != nil)
        let _method_get_light_mode_3863292382_name = StringName(from: "get_light_mode")
        self._method_get_light_mode_3863292382 = self.interface.pointee.classdb_get_method_bind(__godot_name_CanvasItemMaterial._native_ptr(), _method_get_light_mode_3863292382_name._native_ptr(), 3863292382)
        assert(CanvasItemMaterial._method_get_light_mode_3863292382 != nil)
        let _method_set_particles_animation_2586408642_name = StringName(from: "set_particles_animation")
        self._method_set_particles_animation_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_CanvasItemMaterial._native_ptr(), _method_set_particles_animation_2586408642_name._native_ptr(), 2586408642)
        assert(CanvasItemMaterial._method_set_particles_animation_2586408642 != nil)
        let _method_get_particles_animation_36873697_name = StringName(from: "get_particles_animation")
        self._method_get_particles_animation_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_CanvasItemMaterial._native_ptr(), _method_get_particles_animation_36873697_name._native_ptr(), 36873697)
        assert(CanvasItemMaterial._method_get_particles_animation_36873697 != nil)
        let _method_set_particles_anim_h_frames_1286410249_name = StringName(from: "set_particles_anim_h_frames")
        self._method_set_particles_anim_h_frames_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_CanvasItemMaterial._native_ptr(), _method_set_particles_anim_h_frames_1286410249_name._native_ptr(), 1286410249)
        assert(CanvasItemMaterial._method_set_particles_anim_h_frames_1286410249 != nil)
        let _method_get_particles_anim_h_frames_3905245786_name = StringName(from: "get_particles_anim_h_frames")
        self._method_get_particles_anim_h_frames_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_CanvasItemMaterial._native_ptr(), _method_get_particles_anim_h_frames_3905245786_name._native_ptr(), 3905245786)
        assert(CanvasItemMaterial._method_get_particles_anim_h_frames_3905245786 != nil)
        let _method_set_particles_anim_v_frames_1286410249_name = StringName(from: "set_particles_anim_v_frames")
        self._method_set_particles_anim_v_frames_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_CanvasItemMaterial._native_ptr(), _method_set_particles_anim_v_frames_1286410249_name._native_ptr(), 1286410249)
        assert(CanvasItemMaterial._method_set_particles_anim_v_frames_1286410249 != nil)
        let _method_get_particles_anim_v_frames_3905245786_name = StringName(from: "get_particles_anim_v_frames")
        self._method_get_particles_anim_v_frames_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_CanvasItemMaterial._native_ptr(), _method_get_particles_anim_v_frames_3905245786_name._native_ptr(), 3905245786)
        assert(CanvasItemMaterial._method_get_particles_anim_v_frames_3905245786 != nil)
        let _method_set_particles_anim_loop_2586408642_name = StringName(from: "set_particles_anim_loop")
        self._method_set_particles_anim_loop_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_CanvasItemMaterial._native_ptr(), _method_set_particles_anim_loop_2586408642_name._native_ptr(), 2586408642)
        assert(CanvasItemMaterial._method_set_particles_anim_loop_2586408642 != nil)
        let _method_get_particles_anim_loop_36873697_name = StringName(from: "get_particles_anim_loop")
        self._method_get_particles_anim_loop_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_CanvasItemMaterial._native_ptr(), _method_get_particles_anim_loop_36873697_name._native_ptr(), 36873697)
        assert(CanvasItemMaterial._method_get_particles_anim_loop_36873697 != nil)
    }

    public func set_blend_mode(blend_mode: CanvasItemMaterial.BlendMode)  {
        withUnsafePointer(to: blend_mode.rawValue) { blend_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(blend_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_blend_mode_1786054936,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_blend_mode() -> CanvasItemMaterial.BlendMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_blend_mode_3318684035,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CanvasItemMaterial.BlendMode(godot: __resPtr.pointee)
    }
    public func set_light_mode(light_mode: CanvasItemMaterial.LightMode)  {
        withUnsafePointer(to: light_mode.rawValue) { light_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_light_mode_628074070,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_light_mode() -> CanvasItemMaterial.LightMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_light_mode_3863292382,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CanvasItemMaterial.LightMode(godot: __resPtr.pointee)
    }
    public func set_particles_animation(particles_anim: UInt8)  {
        withUnsafePointer(to: particles_anim) { particles_anim_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_anim_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_particles_animation_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_particles_animation() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_particles_animation_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_particles_anim_h_frames(frames: Int64)  {
        withUnsafePointer(to: frames) { frames_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(frames_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_particles_anim_h_frames_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_particles_anim_h_frames() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_particles_anim_h_frames_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_particles_anim_v_frames(frames: Int64)  {
        withUnsafePointer(to: frames) { frames_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(frames_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_particles_anim_v_frames_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_particles_anim_v_frames() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_particles_anim_v_frames_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_particles_anim_loop(loop: UInt8)  {
        withUnsafePointer(to: loop) { loop_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(loop_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_particles_anim_loop_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_particles_anim_loop() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_particles_anim_loop_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}