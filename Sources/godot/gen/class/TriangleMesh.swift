import godot_native

fileprivate var __godot_name_TriangleMesh: StringName! = nil

/// Internal mesh type.
/// 
/// Mesh type used internally for collision calculations.
open class TriangleMesh : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_TriangleMesh }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_TriangleMesh = StringName(from: "TriangleMesh")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}