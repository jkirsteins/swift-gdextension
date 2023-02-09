import godot_native

fileprivate var __godot_name_GLTFDocumentExtensionConvertImporterMesh: StringName! = nil

/// MISSING
/// 
/// MISSING
open class GLTFDocumentExtensionConvertImporterMesh : GLTFDocumentExtension {

    

    public override class var __godot_name: StringName { __godot_name_GLTFDocumentExtensionConvertImporterMesh }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_GLTFDocumentExtensionConvertImporterMesh == nil)
        __godot_name_GLTFDocumentExtensionConvertImporterMesh = StringName(from: "GLTFDocumentExtensionConvertImporterMesh")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}