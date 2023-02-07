import godot_native

fileprivate var __godot_name_EditorSceneFormatImporter: StringName! = nil

/// Imports scenes from third-parties' 3D files.
/// 
/// [EditorSceneFormatImporter] allows to define an importer script for a third-party 3D format.
///  
/// To use [EditorSceneFormatImporter], register it using the [method EditorPlugin.add_scene_format_importer_plugin] method first.
public class EditorSceneFormatImporter : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_EditorSceneFormatImporter }

    static var _method__get_import_flags_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_extensions_0: GDExtensionMethodBindPtr! = nil
    static var _method__import_scene_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_import_options_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_option_visibility_0: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_EditorSceneFormatImporter = StringName(from: "EditorSceneFormatImporter")

        
    }

    public func _get_import_flags() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_import_flags_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _get_extensions() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_extensions_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func _import_scene(path: String, flags: Int64, options: Dictionary) -> Object {
        withUnsafePointer(to: flags) { flags_native in
        withUnsafePointer(to: path) { path_native in
        let options_native = options._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(flags_native), .init(options_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__import_scene_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Object(from: __resPtr.pointee)
        }
        }
    }
    public func _get_import_options(path: String)  {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_import_options_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _get_option_visibility(path: String, for_animation: UInt8, option: String) -> Variant {
        withUnsafePointer(to: option) { option_native in
        withUnsafePointer(to: for_animation) { for_animation_native in
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(for_animation_native), .init(option_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_option_visibility_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
        }
        }
        }
    }
}