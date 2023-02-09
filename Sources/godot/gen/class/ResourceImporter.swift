import godot_native

fileprivate var __godot_name_ResourceImporter: StringName! = nil

/// Base class for the implementation of core resource importers.
/// 
/// This is the base class for the resource importers implemented in core. To implement your own resource importers using editor plugins, see [EditorImportPlugin].
open class ResourceImporter : RefCounted {

    public enum ImportOrder : Int32 {
        case IMPORT_ORDER_DEFAULT = 0
        case IMPORT_ORDER_SCENE = 100
    }

    public override class var __godot_name: StringName { __godot_name_ResourceImporter }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_ResourceImporter == nil)
        __godot_name_ResourceImporter = StringName(from: "ResourceImporter")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}