import godot_native

fileprivate var __godot_name_EditorSceneFormatImporter: StringName! = nil

/// Imports scenes from third-parties' 3D files.
/// 
/// [EditorSceneFormatImporter] allows to define an importer script for a third-party 3D format.
///  
/// To use [EditorSceneFormatImporter], register it using the [method EditorPlugin.add_scene_format_importer_plugin] method first.
open class EditorSceneFormatImporter : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_EditorSceneFormatImporter }

    static var _method__get_import_flags_0: StringName! = nil
    static var _method__get_extensions_0: StringName! = nil
    static var _method__import_scene_0: StringName! = nil
    static var _method__get_import_options_0: StringName! = nil
    static var _method__get_option_visibility_0: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        assert(__godot_name_EditorSceneFormatImporter == nil)
        __godot_name_EditorSceneFormatImporter = StringName(from: "EditorSceneFormatImporter")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    public func _get_import_flags() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return Int64(godot: __resPtr.pointee)
    }
    public func _get_extensions() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func _import_scene(path: godot.String, flags: Int64, options: Dictionary) -> Object {
        withUnsafePointer(to: flags) { flags_native in
        let options_native = options._native_ptr()
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(flags_native), .init(options_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return Object(godot: __resPtr.pointee)
        }
    }
    public func _get_import_options(path: godot.String)  {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _get_option_visibility(path: godot.String, for_animation: UInt8, option: godot.String) -> Variant {
        withUnsafePointer(to: for_animation) { for_animation_native in
        let option_native = option._native_ptr()
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(for_animation_native), .init(option_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return Variant(godot: __resPtr.pointee)
        }
    }
}