import godot_native

fileprivate var __godot_name_ProceduralSkyMaterial: StringName! = nil

/// A [Material] used with [Sky] to generate a background based on user input parameters.
/// 
/// ProceduralSkyMaterial provides a way to create an effective background quickly by defining procedural parameters for the sun, the sky and the ground. The sky and ground are very similar, they are defined by a color at the horizon, another color, and finally an easing curve to interpolate between these two colors. Similarly, the sun is described by a position in the sky, a color, and an easing curve. However, the sun also defines a minimum and maximum angle, these two values define at what distance the easing curve begins and ends from the sun, and thus end up defining the size of the sun in the sky.
///  
/// The [ProceduralSkyMaterial] uses a lightweight shader to draw the sky and is thus suited for real time updates. When you do not need a quick sky that is not realistic, this is a good option. If you need a more realistic option, try using [PhysicalSkyMaterial] instead.
///  
/// The [ProceduralSkyMaterial] supports up to 4 suns. Each sun takes its color, energy, and direction from the corresponding [DirectionalLight3D] in the scene.
public class ProceduralSkyMaterial : Material {

    

    public override class var __godot_name: StringName { __godot_name_ProceduralSkyMaterial }

    static var _method_set_sky_top_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_sky_top_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_sky_horizon_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_sky_horizon_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_sky_curve_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_sky_curve_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_sky_energy_multiplier_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_sky_energy_multiplier_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_sky_cover_4051416890: GDExtensionMethodBindPtr! = nil
    static var _method_get_sky_cover_3635182373: GDExtensionMethodBindPtr! = nil
    static var _method_set_sky_cover_modulate_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_sky_cover_modulate_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_ground_bottom_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_ground_bottom_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_ground_horizon_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_ground_horizon_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_ground_curve_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_ground_curve_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_ground_energy_multiplier_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_ground_energy_multiplier_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_sun_angle_max_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_sun_angle_max_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_sun_curve_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_sun_curve_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_debanding_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_use_debanding_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_ProceduralSkyMaterial = StringName(from: "ProceduralSkyMaterial")

        let _method_set_sky_top_color_2920490490_name = StringName(from: "set_sky_top_color")
        self._method_set_sky_top_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_sky_top_color_2920490490_name._native_ptr(), 2920490490)
        assert(ProceduralSkyMaterial._method_set_sky_top_color_2920490490 != nil)
        let _method_get_sky_top_color_3444240500_name = StringName(from: "get_sky_top_color")
        self._method_get_sky_top_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_sky_top_color_3444240500_name._native_ptr(), 3444240500)
        assert(ProceduralSkyMaterial._method_get_sky_top_color_3444240500 != nil)
        let _method_set_sky_horizon_color_2920490490_name = StringName(from: "set_sky_horizon_color")
        self._method_set_sky_horizon_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_sky_horizon_color_2920490490_name._native_ptr(), 2920490490)
        assert(ProceduralSkyMaterial._method_set_sky_horizon_color_2920490490 != nil)
        let _method_get_sky_horizon_color_3444240500_name = StringName(from: "get_sky_horizon_color")
        self._method_get_sky_horizon_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_sky_horizon_color_3444240500_name._native_ptr(), 3444240500)
        assert(ProceduralSkyMaterial._method_get_sky_horizon_color_3444240500 != nil)
        let _method_set_sky_curve_373806689_name = StringName(from: "set_sky_curve")
        self._method_set_sky_curve_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_sky_curve_373806689_name._native_ptr(), 373806689)
        assert(ProceduralSkyMaterial._method_set_sky_curve_373806689 != nil)
        let _method_get_sky_curve_1740695150_name = StringName(from: "get_sky_curve")
        self._method_get_sky_curve_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_sky_curve_1740695150_name._native_ptr(), 1740695150)
        assert(ProceduralSkyMaterial._method_get_sky_curve_1740695150 != nil)
        let _method_set_sky_energy_multiplier_373806689_name = StringName(from: "set_sky_energy_multiplier")
        self._method_set_sky_energy_multiplier_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_sky_energy_multiplier_373806689_name._native_ptr(), 373806689)
        assert(ProceduralSkyMaterial._method_set_sky_energy_multiplier_373806689 != nil)
        let _method_get_sky_energy_multiplier_1740695150_name = StringName(from: "get_sky_energy_multiplier")
        self._method_get_sky_energy_multiplier_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_sky_energy_multiplier_1740695150_name._native_ptr(), 1740695150)
        assert(ProceduralSkyMaterial._method_get_sky_energy_multiplier_1740695150 != nil)
        let _method_set_sky_cover_4051416890_name = StringName(from: "set_sky_cover")
        self._method_set_sky_cover_4051416890 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_sky_cover_4051416890_name._native_ptr(), 4051416890)
        assert(ProceduralSkyMaterial._method_set_sky_cover_4051416890 != nil)
        let _method_get_sky_cover_3635182373_name = StringName(from: "get_sky_cover")
        self._method_get_sky_cover_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_sky_cover_3635182373_name._native_ptr(), 3635182373)
        assert(ProceduralSkyMaterial._method_get_sky_cover_3635182373 != nil)
        let _method_set_sky_cover_modulate_2920490490_name = StringName(from: "set_sky_cover_modulate")
        self._method_set_sky_cover_modulate_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_sky_cover_modulate_2920490490_name._native_ptr(), 2920490490)
        assert(ProceduralSkyMaterial._method_set_sky_cover_modulate_2920490490 != nil)
        let _method_get_sky_cover_modulate_3444240500_name = StringName(from: "get_sky_cover_modulate")
        self._method_get_sky_cover_modulate_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_sky_cover_modulate_3444240500_name._native_ptr(), 3444240500)
        assert(ProceduralSkyMaterial._method_get_sky_cover_modulate_3444240500 != nil)
        let _method_set_ground_bottom_color_2920490490_name = StringName(from: "set_ground_bottom_color")
        self._method_set_ground_bottom_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ground_bottom_color_2920490490_name._native_ptr(), 2920490490)
        assert(ProceduralSkyMaterial._method_set_ground_bottom_color_2920490490 != nil)
        let _method_get_ground_bottom_color_3444240500_name = StringName(from: "get_ground_bottom_color")
        self._method_get_ground_bottom_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_ground_bottom_color_3444240500_name._native_ptr(), 3444240500)
        assert(ProceduralSkyMaterial._method_get_ground_bottom_color_3444240500 != nil)
        let _method_set_ground_horizon_color_2920490490_name = StringName(from: "set_ground_horizon_color")
        self._method_set_ground_horizon_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ground_horizon_color_2920490490_name._native_ptr(), 2920490490)
        assert(ProceduralSkyMaterial._method_set_ground_horizon_color_2920490490 != nil)
        let _method_get_ground_horizon_color_3444240500_name = StringName(from: "get_ground_horizon_color")
        self._method_get_ground_horizon_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_ground_horizon_color_3444240500_name._native_ptr(), 3444240500)
        assert(ProceduralSkyMaterial._method_get_ground_horizon_color_3444240500 != nil)
        let _method_set_ground_curve_373806689_name = StringName(from: "set_ground_curve")
        self._method_set_ground_curve_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ground_curve_373806689_name._native_ptr(), 373806689)
        assert(ProceduralSkyMaterial._method_set_ground_curve_373806689 != nil)
        let _method_get_ground_curve_1740695150_name = StringName(from: "get_ground_curve")
        self._method_get_ground_curve_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_ground_curve_1740695150_name._native_ptr(), 1740695150)
        assert(ProceduralSkyMaterial._method_get_ground_curve_1740695150 != nil)
        let _method_set_ground_energy_multiplier_373806689_name = StringName(from: "set_ground_energy_multiplier")
        self._method_set_ground_energy_multiplier_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ground_energy_multiplier_373806689_name._native_ptr(), 373806689)
        assert(ProceduralSkyMaterial._method_set_ground_energy_multiplier_373806689 != nil)
        let _method_get_ground_energy_multiplier_1740695150_name = StringName(from: "get_ground_energy_multiplier")
        self._method_get_ground_energy_multiplier_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_ground_energy_multiplier_1740695150_name._native_ptr(), 1740695150)
        assert(ProceduralSkyMaterial._method_get_ground_energy_multiplier_1740695150 != nil)
        let _method_set_sun_angle_max_373806689_name = StringName(from: "set_sun_angle_max")
        self._method_set_sun_angle_max_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_sun_angle_max_373806689_name._native_ptr(), 373806689)
        assert(ProceduralSkyMaterial._method_set_sun_angle_max_373806689 != nil)
        let _method_get_sun_angle_max_1740695150_name = StringName(from: "get_sun_angle_max")
        self._method_get_sun_angle_max_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_sun_angle_max_1740695150_name._native_ptr(), 1740695150)
        assert(ProceduralSkyMaterial._method_get_sun_angle_max_1740695150 != nil)
        let _method_set_sun_curve_373806689_name = StringName(from: "set_sun_curve")
        self._method_set_sun_curve_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_sun_curve_373806689_name._native_ptr(), 373806689)
        assert(ProceduralSkyMaterial._method_set_sun_curve_373806689 != nil)
        let _method_get_sun_curve_1740695150_name = StringName(from: "get_sun_curve")
        self._method_get_sun_curve_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_sun_curve_1740695150_name._native_ptr(), 1740695150)
        assert(ProceduralSkyMaterial._method_get_sun_curve_1740695150 != nil)
        let _method_set_use_debanding_2586408642_name = StringName(from: "set_use_debanding")
        self._method_set_use_debanding_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_use_debanding_2586408642_name._native_ptr(), 2586408642)
        assert(ProceduralSkyMaterial._method_set_use_debanding_2586408642 != nil)
        let _method_get_use_debanding_36873697_name = StringName(from: "get_use_debanding")
        self._method_get_use_debanding_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_use_debanding_36873697_name._native_ptr(), 36873697)
        assert(ProceduralSkyMaterial._method_get_use_debanding_36873697 != nil)
    }

    public func set_sky_top_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sky_top_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_sky_top_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sky_top_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_sky_horizon_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sky_horizon_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_sky_horizon_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sky_horizon_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_sky_curve(curve: Float64)  {
        withUnsafePointer(to: curve) { curve_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(curve_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sky_curve_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_sky_curve() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sky_curve_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_sky_energy_multiplier(multiplier: Float64)  {
        withUnsafePointer(to: multiplier) { multiplier_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(multiplier_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sky_energy_multiplier_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_sky_energy_multiplier() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sky_energy_multiplier_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_sky_cover(sky_cover: Texture2D)  {
        let sky_cover_native = sky_cover._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sky_cover_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sky_cover_4051416890,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_sky_cover() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sky_cover_3635182373,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(from: __resPtr.pointee)
    }
    public func set_sky_cover_modulate(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sky_cover_modulate_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_sky_cover_modulate() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sky_cover_modulate_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_ground_bottom_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ground_bottom_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_ground_bottom_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ground_bottom_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_ground_horizon_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ground_horizon_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_ground_horizon_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ground_horizon_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_ground_curve(curve: Float64)  {
        withUnsafePointer(to: curve) { curve_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(curve_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ground_curve_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_ground_curve() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ground_curve_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_ground_energy_multiplier(energy: Float64)  {
        withUnsafePointer(to: energy) { energy_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(energy_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ground_energy_multiplier_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_ground_energy_multiplier() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ground_energy_multiplier_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_sun_angle_max(degrees: Float64)  {
        withUnsafePointer(to: degrees) { degrees_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(degrees_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sun_angle_max_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_sun_angle_max() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sun_angle_max_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_sun_curve(curve: Float64)  {
        withUnsafePointer(to: curve) { curve_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(curve_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sun_curve_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_sun_curve() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sun_curve_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
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
            return UInt8(from: __resPtr.pointee)
    }
}