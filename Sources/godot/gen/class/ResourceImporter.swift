import godot_native

fileprivate var __godot_name_ResourceImporter: StringName! = nil

/// Base class for the implementation of core resource importers.
/// 
/// This is the base class for the resource importers implemented in core. To implement your own resource importers using editor plugins, see [EditorImportPlugin].
public class ResourceImporter : RefCounted {

    public enum ImportOrder : Int32 {
        case IMPORT_ORDER_DEFAULT = 0
        case IMPORT_ORDER_SCENE = 100
    }

    public override class var __godot_name: StringName { __godot_name_ResourceImporter }

    
    
    public override class func initialize_class() {
        __godot_name_ResourceImporter = StringName(from: "ResourceImporter")

        
    }

    
}