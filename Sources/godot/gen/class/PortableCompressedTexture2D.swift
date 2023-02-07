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
public class PortableCompressedTexture2D : Texture2D {

    public enum CompressionMode : Int32 {
        case COMPRESSION_MODE_LOSSLESS = 0
        case COMPRESSION_MODE_LOSSY = 1
        case COMPRESSION_MODE_BASIS_UNIVERSAL = 2
        case COMPRESSION_MODE_S3TC = 3
        case COMPRESSION_MODE_ETC2 = 4
        case COMPRESSION_MODE_BPTC = 5
    }

    public override class var __godot_name: StringName { __godot_name_PortableCompressedTexture2D }

    static var _method_create_from_image_97251393: GDExtensionMethodBindPtr! = nil
    static var _method_get_format_3847873762: GDExtensionMethodBindPtr! = nil
    static var _method_get_compression_mode_3265612739: GDExtensionMethodBindPtr! = nil
    static var _method_set_size_override_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_size_override_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_keep_compressed_buffer_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_keeping_compressed_buffer_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_keep_all_compressed_buffers_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_keeping_all_compressed_buffers_2240911060: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_PortableCompressedTexture2D = StringName(from: "PortableCompressedTexture2D")

        let _method_create_from_image_97251393_name = StringName(from: "create_from_image")
        self._method_create_from_image_97251393 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_from_image_97251393_name._native_ptr(), 97251393)
        assert(PortableCompressedTexture2D._method_create_from_image_97251393 != nil)
        let _method_get_format_3847873762_name = StringName(from: "get_format")
        self._method_get_format_3847873762 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_format_3847873762_name._native_ptr(), 3847873762)
        assert(PortableCompressedTexture2D._method_get_format_3847873762 != nil)
        let _method_get_compression_mode_3265612739_name = StringName(from: "get_compression_mode")
        self._method_get_compression_mode_3265612739 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_compression_mode_3265612739_name._native_ptr(), 3265612739)
        assert(PortableCompressedTexture2D._method_get_compression_mode_3265612739 != nil)
        let _method_set_size_override_743155724_name = StringName(from: "set_size_override")
        self._method_set_size_override_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_size_override_743155724_name._native_ptr(), 743155724)
        assert(PortableCompressedTexture2D._method_set_size_override_743155724 != nil)
        let _method_get_size_override_3341600327_name = StringName(from: "get_size_override")
        self._method_get_size_override_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_size_override_3341600327_name._native_ptr(), 3341600327)
        assert(PortableCompressedTexture2D._method_get_size_override_3341600327 != nil)
        let _method_set_keep_compressed_buffer_2586408642_name = StringName(from: "set_keep_compressed_buffer")
        self._method_set_keep_compressed_buffer_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_keep_compressed_buffer_2586408642_name._native_ptr(), 2586408642)
        assert(PortableCompressedTexture2D._method_set_keep_compressed_buffer_2586408642 != nil)
        let _method_is_keeping_compressed_buffer_36873697_name = StringName(from: "is_keeping_compressed_buffer")
        self._method_is_keeping_compressed_buffer_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_keeping_compressed_buffer_36873697_name._native_ptr(), 36873697)
        assert(PortableCompressedTexture2D._method_is_keeping_compressed_buffer_36873697 != nil)
        let _method_set_keep_all_compressed_buffers_2586408642_name = StringName(from: "set_keep_all_compressed_buffers")
        self._method_set_keep_all_compressed_buffers_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_keep_all_compressed_buffers_2586408642_name._native_ptr(), 2586408642)
        assert(PortableCompressedTexture2D._method_set_keep_all_compressed_buffers_2586408642 != nil)
        let _method_is_keeping_all_compressed_buffers_2240911060_name = StringName(from: "is_keeping_all_compressed_buffers")
        self._method_is_keeping_all_compressed_buffers_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_keeping_all_compressed_buffers_2240911060_name._native_ptr(), 2240911060)
        assert(PortableCompressedTexture2D._method_is_keeping_all_compressed_buffers_2240911060 != nil)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_from_image_97251393,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_format_3847873762,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Image.Format(from: __resPtr.pointee)
    }
    public func get_compression_mode() -> PortableCompressedTexture2D.CompressionMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_compression_mode_3265612739,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PortableCompressedTexture2D.CompressionMode(from: __resPtr.pointee)
    }
    public func set_size_override(size: Vector2)  {
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_size_override_743155724,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_size_override_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func set_keep_compressed_buffer(keep: UInt8)  {
        withUnsafePointer(to: keep) { keep_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(keep_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_keep_compressed_buffer_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_keeping_compressed_buffer_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_keep_all_compressed_buffers(keep: UInt8)  {
        withUnsafePointer(to: keep) { keep_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(keep_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_keep_all_compressed_buffers_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_keeping_all_compressed_buffers_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}