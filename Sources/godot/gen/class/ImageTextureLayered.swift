import godot_native

fileprivate var __godot_name_ImageTextureLayered: StringName! = nil

/// Base class for texture types which contain the data of multiple [ImageTexture]s. Each image is of the same size and format.
/// 
/// Base class for [Texture2DArray], [Cubemap] and [CubemapArray]. Cannot be used directly, but contains all the functions necessary for accessing the derived resource types. See also [Texture3D].
open class ImageTextureLayered : TextureLayered {

    

    public override class var __godot_name: StringName { __godot_name_ImageTextureLayered }

    static var _method_create_from_images_2785773503: StringName! = nil
    static var _method_update_layer_3331733361: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_ImageTextureLayered == nil)
        __godot_name_ImageTextureLayered = StringName(from: "ImageTextureLayered")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_create_from_images_2785773503 = StringName(from: "create_from_images")
        assert(self._method_create_from_images_2785773503 != nil)
        self._method_update_layer_3331733361 = StringName(from: "update_layer")
        assert(self._method_update_layer_3331733361 != nil)
    }

    public func create_from_images(images: [Image]) -> Error {
        let images_native = images._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(images_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_from_images_2785773503._native_ptr(),
                    2785773503)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func update_layer(image: Image, layer: Int64)  {
        withUnsafePointer(to: layer) { layer_native in
        let image_native = image._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(image_native), .init(layer_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_update_layer_3331733361._native_ptr(),
                    3331733361)
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