import godot_native

fileprivate var __godot_name_ImageTextureLayered: StringName! = nil

/// Base class for texture types which contain the data of multiple [ImageTexture]s. Each image is of the same size and format.
/// 
/// Base class for [Texture2DArray], [Cubemap] and [CubemapArray]. Cannot be used directly, but contains all the functions necessary for accessing the derived resource types. See also [Texture3D].
open class ImageTextureLayered : TextureLayered {

    

    public override class var __godot_name: StringName { __godot_name_ImageTextureLayered }

    static var _method_create_from_images_2785773503: GDExtensionMethodBindPtr! = nil
    static var _method_update_layer_3331733361: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_ImageTextureLayered = StringName(from: "ImageTextureLayered")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_create_from_images_2785773503_name = StringName(from: "create_from_images")
        self._method_create_from_images_2785773503 = self.interface.pointee.classdb_get_method_bind(__godot_name_ImageTextureLayered._native_ptr(), _method_create_from_images_2785773503_name._native_ptr(), 2785773503)
        assert(ImageTextureLayered._method_create_from_images_2785773503 != nil)
        let _method_update_layer_3331733361_name = StringName(from: "update_layer")
        self._method_update_layer_3331733361 = self.interface.pointee.classdb_get_method_bind(__godot_name_ImageTextureLayered._native_ptr(), _method_update_layer_3331733361_name._native_ptr(), 3331733361)
        assert(ImageTextureLayered._method_update_layer_3331733361 != nil)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_from_images_2785773503,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_update_layer_3331733361,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}