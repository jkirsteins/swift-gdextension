import godot_native

fileprivate var __godot_name_PortableCompressedTexture2D: StringName! = nil

/// Provides a compressed texture for disk and/or VRAM in a way that is portable.
/// 
/// This class allows storing compressed textures as self contained (not imported) resources.
///  
/// For 2D usage (compressed on disk, uncompressed on VRAM), the lossy and lossless modes are recommended. For 3D usage (compressed on VRAM) it depends on the target platform.
///  
/// If you intend to only use desktop, S3TC or BPTC are recommended. For only mobile, ETC2 is recommended.
///  
/// For portable, self contained 3D textures that work on both desktop and mobile, Basis Universal is recommended (although it has a small quality cost and longer compression time as a tradeoff).
///  
/// This resource is intended to be created from code.
open class PortableCompressedTexture2D : Texture2D {

    public enum CompressionMode : Int32 {
        case COMPRESSION_MODE_LOSSLESS = 0
        case COMPRESSION_MODE_LOSSY = 1
        case COMPRESSION_MODE_BASIS_UNIVERSAL = 2
        case COMPRESSION_MODE_S3TC = 3
        case COMPRESSION_MODE_ETC2 = 4
        case COMPRESSION_MODE_BPTC = 5
    }

    public override class var __godot_name: StringName { __godot_name_PortableCompressedTexture2D }

    static var _method_create_from_image_97251393: StringName! = nil
    static var _method_get_format_3847873762: StringName! = nil
    static var _method_get_compression_mode_3265612739: StringName! = nil
    static var _method_set_size_override_743155724: StringName! = nil
    static var _method_get_size_override_3341600327: StringName! = nil
    static var _method_set_keep_compressed_buffer_2586408642: StringName! = nil
    static var _method_is_keeping_compressed_buffer_36873697: StringName! = nil
    static var _method_set_keep_all_compressed_buffers_2586408642: StringName! = nil
    static var _method_is_keeping_all_compressed_buffers_2240911060: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_PortableCompressedTexture2D == nil)
        __godot_name_PortableCompressedTexture2D = StringName(from: "PortableCompressedTexture2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_create_from_image_97251393 = StringName(from: "create_from_image")
        assert(self._method_create_from_image_97251393 != nil)
        self._method_get_format_3847873762 = StringName(from: "get_format")
        assert(self._method_get_format_3847873762 != nil)
        self._method_get_compression_mode_3265612739 = StringName(from: "get_compression_mode")
        assert(self._method_get_compression_mode_3265612739 != nil)
        self._method_set_size_override_743155724 = StringName(from: "set_size_override")
        assert(self._method_set_size_override_743155724 != nil)
        self._method_get_size_override_3341600327 = StringName(from: "get_size_override")
        assert(self._method_get_size_override_3341600327 != nil)
        self._method_set_keep_compressed_buffer_2586408642 = StringName(from: "set_keep_compressed_buffer")
        assert(self._method_set_keep_compressed_buffer_2586408642 != nil)
        self._method_is_keeping_compressed_buffer_36873697 = StringName(from: "is_keeping_compressed_buffer")
        assert(self._method_is_keeping_compressed_buffer_36873697 != nil)
        self._method_set_keep_all_compressed_buffers_2586408642 = StringName(from: "set_keep_all_compressed_buffers")
        assert(self._method_set_keep_all_compressed_buffers_2586408642 != nil)
        self._method_is_keeping_all_compressed_buffers_2240911060 = StringName(from: "is_keeping_all_compressed_buffers")
        assert(self._method_is_keeping_all_compressed_buffers_2240911060 != nil)
    }

    public func create_from_image(image: Image, compression_mode: PortableCompressedTexture2D.CompressionMode, normal_map: UInt8, lossy_quality: Float64)  {
        withUnsafePointer(to: lossy_quality) { lossy_quality_native in
        withUnsafePointer(to: normal_map) { normal_map_native in
        withUnsafePointer(to: compression_mode.rawValue) { compression_mode_native in
        let image_native = image._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(image_native), .init(compression_mode_native), .init(normal_map_native), .init(lossy_quality_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_from_image_97251393._native_ptr(),
                    97251393)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func get_format() -> Image.Format {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_format_3847873762._native_ptr(),
                    3847873762)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Image.Format(godot: __resPtr.pointee)
    }
    public func get_compression_mode() -> PortableCompressedTexture2D.CompressionMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_compression_mode_3265612739._native_ptr(),
                    3265612739)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PortableCompressedTexture2D.CompressionMode(godot: __resPtr.pointee)
    }
    public func set_size_override(size: Vector2)  {
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_size_override_743155724._native_ptr(),
                    743155724)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_size_override() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_size_override_3341600327._native_ptr(),
                    3341600327)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func set_keep_compressed_buffer(keep: UInt8)  {
        withUnsafePointer(to: keep) { keep_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(keep_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_keep_compressed_buffer_2586408642._native_ptr(),
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
    public func is_keeping_compressed_buffer() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_keeping_compressed_buffer_36873697._native_ptr(),
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
    public func set_keep_all_compressed_buffers(keep: UInt8)  {
        withUnsafePointer(to: keep) { keep_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(keep_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_keep_all_compressed_buffers_2586408642._native_ptr(),
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
    public func is_keeping_all_compressed_buffers() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_keeping_all_compressed_buffers_2240911060._native_ptr(),
                    2240911060)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}