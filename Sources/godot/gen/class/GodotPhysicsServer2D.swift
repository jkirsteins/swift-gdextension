import godot_native

fileprivate var __godot_name_GodotPhysicsServer2D: StringName! = nil

/// MISSING
/// 
/// MISSING
open class GodotPhysicsServer2D : PhysicsServer2D {

    

    public override class var __godot_name: StringName { __godot_name_GodotPhysicsServer2D }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_GodotPhysicsServer2D = StringName(from: "GodotPhysicsServer2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}