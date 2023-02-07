import godot_native

fileprivate var __godot_name_LightmapGI: StringName! = nil

/// Computes and stores baked lightmaps for fast global illumination.
/// 
/// The [LightmapGI] node is used to compute and store baked lightmaps. Lightmaps are used to provide high-quality indirect lighting with very little light leaking. [LightmapGI] can also provide rough reflections using spherical harmonics if [member directional] is enabled. Dynamic objects can receive indirect lighting thanks to [i]light probes[/i], which can be automatically placed by setting [member generate_probes_subdiv] to a value other than [constant GENERATE_PROBES_DISABLED]. Additional lightmap probes can also be added by creating [LightmapProbe] nodes. The downside is that lightmaps are fully static and cannot be baked in an exported project. Baking a [LightmapGI] node is also slower compared to [VoxelGI].
///  
/// [b]Procedural generation:[/b] Lightmap baking functionality is only available in the editor. This means [LightmapGI] is not suited to procedurally generated or user-built levels. For procedurally generated or user-built levels, use [VoxelGI] or SDFGI instead (see [member Environment.sdfgi_enabled]).
///  
/// [b]Performance:[/b] [LightmapGI] provides the best possible run-time performance for global illumination. It is suitable for low-end hardware including integrated graphics and mobile devices.
///  
/// [b]Note:[/b] Due to how lightmaps work, most properties only have a visible effect once lightmaps are baked again.
///  
/// [b]Note:[/b] Lightmap baking on [CSGShape3D]s and [PrimitiveMesh]es is not supported, as these cannot store UV2 data required for baking.
///  
/// [b]Note:[/b] If no custom lightmappers are installed, [LightmapGI] can only be baked when using the Vulkan backend (Clustered or Mobile), not OpenGL.
public class LightmapGI : VisualInstance3D {

    public enum BakeQuality : Int32 {
        case BAKE_QUALITY_LOW = 0
        case BAKE_QUALITY_MEDIUM = 1
        case BAKE_QUALITY_HIGH = 2
        case BAKE_QUALITY_ULTRA = 3
    }
    public enum GenerateProbes : Int32 {
        case GENERATE_PROBES_DISABLED = 0
        case GENERATE_PROBES_SUBDIV_4 = 1
        case GENERATE_PROBES_SUBDIV_8 = 2
        case GENERATE_PROBES_SUBDIV_16 = 3
        case GENERATE_PROBES_SUBDIV_32 = 4
    }
    public enum BakeError : Int32 {
        case BAKE_ERROR_OK = 0
        case BAKE_ERROR_NO_SCENE_ROOT = 1
        case BAKE_ERROR_FOREIGN_DATA = 2
        case BAKE_ERROR_NO_LIGHTMAPPER = 3
        case BAKE_ERROR_NO_SAVE_PATH = 4
        case BAKE_ERROR_NO_MESHES = 5
        case BAKE_ERROR_MESHES_INVALID = 6
        case BAKE_ERROR_CANT_CREATE_IMAGE = 7
        case BAKE_ERROR_USER_ABORTED = 8
    }
    public enum EnvironmentMode : Int32 {
        case ENVIRONMENT_MODE_DISABLED = 0
        case ENVIRONMENT_MODE_SCENE = 1
        case ENVIRONMENT_MODE_CUSTOM_SKY = 2
        case ENVIRONMENT_MODE_CUSTOM_COLOR = 3
    }

    public override class var __godot_name: StringName { __godot_name_LightmapGI }

    static var _method_set_light_data_1790597277: GDExtensionMethodBindPtr! = nil
    static var _method_get_light_data_290354153: GDExtensionMethodBindPtr! = nil
    static var _method_set_bake_quality_1192215803: GDExtensionMethodBindPtr! = nil
    static var _method_get_bake_quality_688832735: GDExtensionMethodBindPtr! = nil
    static var _method_set_bounces_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_bounces_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_generate_probes_549981046: GDExtensionMethodBindPtr! = nil
    static var _method_get_generate_probes_3930596226: GDExtensionMethodBindPtr! = nil
    static var _method_set_bias_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_bias_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_environment_mode_2282650285: GDExtensionMethodBindPtr! = nil
    static var _method_get_environment_mode_4128646479: GDExtensionMethodBindPtr! = nil
    static var _method_set_environment_custom_sky_3336722921: GDExtensionMethodBindPtr! = nil
    static var _method_get_environment_custom_sky_1177136966: GDExtensionMethodBindPtr! = nil
    static var _method_set_environment_custom_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_environment_custom_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_environment_custom_energy_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_environment_custom_energy_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_max_texture_size_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_texture_size_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_denoiser_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_using_denoiser_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_interior_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_interior_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_directional_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_directional_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_camera_attributes_2817810567: GDExtensionMethodBindPtr! = nil
    static var _method_get_camera_attributes_3921283215: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_LightmapGI = StringName(from: "LightmapGI")

        let _method_set_light_data_1790597277_name = StringName(from: "set_light_data")
        self._method_set_light_data_1790597277 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_light_data_1790597277_name._native_ptr(), 1790597277)
        assert(LightmapGI._method_set_light_data_1790597277 != nil)
        let _method_get_light_data_290354153_name = StringName(from: "get_light_data")
        self._method_get_light_data_290354153 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_light_data_290354153_name._native_ptr(), 290354153)
        assert(LightmapGI._method_get_light_data_290354153 != nil)
        let _method_set_bake_quality_1192215803_name = StringName(from: "set_bake_quality")
        self._method_set_bake_quality_1192215803 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_bake_quality_1192215803_name._native_ptr(), 1192215803)
        assert(LightmapGI._method_set_bake_quality_1192215803 != nil)
        let _method_get_bake_quality_688832735_name = StringName(from: "get_bake_quality")
        self._method_get_bake_quality_688832735 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_bake_quality_688832735_name._native_ptr(), 688832735)
        assert(LightmapGI._method_get_bake_quality_688832735 != nil)
        let _method_set_bounces_1286410249_name = StringName(from: "set_bounces")
        self._method_set_bounces_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_bounces_1286410249_name._native_ptr(), 1286410249)
        assert(LightmapGI._method_set_bounces_1286410249 != nil)
        let _method_get_bounces_3905245786_name = StringName(from: "get_bounces")
        self._method_get_bounces_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_bounces_3905245786_name._native_ptr(), 3905245786)
        assert(LightmapGI._method_get_bounces_3905245786 != nil)
        let _method_set_generate_probes_549981046_name = StringName(from: "set_generate_probes")
        self._method_set_generate_probes_549981046 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_generate_probes_549981046_name._native_ptr(), 549981046)
        assert(LightmapGI._method_set_generate_probes_549981046 != nil)
        let _method_get_generate_probes_3930596226_name = StringName(from: "get_generate_probes")
        self._method_get_generate_probes_3930596226 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_generate_probes_3930596226_name._native_ptr(), 3930596226)
        assert(LightmapGI._method_get_generate_probes_3930596226 != nil)
        let _method_set_bias_373806689_name = StringName(from: "set_bias")
        self._method_set_bias_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_bias_373806689_name._native_ptr(), 373806689)
        assert(LightmapGI._method_set_bias_373806689 != nil)
        let _method_get_bias_1740695150_name = StringName(from: "get_bias")
        self._method_get_bias_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_bias_1740695150_name._native_ptr(), 1740695150)
        assert(LightmapGI._method_get_bias_1740695150 != nil)
        let _method_set_environment_mode_2282650285_name = StringName(from: "set_environment_mode")
        self._method_set_environment_mode_2282650285 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_environment_mode_2282650285_name._native_ptr(), 2282650285)
        assert(LightmapGI._method_set_environment_mode_2282650285 != nil)
        let _method_get_environment_mode_4128646479_name = StringName(from: "get_environment_mode")
        self._method_get_environment_mode_4128646479 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_environment_mode_4128646479_name._native_ptr(), 4128646479)
        assert(LightmapGI._method_get_environment_mode_4128646479 != nil)
        let _method_set_environment_custom_sky_3336722921_name = StringName(from: "set_environment_custom_sky")
        self._method_set_environment_custom_sky_3336722921 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_environment_custom_sky_3336722921_name._native_ptr(), 3336722921)
        assert(LightmapGI._method_set_environment_custom_sky_3336722921 != nil)
        let _method_get_environment_custom_sky_1177136966_name = StringName(from: "get_environment_custom_sky")
        self._method_get_environment_custom_sky_1177136966 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_environment_custom_sky_1177136966_name._native_ptr(), 1177136966)
        assert(LightmapGI._method_get_environment_custom_sky_1177136966 != nil)
        let _method_set_environment_custom_color_2920490490_name = StringName(from: "set_environment_custom_color")
        self._method_set_environment_custom_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_environment_custom_color_2920490490_name._native_ptr(), 2920490490)
        assert(LightmapGI._method_set_environment_custom_color_2920490490 != nil)
        let _method_get_environment_custom_color_3444240500_name = StringName(from: "get_environment_custom_color")
        self._method_get_environment_custom_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_environment_custom_color_3444240500_name._native_ptr(), 3444240500)
        assert(LightmapGI._method_get_environment_custom_color_3444240500 != nil)
        let _method_set_environment_custom_energy_373806689_name = StringName(from: "set_environment_custom_energy")
        self._method_set_environment_custom_energy_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_environment_custom_energy_373806689_name._native_ptr(), 373806689)
        assert(LightmapGI._method_set_environment_custom_energy_373806689 != nil)
        let _method_get_environment_custom_energy_1740695150_name = StringName(from: "get_environment_custom_energy")
        self._method_get_environment_custom_energy_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_environment_custom_energy_1740695150_name._native_ptr(), 1740695150)
        assert(LightmapGI._method_get_environment_custom_energy_1740695150 != nil)
        let _method_set_max_texture_size_1286410249_name = StringName(from: "set_max_texture_size")
        self._method_set_max_texture_size_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_max_texture_size_1286410249_name._native_ptr(), 1286410249)
        assert(LightmapGI._method_set_max_texture_size_1286410249 != nil)
        let _method_get_max_texture_size_3905245786_name = StringName(from: "get_max_texture_size")
        self._method_get_max_texture_size_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_max_texture_size_3905245786_name._native_ptr(), 3905245786)
        assert(LightmapGI._method_get_max_texture_size_3905245786 != nil)
        let _method_set_use_denoiser_2586408642_name = StringName(from: "set_use_denoiser")
        self._method_set_use_denoiser_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_use_denoiser_2586408642_name._native_ptr(), 2586408642)
        assert(LightmapGI._method_set_use_denoiser_2586408642 != nil)
        let _method_is_using_denoiser_36873697_name = StringName(from: "is_using_denoiser")
        self._method_is_using_denoiser_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_using_denoiser_36873697_name._native_ptr(), 36873697)
        assert(LightmapGI._method_is_using_denoiser_36873697 != nil)
        let _method_set_interior_2586408642_name = StringName(from: "set_interior")
        self._method_set_interior_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_interior_2586408642_name._native_ptr(), 2586408642)
        assert(LightmapGI._method_set_interior_2586408642 != nil)
        let _method_is_interior_36873697_name = StringName(from: "is_interior")
        self._method_is_interior_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_interior_36873697_name._native_ptr(), 36873697)
        assert(LightmapGI._method_is_interior_36873697 != nil)
        let _method_set_directional_2586408642_name = StringName(from: "set_directional")
        self._method_set_directional_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_directional_2586408642_name._native_ptr(), 2586408642)
        assert(LightmapGI._method_set_directional_2586408642 != nil)
        let _method_is_directional_36873697_name = StringName(from: "is_directional")
        self._method_is_directional_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_directional_36873697_name._native_ptr(), 36873697)
        assert(LightmapGI._method_is_directional_36873697 != nil)
        let _method_set_camera_attributes_2817810567_name = StringName(from: "set_camera_attributes")
        self._method_set_camera_attributes_2817810567 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_camera_attributes_2817810567_name._native_ptr(), 2817810567)
        assert(LightmapGI._method_set_camera_attributes_2817810567 != nil)
        let _method_get_camera_attributes_3921283215_name = StringName(from: "get_camera_attributes")
        self._method_get_camera_attributes_3921283215 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_camera_attributes_3921283215_name._native_ptr(), 3921283215)
        assert(LightmapGI._method_get_camera_attributes_3921283215 != nil)
    }

    public func set_light_data(data: LightmapGIData)  {
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(data_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_light_data_1790597277,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_light_data() -> LightmapGIData {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_light_data_290354153,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return LightmapGIData(from: __resPtr.pointee)
    }
    public func set_bake_quality(bake_quality: LightmapGI.BakeQuality)  {
        withUnsafePointer(to: bake_quality.rawValue) { bake_quality_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bake_quality_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bake_quality_1192215803,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_bake_quality() -> LightmapGI.BakeQuality {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bake_quality_688832735,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return LightmapGI.BakeQuality(from: __resPtr.pointee)
    }
    public func set_bounces(bounces: Int64)  {
        withUnsafePointer(to: bounces) { bounces_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bounces_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bounces_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_bounces() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bounces_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_generate_probes(subdivision: LightmapGI.GenerateProbes)  {
        withUnsafePointer(to: subdivision.rawValue) { subdivision_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(subdivision_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_generate_probes_549981046,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_generate_probes() -> LightmapGI.GenerateProbes {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_generate_probes_3930596226,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return LightmapGI.GenerateProbes(from: __resPtr.pointee)
    }
    public func set_bias(bias: Float64)  {
        withUnsafePointer(to: bias) { bias_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bias_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bias_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_bias() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bias_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_environment_mode(mode: LightmapGI.EnvironmentMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_environment_mode_2282650285,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_environment_mode() -> LightmapGI.EnvironmentMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_environment_mode_4128646479,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return LightmapGI.EnvironmentMode(from: __resPtr.pointee)
    }
    public func set_environment_custom_sky(sky: Sky)  {
        let sky_native = sky._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sky_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_environment_custom_sky_3336722921,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_environment_custom_sky() -> Sky {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_environment_custom_sky_1177136966,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Sky(from: __resPtr.pointee)
    }
    public func set_environment_custom_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_environment_custom_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_environment_custom_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_environment_custom_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_environment_custom_energy(energy: Float64)  {
        withUnsafePointer(to: energy) { energy_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(energy_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_environment_custom_energy_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_environment_custom_energy() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_environment_custom_energy_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_max_texture_size(max_texture_size: Int64)  {
        withUnsafePointer(to: max_texture_size) { max_texture_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_texture_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_max_texture_size_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_max_texture_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_max_texture_size_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_use_denoiser(use_denoiser: UInt8)  {
        withUnsafePointer(to: use_denoiser) { use_denoiser_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(use_denoiser_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_use_denoiser_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_using_denoiser() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_using_denoiser_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_interior(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_interior_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_interior() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_interior_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_directional(directional: UInt8)  {
        withUnsafePointer(to: directional) { directional_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(directional_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_directional_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_directional() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_directional_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_camera_attributes(camera_attributes: CameraAttributes)  {
        let camera_attributes_native = camera_attributes._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(camera_attributes_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_camera_attributes_2817810567,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_camera_attributes() -> CameraAttributes {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_camera_attributes_3921283215,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CameraAttributes(from: __resPtr.pointee)
    }
}