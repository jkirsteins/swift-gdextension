import godot_native

fileprivate var __godot_name_FastNoiseLite: StringName! = nil

/// MISSING
/// 
/// MISSING
open class FastNoiseLite : Noise {

    public enum NoiseType : Int32 {
        case TYPE_VALUE = 5
        case TYPE_VALUE_CUBIC = 4
        case TYPE_PERLIN = 3
        case TYPE_CELLULAR = 2
        case TYPE_SIMPLEX = 0
        case TYPE_SIMPLEX_SMOOTH = 1
    }
    public enum FractalType : Int32 {
        case FRACTAL_NONE = 0
        case FRACTAL_FBM = 1
        case FRACTAL_RIDGED = 2
        case FRACTAL_PING_PONG = 3
    }
    public enum CellularDistanceFunction : Int32 {
        case DISTANCE_EUCLIDEAN = 0
        case DISTANCE_EUCLIDEAN_SQUARED = 1
        case DISTANCE_MANHATTAN = 2
        case DISTANCE_HYBRID = 3
    }
    public enum CellularReturnType : Int32 {
        case RETURN_CELL_VALUE = 0
        case RETURN_DISTANCE = 1
        case RETURN_DISTANCE2 = 2
        case RETURN_DISTANCE2_ADD = 3
        case RETURN_DISTANCE2_SUB = 4
        case RETURN_DISTANCE2_MUL = 5
        case RETURN_DISTANCE2_DIV = 6
    }
    public enum DomainWarpType : Int32 {
        case DOMAIN_WARP_SIMPLEX = 0
        case DOMAIN_WARP_SIMPLEX_REDUCED = 1
        case DOMAIN_WARP_BASIC_GRID = 2
    }
    public enum DomainWarpFractalType : Int32 {
        case DOMAIN_WARP_FRACTAL_NONE = 0
        case DOMAIN_WARP_FRACTAL_PROGRESSIVE = 1
        case DOMAIN_WARP_FRACTAL_INDEPENDENT = 2
    }

    public override class var __godot_name: StringName { __godot_name_FastNoiseLite }

    static var _method_set_noise_type_2624461392: StringName! = nil
    static var _method_get_noise_type_1458108610: StringName! = nil
    static var _method_set_seed_1286410249: StringName! = nil
    static var _method_get_seed_3905245786: StringName! = nil
    static var _method_set_frequency_373806689: StringName! = nil
    static var _method_get_frequency_1740695150: StringName! = nil
    static var _method_set_offset_3460891852: StringName! = nil
    static var _method_get_offset_3360562783: StringName! = nil
    static var _method_set_fractal_type_4132731174: StringName! = nil
    static var _method_get_fractal_type_1036889279: StringName! = nil
    static var _method_set_fractal_octaves_1286410249: StringName! = nil
    static var _method_get_fractal_octaves_3905245786: StringName! = nil
    static var _method_set_fractal_lacunarity_373806689: StringName! = nil
    static var _method_get_fractal_lacunarity_1740695150: StringName! = nil
    static var _method_set_fractal_gain_373806689: StringName! = nil
    static var _method_get_fractal_gain_1740695150: StringName! = nil
    static var _method_set_fractal_weighted_strength_373806689: StringName! = nil
    static var _method_get_fractal_weighted_strength_1740695150: StringName! = nil
    static var _method_set_fractal_ping_pong_strength_373806689: StringName! = nil
    static var _method_get_fractal_ping_pong_strength_1740695150: StringName! = nil
    static var _method_set_cellular_distance_function_1006013267: StringName! = nil
    static var _method_get_cellular_distance_function_2021274088: StringName! = nil
    static var _method_set_cellular_jitter_373806689: StringName! = nil
    static var _method_get_cellular_jitter_1740695150: StringName! = nil
    static var _method_set_cellular_return_type_2654169698: StringName! = nil
    static var _method_get_cellular_return_type_3699796343: StringName! = nil
    static var _method_set_domain_warp_enabled_2586408642: StringName! = nil
    static var _method_is_domain_warp_enabled_36873697: StringName! = nil
    static var _method_set_domain_warp_type_3629692980: StringName! = nil
    static var _method_get_domain_warp_type_2980162020: StringName! = nil
    static var _method_set_domain_warp_amplitude_373806689: StringName! = nil
    static var _method_get_domain_warp_amplitude_1740695150: StringName! = nil
    static var _method_set_domain_warp_frequency_373806689: StringName! = nil
    static var _method_get_domain_warp_frequency_1740695150: StringName! = nil
    static var _method_set_domain_warp_fractal_type_3999408287: StringName! = nil
    static var _method_get_domain_warp_fractal_type_407716934: StringName! = nil
    static var _method_set_domain_warp_fractal_octaves_1286410249: StringName! = nil
    static var _method_get_domain_warp_fractal_octaves_3905245786: StringName! = nil
    static var _method_set_domain_warp_fractal_lacunarity_373806689: StringName! = nil
    static var _method_get_domain_warp_fractal_lacunarity_1740695150: StringName! = nil
    static var _method_set_domain_warp_fractal_gain_373806689: StringName! = nil
    static var _method_get_domain_warp_fractal_gain_1740695150: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_FastNoiseLite == nil)
        __godot_name_FastNoiseLite = StringName(from: "FastNoiseLite")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_noise_type_2624461392 = StringName(from: "set_noise_type")
        assert(self._method_set_noise_type_2624461392 != nil)
        self._method_get_noise_type_1458108610 = StringName(from: "get_noise_type")
        assert(self._method_get_noise_type_1458108610 != nil)
        self._method_set_seed_1286410249 = StringName(from: "set_seed")
        assert(self._method_set_seed_1286410249 != nil)
        self._method_get_seed_3905245786 = StringName(from: "get_seed")
        assert(self._method_get_seed_3905245786 != nil)
        self._method_set_frequency_373806689 = StringName(from: "set_frequency")
        assert(self._method_set_frequency_373806689 != nil)
        self._method_get_frequency_1740695150 = StringName(from: "get_frequency")
        assert(self._method_get_frequency_1740695150 != nil)
        self._method_set_offset_3460891852 = StringName(from: "set_offset")
        assert(self._method_set_offset_3460891852 != nil)
        self._method_get_offset_3360562783 = StringName(from: "get_offset")
        assert(self._method_get_offset_3360562783 != nil)
        self._method_set_fractal_type_4132731174 = StringName(from: "set_fractal_type")
        assert(self._method_set_fractal_type_4132731174 != nil)
        self._method_get_fractal_type_1036889279 = StringName(from: "get_fractal_type")
        assert(self._method_get_fractal_type_1036889279 != nil)
        self._method_set_fractal_octaves_1286410249 = StringName(from: "set_fractal_octaves")
        assert(self._method_set_fractal_octaves_1286410249 != nil)
        self._method_get_fractal_octaves_3905245786 = StringName(from: "get_fractal_octaves")
        assert(self._method_get_fractal_octaves_3905245786 != nil)
        self._method_set_fractal_lacunarity_373806689 = StringName(from: "set_fractal_lacunarity")
        assert(self._method_set_fractal_lacunarity_373806689 != nil)
        self._method_get_fractal_lacunarity_1740695150 = StringName(from: "get_fractal_lacunarity")
        assert(self._method_get_fractal_lacunarity_1740695150 != nil)
        self._method_set_fractal_gain_373806689 = StringName(from: "set_fractal_gain")
        assert(self._method_set_fractal_gain_373806689 != nil)
        self._method_get_fractal_gain_1740695150 = StringName(from: "get_fractal_gain")
        assert(self._method_get_fractal_gain_1740695150 != nil)
        self._method_set_fractal_weighted_strength_373806689 = StringName(from: "set_fractal_weighted_strength")
        assert(self._method_set_fractal_weighted_strength_373806689 != nil)
        self._method_get_fractal_weighted_strength_1740695150 = StringName(from: "get_fractal_weighted_strength")
        assert(self._method_get_fractal_weighted_strength_1740695150 != nil)
        self._method_set_fractal_ping_pong_strength_373806689 = StringName(from: "set_fractal_ping_pong_strength")
        assert(self._method_set_fractal_ping_pong_strength_373806689 != nil)
        self._method_get_fractal_ping_pong_strength_1740695150 = StringName(from: "get_fractal_ping_pong_strength")
        assert(self._method_get_fractal_ping_pong_strength_1740695150 != nil)
        self._method_set_cellular_distance_function_1006013267 = StringName(from: "set_cellular_distance_function")
        assert(self._method_set_cellular_distance_function_1006013267 != nil)
        self._method_get_cellular_distance_function_2021274088 = StringName(from: "get_cellular_distance_function")
        assert(self._method_get_cellular_distance_function_2021274088 != nil)
        self._method_set_cellular_jitter_373806689 = StringName(from: "set_cellular_jitter")
        assert(self._method_set_cellular_jitter_373806689 != nil)
        self._method_get_cellular_jitter_1740695150 = StringName(from: "get_cellular_jitter")
        assert(self._method_get_cellular_jitter_1740695150 != nil)
        self._method_set_cellular_return_type_2654169698 = StringName(from: "set_cellular_return_type")
        assert(self._method_set_cellular_return_type_2654169698 != nil)
        self._method_get_cellular_return_type_3699796343 = StringName(from: "get_cellular_return_type")
        assert(self._method_get_cellular_return_type_3699796343 != nil)
        self._method_set_domain_warp_enabled_2586408642 = StringName(from: "set_domain_warp_enabled")
        assert(self._method_set_domain_warp_enabled_2586408642 != nil)
        self._method_is_domain_warp_enabled_36873697 = StringName(from: "is_domain_warp_enabled")
        assert(self._method_is_domain_warp_enabled_36873697 != nil)
        self._method_set_domain_warp_type_3629692980 = StringName(from: "set_domain_warp_type")
        assert(self._method_set_domain_warp_type_3629692980 != nil)
        self._method_get_domain_warp_type_2980162020 = StringName(from: "get_domain_warp_type")
        assert(self._method_get_domain_warp_type_2980162020 != nil)
        self._method_set_domain_warp_amplitude_373806689 = StringName(from: "set_domain_warp_amplitude")
        assert(self._method_set_domain_warp_amplitude_373806689 != nil)
        self._method_get_domain_warp_amplitude_1740695150 = StringName(from: "get_domain_warp_amplitude")
        assert(self._method_get_domain_warp_amplitude_1740695150 != nil)
        self._method_set_domain_warp_frequency_373806689 = StringName(from: "set_domain_warp_frequency")
        assert(self._method_set_domain_warp_frequency_373806689 != nil)
        self._method_get_domain_warp_frequency_1740695150 = StringName(from: "get_domain_warp_frequency")
        assert(self._method_get_domain_warp_frequency_1740695150 != nil)
        self._method_set_domain_warp_fractal_type_3999408287 = StringName(from: "set_domain_warp_fractal_type")
        assert(self._method_set_domain_warp_fractal_type_3999408287 != nil)
        self._method_get_domain_warp_fractal_type_407716934 = StringName(from: "get_domain_warp_fractal_type")
        assert(self._method_get_domain_warp_fractal_type_407716934 != nil)
        self._method_set_domain_warp_fractal_octaves_1286410249 = StringName(from: "set_domain_warp_fractal_octaves")
        assert(self._method_set_domain_warp_fractal_octaves_1286410249 != nil)
        self._method_get_domain_warp_fractal_octaves_3905245786 = StringName(from: "get_domain_warp_fractal_octaves")
        assert(self._method_get_domain_warp_fractal_octaves_3905245786 != nil)
        self._method_set_domain_warp_fractal_lacunarity_373806689 = StringName(from: "set_domain_warp_fractal_lacunarity")
        assert(self._method_set_domain_warp_fractal_lacunarity_373806689 != nil)
        self._method_get_domain_warp_fractal_lacunarity_1740695150 = StringName(from: "get_domain_warp_fractal_lacunarity")
        assert(self._method_get_domain_warp_fractal_lacunarity_1740695150 != nil)
        self._method_set_domain_warp_fractal_gain_373806689 = StringName(from: "set_domain_warp_fractal_gain")
        assert(self._method_set_domain_warp_fractal_gain_373806689 != nil)
        self._method_get_domain_warp_fractal_gain_1740695150 = StringName(from: "get_domain_warp_fractal_gain")
        assert(self._method_get_domain_warp_fractal_gain_1740695150 != nil)
    }

    public func set_noise_type(`type`: FastNoiseLite.NoiseType)  {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_noise_type_2624461392._native_ptr(),
                    2624461392)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_noise_type() -> FastNoiseLite.NoiseType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_noise_type_1458108610._native_ptr(),
                    1458108610)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return FastNoiseLite.NoiseType(godot: __resPtr.pointee)
    }
    public func set_seed(seed: Int64)  {
        withUnsafePointer(to: seed) { seed_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(seed_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_seed_1286410249._native_ptr(),
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
    public func get_seed() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_seed_3905245786._native_ptr(),
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
    public func set_frequency(freq: Float64)  {
        withUnsafePointer(to: freq) { freq_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(freq_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_frequency_373806689._native_ptr(),
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
    public func get_frequency() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_frequency_1740695150._native_ptr(),
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
    public func set_offset(offset: Vector3)  {
        let offset_native = offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_offset_3460891852._native_ptr(),
                    3460891852)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_offset() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_offset_3360562783._native_ptr(),
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
    public func set_fractal_type(`type`: FastNoiseLite.FractalType)  {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fractal_type_4132731174._native_ptr(),
                    4132731174)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_fractal_type() -> FastNoiseLite.FractalType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fractal_type_1036889279._native_ptr(),
                    1036889279)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return FastNoiseLite.FractalType(godot: __resPtr.pointee)
    }
    public func set_fractal_octaves(octave_count: Int64)  {
        withUnsafePointer(to: octave_count) { octave_count_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(octave_count_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fractal_octaves_1286410249._native_ptr(),
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
    public func get_fractal_octaves() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fractal_octaves_3905245786._native_ptr(),
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
    public func set_fractal_lacunarity(lacunarity: Float64)  {
        withUnsafePointer(to: lacunarity) { lacunarity_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(lacunarity_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fractal_lacunarity_373806689._native_ptr(),
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
    public func get_fractal_lacunarity() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fractal_lacunarity_1740695150._native_ptr(),
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
    public func set_fractal_gain(gain: Float64)  {
        withUnsafePointer(to: gain) { gain_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gain_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fractal_gain_373806689._native_ptr(),
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
    public func get_fractal_gain() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fractal_gain_1740695150._native_ptr(),
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
    public func set_fractal_weighted_strength(weighted_strength: Float64)  {
        withUnsafePointer(to: weighted_strength) { weighted_strength_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(weighted_strength_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fractal_weighted_strength_373806689._native_ptr(),
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
    public func get_fractal_weighted_strength() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fractal_weighted_strength_1740695150._native_ptr(),
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
    public func set_fractal_ping_pong_strength(ping_pong_strength: Float64)  {
        withUnsafePointer(to: ping_pong_strength) { ping_pong_strength_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ping_pong_strength_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fractal_ping_pong_strength_373806689._native_ptr(),
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
    public func get_fractal_ping_pong_strength() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fractal_ping_pong_strength_1740695150._native_ptr(),
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
    public func set_cellular_distance_function(`func`: FastNoiseLite.CellularDistanceFunction)  {
        withUnsafePointer(to: `func`.rawValue) { func_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(func_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_cellular_distance_function_1006013267._native_ptr(),
                    1006013267)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_cellular_distance_function() -> FastNoiseLite.CellularDistanceFunction {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_cellular_distance_function_2021274088._native_ptr(),
                    2021274088)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return FastNoiseLite.CellularDistanceFunction(godot: __resPtr.pointee)
    }
    public func set_cellular_jitter(jitter: Float64)  {
        withUnsafePointer(to: jitter) { jitter_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(jitter_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_cellular_jitter_373806689._native_ptr(),
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
    public func get_cellular_jitter() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_cellular_jitter_1740695150._native_ptr(),
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
    public func set_cellular_return_type(ret: FastNoiseLite.CellularReturnType)  {
        withUnsafePointer(to: ret.rawValue) { ret_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ret_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_cellular_return_type_2654169698._native_ptr(),
                    2654169698)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_cellular_return_type() -> FastNoiseLite.CellularReturnType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_cellular_return_type_3699796343._native_ptr(),
                    3699796343)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return FastNoiseLite.CellularReturnType(godot: __resPtr.pointee)
    }
    public func set_domain_warp_enabled(domain_warp_enabled: UInt8)  {
        withUnsafePointer(to: domain_warp_enabled) { domain_warp_enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(domain_warp_enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_domain_warp_enabled_2586408642._native_ptr(),
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
    public func is_domain_warp_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_domain_warp_enabled_36873697._native_ptr(),
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
    public func set_domain_warp_type(domain_warp_type: FastNoiseLite.DomainWarpType)  {
        withUnsafePointer(to: domain_warp_type.rawValue) { domain_warp_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(domain_warp_type_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_domain_warp_type_3629692980._native_ptr(),
                    3629692980)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_domain_warp_type() -> FastNoiseLite.DomainWarpType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_domain_warp_type_2980162020._native_ptr(),
                    2980162020)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return FastNoiseLite.DomainWarpType(godot: __resPtr.pointee)
    }
    public func set_domain_warp_amplitude(domain_warp_amplitude: Float64)  {
        withUnsafePointer(to: domain_warp_amplitude) { domain_warp_amplitude_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(domain_warp_amplitude_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_domain_warp_amplitude_373806689._native_ptr(),
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
    public func get_domain_warp_amplitude() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_domain_warp_amplitude_1740695150._native_ptr(),
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
    public func set_domain_warp_frequency(domain_warp_frequency: Float64)  {
        withUnsafePointer(to: domain_warp_frequency) { domain_warp_frequency_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(domain_warp_frequency_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_domain_warp_frequency_373806689._native_ptr(),
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
    public func get_domain_warp_frequency() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_domain_warp_frequency_1740695150._native_ptr(),
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
    public func set_domain_warp_fractal_type(domain_warp_fractal_type: FastNoiseLite.DomainWarpFractalType)  {
        withUnsafePointer(to: domain_warp_fractal_type.rawValue) { domain_warp_fractal_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(domain_warp_fractal_type_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_domain_warp_fractal_type_3999408287._native_ptr(),
                    3999408287)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_domain_warp_fractal_type() -> FastNoiseLite.DomainWarpFractalType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_domain_warp_fractal_type_407716934._native_ptr(),
                    407716934)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return FastNoiseLite.DomainWarpFractalType(godot: __resPtr.pointee)
    }
    public func set_domain_warp_fractal_octaves(domain_warp_octave_count: Int64)  {
        withUnsafePointer(to: domain_warp_octave_count) { domain_warp_octave_count_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(domain_warp_octave_count_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_domain_warp_fractal_octaves_1286410249._native_ptr(),
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
    public func get_domain_warp_fractal_octaves() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_domain_warp_fractal_octaves_3905245786._native_ptr(),
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
    public func set_domain_warp_fractal_lacunarity(domain_warp_lacunarity: Float64)  {
        withUnsafePointer(to: domain_warp_lacunarity) { domain_warp_lacunarity_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(domain_warp_lacunarity_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_domain_warp_fractal_lacunarity_373806689._native_ptr(),
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
    public func get_domain_warp_fractal_lacunarity() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_domain_warp_fractal_lacunarity_1740695150._native_ptr(),
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
    public func set_domain_warp_fractal_gain(domain_warp_gain: Float64)  {
        withUnsafePointer(to: domain_warp_gain) { domain_warp_gain_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(domain_warp_gain_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_domain_warp_fractal_gain_373806689._native_ptr(),
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
    public func get_domain_warp_fractal_gain() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_domain_warp_fractal_gain_1740695150._native_ptr(),
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
}