import godot_native

fileprivate var __godot_name_StandardMaterial3D: StringName! = nil

/// Physically based rendering (PBR) material that can be applied to 3D objects.
/// 
/// [StandardMaterial3D]'s properties are inherited from [BaseMaterial3D]. [StandardMaterial3D] uses separate textures for ambient occlusion, roughness and metallic maps. To use a single ORM map for all 3 textures, use an [ORMMaterial3D] instead.
public class StandardMaterial3D : BaseMaterial3D {

    

    public override class var __godot_name: StringName { __godot_name_StandardMaterial3D }

    
    
    public override class func initialize_class() {
        __godot_name_StandardMaterial3D = StringName(from: "StandardMaterial3D")

        
    }

    
}