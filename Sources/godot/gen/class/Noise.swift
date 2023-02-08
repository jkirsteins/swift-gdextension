import godot_native

fileprivate var __godot_name_Noise: StringName! = nil

/// MISSING
/// 
/// MISSING
open class Noise : Resource {

    

    public override class var __godot_name: StringName { __godot_name_Noise }

    static var _method_get_noise_1d_3919130443: GDExtensionMethodBindPtr! = nil
    static var _method_get_noise_2d_2753205203: GDExtensionMethodBindPtr! = nil
    static var _method_get_noise_2dv_2276447920: GDExtensionMethodBindPtr! = nil
    static var _method_get_noise_3d_973811851: GDExtensionMethodBindPtr! = nil
    static var _method_get_noise_3dv_1109078154: GDExtensionMethodBindPtr! = nil
    static var _method_get_image_2569233413: GDExtensionMethodBindPtr! = nil
    static var _method_get_seamless_image_2210827790: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_Noise = StringName(from: "Noise")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_get_noise_1d_3919130443_name = StringName(from: "get_noise_1d")
        self._method_get_noise_1d_3919130443 = self.interface.pointee.classdb_get_method_bind(__godot_name_Noise._native_ptr(), _method_get_noise_1d_3919130443_name._native_ptr(), 3919130443)
        assert(Noise._method_get_noise_1d_3919130443 != nil)
        let _method_get_noise_2d_2753205203_name = StringName(from: "get_noise_2d")
        self._method_get_noise_2d_2753205203 = self.interface.pointee.classdb_get_method_bind(__godot_name_Noise._native_ptr(), _method_get_noise_2d_2753205203_name._native_ptr(), 2753205203)
        assert(Noise._method_get_noise_2d_2753205203 != nil)
        let _method_get_noise_2dv_2276447920_name = StringName(from: "get_noise_2dv")
        self._method_get_noise_2dv_2276447920 = self.interface.pointee.classdb_get_method_bind(__godot_name_Noise._native_ptr(), _method_get_noise_2dv_2276447920_name._native_ptr(), 2276447920)
        assert(Noise._method_get_noise_2dv_2276447920 != nil)
        let _method_get_noise_3d_973811851_name = StringName(from: "get_noise_3d")
        self._method_get_noise_3d_973811851 = self.interface.pointee.classdb_get_method_bind(__godot_name_Noise._native_ptr(), _method_get_noise_3d_973811851_name._native_ptr(), 973811851)
        assert(Noise._method_get_noise_3d_973811851 != nil)
        let _method_get_noise_3dv_1109078154_name = StringName(from: "get_noise_3dv")
        self._method_get_noise_3dv_1109078154 = self.interface.pointee.classdb_get_method_bind(__godot_name_Noise._native_ptr(), _method_get_noise_3dv_1109078154_name._native_ptr(), 1109078154)
        assert(Noise._method_get_noise_3dv_1109078154 != nil)
        let _method_get_image_2569233413_name = StringName(from: "get_image")
        self._method_get_image_2569233413 = self.interface.pointee.classdb_get_method_bind(__godot_name_Noise._native_ptr(), _method_get_image_2569233413_name._native_ptr(), 2569233413)
        assert(Noise._method_get_image_2569233413 != nil)
        let _method_get_seamless_image_2210827790_name = StringName(from: "get_seamless_image")
        self._method_get_seamless_image_2210827790 = self.interface.pointee.classdb_get_method_bind(__godot_name_Noise._native_ptr(), _method_get_seamless_image_2210827790_name._native_ptr(), 2210827790)
        assert(Noise._method_get_seamless_image_2210827790 != nil)
    }

    public func get_noise_1d(x: Float64) -> Float64 {
        withUnsafePointer(to: x) { x_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(x_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_noise_1d_3919130443,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func get_noise_2d(x: Float64, y: Float64) -> Float64 {
        withUnsafePointer(to: y) { y_native in
        withUnsafePointer(to: x) { x_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(x_native), .init(y_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_noise_2d_2753205203,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
        }
    }
    public func get_noise_2dv(v: Vector2) -> Float64 {
        let v_native = v._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(v_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_noise_2dv_2276447920,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func get_noise_3d(x: Float64, y: Float64, z: Float64) -> Float64 {
        withUnsafePointer(to: z) { z_native in
        withUnsafePointer(to: y) { y_native in
        withUnsafePointer(to: x) { x_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(x_native), .init(y_native), .init(z_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_noise_3d_973811851,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
        }
        }
    }
    public func get_noise_3dv(v: Vector3) -> Float64 {
        let v_native = v._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(v_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_noise_3dv_1109078154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func get_image(width: Int64, height: Int64, invert: UInt8, in_3d_space: UInt8, normalize: UInt8) -> Image {
        withUnsafePointer(to: normalize) { normalize_native in
        withUnsafePointer(to: in_3d_space) { in_3d_space_native in
        withUnsafePointer(to: invert) { invert_native in
        withUnsafePointer(to: height) { height_native in
        withUnsafePointer(to: width) { width_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(width_native), .init(height_native), .init(invert_native), .init(in_3d_space_native), .init(normalize_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_image_2569233413,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Image(godot: __resPtr.pointee)
        }
        }
        }
        }
        }
    }
    public func get_seamless_image(width: Int64, height: Int64, invert: UInt8, in_3d_space: UInt8, skirt: Float64, normalize: UInt8) -> Image {
        withUnsafePointer(to: normalize) { normalize_native in
        withUnsafePointer(to: skirt) { skirt_native in
        withUnsafePointer(to: in_3d_space) { in_3d_space_native in
        withUnsafePointer(to: invert) { invert_native in
        withUnsafePointer(to: height) { height_native in
        withUnsafePointer(to: width) { width_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(width_native), .init(height_native), .init(invert_native), .init(in_3d_space_native), .init(skirt_native), .init(normalize_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_seamless_image_2210827790,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Image(godot: __resPtr.pointee)
        }
        }
        }
        }
        }
        }
    }
}