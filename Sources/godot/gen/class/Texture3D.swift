import godot_native

fileprivate var __godot_name_Texture3D: StringName! = nil

/// Base class for 3-dimensionnal textures.
/// 
/// Base class for [ImageTexture3D] and [CompressedTexture3D]. Cannot be used directly, but contains all the functions necessary for accessing the derived resource types. [Texture3D] is the base class for all 3-dimensional texture types. See also [TextureLayered].
///  
/// All images need to have the same width, height and number of mipmap levels.
///  
/// To create such a texture file yourself, reimport your image files using the Godot Editor import presets.
public class Texture3D : Texture {

    

    public override class var __godot_name: StringName { __godot_name_Texture3D }

    static var _method__get_format_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_width_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_height_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_depth_0: GDExtensionMethodBindPtr! = nil
    static var _method__has_mipmaps_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_data_0: GDExtensionMethodBindPtr! = nil
    static var _method_get_format_3847873762: GDExtensionMethodBindPtr! = nil
    static var _method_get_width_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_height_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_depth_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_has_mipmaps_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_data_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_create_placeholder_121922552: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Texture3D = StringName(from: "Texture3D")

        let _method_get_format_3847873762_name = StringName(from: "get_format")
        self._method_get_format_3847873762 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_format_3847873762_name._native_ptr(), 3847873762)
        assert(Texture3D._method_get_format_3847873762 != nil)
        let _method_get_width_3905245786_name = StringName(from: "get_width")
        self._method_get_width_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_width_3905245786_name._native_ptr(), 3905245786)
        assert(Texture3D._method_get_width_3905245786 != nil)
        let _method_get_height_3905245786_name = StringName(from: "get_height")
        self._method_get_height_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_height_3905245786_name._native_ptr(), 3905245786)
        assert(Texture3D._method_get_height_3905245786 != nil)
        let _method_get_depth_3905245786_name = StringName(from: "get_depth")
        self._method_get_depth_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_depth_3905245786_name._native_ptr(), 3905245786)
        assert(Texture3D._method_get_depth_3905245786 != nil)
        let _method_has_mipmaps_36873697_name = StringName(from: "has_mipmaps")
        self._method_has_mipmaps_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_mipmaps_36873697_name._native_ptr(), 36873697)
        assert(Texture3D._method_has_mipmaps_36873697 != nil)
        let _method_get_data_3995934104_name = StringName(from: "get_data")
        self._method_get_data_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_data_3995934104_name._native_ptr(), 3995934104)
        assert(Texture3D._method_get_data_3995934104 != nil)
        let _method_create_placeholder_121922552_name = StringName(from: "create_placeholder")
        self._method_create_placeholder_121922552 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_placeholder_121922552_name._native_ptr(), 121922552)
        assert(Texture3D._method_create_placeholder_121922552 != nil)
    }

    public func _get_format() -> Image.Format {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_format_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Image.Format(from: __resPtr.pointee)
    }
    public func _get_width() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_width_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _get_height() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_height_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _get_depth() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_depth_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _has_mipmaps() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__has_mipmaps_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func _get_data() -> [Image] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_data_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Image](from: __resPtr.pointee)
    }
    public func get_format() -> Image.Format {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_format_3847873762,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Image.Format(from: __resPtr.pointee)
    }
    public func get_width() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_width_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_height() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_height_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_depth() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_depth_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func has_mipmaps() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_mipmaps_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_data() -> [Image] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_data_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Image](from: __resPtr.pointee)
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
            return Resource(from: __resPtr.pointee)
    }
}