import godot_native

fileprivate var __godot_name_TextureLayered: StringName! = nil

/// Base class for texture types which contain the data of multiple [Image]s. Each image is of the same size and format.
/// 
/// Base class for [ImageTextureLayered]. Cannot be used directly, but contains all the functions necessary for accessing the derived resource types. See also [Texture3D].
///  
/// Data is set on a per-layer basis. For [Texture2DArray]s, the layer specifies the array layer.
///  
/// All images need to have the same width, height and number of mipmap levels.
///  
/// A [TextureLayered] can be loaded with [method ResourceLoader.load].
///  
/// Internally, Godot maps these files to their respective counterparts in the target rendering driver (Vulkan, GLES3).
public class TextureLayered : Texture {

    public enum LayeredType : Int32 {
        case LAYERED_TYPE_2D_ARRAY = 0
        case LAYERED_TYPE_CUBEMAP = 1
        case LAYERED_TYPE_CUBEMAP_ARRAY = 2
    }

    public override class var __godot_name: StringName { __godot_name_TextureLayered }

    static var _method__get_format_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_layered_type_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_width_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_height_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_layers_0: GDExtensionMethodBindPtr! = nil
    static var _method__has_mipmaps_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_layer_data_0: GDExtensionMethodBindPtr! = nil
    static var _method_get_format_3847873762: GDExtensionMethodBindPtr! = nil
    static var _method_get_layered_type_518123893: GDExtensionMethodBindPtr! = nil
    static var _method_get_width_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_height_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_layers_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_has_mipmaps_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_layer_data_3655284255: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_TextureLayered = StringName(from: "TextureLayered")

        let _method_get_format_3847873762_name = StringName(from: "get_format")
        self._method_get_format_3847873762 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_format_3847873762_name._native_ptr(), 3847873762)
        assert(TextureLayered._method_get_format_3847873762 != nil)
        let _method_get_layered_type_518123893_name = StringName(from: "get_layered_type")
        self._method_get_layered_type_518123893 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_layered_type_518123893_name._native_ptr(), 518123893)
        assert(TextureLayered._method_get_layered_type_518123893 != nil)
        let _method_get_width_3905245786_name = StringName(from: "get_width")
        self._method_get_width_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_width_3905245786_name._native_ptr(), 3905245786)
        assert(TextureLayered._method_get_width_3905245786 != nil)
        let _method_get_height_3905245786_name = StringName(from: "get_height")
        self._method_get_height_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_height_3905245786_name._native_ptr(), 3905245786)
        assert(TextureLayered._method_get_height_3905245786 != nil)
        let _method_get_layers_3905245786_name = StringName(from: "get_layers")
        self._method_get_layers_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_layers_3905245786_name._native_ptr(), 3905245786)
        assert(TextureLayered._method_get_layers_3905245786 != nil)
        let _method_has_mipmaps_36873697_name = StringName(from: "has_mipmaps")
        self._method_has_mipmaps_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_mipmaps_36873697_name._native_ptr(), 36873697)
        assert(TextureLayered._method_has_mipmaps_36873697 != nil)
        let _method_get_layer_data_3655284255_name = StringName(from: "get_layer_data")
        self._method_get_layer_data_3655284255 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_layer_data_3655284255_name._native_ptr(), 3655284255)
        assert(TextureLayered._method_get_layer_data_3655284255 != nil)
    }

    public func _get_format() -> Image.Format {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_format_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Image.Format(from: __resPtr.pointee)
    }
    public func _get_layered_type() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_layered_type_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _get_width() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_width_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _get_height() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_height_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _get_layers() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_layers_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _has_mipmaps() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__has_mipmaps_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func _get_layer_data(layer_index: Int64) -> Image {
        withUnsafePointer(to: layer_index) { layer_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_layer_data_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Image(from: __resPtr.pointee)
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
    public func get_layered_type() -> TextureLayered.LayeredType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_layered_type_518123893,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextureLayered.LayeredType(from: __resPtr.pointee)
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
            return Int64(from: __resPtr.pointee)
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
            return Int64(from: __resPtr.pointee)
    }
    public func get_layers() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_layers_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            return UInt8(from: __resPtr.pointee)
    }
    public func get_layer_data(layer: Int64) -> Image {
        withUnsafePointer(to: layer) { layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_layer_data_3655284255,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Image(from: __resPtr.pointee)
        }
    }
}