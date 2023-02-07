import godot_native

fileprivate var __godot_name_EditorImportPlugin: StringName! = nil

/// Registers a custom resource importer in the editor. Use the class to parse any file and import it as a new resource type.
/// 
/// [EditorImportPlugin]s provide a way to extend the editor's resource import functionality. Use them to import resources from custom files or to provide alternatives to the editor's existing importers.
///  
/// EditorImportPlugins work by associating with specific file extensions and a resource type. See [method _get_recognized_extensions] and [method _get_resource_type]. They may optionally specify some import presets that affect the import process. EditorImportPlugins are responsible for creating the resources and saving them in the [code].godot/imported[/code] directory (see [member ProjectSettings.application/config/use_hidden_project_data_directory]).
///  
/// Below is an example EditorImportPlugin that imports a [Mesh] from a file with the extension ".special" or ".spec":
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// @tool
///  
/// extends EditorImportPlugin
///  
///  
/// func _get_importer_name():
///  
///     return "my.special.plugin"
///  
///  
/// func _get_visible_name():
///  
///     return "Special Mesh"
///  
///  
/// func _get_recognized_extensions():
///  
///     return ["special", "spec"]
///  
///  
/// func _get_save_extension():
///  
///     return "mesh"
///  
///  
/// func _get_resource_type():
///  
///     return "Mesh"
///  
///  
/// func _get_preset_count():
///  
///     return 1
///  
///  
/// func _get_preset_name(i):
///  
///     return "Default"
///  
///  
/// func _get_import_options(i):
///  
///     return [{"name": "my_option", "default_value": false}]
///  
///  
/// func _import(source_file, save_path, options, platform_variants, gen_files):
///  
///     var file = FileAccess.open(source_file, FileAccess.READ)
///  
///     if file == null:
///  
///         return FAILED
///  
///     var mesh = ArrayMesh.new()
///  
///     # Fill the Mesh with data read in "file", left as an exercise to the reader.
///  
///  
///     var filename = save_path + "." + _get_save_extension()
///  
///     return ResourceSaver.save(mesh, filename)
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// using Godot;
///  
///  
/// public partial class MySpecialPlugin : EditorImportPlugin
///  
/// {
///  
///     public override string _GetImporterName()
///  
///     {
///  
///         return "my.special.plugin";
///  
///     }
///  
///  
///     public override string _GetVisibleName()
///  
///     {
///  
///         return "Special Mesh";
///  
///     }
///  
///  
///     public override string[] _GetRecognizedExtensions()
///  
///     {
///  
///         return new string[] { "special", "spec" };
///  
///     }
///  
///  
///     public override string _GetSaveExtension()
///  
///     {
///  
///         return "mesh";
///  
///     }
///  
///  
///     public override string _GetResourceType()
///  
///     {
///  
///         return "Mesh";
///  
///     }
///  
///  
///     public override int _GetPresetCount()
///  
///     {
///  
///         return 1;
///  
///     }
///  
///  
///     public override string _GetPresetName(int presetIndex)
///  
///     {
///  
///         return "Default";
///  
///     }
///  
///  
///     public override Godot.Collections.Array<Godot.Collections.Dictionary> _GetImportOptions(string path, int presetIndex)
///  
///     {
///  
///         return new Godot.Collections.Array<Godot.Collections.Dictionary>
///  
///         {
///  
///             new Godot.Collections.Dictionary
///  
///             {
///  
///                 { "name", "myOption" },
///  
///                 { "defaultValue", false },
///  
///             }
///  
///         };
///  
///     }
///  
///  
///     public override int _Import(string sourceFile, string savePath, Godot.Collections.Dictionary options, Godot.Collections.Array<string> platformVariants, Godot.Collections.Array<string> genFiles)
///  
///     {
///  
///         using var file = FileAccess.Open(sourceFile, FileAccess.ModeFlags.Read);
///  
///         if (file.GetError() != Error.Ok)
///  
///         {
///  
///             return (int)Error.Failed;
///  
///         }
///  
///  
///         var mesh = new ArrayMesh();
///  
///         // Fill the Mesh with data read in "file", left as an exercise to the reader.
///  
///         string filename = $"{savePath}.{_GetSaveExtension()}";
///  
///         return (int)ResourceSaver.Save(mesh, filename);
///  
///     }
///  
/// }
///  
/// [/csharp]
///  
/// [/codeblocks]
///  
/// To use [EditorImportPlugin], register it using the [method EditorPlugin.add_import_plugin] method first.
public class EditorImportPlugin : ResourceImporter {

    

    public override class var __godot_name: StringName { __godot_name_EditorImportPlugin }

    static var _method__get_importer_name_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_visible_name_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_preset_count_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_preset_name_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_recognized_extensions_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_import_options_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_save_extension_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_resource_type_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_priority_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_import_order_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_option_visibility_0: GDExtensionMethodBindPtr! = nil
    static var _method__import_0: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_EditorImportPlugin = StringName(from: "EditorImportPlugin")

        
    }

    public func _get_importer_name() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_importer_name_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func _get_visible_name() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_visible_name_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func _get_preset_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_preset_count_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _get_preset_name(preset_index: Int64) -> String {
        withUnsafePointer(to: preset_index) { preset_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(preset_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_preset_name_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
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
    public func _get_import_options(path: String, preset_index: Int64) -> [Dictionary] {
        withUnsafePointer(to: preset_index) { preset_index_native in
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(preset_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_import_options_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](from: __resPtr.pointee)
        }
        }
    }
    public func _get_save_extension() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_save_extension_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func _get_resource_type() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_resource_type_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func _get_priority() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_priority_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func _get_import_order() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_import_order_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _get_option_visibility(path: String, option_name: StringName, options: Dictionary) -> UInt8 {
        withUnsafePointer(to: path) { path_native in
        let options_native = options._native_ptr()
        let option_name_native = option_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(option_name_native), .init(options_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_option_visibility_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func _import(source_file: String, save_path: String, options: Dictionary, platform_variants: [String], gen_files: [String]) -> Error {
        withUnsafePointer(to: save_path) { save_path_native in
        withUnsafePointer(to: source_file) { source_file_native in
        let gen_files_native = gen_files._native_ptr()
        let platform_variants_native = platform_variants._native_ptr()
        let options_native = options._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(source_file_native), .init(save_path_native), .init(options_native), .init(platform_variants_native), .init(gen_files_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__import_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
        }
    }
}