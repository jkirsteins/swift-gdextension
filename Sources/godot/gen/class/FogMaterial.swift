import godot_native

fileprivate var __godot_name_FogMaterial: StringName! = nil

/// [Material] used with a [FogVolume] to draw things with the volumetric fog effect.
/// 
/// A [Material] resource that can be used by [FogVolume]s to draw volumetric effects.
///  
/// If you need more advanced effects, use a custom [url=$DOCS_URL/tutorials/shaders/shader_reference/fog_shader.html]fog shader[/url].
public class FogMaterial : Material {

    

    public override class var __godot_name: StringName { __godot_name_FogMaterial }

    static var _method_set_density_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_density_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_albedo_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_albedo_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_emission_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_emission_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_height_falloff_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_height_falloff_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_edge_fade_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_edge_fade_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_density_texture_1188404210: GDExtensionMethodBindPtr! = nil
    static var _method_get_density_texture_373985333: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_FogMaterial = StringName(from: "FogMaterial")

        let _method_set_density_373806689_name = StringName(from: "set_density")
        self._method_set_density_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_density_373806689_name._native_ptr(), 373806689)
        assert(FogMaterial._method_set_density_373806689 != nil)
        let _method_get_density_1740695150_name = StringName(from: "get_density")
        self._method_get_density_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_density_1740695150_name._native_ptr(), 1740695150)
        assert(FogMaterial._method_get_density_1740695150 != nil)
        let _method_set_albedo_2920490490_name = StringName(from: "set_albedo")
        self._method_set_albedo_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_albedo_2920490490_name._native_ptr(), 2920490490)
        assert(FogMaterial._method_set_albedo_2920490490 != nil)
        let _method_get_albedo_3444240500_name = StringName(from: "get_albedo")
        self._method_get_albedo_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_albedo_3444240500_name._native_ptr(), 3444240500)
        assert(FogMaterial._method_get_albedo_3444240500 != nil)
        let _method_set_emission_2920490490_name = StringName(from: "set_emission")
        self._method_set_emission_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_emission_2920490490_name._native_ptr(), 2920490490)
        assert(FogMaterial._method_set_emission_2920490490 != nil)
        let _method_get_emission_3444240500_name = StringName(from: "get_emission")
        self._method_get_emission_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_emission_3444240500_name._native_ptr(), 3444240500)
        assert(FogMaterial._method_get_emission_3444240500 != nil)
        let _method_set_height_falloff_373806689_name = StringName(from: "set_height_falloff")
        self._method_set_height_falloff_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_height_falloff_373806689_name._native_ptr(), 373806689)
        assert(FogMaterial._method_set_height_falloff_373806689 != nil)
        let _method_get_height_falloff_1740695150_name = StringName(from: "get_height_falloff")
        self._method_get_height_falloff_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_height_falloff_1740695150_name._native_ptr(), 1740695150)
        assert(FogMaterial._method_get_height_falloff_1740695150 != nil)
        let _method_set_edge_fade_373806689_name = StringName(from: "set_edge_fade")
        self._method_set_edge_fade_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_edge_fade_373806689_name._native_ptr(), 373806689)
        assert(FogMaterial._method_set_edge_fade_373806689 != nil)
        let _method_get_edge_fade_1740695150_name = StringName(from: "get_edge_fade")
        self._method_get_edge_fade_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_edge_fade_1740695150_name._native_ptr(), 1740695150)
        assert(FogMaterial._method_get_edge_fade_1740695150 != nil)
        let _method_set_density_texture_1188404210_name = StringName(from: "set_density_texture")
        self._method_set_density_texture_1188404210 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_density_texture_1188404210_name._native_ptr(), 1188404210)
        assert(FogMaterial._method_set_density_texture_1188404210 != nil)
        let _method_get_density_texture_373985333_name = StringName(from: "get_density_texture")
        self._method_get_density_texture_373985333 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_density_texture_373985333_name._native_ptr(), 373985333)
        assert(FogMaterial._method_get_density_texture_373985333 != nil)
    }

    public func set_density(density: Float64)  {
        withUnsafePointer(to: density) { density_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(density_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_density_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_density() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_density_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_albedo(albedo: Color)  {
        let albedo_native = albedo._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(albedo_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_albedo_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_albedo() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_albedo_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_emission(emission: Color)  {
        let emission_native = emission._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(emission_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_emission_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_emission() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_emission_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_height_falloff(height_falloff: Float64)  {
        withUnsafePointer(to: height_falloff) { height_falloff_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(height_falloff_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_height_falloff_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_height_falloff() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_height_falloff_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_edge_fade(edge_fade: Float64)  {
        withUnsafePointer(to: edge_fade) { edge_fade_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(edge_fade_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_edge_fade_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_edge_fade() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_edge_fade_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_density_texture(density_texture: Texture3D)  {
        let density_texture_native = density_texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(density_texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_density_texture_1188404210,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_density_texture() -> Texture3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_density_texture_373985333,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture3D(from: __resPtr.pointee)
    }
}