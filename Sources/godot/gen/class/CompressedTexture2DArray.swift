import godot_native

fileprivate var __godot_name_CompressedTexture2DArray: StringName! = nil

/// Array of 2-dimensional textures, optionally compressed.
/// 
/// A texture array that is loaded from a [code].ctexarray[/code] file. This file format is internal to Godot; it is created by importing other image formats with the import system. [CompressedTexture2DArray] can use one of 4 compresson methods:
///  
/// - Uncompressed (uncompressed on the GPU)
///  
/// - Lossless (WebP or PNG, uncompressed on the GPU)
///  
/// - Lossy (WebP, uncompressed on the GPU)
///  
/// - VRAM Compressed (compressed on the GPU)
///  
/// Only [b]VRAM Compressed[/b] actually reduces the memory usage on the GPU. The [b]Lossless[/b] and [b]Lossy[/b] compression methods will reduce the required storage on disk, but they will not reduce memory usage on the GPU as the texture is sent to the GPU uncompressed.
///  
/// Using [b]VRAM Compressed[/b] also improves loading times, as VRAM-compressed textures are faster to load compared to textures using lossless or lossy compression. VRAM compression can exhibit noticeable artifacts and is intended to be used for 3D rendering, not 2D.
///  
/// See [Texture2DArray] for a general description of texture arrays.
open class CompressedTexture2DArray : CompressedTextureLayered {

    

    public override class var __godot_name: StringName { __godot_name_CompressedTexture2DArray }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_CompressedTexture2DArray == nil)
        __godot_name_CompressedTexture2DArray = StringName(from: "CompressedTexture2DArray")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}