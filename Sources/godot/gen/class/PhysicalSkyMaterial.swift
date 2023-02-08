import godot_native

fileprivate var __godot_name_PhysicalSkyMaterial: StringName! = nil

/// [Sky] [Material] used for a physically based sky.
/// 
/// The [PhysicalSkyMaterial] uses the Preetham analytic daylight model to draw a sky based on physical properties. This results in a substantially more realistic sky than the [ProceduralSkyMaterial], but it is slightly slower and less flexible.
///  
/// The [PhysicalSkyMaterial] only supports one sun. The color, energy, and direction of the sun are taken from the first [DirectionalLight3D] in the scene tree.
///  
/// As it is based on a daylight model, the sky fades to black as the sunset ends. If you want a full day/night cycle, you will have to add a night sky by converting this to a [ShaderMaterial] and adding a night sky directly into the resulting shader.
open class PhysicalSkyMaterial : Material {

    

    public override class var __godot_name: StringName { __godot_name_PhysicalSkyMaterial }

    static var _method_set_rayleigh_coefficient_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_rayleigh_coefficient_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_rayleigh_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_rayleigh_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_mie_coefficient_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_mie_coefficient_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_mie_eccentricity_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_mie_eccentricity_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_mie_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_mie_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_turbidity_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_turbidity_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_sun_disk_scale_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_sun_disk_scale_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_ground_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_ground_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_energy_multiplier_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_energy_multiplier_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_debanding_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_use_debanding_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_night_sky_4051416890: GDExtensionMethodBindPtr! = nil
    static var _method_get_night_sky_3635182373: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_PhysicalSkyMaterial = StringName(from: "PhysicalSkyMaterial")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_rayleigh_coefficient_373806689_name = StringName(from: "set_rayleigh_coefficient")
        self._method_set_rayleigh_coefficient_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicalSkyMaterial._native_ptr(), _method_set_rayleigh_coefficient_373806689_name._native_ptr(), 373806689)
        assert(PhysicalSkyMaterial._method_set_rayleigh_coefficient_373806689 != nil)
        let _method_get_rayleigh_coefficient_1740695150_name = StringName(from: "get_rayleigh_coefficient")
        self._method_get_rayleigh_coefficient_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicalSkyMaterial._native_ptr(), _method_get_rayleigh_coefficient_1740695150_name._native_ptr(), 1740695150)
        assert(PhysicalSkyMaterial._method_get_rayleigh_coefficient_1740695150 != nil)
        let _method_set_rayleigh_color_2920490490_name = StringName(from: "set_rayleigh_color")
        self._method_set_rayleigh_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicalSkyMaterial._native_ptr(), _method_set_rayleigh_color_2920490490_name._native_ptr(), 2920490490)
        assert(PhysicalSkyMaterial._method_set_rayleigh_color_2920490490 != nil)
        let _method_get_rayleigh_color_3444240500_name = StringName(from: "get_rayleigh_color")
        self._method_get_rayleigh_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicalSkyMaterial._native_ptr(), _method_get_rayleigh_color_3444240500_name._native_ptr(), 3444240500)
        assert(PhysicalSkyMaterial._method_get_rayleigh_color_3444240500 != nil)
        let _method_set_mie_coefficient_373806689_name = StringName(from: "set_mie_coefficient")
        self._method_set_mie_coefficient_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicalSkyMaterial._native_ptr(), _method_set_mie_coefficient_373806689_name._native_ptr(), 373806689)
        assert(PhysicalSkyMaterial._method_set_mie_coefficient_373806689 != nil)
        let _method_get_mie_coefficient_1740695150_name = StringName(from: "get_mie_coefficient")
        self._method_get_mie_coefficient_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicalSkyMaterial._native_ptr(), _method_get_mie_coefficient_1740695150_name._native_ptr(), 1740695150)
        assert(PhysicalSkyMaterial._method_get_mie_coefficient_1740695150 != nil)
        let _method_set_mie_eccentricity_373806689_name = StringName(from: "set_mie_eccentricity")
        self._method_set_mie_eccentricity_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicalSkyMaterial._native_ptr(), _method_set_mie_eccentricity_373806689_name._native_ptr(), 373806689)
        assert(PhysicalSkyMaterial._method_set_mie_eccentricity_373806689 != nil)
        let _method_get_mie_eccentricity_1740695150_name = StringName(from: "get_mie_eccentricity")
        self._method_get_mie_eccentricity_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicalSkyMaterial._native_ptr(), _method_get_mie_eccentricity_1740695150_name._native_ptr(), 1740695150)
        assert(PhysicalSkyMaterial._method_get_mie_eccentricity_1740695150 != nil)
        let _method_set_mie_color_2920490490_name = StringName(from: "set_mie_color")
        self._method_set_mie_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicalSkyMaterial._native_ptr(), _method_set_mie_color_2920490490_name._native_ptr(), 2920490490)
        assert(PhysicalSkyMaterial._method_set_mie_color_2920490490 != nil)
        let _method_get_mie_color_3444240500_name = StringName(from: "get_mie_color")
        self._method_get_mie_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicalSkyMaterial._native_ptr(), _method_get_mie_color_3444240500_name._native_ptr(), 3444240500)
        assert(PhysicalSkyMaterial._method_get_mie_color_3444240500 != nil)
        let _method_set_turbidity_373806689_name = StringName(from: "set_turbidity")
        self._method_set_turbidity_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicalSkyMaterial._native_ptr(), _method_set_turbidity_373806689_name._native_ptr(), 373806689)
        assert(PhysicalSkyMaterial._method_set_turbidity_373806689 != nil)
        let _method_get_turbidity_1740695150_name = StringName(from: "get_turbidity")
        self._method_get_turbidity_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicalSkyMaterial._native_ptr(), _method_get_turbidity_1740695150_name._native_ptr(), 1740695150)
        assert(PhysicalSkyMaterial._method_get_turbidity_1740695150 != nil)
        let _method_set_sun_disk_scale_373806689_name = StringName(from: "set_sun_disk_scale")
        self._method_set_sun_disk_scale_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicalSkyMaterial._native_ptr(), _method_set_sun_disk_scale_373806689_name._native_ptr(), 373806689)
        assert(PhysicalSkyMaterial._method_set_sun_disk_scale_373806689 != nil)
        let _method_get_sun_disk_scale_1740695150_name = StringName(from: "get_sun_disk_scale")
        self._method_get_sun_disk_scale_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicalSkyMaterial._native_ptr(), _method_get_sun_disk_scale_1740695150_name._native_ptr(), 1740695150)
        assert(PhysicalSkyMaterial._method_get_sun_disk_scale_1740695150 != nil)
        let _method_set_ground_color_2920490490_name = StringName(from: "set_ground_color")
        self._method_set_ground_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicalSkyMaterial._native_ptr(), _method_set_ground_color_2920490490_name._native_ptr(), 2920490490)
        assert(PhysicalSkyMaterial._method_set_ground_color_2920490490 != nil)
        let _method_get_ground_color_3444240500_name = StringName(from: "get_ground_color")
        self._method_get_ground_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicalSkyMaterial._native_ptr(), _method_get_ground_color_3444240500_name._native_ptr(), 3444240500)
        assert(PhysicalSkyMaterial._method_get_ground_color_3444240500 != nil)
        let _method_set_energy_multiplier_373806689_name = StringName(from: "set_energy_multiplier")
        self._method_set_energy_multiplier_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicalSkyMaterial._native_ptr(), _method_set_energy_multiplier_373806689_name._native_ptr(), 373806689)
        assert(PhysicalSkyMaterial._method_set_energy_multiplier_373806689 != nil)
        let _method_get_energy_multiplier_1740695150_name = StringName(from: "get_energy_multiplier")
        self._method_get_energy_multiplier_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicalSkyMaterial._native_ptr(), _method_get_energy_multiplier_1740695150_name._native_ptr(), 1740695150)
        assert(PhysicalSkyMaterial._method_get_energy_multiplier_1740695150 != nil)
        let _method_set_use_debanding_2586408642_name = StringName(from: "set_use_debanding")
        self._method_set_use_debanding_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicalSkyMaterial._native_ptr(), _method_set_use_debanding_2586408642_name._native_ptr(), 2586408642)
        assert(PhysicalSkyMaterial._method_set_use_debanding_2586408642 != nil)
        let _method_get_use_debanding_36873697_name = StringName(from: "get_use_debanding")
        self._method_get_use_debanding_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicalSkyMaterial._native_ptr(), _method_get_use_debanding_36873697_name._native_ptr(), 36873697)
        assert(PhysicalSkyMaterial._method_get_use_debanding_36873697 != nil)
        let _method_set_night_sky_4051416890_name = StringName(from: "set_night_sky")
        self._method_set_night_sky_4051416890 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicalSkyMaterial._native_ptr(), _method_set_night_sky_4051416890_name._native_ptr(), 4051416890)
        assert(PhysicalSkyMaterial._method_set_night_sky_4051416890 != nil)
        let _method_get_night_sky_3635182373_name = StringName(from: "get_night_sky")
        self._method_get_night_sky_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicalSkyMaterial._native_ptr(), _method_get_night_sky_3635182373_name._native_ptr(), 3635182373)
        assert(PhysicalSkyMaterial._method_get_night_sky_3635182373 != nil)
    }

    public func set_rayleigh_coefficient(rayleigh: Float64)  {
        withUnsafePointer(to: rayleigh) { rayleigh_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rayleigh_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_rayleigh_coefficient_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_rayleigh_coefficient() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_rayleigh_coefficient_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_rayleigh_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_rayleigh_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_rayleigh_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_rayleigh_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
    public func set_mie_coefficient(mie: Float64)  {
        withUnsafePointer(to: mie) { mie_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mie_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_mie_coefficient_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_mie_coefficient() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mie_coefficient_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_mie_eccentricity(eccentricity: Float64)  {
        withUnsafePointer(to: eccentricity) { eccentricity_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(eccentricity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_mie_eccentricity_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_mie_eccentricity() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mie_eccentricity_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_mie_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_mie_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_mie_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mie_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
    public func set_turbidity(turbidity: Float64)  {
        withUnsafePointer(to: turbidity) { turbidity_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(turbidity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_turbidity_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_turbidity() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_turbidity_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_sun_disk_scale(scale: Float64)  {
        withUnsafePointer(to: scale) { scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sun_disk_scale_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_sun_disk_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sun_disk_scale_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_ground_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ground_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_ground_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ground_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
    public func set_energy_multiplier(multiplier: Float64)  {
        withUnsafePointer(to: multiplier) { multiplier_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(multiplier_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_energy_multiplier_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_energy_multiplier() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_energy_multiplier_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_use_debanding(use_debanding: UInt8)  {
        withUnsafePointer(to: use_debanding) { use_debanding_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(use_debanding_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_use_debanding_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_use_debanding() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_use_debanding_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_night_sky(night_sky: Texture2D)  {
        let night_sky_native = night_sky._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(night_sky_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_night_sky_4051416890,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_night_sky() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_night_sky_3635182373,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
    }
}