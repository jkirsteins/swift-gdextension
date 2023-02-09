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
open class ImageTexture : Texture2D {

    

    public override class var __godot_name: StringName { __godot_name_ImageTexture }

    static var _method_create_from_image_2775144163: StringName! = nil
    static var _method_get_format_3847873762: StringName! = nil
    static var _method_set_image_532598488: StringName! = nil
    static var _method_update_532598488: StringName! = nil
    static var _method_set_size_override_1130785943: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_ImageTexture == nil)
        __godot_name_ImageTexture = StringName(from: "ImageTexture")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_create_from_image_2775144163 = StringName(from: "create_from_image")
        assert(self._method_create_from_image_2775144163 != nil)
        self._method_get_format_3847873762 = StringName(from: "get_format")
        assert(self._method_get_format_3847873762 != nil)
        self._method_set_image_532598488 = StringName(from: "set_image")
        assert(self._method_set_image_532598488 != nil)
        self._method_update_532598488 = StringName(from: "update")
        assert(self._method_update_532598488 != nil)
        self._method_set_size_override_1130785943 = StringName(from: "set_size_override")
        assert(self._method_set_size_override_1130785943 != nil)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_from_image_2775144163._native_ptr(),
                    2775144163)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ImageTexture(godot: __resPtr.pointee)
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
    public func set_image(image: Image)  {
        let image_native = image._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(image_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_image_532598488._native_ptr(),
                    532598488)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_update_532598488._native_ptr(),
                    532598488)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_size_override_1130785943._native_ptr(),
                    1130785943)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}