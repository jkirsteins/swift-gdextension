import godot_native

fileprivate var __godot_name_ImageTexture: StringName! = nil

/// A [Texture2D] based on an [Image].
/// 
/// A [Texture2D] based on an [Image]. For an image to be displayed, an [ImageTexture] has to be created from it using the [method create_from_image] method:
///  
/// [codeblock]
///  
/// var image = Image.load_from_file("res://icon.svg")
///  
/// var texture = ImageTexture.create_from_image(image)
///  
/// $Sprite2D.texture = texture
///  
/// [/codeblock]
///  
/// This way, textures can be created at run-time by loading images both from within the editor and externally.
///  
/// [b]Warning:[/b] Prefer to load imported textures with [method @GDScript.load] over loading them from within the filesystem dynamically with [method Image.load], as it may not work in exported projects:
///  
/// [codeblock]
///  
/// var texture = load("res://icon.svg")
///  
/// $Sprite2D.texture = texture
///  
/// [/codeblock]
///  
/// This is because images have to be imported as a [CompressedTexture2D] first to be loaded with [method @GDScript.load]. If you'd still like to load an image file just like any other [Resource], import it as an [Image] resource instead, and then load it normally using the [method @GDScript.load] method.
///  
/// [b]Note:[/b] The image can be retrieved from an imported texture using the [method Texture2D.get_image] method, which returns a copy of the image:
///  
/// [codeblock]
///  
/// var texture = load("res://icon.svg")
///  
/// var image : Image = texture.get_image()
///  
/// [/codeblock]
///  
/// An [ImageTexture] is not meant to be operated from within the editor interface directly, and is mostly useful for rendering images on screen dynamically via code. If you need to generate images procedurally from within the editor, consider saving and importing images as custom texture resources implementing a new [EditorImportPlugin].
///  
/// [b]Note:[/b] The maximum texture size is 16384×16384 pixels due to graphics hardware limitations.
public class ImageTexture : Texture2D {

    

    public override class var __godot_name: StringName { __godot_name_ImageTexture }

    static var _method_create_from_image_2775144163: GDExtensionMethodBindPtr! = nil
    static var _method_get_format_3847873762: GDExtensionMethodBindPtr! = nil
    static var _method_set_image_532598488: GDExtensionMethodBindPtr! = nil
    static var _method_update_532598488: GDExtensionMethodBindPtr! = nil
    static var _method_set_size_override_1130785943: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_ImageTexture = StringName(from: "ImageTexture")

        let _method_create_from_image_2775144163_name = StringName(from: "create_from_image")
        self._method_create_from_image_2775144163 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_from_image_2775144163_name._native_ptr(), 2775144163)
        assert(ImageTexture._method_create_from_image_2775144163 != nil)
        let _method_get_format_3847873762_name = StringName(from: "get_format")
        self._method_get_format_3847873762 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_format_3847873762_name._native_ptr(), 3847873762)
        assert(ImageTexture._method_get_format_3847873762 != nil)
        let _method_set_image_532598488_name = StringName(from: "set_image")
        self._method_set_image_532598488 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_image_532598488_name._native_ptr(), 532598488)
        assert(ImageTexture._method_set_image_532598488 != nil)
        let _method_update_532598488_name = StringName(from: "update")
        self._method_update_532598488 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_update_532598488_name._native_ptr(), 532598488)
        assert(ImageTexture._method_update_532598488 != nil)
        let _method_set_size_override_1130785943_name = StringName(from: "set_size_override")
        self._method_set_size_override_1130785943 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_size_override_1130785943_name._native_ptr(), 1130785943)
        assert(ImageTexture._method_set_size_override_1130785943 != nil)
    }

    public func create_from_image(image: Image) -> ImageTexture {
        let image_native = image._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(image_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_from_image_2775144163,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ImageTexture(from: __resPtr.pointee)
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
    public func set_image(image: Image)  {
        let image_native = image._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(image_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_image_532598488,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func update(image: Image)  {
        let image_native = image._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(image_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_update_532598488,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_size_override(size: Vector2i)  {
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_size_override_1130785943,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}