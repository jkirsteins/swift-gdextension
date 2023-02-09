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
open class LightmapGI : VisualInstance3D {

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

    static var _method_set_light_data_1790597277: StringName! = nil
    static var _method_get_light_data_290354153: StringName! = nil
    static var _method_set_bake_quality_1192215803: StringName! = nil
    static var _method_get_bake_quality_688832735: StringName! = nil
    static var _method_set_bounces_1286410249: StringName! = nil
    static var _method_get_bounces_3905245786: StringName! = nil
    static var _method_set_generate_probes_549981046: StringName! = nil
    static var _method_get_generate_probes_3930596226: StringName! = nil
    static var _method_set_bias_373806689: StringName! = nil
    static var _method_get_bias_1740695150: StringName! = nil
    static var _method_set_environment_mode_2282650285: StringName! = nil
    static var _method_get_environment_mode_4128646479: StringName! = nil
    static var _method_set_environment_custom_sky_3336722921: StringName! = nil
    static var _method_get_environment_custom_sky_1177136966: StringName! = nil
    static var _method_set_environment_custom_color_2920490490: StringName! = nil
    static var _method_get_environment_custom_color_3444240500: StringName! = nil
    static var _method_set_environment_custom_energy_373806689: StringName! = nil
    static var _method_get_environment_custom_energy_1740695150: StringName! = nil
    static var _method_set_max_texture_size_1286410249: StringName! = nil
    static var _method_get_max_texture_size_3905245786: StringName! = nil
    static var _method_set_use_denoiser_2586408642: StringName! = nil
    static var _method_is_using_denoiser_36873697: StringName! = nil
    static var _method_set_interior_2586408642: StringName! = nil
    static var _method_is_interior_36873697: StringName! = nil
    static var _method_set_directional_2586408642: StringName! = nil
    static var _method_is_directional_36873697: StringName! = nil
    static var _method_set_camera_attributes_2817810567: StringName! = nil
    static var _method_get_camera_attributes_3921283215: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_LightmapGI == nil)
        __godot_name_LightmapGI = StringName(from: "LightmapGI")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_light_data_1790597277 = StringName(from: "set_light_data")
        assert(self._method_set_light_data_1790597277 != nil)
        self._method_get_light_data_290354153 = StringName(from: "get_light_data")
        assert(self._method_get_light_data_290354153 != nil)
        self._method_set_bake_quality_1192215803 = StringName(from: "set_bake_quality")
        assert(self._method_set_bake_quality_1192215803 != nil)
        self._method_get_bake_quality_688832735 = StringName(from: "get_bake_quality")
        assert(self._method_get_bake_quality_688832735 != nil)
        self._method_set_bounces_1286410249 = StringName(from: "set_bounces")
        assert(self._method_set_bounces_1286410249 != nil)
        self._method_get_bounces_3905245786 = StringName(from: "get_bounces")
        assert(self._method_get_bounces_3905245786 != nil)
        self._method_set_generate_probes_549981046 = StringName(from: "set_generate_probes")
        assert(self._method_set_generate_probes_549981046 != nil)
        self._method_get_generate_probes_3930596226 = StringName(from: "get_generate_probes")
        assert(self._method_get_generate_probes_3930596226 != nil)
        self._method_set_bias_373806689 = StringName(from: "set_bias")
        assert(self._method_set_bias_373806689 != nil)
        self._method_get_bias_1740695150 = StringName(from: "get_bias")
        assert(self._method_get_bias_1740695150 != nil)
        self._method_set_environment_mode_2282650285 = StringName(from: "set_environment_mode")
        assert(self._method_set_environment_mode_2282650285 != nil)
        self._method_get_environment_mode_4128646479 = StringName(from: "get_environment_mode")
        assert(self._method_get_environment_mode_4128646479 != nil)
        self._method_set_environment_custom_sky_3336722921 = StringName(from: "set_environment_custom_sky")
        assert(self._method_set_environment_custom_sky_3336722921 != nil)
        self._method_get_environment_custom_sky_1177136966 = StringName(from: "get_environment_custom_sky")
        assert(self._method_get_environment_custom_sky_1177136966 != nil)
        self._method_set_environment_custom_color_2920490490 = StringName(from: "set_environment_custom_color")
        assert(self._method_set_environment_custom_color_2920490490 != nil)
        self._method_get_environment_custom_color_3444240500 = StringName(from: "get_environment_custom_color")
        assert(self._method_get_environment_custom_color_3444240500 != nil)
        self._method_set_environment_custom_energy_373806689 = StringName(from: "set_environment_custom_energy")
        assert(self._method_set_environment_custom_energy_373806689 != nil)
        self._method_get_environment_custom_energy_1740695150 = StringName(from: "get_environment_custom_energy")
        assert(self._method_get_environment_custom_energy_1740695150 != nil)
        self._method_set_max_texture_size_1286410249 = StringName(from: "set_max_texture_size")
        assert(self._method_set_max_texture_size_1286410249 != nil)
        self._method_get_max_texture_size_3905245786 = StringName(from: "get_max_texture_size")
        assert(self._method_get_max_texture_size_3905245786 != nil)
        self._method_set_use_denoiser_2586408642 = StringName(from: "set_use_denoiser")
        assert(self._method_set_use_denoiser_2586408642 != nil)
        self._method_is_using_denoiser_36873697 = StringName(from: "is_using_denoiser")
        assert(self._method_is_using_denoiser_36873697 != nil)
        self._method_set_interior_2586408642 = StringName(from: "set_interior")
        assert(self._method_set_interior_2586408642 != nil)
        self._method_is_interior_36873697 = StringName(from: "is_interior")
        assert(self._method_is_interior_36873697 != nil)
        self._method_set_directional_2586408642 = StringName(from: "set_directional")
        assert(self._method_set_directional_2586408642 != nil)
        self._method_is_directional_36873697 = StringName(from: "is_directional")
        assert(self._method_is_directional_36873697 != nil)
        self._method_set_camera_attributes_2817810567 = StringName(from: "set_camera_attributes")
        assert(self._method_set_camera_attributes_2817810567 != nil)
        self._method_get_camera_attributes_3921283215 = StringName(from: "get_camera_attributes")
        assert(self._method_get_camera_attributes_3921283215 != nil)
    }

    public func set_light_data(data: LightmapGIData)  {
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(data_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_light_data_1790597277._native_ptr(),
                    1790597277)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_light_data_290354153._native_ptr(),
                    290354153)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return LightmapGIData(godot: __resPtr.pointee)
    }
    public func set_bake_quality(bake_quality: LightmapGI.BakeQuality)  {
        withUnsafePointer(to: bake_quality.rawValue) { bake_quality_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bake_quality_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_bake_quality_1192215803._native_ptr(),
                    1192215803)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_bake_quality_688832735._native_ptr(),
                    688832735)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return LightmapGI.BakeQuality(godot: __resPtr.pointee)
    }
    public func set_bounces(bounces: Int64)  {
        withUnsafePointer(to: bounces) { bounces_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bounces_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_bounces_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_bounces_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_generate_probes(subdivision: LightmapGI.GenerateProbes)  {
        withUnsafePointer(to: subdivision.rawValue) { subdivision_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(subdivision_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_generate_probes_549981046._native_ptr(),
                    549981046)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_generate_probes_3930596226._native_ptr(),
                    3930596226)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return LightmapGI.GenerateProbes(godot: __resPtr.pointee)
    }
    public func set_bias(bias: Float64)  {
        withUnsafePointer(to: bias) { bias_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bias_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_bias_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_bias_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_environment_mode(mode: LightmapGI.EnvironmentMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_environment_mode_2282650285._native_ptr(),
                    2282650285)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_environment_mode_4128646479._native_ptr(),
                    4128646479)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return LightmapGI.EnvironmentMode(godot: __resPtr.pointee)
    }
    public func set_environment_custom_sky(sky: Sky)  {
        let sky_native = sky._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sky_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_environment_custom_sky_3336722921._native_ptr(),
                    3336722921)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_environment_custom_sky_1177136966._native_ptr(),
                    1177136966)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Sky(godot: __resPtr.pointee)
    }
    public func set_environment_custom_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_environment_custom_color_2920490490._native_ptr(),
                    2920490490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_environment_custom_color_3444240500._native_ptr(),
                    3444240500)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
    public func set_environment_custom_energy(energy: Float64)  {
        withUnsafePointer(to: energy) { energy_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(energy_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_environment_custom_energy_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_environment_custom_energy_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_max_texture_size(max_texture_size: Int64)  {
        withUnsafePointer(to: max_texture_size) { max_texture_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_texture_size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_max_texture_size_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_max_texture_size_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_use_denoiser(use_denoiser: UInt8)  {
        withUnsafePointer(to: use_denoiser) { use_denoiser_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(use_denoiser_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_use_denoiser_2586408642._native_ptr(),
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
    public func is_using_denoiser() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_using_denoiser_36873697._native_ptr(),
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
    public func set_interior(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_interior_2586408642._native_ptr(),
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
    public func is_interior() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_interior_36873697._native_ptr(),
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
    public func set_directional(directional: UInt8)  {
        withUnsafePointer(to: directional) { directional_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(directional_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_directional_2586408642._native_ptr(),
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
    public func is_directional() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_directional_36873697._native_ptr(),
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
    public func set_camera_attributes(camera_attributes: CameraAttributes)  {
        let camera_attributes_native = camera_attributes._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(camera_attributes_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_camera_attributes_2817810567._native_ptr(),
                    2817810567)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_camera_attributes_3921283215._native_ptr(),
                    3921283215)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CameraAttributes(godot: __resPtr.pointee)
    }
}