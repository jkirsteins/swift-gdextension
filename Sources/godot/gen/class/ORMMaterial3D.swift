import godot_native

fileprivate var __godot_name_ORMMaterial3D: StringName! = nil

/// Physically based rendering (PBR) material that can be applied to 3D objects, can use an ORM texture.
/// 
/// ORMMaterial3D's properties are inherited from [BaseMaterial3D]. Unlike [StandardMaterial3D], ORMMaterial3D uses a single texture for ambient occlusion, roughness and metallic maps, known as an ORM texture.
open class ORMMaterial3D : BaseMaterial3D {

    

    public override class var __godot_name: StringName { __godot_name_ORMMaterial3D }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_ORMMaterial3D = StringName(from: "ORMMaterial3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}