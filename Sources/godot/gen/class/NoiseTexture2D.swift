import godot_native

fileprivate var __godot_name_NoiseTexture2D: StringName! = nil

/// MISSING
/// 
/// MISSING
public class NoiseTexture2D : Texture2D {

    

    public override class var __godot_name: StringName { __godot_name_NoiseTexture2D }

    static var _method_set_width_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_height_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_invert_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_invert_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_in_3d_space_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_in_3d_space_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_generate_mipmaps_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_generating_mipmaps_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_seamless_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_seamless_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_set_seamless_blend_skirt_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_seamless_blend_skirt_191475506: GDExtensionMethodBindPtr! = nil
    static var _method_set_as_normal_map_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_normal_map_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_set_bump_strength_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_bump_strength_191475506: GDExtensionMethodBindPtr! = nil
    static var _method_set_normalize_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_normalized_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_color_ramp_2756054477: GDExtensionMethodBindPtr! = nil
    static var _method_get_color_ramp_132272999: GDExtensionMethodBindPtr! = nil
    static var _method_set_noise_4135492439: GDExtensionMethodBindPtr! = nil
    static var _method_get_noise_185851837: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_NoiseTexture2D = StringName(from: "NoiseTexture2D")

        let _method_set_width_1286410249_name = StringName(from: "set_width")
        self._method_set_width_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_width_1286410249_name._native_ptr(), 1286410249)
        assert(NoiseTexture2D._method_set_width_1286410249 != nil)
        let _method_set_height_1286410249_name = StringName(from: "set_height")
        self._method_set_height_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_height_1286410249_name._native_ptr(), 1286410249)
        assert(NoiseTexture2D._method_set_height_1286410249 != nil)
        let _method_set_invert_2586408642_name = StringName(from: "set_invert")
        self._method_set_invert_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_invert_2586408642_name._native_ptr(), 2586408642)
        assert(NoiseTexture2D._method_set_invert_2586408642 != nil)
        let _method_get_invert_36873697_name = StringName(from: "get_invert")
        self._method_get_invert_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_invert_36873697_name._native_ptr(), 36873697)
        assert(NoiseTexture2D._method_get_invert_36873697 != nil)
        let _method_set_in_3d_space_2586408642_name = StringName(from: "set_in_3d_space")
        self._method_set_in_3d_space_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_in_3d_space_2586408642_name._native_ptr(), 2586408642)
        assert(NoiseTexture2D._method_set_in_3d_space_2586408642 != nil)
        let _method_is_in_3d_space_36873697_name = StringName(from: "is_in_3d_space")
        self._method_is_in_3d_space_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_in_3d_space_36873697_name._native_ptr(), 36873697)
        assert(NoiseTexture2D._method_is_in_3d_space_36873697 != nil)
        let _method_set_generate_mipmaps_2586408642_name = StringName(from: "set_generate_mipmaps")
        self._method_set_generate_mipmaps_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_generate_mipmaps_2586408642_name._native_ptr(), 2586408642)
        assert(NoiseTexture2D._method_set_generate_mipmaps_2586408642 != nil)
        let _method_is_generating_mipmaps_36873697_name = StringName(from: "is_generating_mipmaps")
        self._method_is_generating_mipmaps_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_generating_mipmaps_36873697_name._native_ptr(), 36873697)
        assert(NoiseTexture2D._method_is_generating_mipmaps_36873697 != nil)
        let _method_set_seamless_2586408642_name = StringName(from: "set_seamless")
        self._method_set_seamless_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_seamless_2586408642_name._native_ptr(), 2586408642)
        assert(NoiseTexture2D._method_set_seamless_2586408642 != nil)
        let _method_get_seamless_2240911060_name = StringName(from: "get_seamless")
        self._method_get_seamless_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_seamless_2240911060_name._native_ptr(), 2240911060)
        assert(NoiseTexture2D._method_get_seamless_2240911060 != nil)
        let _method_set_seamless_blend_skirt_373806689_name = StringName(from: "set_seamless_blend_skirt")
        self._method_set_seamless_blend_skirt_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_seamless_blend_skirt_373806689_name._native_ptr(), 373806689)
        assert(NoiseTexture2D._method_set_seamless_blend_skirt_373806689 != nil)
        let _method_get_seamless_blend_skirt_191475506_name = StringName(from: "get_seamless_blend_skirt")
        self._method_get_seamless_blend_skirt_191475506 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_seamless_blend_skirt_191475506_name._native_ptr(), 191475506)
        assert(NoiseTexture2D._method_get_seamless_blend_skirt_191475506 != nil)
        let _method_set_as_normal_map_2586408642_name = StringName(from: "set_as_normal_map")
        self._method_set_as_normal_map_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_as_normal_map_2586408642_name._native_ptr(), 2586408642)
        assert(NoiseTexture2D._method_set_as_normal_map_2586408642 != nil)
        let _method_is_normal_map_2240911060_name = StringName(from: "is_normal_map")
        self._method_is_normal_map_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_normal_map_2240911060_name._native_ptr(), 2240911060)
        assert(NoiseTexture2D._method_is_normal_map_2240911060 != nil)
        let _method_set_bump_strength_373806689_name = StringName(from: "set_bump_strength")
        self._method_set_bump_strength_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_bump_strength_373806689_name._native_ptr(), 373806689)
        assert(NoiseTexture2D._method_set_bump_strength_373806689 != nil)
        let _method_get_bump_strength_191475506_name = StringName(from: "get_bump_strength")
        self._method_get_bump_strength_191475506 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_bump_strength_191475506_name._native_ptr(), 191475506)
        assert(NoiseTexture2D._method_get_bump_strength_191475506 != nil)
        let _method_set_normalize_2586408642_name = StringName(from: "set_normalize")
        self._method_set_normalize_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_normalize_2586408642_name._native_ptr(), 2586408642)
        assert(NoiseTexture2D._method_set_normalize_2586408642 != nil)
        let _method_is_normalized_36873697_name = StringName(from: "is_normalized")
        self._method_is_normalized_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_normalized_36873697_name._native_ptr(), 36873697)
        assert(NoiseTexture2D._method_is_normalized_36873697 != nil)
        let _method_set_color_ramp_2756054477_name = StringName(from: "set_color_ramp")
        self._method_set_color_ramp_2756054477 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_color_ramp_2756054477_name._native_ptr(), 2756054477)
        assert(NoiseTexture2D._method_set_color_ramp_2756054477 != nil)
        let _method_get_color_ramp_132272999_name = StringName(from: "get_color_ramp")
        self._method_get_color_ramp_132272999 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_color_ramp_132272999_name._native_ptr(), 132272999)
        assert(NoiseTexture2D._method_get_color_ramp_132272999 != nil)
        let _method_set_noise_4135492439_name = StringName(from: "set_noise")
        self._method_set_noise_4135492439 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_noise_4135492439_name._native_ptr(), 4135492439)
        assert(NoiseTexture2D._method_set_noise_4135492439 != nil)
        let _method_get_noise_185851837_name = StringName(from: "get_noise")
        self._method_get_noise_185851837 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_noise_185851837_name._native_ptr(), 185851837)
        assert(NoiseTexture2D._method_get_noise_185851837 != nil)
    }

    public func set_width(width: Int64)  {
        withUnsafePointer(to: width) { width_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(width_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_width_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_height(height: Int64)  {
        withUnsafePointer(to: height) { height_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(height_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_height_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_invert(invert: UInt8)  {
        withUnsafePointer(to: invert) { invert_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(invert_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_invert_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_invert() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_invert_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_in_3d_space(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_in_3d_space_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_in_3d_space() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_in_3d_space_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_generate_mipmaps(invert: UInt8)  {
        withUnsafePointer(to: invert) { invert_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(invert_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_generate_mipmaps_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_generating_mipmaps() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_generating_mipmaps_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_seamless(seamless: UInt8)  {
        withUnsafePointer(to: seamless) { seamless_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(seamless_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_seamless_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_seamless() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_seamless_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_seamless_blend_skirt(seamless_blend_skirt: Float64)  {
        withUnsafePointer(to: seamless_blend_skirt) { seamless_blend_skirt_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(seamless_blend_skirt_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_seamless_blend_skirt_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_seamless_blend_skirt() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_seamless_blend_skirt_191475506,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_as_normal_map(as_normal_map: UInt8)  {
        withUnsafePointer(to: as_normal_map) { as_normal_map_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(as_normal_map_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_as_normal_map_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_normal_map() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_normal_map_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_bump_strength(bump_strength: Float64)  {
        withUnsafePointer(to: bump_strength) { bump_strength_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bump_strength_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bump_strength_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_bump_strength() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bump_strength_191475506,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_normalize(normalize: UInt8)  {
        withUnsafePointer(to: normalize) { normalize_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(normalize_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_normalize_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_normalized() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_normalized_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_color_ramp(gradient: Gradient)  {
        let gradient_native = gradient._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gradient_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_color_ramp_2756054477,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_color_ramp() -> Gradient {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_color_ramp_132272999,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Gradient(from: __resPtr.pointee)
    }
    public func set_noise(noise: Noise)  {
        let noise_native = noise._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(noise_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_noise_4135492439,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_noise() -> Noise {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_noise_185851837,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Noise(from: __resPtr.pointee)
    }
}