import godot_native

fileprivate var __godot_name_CompressedTexture3D: StringName! = nil

/// Texture with 3 dimensions, optionally compressed.
/// 
/// [CompressedTexture3D] is the VRAM-compressed counterpart of [ImageTexture3D]. The file extension for [CompressedTexture3D] files is [code].ctex3d[/code]. This file format is internal to Godot; it is created by importing other image formats with the import system.
///  
/// [CompressedTexture3D] uses VRAM compression, which allows to reduce memory usage on the GPU when rendering the texture. This also improves loading times, as VRAM-compressed textures are faster to load compared to textures using lossless compression. VRAM compression can exhibit noticeable artifacts and is intended to be used for 3D rendering, not 2D.
///  
/// See [Texture3D] for a general description of 3D textures.
open class CompressedTexture3D : Texture3D {

    

    public override class var __godot_name: StringName { __godot_name_CompressedTexture3D }

    static var _method_load_166001499: GDExtensionMethodBindPtr! = nil
    static var _method_get_load_path_201670096: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_CompressedTexture3D = StringName(from: "CompressedTexture3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_load_166001499_name = StringName(from: "load")
        self._method_load_166001499 = self.interface.pointee.classdb_get_method_bind(__godot_name_CompressedTexture3D._native_ptr(), _method_load_166001499_name._native_ptr(), 166001499)
        assert(CompressedTexture3D._method_load_166001499 != nil)
        let _method_get_load_path_201670096_name = StringName(from: "get_load_path")
        self._method_get_load_path_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_CompressedTexture3D._native_ptr(), _method_get_load_path_201670096_name._native_ptr(), 201670096)
        assert(CompressedTexture3D._method_get_load_path_201670096 != nil)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_load_166001499,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_load_path_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
}