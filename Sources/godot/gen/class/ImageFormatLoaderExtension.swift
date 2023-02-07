import godot_native

fileprivate var __godot_name_ImageFormatLoaderExtension: StringName! = nil

/// Base class for creating [ImageFormatLoader] extensions (adding support for extra image formats).
/// 
/// The engine supports multiple image formats out of the box (PNG, SVG, JPEG, WebP to name a few), but you can choose to implement support for additional image formats by extending this class.
///  
/// Be sure to respect the documented return types and values. You should create an instance of it, and call [method add_format_loader] to register that loader during the initialization phase.
public class ImageFormatLoaderExtension : ImageFormatLoader {

    

    public override class var __godot_name: StringName { __godot_name_ImageFormatLoaderExtension }

    static var _method__get_recognized_extensions_0: GDExtensionMethodBindPtr! = nil
    static var _method__load_image_0: GDExtensionMethodBindPtr! = nil
    static var _method_add_format_loader_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_remove_format_loader_3218959716: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_ImageFormatLoaderExtension = StringName(from: "ImageFormatLoaderExtension")

        let _method_add_format_loader_3218959716_name = StringName(from: "add_format_loader")
        self._method_add_format_loader_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_format_loader_3218959716_name._native_ptr(), 3218959716)
        assert(ImageFormatLoaderExtension._method_add_format_loader_3218959716 != nil)
        let _method_remove_format_loader_3218959716_name = StringName(from: "remove_format_loader")
        self._method_remove_format_loader_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_format_loader_3218959716_name._native_ptr(), 3218959716)
        assert(ImageFormatLoaderExtension._method_remove_format_loader_3218959716 != nil)
    }

    public func _get_recognized_extensions() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_recognized_extensions_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func _load_image(image: Image, fileaccess: FileAccess, flags: ImageFormatLoader.LoaderFlags, scale: Float64) -> Error {
        withUnsafePointer(to: scale) { scale_native in
        withUnsafePointer(to: flags.rawValue) { flags_native in
        let fileaccess_native = fileaccess._native_ptr()
        let image_native = image._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(image_native), .init(fileaccess_native), .init(flags_native), .init(scale_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__load_image_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
        }
    }
    public func add_format_loader()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_format_loader_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_format_loader()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_format_loader_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}