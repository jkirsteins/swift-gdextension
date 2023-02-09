import godot_native

fileprivate var __godot_name_Noise: StringName! = nil

/// MISSING
/// 
/// MISSING
open class Noise : Resource {

    

    public override class var __godot_name: StringName { __godot_name_Noise }

    static var _method_get_noise_1d_3919130443: StringName! = nil
    static var _method_get_noise_2d_2753205203: StringName! = nil
    static var _method_get_noise_2dv_2276447920: StringName! = nil
    static var _method_get_noise_3d_973811851: StringName! = nil
    static var _method_get_noise_3dv_1109078154: StringName! = nil
    static var _method_get_image_2569233413: StringName! = nil
    static var _method_get_seamless_image_2210827790: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_Noise == nil)
        __godot_name_Noise = StringName(from: "Noise")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_noise_1d_3919130443 = StringName(from: "get_noise_1d")
        assert(self._method_get_noise_1d_3919130443 != nil)
        self._method_get_noise_2d_2753205203 = StringName(from: "get_noise_2d")
        assert(self._method_get_noise_2d_2753205203 != nil)
        self._method_get_noise_2dv_2276447920 = StringName(from: "get_noise_2dv")
        assert(self._method_get_noise_2dv_2276447920 != nil)
        self._method_get_noise_3d_973811851 = StringName(from: "get_noise_3d")
        assert(self._method_get_noise_3d_973811851 != nil)
        self._method_get_noise_3dv_1109078154 = StringName(from: "get_noise_3dv")
        assert(self._method_get_noise_3dv_1109078154 != nil)
        self._method_get_image_2569233413 = StringName(from: "get_image")
        assert(self._method_get_image_2569233413 != nil)
        self._method_get_seamless_image_2210827790 = StringName(from: "get_seamless_image")
        assert(self._method_get_seamless_image_2210827790 != nil)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_noise_1d_3919130443._native_ptr(),
                    3919130443)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_noise_2d_2753205203._native_ptr(),
                    2753205203)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_noise_2dv_2276447920._native_ptr(),
                    2276447920)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_noise_3d_973811851._native_ptr(),
                    973811851)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_noise_3dv_1109078154._native_ptr(),
                    1109078154)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_image_2569233413._native_ptr(),
                    2569233413)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_seamless_image_2210827790._native_ptr(),
                    2210827790)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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