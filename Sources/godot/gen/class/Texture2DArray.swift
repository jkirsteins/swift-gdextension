import godot_native

fileprivate var __godot_name_Texture2DArray: StringName! = nil

/// A single texture resource which consists of multiple, separate images. Each image has the same dimensions and number of mipmap levels.
/// 
/// A Texture2DArray is different from a Texture3D: The Texture2DArray does not support trilinear interpolation between the [Image]s, i.e. no blending. See also [Cubemap] and [CubemapArray], which are texture arrays with specialized cubemap functions.
///  
/// A Texture2DArray is also different from an [AtlasTexture]: In a Texture2DArray, all images are treated separately. In an atlas, the regions (i.e. the single images) can be of different sizes. Furthermore, you usually need to add a padding around the regions, to prevent accidental UV mapping to more than one region. The same goes for mipmapping: Mipmap chains are handled separately for each layer. In an atlas, the slicing has to be done manually in the fragment shader.
///  
/// To create such a texture file yourself, reimport your image files using the Godot Editor import presets.
open class Texture2DArray : ImageTextureLayered {

    

    public override class var __godot_name: StringName { __godot_name_Texture2DArray }

    static var _method_create_placeholder_121922552: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_Texture2DArray = StringName(from: "Texture2DArray")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_create_placeholder_121922552_name = StringName(from: "create_placeholder")
        self._method_create_placeholder_121922552 = self.interface.pointee.classdb_get_method_bind(__godot_name_Texture2DArray._native_ptr(), _method_create_placeholder_121922552_name._native_ptr(), 121922552)
        assert(Texture2DArray._method_create_placeholder_121922552 != nil)
    }

    public func create_placeholder() -> Resource {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_placeholder_121922552,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Resource(godot: __resPtr.pointee)
    }
}