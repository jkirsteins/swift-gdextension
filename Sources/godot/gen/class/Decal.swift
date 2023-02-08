import godot_native

fileprivate var __godot_name_Decal: StringName! = nil

/// Node that projects a texture onto a [MeshInstance3D].
/// 
/// [Decal]s are used to project a texture onto a [Mesh] in the scene. Use Decals to add detail to a scene without affecting the underlying [Mesh]. They are often used to add weathering to building, add dirt or mud to the ground, or add variety to props. Decals can be moved at any time, making them suitable for things like blob shadows or laser sight dots.
///  
/// They are made of an [AABB] and a group of [Texture2D]s specifying [Color], normal, ORM (ambient occlusion, roughness, metallic), and emission. Decals are projected within their [AABB] so altering the orientation of the Decal affects the direction in which they are projected. By default, Decals are projected down (i.e. from positive Y to negative Y).
///  
/// The [Texture2D]s associated with the Decal are automatically stored in a texture atlas which is used for drawing the decals so all decals can be drawn at once. Godot uses clustered decals, meaning they are stored in cluster data and drawn when the mesh is drawn, they are not drawn as a post-processing effect after.
///  
/// [b]Note:[/b] Decals cannot affect an underlying material's transparency, regardless of its transparency mode (alpha blend, alpha scissor, alpha hash, opaque pre-pass). This means translucent or transparent areas of a material will remain translucent or transparent even if an opaque decal is applied on them.
open class Decal : VisualInstance3D {

    public enum DecalTexture : Int32 {
        case TEXTURE_ALBEDO = 0
        case TEXTURE_NORMAL = 1
        case TEXTURE_ORM = 2
        case TEXTURE_EMISSION = 3
        case TEXTURE_MAX = 4
    }

    public override class var __godot_name: StringName { __godot_name_Decal }

    static var _method_set_size_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_size_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_2086764391: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_3244119503: GDExtensionMethodBindPtr! = nil
    static var _method_set_emission_energy_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_emission_energy_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_albedo_mix_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_albedo_mix_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_modulate_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_modulate_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_upper_fade_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_upper_fade_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_lower_fade_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_lower_fade_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_normal_fade_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_normal_fade_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_enable_distance_fade_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_distance_fade_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_distance_fade_begin_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_distance_fade_begin_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_distance_fade_length_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_distance_fade_length_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_cull_mask_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_cull_mask_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_Decal = StringName(from: "Decal")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_size_3460891852_name = StringName(from: "set_size")
        self._method_set_size_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name_Decal._native_ptr(), _method_set_size_3460891852_name._native_ptr(), 3460891852)
        assert(Decal._method_set_size_3460891852 != nil)
        let _method_get_size_3360562783_name = StringName(from: "get_size")
        self._method_get_size_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name_Decal._native_ptr(), _method_get_size_3360562783_name._native_ptr(), 3360562783)
        assert(Decal._method_get_size_3360562783 != nil)
        let _method_set_texture_2086764391_name = StringName(from: "set_texture")
        self._method_set_texture_2086764391 = self.interface.pointee.classdb_get_method_bind(__godot_name_Decal._native_ptr(), _method_set_texture_2086764391_name._native_ptr(), 2086764391)
        assert(Decal._method_set_texture_2086764391 != nil)
        let _method_get_texture_3244119503_name = StringName(from: "get_texture")
        self._method_get_texture_3244119503 = self.interface.pointee.classdb_get_method_bind(__godot_name_Decal._native_ptr(), _method_get_texture_3244119503_name._native_ptr(), 3244119503)
        assert(Decal._method_get_texture_3244119503 != nil)
        let _method_set_emission_energy_373806689_name = StringName(from: "set_emission_energy")
        self._method_set_emission_energy_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_Decal._native_ptr(), _method_set_emission_energy_373806689_name._native_ptr(), 373806689)
        assert(Decal._method_set_emission_energy_373806689 != nil)
        let _method_get_emission_energy_1740695150_name = StringName(from: "get_emission_energy")
        self._method_get_emission_energy_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_Decal._native_ptr(), _method_get_emission_energy_1740695150_name._native_ptr(), 1740695150)
        assert(Decal._method_get_emission_energy_1740695150 != nil)
        let _method_set_albedo_mix_373806689_name = StringName(from: "set_albedo_mix")
        self._method_set_albedo_mix_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_Decal._native_ptr(), _method_set_albedo_mix_373806689_name._native_ptr(), 373806689)
        assert(Decal._method_set_albedo_mix_373806689 != nil)
        let _method_get_albedo_mix_1740695150_name = StringName(from: "get_albedo_mix")
        self._method_get_albedo_mix_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_Decal._native_ptr(), _method_get_albedo_mix_1740695150_name._native_ptr(), 1740695150)
        assert(Decal._method_get_albedo_mix_1740695150 != nil)
        let _method_set_modulate_2920490490_name = StringName(from: "set_modulate")
        self._method_set_modulate_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name_Decal._native_ptr(), _method_set_modulate_2920490490_name._native_ptr(), 2920490490)
        assert(Decal._method_set_modulate_2920490490 != nil)
        let _method_get_modulate_3444240500_name = StringName(from: "get_modulate")
        self._method_get_modulate_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name_Decal._native_ptr(), _method_get_modulate_3444240500_name._native_ptr(), 3444240500)
        assert(Decal._method_get_modulate_3444240500 != nil)
        let _method_set_upper_fade_373806689_name = StringName(from: "set_upper_fade")
        self._method_set_upper_fade_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_Decal._native_ptr(), _method_set_upper_fade_373806689_name._native_ptr(), 373806689)
        assert(Decal._method_set_upper_fade_373806689 != nil)
        let _method_get_upper_fade_1740695150_name = StringName(from: "get_upper_fade")
        self._method_get_upper_fade_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_Decal._native_ptr(), _method_get_upper_fade_1740695150_name._native_ptr(), 1740695150)
        assert(Decal._method_get_upper_fade_1740695150 != nil)
        let _method_set_lower_fade_373806689_name = StringName(from: "set_lower_fade")
        self._method_set_lower_fade_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_Decal._native_ptr(), _method_set_lower_fade_373806689_name._native_ptr(), 373806689)
        assert(Decal._method_set_lower_fade_373806689 != nil)
        let _method_get_lower_fade_1740695150_name = StringName(from: "get_lower_fade")
        self._method_get_lower_fade_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_Decal._native_ptr(), _method_get_lower_fade_1740695150_name._native_ptr(), 1740695150)
        assert(Decal._method_get_lower_fade_1740695150 != nil)
        let _method_set_normal_fade_373806689_name = StringName(from: "set_normal_fade")
        self._method_set_normal_fade_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_Decal._native_ptr(), _method_set_normal_fade_373806689_name._native_ptr(), 373806689)
        assert(Decal._method_set_normal_fade_373806689 != nil)
        let _method_get_normal_fade_1740695150_name = StringName(from: "get_normal_fade")
        self._method_get_normal_fade_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_Decal._native_ptr(), _method_get_normal_fade_1740695150_name._native_ptr(), 1740695150)
        assert(Decal._method_get_normal_fade_1740695150 != nil)
        let _method_set_enable_distance_fade_2586408642_name = StringName(from: "set_enable_distance_fade")
        self._method_set_enable_distance_fade_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_Decal._native_ptr(), _method_set_enable_distance_fade_2586408642_name._native_ptr(), 2586408642)
        assert(Decal._method_set_enable_distance_fade_2586408642 != nil)
        let _method_is_distance_fade_enabled_36873697_name = StringName(from: "is_distance_fade_enabled")
        self._method_is_distance_fade_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_Decal._native_ptr(), _method_is_distance_fade_enabled_36873697_name._native_ptr(), 36873697)
        assert(Decal._method_is_distance_fade_enabled_36873697 != nil)
        let _method_set_distance_fade_begin_373806689_name = StringName(from: "set_distance_fade_begin")
        self._method_set_distance_fade_begin_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_Decal._native_ptr(), _method_set_distance_fade_begin_373806689_name._native_ptr(), 373806689)
        assert(Decal._method_set_distance_fade_begin_373806689 != nil)
        let _method_get_distance_fade_begin_1740695150_name = StringName(from: "get_distance_fade_begin")
        self._method_get_distance_fade_begin_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_Decal._native_ptr(), _method_get_distance_fade_begin_1740695150_name._native_ptr(), 1740695150)
        assert(Decal._method_get_distance_fade_begin_1740695150 != nil)
        let _method_set_distance_fade_length_373806689_name = StringName(from: "set_distance_fade_length")
        self._method_set_distance_fade_length_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_Decal._native_ptr(), _method_set_distance_fade_length_373806689_name._native_ptr(), 373806689)
        assert(Decal._method_set_distance_fade_length_373806689 != nil)
        let _method_get_distance_fade_length_1740695150_name = StringName(from: "get_distance_fade_length")
        self._method_get_distance_fade_length_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_Decal._native_ptr(), _method_get_distance_fade_length_1740695150_name._native_ptr(), 1740695150)
        assert(Decal._method_get_distance_fade_length_1740695150 != nil)
        let _method_set_cull_mask_1286410249_name = StringName(from: "set_cull_mask")
        self._method_set_cull_mask_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_Decal._native_ptr(), _method_set_cull_mask_1286410249_name._native_ptr(), 1286410249)
        assert(Decal._method_set_cull_mask_1286410249 != nil)
        let _method_get_cull_mask_3905245786_name = StringName(from: "get_cull_mask")
        self._method_get_cull_mask_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_Decal._native_ptr(), _method_get_cull_mask_3905245786_name._native_ptr(), 3905245786)
        assert(Decal._method_get_cull_mask_3905245786 != nil)
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
    public func set_texture(`type`: Decal.DecalTexture, texture: Texture2D)  {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native), .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_2086764391,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_texture(`type`: Decal.DecalTexture) -> Texture2D {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_3244119503,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
        }
    }
    public func set_emission_energy(energy: Float64)  {
        withUnsafePointer(to: energy) { energy_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(energy_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_emission_energy_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_emission_energy() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_emission_energy_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_albedo_mix(energy: Float64)  {
        withUnsafePointer(to: energy) { energy_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(energy_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_albedo_mix_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_albedo_mix() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_albedo_mix_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_modulate(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_modulate_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_modulate() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_modulate_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
    public func set_upper_fade(fade: Float64)  {
        withUnsafePointer(to: fade) { fade_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(fade_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_upper_fade_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_upper_fade() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_upper_fade_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_lower_fade(fade: Float64)  {
        withUnsafePointer(to: fade) { fade_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(fade_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_lower_fade_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_lower_fade() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_lower_fade_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_normal_fade(fade: Float64)  {
        withUnsafePointer(to: fade) { fade_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(fade_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_normal_fade_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_normal_fade() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_normal_fade_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_enable_distance_fade(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_enable_distance_fade_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_distance_fade_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_distance_fade_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_distance_fade_begin(distance: Float64)  {
        withUnsafePointer(to: distance) { distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(distance_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_distance_fade_begin_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_distance_fade_begin() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_distance_fade_begin_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_distance_fade_length(distance: Float64)  {
        withUnsafePointer(to: distance) { distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(distance_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_distance_fade_length_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_distance_fade_length() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_distance_fade_length_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
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
            return Int64(godot: __resPtr.pointee)
    }
}