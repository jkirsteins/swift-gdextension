import godot_native

fileprivate var __godot_name_EditorExportPlatform: StringName! = nil

/// Identifies a supported export platform, and internally provides the functionality of exporting to that platform.
/// 
/// Base resource that provides the functionality of exporting a release build of a project to a platform, from the editor. Stores platform-specific metadata such as the name and supported features of the platform, and performs the exporting of projects, PCK files, and ZIP files. Uses an export template for the platform provided at the time of project exporting.
///  
/// Used in scripting by [EditorExportPlugin] to configure platform-specific customization of scenes and resources. See [method EditorExportPlugin._begin_customize_scenes] and [method EditorExportPlugin._begin_customize_resources] for more details.
open class EditorExportPlatform : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_EditorExportPlatform }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        __godot_name_EditorExportPlatform = StringName(from: "EditorExportPlatform")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}