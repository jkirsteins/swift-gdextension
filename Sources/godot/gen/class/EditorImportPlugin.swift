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
open class EditorImportPlugin : ResourceImporter {

    

    public override class var __godot_name: StringName { __godot_name_EditorImportPlugin }

    static var _method__get_importer_name_0: StringName! = nil
    static var _method__get_visible_name_0: StringName! = nil
    static var _method__get_preset_count_0: StringName! = nil
    static var _method__get_preset_name_0: StringName! = nil
    static var _method__get_recognized_extensions_0: StringName! = nil
    static var _method__get_import_options_0: StringName! = nil
    static var _method__get_save_extension_0: StringName! = nil
    static var _method__get_resource_type_0: StringName! = nil
    static var _method__get_priority_0: StringName! = nil
    static var _method__get_import_order_0: StringName! = nil
    static var _method__get_option_visibility_0: StringName! = nil
    static var _method__import_0: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        assert(__godot_name_EditorImportPlugin == nil)
        __godot_name_EditorImportPlugin = StringName(from: "EditorImportPlugin")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    public func _get_importer_name() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return godot.String(godot: __resPtr.pointee)
    }
    public func _get_visible_name() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return godot.String(godot: __resPtr.pointee)
    }
    public func _get_preset_count() -> Int64 {
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
    public func _get_preset_name(preset_index: Int64) -> godot.String {
        withUnsafePointer(to: preset_index) { preset_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(preset_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return godot.String(godot: __resPtr.pointee)
        }
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
    public func _get_import_options(path: godot.String, preset_index: Int64) -> [Dictionary] {
        withUnsafePointer(to: preset_index) { preset_index_native in
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(preset_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return [Dictionary](godot: __resPtr.pointee)
        }
    }
    public func _get_save_extension() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return godot.String(godot: __resPtr.pointee)
    }
    public func _get_resource_type() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return godot.String(godot: __resPtr.pointee)
    }
    public func _get_priority() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return Float64(godot: __resPtr.pointee)
    }
    public func _get_import_order() -> Int64 {
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
    public func _get_option_visibility(path: godot.String, option_name: StringName, options: Dictionary) -> UInt8 {
        let options_native = options._native_ptr()
        let option_name_native = option_name._native_ptr()
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(option_name_native), .init(options_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return UInt8(godot: __resPtr.pointee)
    }
    public func _import(source_file: godot.String, save_path: godot.String, options: Dictionary, platform_variants: [godot.String], gen_files: [godot.String]) -> Error {
        let gen_files_native = gen_files._native_ptr()
        let platform_variants_native = platform_variants._native_ptr()
        let options_native = options._native_ptr()
        let save_path_native = save_path._native_ptr()
        let source_file_native = source_file._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(source_file_native), .init(save_path_native), .init(options_native), .init(platform_variants_native), .init(gen_files_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return Error(godot: __resPtr.pointee)
    }
}