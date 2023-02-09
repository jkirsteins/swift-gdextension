import godot_native

fileprivate var __godot_name_ImageFormatLoaderExtension: StringName! = nil

/// Base class for creating [ImageFormatLoader] extensions (adding support for extra image formats).
/// 
/// The engine supports multiple image formats out of the box (PNG, SVG, JPEG, WebP to name a few), but you can choose to implement support for additional image formats by extending this class.
///  
/// Be sure to respect the documented return types and values. You should create an instance of it, and call [method add_format_loader] to register that loader during the initialization phase.
open class ImageFormatLoaderExtension : ImageFormatLoader {

    

    public override class var __godot_name: StringName { __godot_name_ImageFormatLoaderExtension }

    static var _method__get_recognized_extensions_0: StringName! = nil
    static var _method__load_image_0: StringName! = nil
    static var _method_add_format_loader_3218959716: StringName! = nil
    static var _method_remove_format_loader_3218959716: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_ImageFormatLoaderExtension == nil)
        __godot_name_ImageFormatLoaderExtension = StringName(from: "ImageFormatLoaderExtension")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_add_format_loader_3218959716 = StringName(from: "add_format_loader")
        assert(self._method_add_format_loader_3218959716 != nil)
        self._method_remove_format_loader_3218959716 = StringName(from: "remove_format_loader")
        assert(self._method_remove_format_loader_3218959716 != nil)
    }

    public func _get_recognized_extensions() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return PackedStringArray(godot: __resPtr.pointee)
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
            fatalError("Not implemented: virtual default results")
            return Error(godot: __resPtr.pointee)
        }
        }
    }
    public func add_format_loader()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_format_loader_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_format_loader_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}