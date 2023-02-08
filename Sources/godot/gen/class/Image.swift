import godot_native

fileprivate var __godot_name_Image: StringName! = nil

/// Image datatype.
/// 
/// Native image datatype. Contains image data which can be converted to an [ImageTexture] and provides commonly used [i]image processing[/i] methods. The maximum width and height for an [Image] are [constant MAX_WIDTH] and [constant MAX_HEIGHT].
///  
/// An [Image] cannot be assigned to a [code]texture[/code] property of an object directly (such as [Sprite2D]), and has to be converted manually to an [ImageTexture] first.
///  
/// [b]Note:[/b] The maximum image size is 16384×16384 pixels due to graphics hardware limitations. Larger images may fail to import.
open class Image : Resource {

    public enum Format : Int32 {
        case FORMAT_L8 = 0
        case FORMAT_LA8 = 1
        case FORMAT_R8 = 2
        case FORMAT_RG8 = 3
        case FORMAT_RGB8 = 4
        case FORMAT_RGBA8 = 5
        case FORMAT_RGBA4444 = 6
        case FORMAT_RGB565 = 7
        case FORMAT_RF = 8
        case FORMAT_RGF = 9
        case FORMAT_RGBF = 10
        case FORMAT_RGBAF = 11
        case FORMAT_RH = 12
        case FORMAT_RGH = 13
        case FORMAT_RGBH = 14
        case FORMAT_RGBAH = 15
        case FORMAT_RGBE9995 = 16
        case FORMAT_DXT1 = 17
        case FORMAT_DXT3 = 18
        case FORMAT_DXT5 = 19
        case FORMAT_RGTC_R = 20
        case FORMAT_RGTC_RG = 21
        case FORMAT_BPTC_RGBA = 22
        case FORMAT_BPTC_RGBF = 23
        case FORMAT_BPTC_RGBFU = 24
        case FORMAT_ETC = 25
        case FORMAT_ETC2_R11 = 26
        case FORMAT_ETC2_R11S = 27
        case FORMAT_ETC2_RG11 = 28
        case FORMAT_ETC2_RG11S = 29
        case FORMAT_ETC2_RGB8 = 30
        case FORMAT_ETC2_RGBA8 = 31
        case FORMAT_ETC2_RGB8A1 = 32
        case FORMAT_ETC2_RA_AS_RG = 33
        case FORMAT_DXT5_RA_AS_RG = 34
        case FORMAT_ASTC_4x4 = 35
        case FORMAT_ASTC_4x4_HDR = 36
        case FORMAT_ASTC_8x8 = 37
        case FORMAT_ASTC_8x8_HDR = 38
        case FORMAT_MAX = 39
    }
    public enum Interpolation : Int32 {
        case INTERPOLATE_NEAREST = 0
        case INTERPOLATE_BILINEAR = 1
        case INTERPOLATE_CUBIC = 2
        case INTERPOLATE_TRILINEAR = 3
        case INTERPOLATE_LANCZOS = 4
    }
    public enum AlphaMode : Int32 {
        case ALPHA_NONE = 0
        case ALPHA_BIT = 1
        case ALPHA_BLEND = 2
    }
    public enum CompressMode : Int32 {
        case COMPRESS_S3TC = 0
        case COMPRESS_ETC = 1
        case COMPRESS_ETC2 = 2
        case COMPRESS_BPTC = 3
    }
    public enum UsedChannels : Int32 {
        case USED_CHANNELS_L = 0
        case USED_CHANNELS_LA = 1
        case USED_CHANNELS_R = 2
        case USED_CHANNELS_RG = 3
        case USED_CHANNELS_RGB = 4
        case USED_CHANNELS_RGBA = 5
    }
    public enum CompressSource : Int32 {
        case COMPRESS_SOURCE_GENERIC = 0
        case COMPRESS_SOURCE_SRGB = 1
        case COMPRESS_SOURCE_NORMAL = 2
    }
    public enum ASTCFormat : Int32 {
        case ASTC_FORMAT_4x4 = 0
        case ASTC_FORMAT_8x8 = 1
    }

    public override class var __godot_name: StringName { __godot_name_Image }

    static var _method_get_width_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_height_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_size_3690982128: GDExtensionMethodBindPtr! = nil
    static var _method_has_mipmaps_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_format_3847873762: GDExtensionMethodBindPtr! = nil
    static var _method_get_data_2362200018: GDExtensionMethodBindPtr! = nil
    static var _method_convert_2120693146: GDExtensionMethodBindPtr! = nil
    static var _method_get_mipmap_offset_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_resize_to_po2_4189212329: GDExtensionMethodBindPtr! = nil
    static var _method_resize_2461393748: GDExtensionMethodBindPtr! = nil
    static var _method_shrink_x2_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_crop_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_flip_x_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_flip_y_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_generate_mipmaps_1633102583: GDExtensionMethodBindPtr! = nil
    static var _method_clear_mipmaps_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_create_986942177: GDExtensionMethodBindPtr! = nil
    static var _method_create_from_data_299398494: GDExtensionMethodBindPtr! = nil
    static var _method_set_data_2740482212: GDExtensionMethodBindPtr! = nil
    static var _method_is_empty_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_load_166001499: GDExtensionMethodBindPtr! = nil
    static var _method_load_from_file_736337515: GDExtensionMethodBindPtr! = nil
    static var _method_save_png_2113323047: GDExtensionMethodBindPtr! = nil
    static var _method_save_png_to_buffer_2362200018: GDExtensionMethodBindPtr! = nil
    static var _method_save_jpg_578836491: GDExtensionMethodBindPtr! = nil
    static var _method_save_jpg_to_buffer_310747435: GDExtensionMethodBindPtr! = nil
    static var _method_save_exr_3108122999: GDExtensionMethodBindPtr! = nil
    static var _method_save_exr_to_buffer_3178917920: GDExtensionMethodBindPtr! = nil
    static var _method_save_webp_3594949219: GDExtensionMethodBindPtr! = nil
    static var _method_save_webp_to_buffer_1235769281: GDExtensionMethodBindPtr! = nil
    static var _method_detect_alpha_2030116505: GDExtensionMethodBindPtr! = nil
    static var _method_is_invisible_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_detect_used_channels_2703139984: GDExtensionMethodBindPtr! = nil
    static var _method_compress_4094210332: GDExtensionMethodBindPtr! = nil
    static var _method_compress_from_channels_279105990: GDExtensionMethodBindPtr! = nil
    static var _method_decompress_166280745: GDExtensionMethodBindPtr! = nil
    static var _method_is_compressed_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_rotate_90_1901204267: GDExtensionMethodBindPtr! = nil
    static var _method_rotate_180_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_fix_alpha_edges_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_premultiply_alpha_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_srgb_to_linear_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_normal_map_to_xy_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_rgbe_to_srgb_564927088: GDExtensionMethodBindPtr! = nil
    static var _method_bump_map_to_normal_map_336773324: GDExtensionMethodBindPtr! = nil
    static var _method_compute_image_metrics_3080961247: GDExtensionMethodBindPtr! = nil
    static var _method_blit_rect_2903928755: GDExtensionMethodBindPtr! = nil
    static var _method_blit_rect_mask_3383581145: GDExtensionMethodBindPtr! = nil
    static var _method_blend_rect_2903928755: GDExtensionMethodBindPtr! = nil
    static var _method_blend_rect_mask_3383581145: GDExtensionMethodBindPtr! = nil
    static var _method_fill_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_fill_rect_514693913: GDExtensionMethodBindPtr! = nil
    static var _method_get_used_rect_410525958: GDExtensionMethodBindPtr! = nil
    static var _method_get_region_2601441065: GDExtensionMethodBindPtr! = nil
    static var _method_copy_from_532598488: GDExtensionMethodBindPtr! = nil
    static var _method_get_pixelv_1532707496: GDExtensionMethodBindPtr! = nil
    static var _method_get_pixel_2165839948: GDExtensionMethodBindPtr! = nil
    static var _method_set_pixelv_287851464: GDExtensionMethodBindPtr! = nil
    static var _method_set_pixel_3733378741: GDExtensionMethodBindPtr! = nil
    static var _method_adjust_bcs_2385087082: GDExtensionMethodBindPtr! = nil
    static var _method_load_png_from_buffer_680677267: GDExtensionMethodBindPtr! = nil
    static var _method_load_jpg_from_buffer_680677267: GDExtensionMethodBindPtr! = nil
    static var _method_load_webp_from_buffer_680677267: GDExtensionMethodBindPtr! = nil
    static var _method_load_tga_from_buffer_680677267: GDExtensionMethodBindPtr! = nil
    static var _method_load_bmp_from_buffer_680677267: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_Image = StringName(from: "Image")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_get_width_3905245786_name = StringName(from: "get_width")
        self._method_get_width_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_get_width_3905245786_name._native_ptr(), 3905245786)
        assert(Image._method_get_width_3905245786 != nil)
        let _method_get_height_3905245786_name = StringName(from: "get_height")
        self._method_get_height_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_get_height_3905245786_name._native_ptr(), 3905245786)
        assert(Image._method_get_height_3905245786 != nil)
        let _method_get_size_3690982128_name = StringName(from: "get_size")
        self._method_get_size_3690982128 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_get_size_3690982128_name._native_ptr(), 3690982128)
        assert(Image._method_get_size_3690982128 != nil)
        let _method_has_mipmaps_36873697_name = StringName(from: "has_mipmaps")
        self._method_has_mipmaps_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_has_mipmaps_36873697_name._native_ptr(), 36873697)
        assert(Image._method_has_mipmaps_36873697 != nil)
        let _method_get_format_3847873762_name = StringName(from: "get_format")
        self._method_get_format_3847873762 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_get_format_3847873762_name._native_ptr(), 3847873762)
        assert(Image._method_get_format_3847873762 != nil)
        let _method_get_data_2362200018_name = StringName(from: "get_data")
        self._method_get_data_2362200018 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_get_data_2362200018_name._native_ptr(), 2362200018)
        assert(Image._method_get_data_2362200018 != nil)
        let _method_convert_2120693146_name = StringName(from: "convert")
        self._method_convert_2120693146 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_convert_2120693146_name._native_ptr(), 2120693146)
        assert(Image._method_convert_2120693146 != nil)
        let _method_get_mipmap_offset_923996154_name = StringName(from: "get_mipmap_offset")
        self._method_get_mipmap_offset_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_get_mipmap_offset_923996154_name._native_ptr(), 923996154)
        assert(Image._method_get_mipmap_offset_923996154 != nil)
        let _method_resize_to_po2_4189212329_name = StringName(from: "resize_to_po2")
        self._method_resize_to_po2_4189212329 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_resize_to_po2_4189212329_name._native_ptr(), 4189212329)
        assert(Image._method_resize_to_po2_4189212329 != nil)
        let _method_resize_2461393748_name = StringName(from: "resize")
        self._method_resize_2461393748 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_resize_2461393748_name._native_ptr(), 2461393748)
        assert(Image._method_resize_2461393748 != nil)
        let _method_shrink_x2_3218959716_name = StringName(from: "shrink_x2")
        self._method_shrink_x2_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_shrink_x2_3218959716_name._native_ptr(), 3218959716)
        assert(Image._method_shrink_x2_3218959716 != nil)
        let _method_crop_3937882851_name = StringName(from: "crop")
        self._method_crop_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_crop_3937882851_name._native_ptr(), 3937882851)
        assert(Image._method_crop_3937882851 != nil)
        let _method_flip_x_3218959716_name = StringName(from: "flip_x")
        self._method_flip_x_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_flip_x_3218959716_name._native_ptr(), 3218959716)
        assert(Image._method_flip_x_3218959716 != nil)
        let _method_flip_y_3218959716_name = StringName(from: "flip_y")
        self._method_flip_y_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_flip_y_3218959716_name._native_ptr(), 3218959716)
        assert(Image._method_flip_y_3218959716 != nil)
        let _method_generate_mipmaps_1633102583_name = StringName(from: "generate_mipmaps")
        self._method_generate_mipmaps_1633102583 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_generate_mipmaps_1633102583_name._native_ptr(), 1633102583)
        assert(Image._method_generate_mipmaps_1633102583 != nil)
        let _method_clear_mipmaps_3218959716_name = StringName(from: "clear_mipmaps")
        self._method_clear_mipmaps_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_clear_mipmaps_3218959716_name._native_ptr(), 3218959716)
        assert(Image._method_clear_mipmaps_3218959716 != nil)
        let _method_create_986942177_name = StringName(from: "create")
        self._method_create_986942177 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_create_986942177_name._native_ptr(), 986942177)
        assert(Image._method_create_986942177 != nil)
        let _method_create_from_data_299398494_name = StringName(from: "create_from_data")
        self._method_create_from_data_299398494 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_create_from_data_299398494_name._native_ptr(), 299398494)
        assert(Image._method_create_from_data_299398494 != nil)
        let _method_set_data_2740482212_name = StringName(from: "set_data")
        self._method_set_data_2740482212 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_set_data_2740482212_name._native_ptr(), 2740482212)
        assert(Image._method_set_data_2740482212 != nil)
        let _method_is_empty_36873697_name = StringName(from: "is_empty")
        self._method_is_empty_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_is_empty_36873697_name._native_ptr(), 36873697)
        assert(Image._method_is_empty_36873697 != nil)
        let _method_load_166001499_name = StringName(from: "load")
        self._method_load_166001499 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_load_166001499_name._native_ptr(), 166001499)
        assert(Image._method_load_166001499 != nil)
        let _method_load_from_file_736337515_name = StringName(from: "load_from_file")
        self._method_load_from_file_736337515 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_load_from_file_736337515_name._native_ptr(), 736337515)
        assert(Image._method_load_from_file_736337515 != nil)
        let _method_save_png_2113323047_name = StringName(from: "save_png")
        self._method_save_png_2113323047 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_save_png_2113323047_name._native_ptr(), 2113323047)
        assert(Image._method_save_png_2113323047 != nil)
        let _method_save_png_to_buffer_2362200018_name = StringName(from: "save_png_to_buffer")
        self._method_save_png_to_buffer_2362200018 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_save_png_to_buffer_2362200018_name._native_ptr(), 2362200018)
        assert(Image._method_save_png_to_buffer_2362200018 != nil)
        let _method_save_jpg_578836491_name = StringName(from: "save_jpg")
        self._method_save_jpg_578836491 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_save_jpg_578836491_name._native_ptr(), 578836491)
        assert(Image._method_save_jpg_578836491 != nil)
        let _method_save_jpg_to_buffer_310747435_name = StringName(from: "save_jpg_to_buffer")
        self._method_save_jpg_to_buffer_310747435 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_save_jpg_to_buffer_310747435_name._native_ptr(), 310747435)
        assert(Image._method_save_jpg_to_buffer_310747435 != nil)
        let _method_save_exr_3108122999_name = StringName(from: "save_exr")
        self._method_save_exr_3108122999 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_save_exr_3108122999_name._native_ptr(), 3108122999)
        assert(Image._method_save_exr_3108122999 != nil)
        let _method_save_exr_to_buffer_3178917920_name = StringName(from: "save_exr_to_buffer")
        self._method_save_exr_to_buffer_3178917920 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_save_exr_to_buffer_3178917920_name._native_ptr(), 3178917920)
        assert(Image._method_save_exr_to_buffer_3178917920 != nil)
        let _method_save_webp_3594949219_name = StringName(from: "save_webp")
        self._method_save_webp_3594949219 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_save_webp_3594949219_name._native_ptr(), 3594949219)
        assert(Image._method_save_webp_3594949219 != nil)
        let _method_save_webp_to_buffer_1235769281_name = StringName(from: "save_webp_to_buffer")
        self._method_save_webp_to_buffer_1235769281 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_save_webp_to_buffer_1235769281_name._native_ptr(), 1235769281)
        assert(Image._method_save_webp_to_buffer_1235769281 != nil)
        let _method_detect_alpha_2030116505_name = StringName(from: "detect_alpha")
        self._method_detect_alpha_2030116505 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_detect_alpha_2030116505_name._native_ptr(), 2030116505)
        assert(Image._method_detect_alpha_2030116505 != nil)
        let _method_is_invisible_36873697_name = StringName(from: "is_invisible")
        self._method_is_invisible_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_is_invisible_36873697_name._native_ptr(), 36873697)
        assert(Image._method_is_invisible_36873697 != nil)
        let _method_detect_used_channels_2703139984_name = StringName(from: "detect_used_channels")
        self._method_detect_used_channels_2703139984 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_detect_used_channels_2703139984_name._native_ptr(), 2703139984)
        assert(Image._method_detect_used_channels_2703139984 != nil)
        let _method_compress_4094210332_name = StringName(from: "compress")
        self._method_compress_4094210332 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_compress_4094210332_name._native_ptr(), 4094210332)
        assert(Image._method_compress_4094210332 != nil)
        let _method_compress_from_channels_279105990_name = StringName(from: "compress_from_channels")
        self._method_compress_from_channels_279105990 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_compress_from_channels_279105990_name._native_ptr(), 279105990)
        assert(Image._method_compress_from_channels_279105990 != nil)
        let _method_decompress_166280745_name = StringName(from: "decompress")
        self._method_decompress_166280745 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_decompress_166280745_name._native_ptr(), 166280745)
        assert(Image._method_decompress_166280745 != nil)
        let _method_is_compressed_36873697_name = StringName(from: "is_compressed")
        self._method_is_compressed_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_is_compressed_36873697_name._native_ptr(), 36873697)
        assert(Image._method_is_compressed_36873697 != nil)
        let _method_rotate_90_1901204267_name = StringName(from: "rotate_90")
        self._method_rotate_90_1901204267 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_rotate_90_1901204267_name._native_ptr(), 1901204267)
        assert(Image._method_rotate_90_1901204267 != nil)
        let _method_rotate_180_3218959716_name = StringName(from: "rotate_180")
        self._method_rotate_180_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_rotate_180_3218959716_name._native_ptr(), 3218959716)
        assert(Image._method_rotate_180_3218959716 != nil)
        let _method_fix_alpha_edges_3218959716_name = StringName(from: "fix_alpha_edges")
        self._method_fix_alpha_edges_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_fix_alpha_edges_3218959716_name._native_ptr(), 3218959716)
        assert(Image._method_fix_alpha_edges_3218959716 != nil)
        let _method_premultiply_alpha_3218959716_name = StringName(from: "premultiply_alpha")
        self._method_premultiply_alpha_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_premultiply_alpha_3218959716_name._native_ptr(), 3218959716)
        assert(Image._method_premultiply_alpha_3218959716 != nil)
        let _method_srgb_to_linear_3218959716_name = StringName(from: "srgb_to_linear")
        self._method_srgb_to_linear_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_srgb_to_linear_3218959716_name._native_ptr(), 3218959716)
        assert(Image._method_srgb_to_linear_3218959716 != nil)
        let _method_normal_map_to_xy_3218959716_name = StringName(from: "normal_map_to_xy")
        self._method_normal_map_to_xy_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_normal_map_to_xy_3218959716_name._native_ptr(), 3218959716)
        assert(Image._method_normal_map_to_xy_3218959716 != nil)
        let _method_rgbe_to_srgb_564927088_name = StringName(from: "rgbe_to_srgb")
        self._method_rgbe_to_srgb_564927088 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_rgbe_to_srgb_564927088_name._native_ptr(), 564927088)
        assert(Image._method_rgbe_to_srgb_564927088 != nil)
        let _method_bump_map_to_normal_map_336773324_name = StringName(from: "bump_map_to_normal_map")
        self._method_bump_map_to_normal_map_336773324 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_bump_map_to_normal_map_336773324_name._native_ptr(), 336773324)
        assert(Image._method_bump_map_to_normal_map_336773324 != nil)
        let _method_compute_image_metrics_3080961247_name = StringName(from: "compute_image_metrics")
        self._method_compute_image_metrics_3080961247 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_compute_image_metrics_3080961247_name._native_ptr(), 3080961247)
        assert(Image._method_compute_image_metrics_3080961247 != nil)
        let _method_blit_rect_2903928755_name = StringName(from: "blit_rect")
        self._method_blit_rect_2903928755 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_blit_rect_2903928755_name._native_ptr(), 2903928755)
        assert(Image._method_blit_rect_2903928755 != nil)
        let _method_blit_rect_mask_3383581145_name = StringName(from: "blit_rect_mask")
        self._method_blit_rect_mask_3383581145 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_blit_rect_mask_3383581145_name._native_ptr(), 3383581145)
        assert(Image._method_blit_rect_mask_3383581145 != nil)
        let _method_blend_rect_2903928755_name = StringName(from: "blend_rect")
        self._method_blend_rect_2903928755 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_blend_rect_2903928755_name._native_ptr(), 2903928755)
        assert(Image._method_blend_rect_2903928755 != nil)
        let _method_blend_rect_mask_3383581145_name = StringName(from: "blend_rect_mask")
        self._method_blend_rect_mask_3383581145 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_blend_rect_mask_3383581145_name._native_ptr(), 3383581145)
        assert(Image._method_blend_rect_mask_3383581145 != nil)
        let _method_fill_2920490490_name = StringName(from: "fill")
        self._method_fill_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_fill_2920490490_name._native_ptr(), 2920490490)
        assert(Image._method_fill_2920490490 != nil)
        let _method_fill_rect_514693913_name = StringName(from: "fill_rect")
        self._method_fill_rect_514693913 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_fill_rect_514693913_name._native_ptr(), 514693913)
        assert(Image._method_fill_rect_514693913 != nil)
        let _method_get_used_rect_410525958_name = StringName(from: "get_used_rect")
        self._method_get_used_rect_410525958 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_get_used_rect_410525958_name._native_ptr(), 410525958)
        assert(Image._method_get_used_rect_410525958 != nil)
        let _method_get_region_2601441065_name = StringName(from: "get_region")
        self._method_get_region_2601441065 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_get_region_2601441065_name._native_ptr(), 2601441065)
        assert(Image._method_get_region_2601441065 != nil)
        let _method_copy_from_532598488_name = StringName(from: "copy_from")
        self._method_copy_from_532598488 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_copy_from_532598488_name._native_ptr(), 532598488)
        assert(Image._method_copy_from_532598488 != nil)
        let _method_get_pixelv_1532707496_name = StringName(from: "get_pixelv")
        self._method_get_pixelv_1532707496 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_get_pixelv_1532707496_name._native_ptr(), 1532707496)
        assert(Image._method_get_pixelv_1532707496 != nil)
        let _method_get_pixel_2165839948_name = StringName(from: "get_pixel")
        self._method_get_pixel_2165839948 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_get_pixel_2165839948_name._native_ptr(), 2165839948)
        assert(Image._method_get_pixel_2165839948 != nil)
        let _method_set_pixelv_287851464_name = StringName(from: "set_pixelv")
        self._method_set_pixelv_287851464 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_set_pixelv_287851464_name._native_ptr(), 287851464)
        assert(Image._method_set_pixelv_287851464 != nil)
        let _method_set_pixel_3733378741_name = StringName(from: "set_pixel")
        self._method_set_pixel_3733378741 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_set_pixel_3733378741_name._native_ptr(), 3733378741)
        assert(Image._method_set_pixel_3733378741 != nil)
        let _method_adjust_bcs_2385087082_name = StringName(from: "adjust_bcs")
        self._method_adjust_bcs_2385087082 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_adjust_bcs_2385087082_name._native_ptr(), 2385087082)
        assert(Image._method_adjust_bcs_2385087082 != nil)
        let _method_load_png_from_buffer_680677267_name = StringName(from: "load_png_from_buffer")
        self._method_load_png_from_buffer_680677267 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_load_png_from_buffer_680677267_name._native_ptr(), 680677267)
        assert(Image._method_load_png_from_buffer_680677267 != nil)
        let _method_load_jpg_from_buffer_680677267_name = StringName(from: "load_jpg_from_buffer")
        self._method_load_jpg_from_buffer_680677267 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_load_jpg_from_buffer_680677267_name._native_ptr(), 680677267)
        assert(Image._method_load_jpg_from_buffer_680677267 != nil)
        let _method_load_webp_from_buffer_680677267_name = StringName(from: "load_webp_from_buffer")
        self._method_load_webp_from_buffer_680677267 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_load_webp_from_buffer_680677267_name._native_ptr(), 680677267)
        assert(Image._method_load_webp_from_buffer_680677267 != nil)
        let _method_load_tga_from_buffer_680677267_name = StringName(from: "load_tga_from_buffer")
        self._method_load_tga_from_buffer_680677267 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_load_tga_from_buffer_680677267_name._native_ptr(), 680677267)
        assert(Image._method_load_tga_from_buffer_680677267 != nil)
        let _method_load_bmp_from_buffer_680677267_name = StringName(from: "load_bmp_from_buffer")
        self._method_load_bmp_from_buffer_680677267 = self.interface.pointee.classdb_get_method_bind(__godot_name_Image._native_ptr(), _method_load_bmp_from_buffer_680677267_name._native_ptr(), 680677267)
        assert(Image._method_load_bmp_from_buffer_680677267 != nil)
    }

    public func get_width() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_width_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_height() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_height_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_size() -> Vector2i {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_size_3690982128,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(godot: __resPtr.pointee)
    }
    public func has_mipmaps() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_mipmaps_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
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
            return Image.Format(godot: __resPtr.pointee)
    }
    public func get_data() -> PackedByteArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_data_2362200018,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(godot: __resPtr.pointee)
    }
    public func convert(format: Image.Format)  {
        withUnsafePointer(to: format.rawValue) { format_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(format_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_convert_2120693146,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_mipmap_offset(mipmap: Int64) -> Int64 {
        withUnsafePointer(to: mipmap) { mipmap_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mipmap_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mipmap_offset_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func resize_to_po2(square: UInt8, interpolation: Image.Interpolation)  {
        withUnsafePointer(to: square) { square_native in
        withUnsafePointer(to: interpolation.rawValue) { interpolation_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(square_native), .init(interpolation_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_resize_to_po2_4189212329,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func resize(width: Int64, height: Int64, interpolation: Image.Interpolation)  {
        withUnsafePointer(to: height) { height_native in
        withUnsafePointer(to: width) { width_native in
        withUnsafePointer(to: interpolation.rawValue) { interpolation_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(width_native), .init(height_native), .init(interpolation_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_resize_2461393748,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func shrink_x2()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shrink_x2_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func crop(width: Int64, height: Int64)  {
        withUnsafePointer(to: height) { height_native in
        withUnsafePointer(to: width) { width_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(width_native), .init(height_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_crop_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func flip_x()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_flip_x_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func flip_y()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_flip_y_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func generate_mipmaps(renormalize: UInt8) -> Error {
        withUnsafePointer(to: renormalize) { renormalize_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(renormalize_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_generate_mipmaps_1633102583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
    }
    public func clear_mipmaps()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_mipmaps_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func create(width: Int64, height: Int64, use_mipmaps: UInt8, format: Image.Format) -> Image {
        withUnsafePointer(to: use_mipmaps) { use_mipmaps_native in
        withUnsafePointer(to: height) { height_native in
        withUnsafePointer(to: width) { width_native in
        withUnsafePointer(to: format.rawValue) { format_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(width_native), .init(height_native), .init(use_mipmaps_native), .init(format_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_986942177,
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
    public func create_from_data(width: Int64, height: Int64, use_mipmaps: UInt8, format: Image.Format, data: PackedByteArray) -> Image {
        withUnsafePointer(to: use_mipmaps) { use_mipmaps_native in
        withUnsafePointer(to: height) { height_native in
        withUnsafePointer(to: width) { width_native in
        withUnsafePointer(to: format.rawValue) { format_native in
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(width_native), .init(height_native), .init(use_mipmaps_native), .init(format_native), .init(data_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_from_data_299398494,
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
    public func set_data(width: Int64, height: Int64, use_mipmaps: UInt8, format: Image.Format, data: PackedByteArray)  {
        withUnsafePointer(to: use_mipmaps) { use_mipmaps_native in
        withUnsafePointer(to: height) { height_native in
        withUnsafePointer(to: width) { width_native in
        withUnsafePointer(to: format.rawValue) { format_native in
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(width_native), .init(height_native), .init(use_mipmaps_native), .init(format_native), .init(data_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_data_2740482212,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
        }
    }
    public func is_empty() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_empty_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func load(path: godot.String) -> Error {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_load_166001499,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func load_from_file(path: godot.String) -> Image {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_load_from_file_736337515,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Image(godot: __resPtr.pointee)
    }
    public func save_png(path: godot.String) -> Error {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_save_png_2113323047,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func save_png_to_buffer() -> PackedByteArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_save_png_to_buffer_2362200018,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(godot: __resPtr.pointee)
    }
    public func save_jpg(path: godot.String, quality: Float64) -> Error {
        withUnsafePointer(to: quality) { quality_native in
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(quality_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_save_jpg_578836491,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
    }
    public func save_jpg_to_buffer(quality: Float64) -> PackedByteArray {
        withUnsafePointer(to: quality) { quality_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(quality_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_save_jpg_to_buffer_310747435,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(godot: __resPtr.pointee)
        }
    }
    public func save_exr(path: godot.String, grayscale: UInt8) -> Error {
        withUnsafePointer(to: grayscale) { grayscale_native in
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(grayscale_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_save_exr_3108122999,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
    }
    public func save_exr_to_buffer(grayscale: UInt8) -> PackedByteArray {
        withUnsafePointer(to: grayscale) { grayscale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(grayscale_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_save_exr_to_buffer_3178917920,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(godot: __resPtr.pointee)
        }
    }
    public func save_webp(path: godot.String, lossy: UInt8, quality: Float64) -> Error {
        withUnsafePointer(to: quality) { quality_native in
        withUnsafePointer(to: lossy) { lossy_native in
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(lossy_native), .init(quality_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_save_webp_3594949219,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
        }
    }
    public func save_webp_to_buffer(lossy: UInt8, quality: Float64) -> PackedByteArray {
        withUnsafePointer(to: quality) { quality_native in
        withUnsafePointer(to: lossy) { lossy_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(lossy_native), .init(quality_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_save_webp_to_buffer_1235769281,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(godot: __resPtr.pointee)
        }
        }
    }
    public func detect_alpha() -> Image.AlphaMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_detect_alpha_2030116505,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Image.AlphaMode(godot: __resPtr.pointee)
    }
    public func is_invisible() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_invisible_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func detect_used_channels(source: Image.CompressSource) -> Image.UsedChannels {
        withUnsafePointer(to: source.rawValue) { source_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(source_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_detect_used_channels_2703139984,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Image.UsedChannels(godot: __resPtr.pointee)
        }
    }
    public func compress(mode: Image.CompressMode, source: Image.CompressSource, astc_format: Image.ASTCFormat) -> Error {
        withUnsafePointer(to: astc_format.rawValue) { astc_format_native in
        withUnsafePointer(to: source.rawValue) { source_native in
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native), .init(source_native), .init(astc_format_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_compress_4094210332,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
        }
        }
    }
    public func compress_from_channels(mode: Image.CompressMode, channels: Image.UsedChannels, astc_format: Image.ASTCFormat) -> Error {
        withUnsafePointer(to: astc_format.rawValue) { astc_format_native in
        withUnsafePointer(to: channels.rawValue) { channels_native in
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native), .init(channels_native), .init(astc_format_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_compress_from_channels_279105990,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
        }
        }
    }
    public func decompress() -> Error {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_decompress_166280745,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func is_compressed() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_compressed_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func rotate_90(direction: ClockDirection)  {
        withUnsafePointer(to: direction.rawValue) { direction_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(direction_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_rotate_90_1901204267,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func rotate_180()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_rotate_180_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func fix_alpha_edges()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_fix_alpha_edges_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func premultiply_alpha()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_premultiply_alpha_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func srgb_to_linear()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_srgb_to_linear_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func normal_map_to_xy()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_normal_map_to_xy_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func rgbe_to_srgb() -> Image {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_rgbe_to_srgb_564927088,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Image(godot: __resPtr.pointee)
    }
    public func bump_map_to_normal_map(bump_scale: Float64)  {
        withUnsafePointer(to: bump_scale) { bump_scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bump_scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_bump_map_to_normal_map_336773324,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func compute_image_metrics(compared_image: Image, use_luma: UInt8) -> Dictionary {
        withUnsafePointer(to: use_luma) { use_luma_native in
        let compared_image_native = compared_image._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(compared_image_native), .init(use_luma_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_compute_image_metrics_3080961247,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
        }
    }
    public func blit_rect(src: Image, src_rect: Rect2i, dst: Vector2i)  {
        let dst_native = dst._native_ptr()
        let src_rect_native = src_rect._native_ptr()
        let src_native = src._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(src_native), .init(src_rect_native), .init(dst_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_blit_rect_2903928755,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func blit_rect_mask(src: Image, mask: Image, src_rect: Rect2i, dst: Vector2i)  {
        let dst_native = dst._native_ptr()
        let src_rect_native = src_rect._native_ptr()
        let mask_native = mask._native_ptr()
        let src_native = src._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(src_native), .init(mask_native), .init(src_rect_native), .init(dst_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_blit_rect_mask_3383581145,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func blend_rect(src: Image, src_rect: Rect2i, dst: Vector2i)  {
        let dst_native = dst._native_ptr()
        let src_rect_native = src_rect._native_ptr()
        let src_native = src._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(src_native), .init(src_rect_native), .init(dst_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_blend_rect_2903928755,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func blend_rect_mask(src: Image, mask: Image, src_rect: Rect2i, dst: Vector2i)  {
        let dst_native = dst._native_ptr()
        let src_rect_native = src_rect._native_ptr()
        let mask_native = mask._native_ptr()
        let src_native = src._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(src_native), .init(mask_native), .init(src_rect_native), .init(dst_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_blend_rect_mask_3383581145,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func fill(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_fill_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func fill_rect(rect: Rect2i, color: Color)  {
        let color_native = color._native_ptr()
        let rect_native = rect._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rect_native), .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_fill_rect_514693913,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_used_rect() -> Rect2i {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_used_rect_410525958,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2i(godot: __resPtr.pointee)
    }
    public func get_region(region: Rect2i) -> Image {
        let region_native = region._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(region_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_region_2601441065,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Image(godot: __resPtr.pointee)
    }
    public func copy_from(src: Image)  {
        let src_native = src._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(src_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_copy_from_532598488,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_pixelv(point: Vector2i) -> Color {
        let point_native = point._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(point_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_pixelv_1532707496,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
    public func get_pixel(x: Int64, y: Int64) -> Color {
        withUnsafePointer(to: y) { y_native in
        withUnsafePointer(to: x) { x_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(x_native), .init(y_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_pixel_2165839948,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
        }
        }
    }
    public func set_pixelv(point: Vector2i, color: Color)  {
        let color_native = color._native_ptr()
        let point_native = point._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(point_native), .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_pixelv_287851464,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_pixel(x: Int64, y: Int64, color: Color)  {
        withUnsafePointer(to: y) { y_native in
        withUnsafePointer(to: x) { x_native in
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(x_native), .init(y_native), .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_pixel_3733378741,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func adjust_bcs(brightness: Float64, contrast: Float64, saturation: Float64)  {
        withUnsafePointer(to: saturation) { saturation_native in
        withUnsafePointer(to: contrast) { contrast_native in
        withUnsafePointer(to: brightness) { brightness_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(brightness_native), .init(contrast_native), .init(saturation_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_adjust_bcs_2385087082,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func load_png_from_buffer(buffer: PackedByteArray) -> Error {
        let buffer_native = buffer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(buffer_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_load_png_from_buffer_680677267,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func load_jpg_from_buffer(buffer: PackedByteArray) -> Error {
        let buffer_native = buffer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(buffer_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_load_jpg_from_buffer_680677267,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func load_webp_from_buffer(buffer: PackedByteArray) -> Error {
        let buffer_native = buffer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(buffer_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_load_webp_from_buffer_680677267,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func load_tga_from_buffer(buffer: PackedByteArray) -> Error {
        let buffer_native = buffer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(buffer_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_load_tga_from_buffer_680677267,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func load_bmp_from_buffer(buffer: PackedByteArray) -> Error {
        let buffer_native = buffer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(buffer_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_load_bmp_from_buffer_680677267,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
}