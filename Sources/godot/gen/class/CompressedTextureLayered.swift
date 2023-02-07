import godot_native

fileprivate var __godot_name_CompressedTextureLayered: StringName! = nil

/// Base class for texture arrays that can optionally be compressed.
/// 
/// A texture array that is loaded from a [code].ctexarray[/code] file. This file format is internal to Godot; it is created by importing other image formats with the import system. [CompressedTexture2D] can use one of 4 compresson methods:
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
public class CompressedTextureLayered : TextureLayered {

    

    public override class var __godot_name: StringName { __godot_name_CompressedTextureLayered }

    static var _method_load_166001499: GDExtensionMethodBindPtr! = nil
    static var _method_get_load_path_201670096: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_CompressedTextureLayered = StringName(from: "CompressedTextureLayered")

        let _method_load_166001499_name = StringName(from: "load")
        self._method_load_166001499 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_load_166001499_name._native_ptr(), 166001499)
        assert(CompressedTextureLayered._method_load_166001499 != nil)
        let _method_get_load_path_201670096_name = StringName(from: "get_load_path")
        self._method_get_load_path_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_load_path_201670096_name._native_ptr(), 201670096)
        assert(CompressedTextureLayered._method_get_load_path_201670096 != nil)
    }

    public func load(path: String) -> Error {
        withUnsafePointer(to: path) { path_native in
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
            return Error(from: __resPtr.pointee)
        }
    }
    public func get_load_path() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_load_path_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
}