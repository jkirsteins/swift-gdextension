import godot_native

fileprivate var __godot_name_CSGCombiner3D: StringName! = nil

/// MISSING
/// 
/// MISSING
open class CSGCombiner3D : CSGShape3D {

    

    public override class var __godot_name: StringName { __godot_name_CSGCombiner3D }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_CSGCombiner3D = StringName(from: "CSGCombiner3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}