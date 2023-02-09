import godot_native

fileprivate var __godot_name_ImageFormatLoader: StringName! = nil

/// Base class to add support for specific image formats.
/// 
/// The engine supports multiple image formats out of the box (PNG, SVG, JPEG, WebP to name a few), but you can choose to implement support for additional image formats by extending [ImageFormatLoaderExtension].
open class ImageFormatLoader : RefCounted {

    public struct LoaderFlags: OptionSet {
        public let rawValue: Int32
        public init(rawValue: Int32) {
            self.rawValue = rawValue
        }
        static let FLAG_NONE: LoaderFlags = []
        static let FLAG_FORCE_LINEAR = LoaderFlags(rawValue: 1)
        static let FLAG_CONVERT_COLORS = LoaderFlags(rawValue: 2)
    }

    public override class var __godot_name: StringName { __godot_name_ImageFormatLoader }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_ImageFormatLoader == nil)
        __godot_name_ImageFormatLoader = StringName(from: "ImageFormatLoader")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}