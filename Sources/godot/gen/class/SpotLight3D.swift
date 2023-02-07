import godot_native

fileprivate var __godot_name_SpotLight3D: StringName! = nil

/// A spotlight, such as a reflector spotlight or a lantern.
/// 
/// A Spotlight is a type of [Light3D] node that emits lights in a specific direction, in the shape of a cone. The light is attenuated through the distance. This attenuation can be configured by changing the energy, radius and attenuation parameters of [Light3D].
public class SpotLight3D : Light3D {

    

    public override class var __godot_name: StringName { __godot_name_SpotLight3D }

    
    
    public override class func initialize_class() {
        __godot_name_SpotLight3D = StringName(from: "SpotLight3D")

        
    }

    
}