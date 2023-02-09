import godot_native

fileprivate var __godot_name_ImageTexture3D: StringName! = nil

/// Texture with 3 dimensions.
/// 
/// [ImageTexture3D] is a 3-dimensional [ImageTexture] that has a width, height, and depth. See also [ImageTextureLayered].
///  
/// 3D textures are typically used to store density maps for [FogMaterial], color correction LUTs for [Environment], vector fields for [GPUParticlesAttractorVectorField3D] and collision maps for [GPUParticlesCollisionSDF3D]. 3D textures can also be used in custom shaders.
open class ImageTexture3D : Texture3D {

    

    public override class var __godot_name: StringName { __godot_name_ImageTexture3D }

    static var _method_create_1130379827: StringName! = nil
    static var _method_update_381264803: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_ImageTexture3D == nil)
        __godot_name_ImageTexture3D = StringName(from: "ImageTexture3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_create_1130379827 = StringName(from: "create")
        assert(self._method_create_1130379827 != nil)
        self._method_update_381264803 = StringName(from: "update")
        assert(self._method_update_381264803 != nil)
    }

    public func create(format: Image.Format, width: Int64, height: Int64, depth: Int64, use_mipmaps: UInt8, data: [Image]) -> Error {
        withUnsafePointer(to: use_mipmaps) { use_mipmaps_native in
        withUnsafePointer(to: depth) { depth_native in
        withUnsafePointer(to: height) { height_native in
        withUnsafePointer(to: width) { width_native in
        withUnsafePointer(to: format.rawValue) { format_native in
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(format_native), .init(width_native), .init(height_native), .init(depth_native), .init(use_mipmaps_native), .init(data_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_1130379827._native_ptr(),
                    1130379827)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
        }
        }
        }
        }
    }
    public func update(data: [Image])  {
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(data_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_update_381264803._native_ptr(),
                    381264803)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}