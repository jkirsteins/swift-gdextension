import godot_native

fileprivate var __godot_name_CompressedCubemap: StringName! = nil

/// 6-sided texture typically used in 3D rendering, optionally compressed.
/// 
/// A cubemap that is loaded from a [code].ccube[/code] file. This file format is internal to Godot; it is created by importing other image formats with the import system. [CompressedCubemap] can use one of 4 compresson methods:
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
/// See [Cubemap] for a general description of cubemaps.
public class CompressedCubemap : CompressedTextureLayered {

    

    public override class var __godot_name: StringName { __godot_name_CompressedCubemap }

    
    
    public override class func initialize_class() {
        __godot_name_CompressedCubemap = StringName(from: "CompressedCubemap")

        
    }

    
}