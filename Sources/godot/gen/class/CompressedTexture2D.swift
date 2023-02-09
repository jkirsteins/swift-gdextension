import godot_native

fileprivate var __godot_name_CompressedTexture2D: StringName! = nil

/// Texture with 2 dimensions, optionally compressed.
/// 
/// A texture that is loaded from a [code].ctex[/code] file. This file format is internal to Godot; it is created by importing other image formats with the import system. [CompressedTexture2D] can use one of 4 compression methods (including a lack of any compression):
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
open class CompressedTexture2D : Texture2D {

    

    public override class var __godot_name: StringName { __godot_name_CompressedTexture2D }

    static var _method_load_166001499: StringName! = nil
    static var _method_get_load_path_201670096: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_CompressedTexture2D == nil)
        __godot_name_CompressedTexture2D = StringName(from: "CompressedTexture2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_load_166001499 = StringName(from: "load")
        assert(self._method_load_166001499 != nil)
        self._method_get_load_path_201670096 = StringName(from: "get_load_path")
        assert(self._method_get_load_path_201670096 != nil)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_load_166001499._native_ptr(),
                    166001499)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func get_load_path() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_load_path_201670096._native_ptr(),
                    201670096)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
}