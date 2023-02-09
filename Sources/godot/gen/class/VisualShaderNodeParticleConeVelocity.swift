import godot_native

fileprivate var __godot_name_VisualShaderNodeParticleConeVelocity: StringName! = nil

/// A visual shader node that makes particles move in a cone shape.
/// 
/// This node can be used in "start" step of particle shader. It defines the initial velocity of the particles, making them move in cone shape starting from the center, with a given spread.
open class VisualShaderNodeParticleConeVelocity : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeParticleConeVelocity }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeParticleConeVelocity == nil)
        __godot_name_VisualShaderNodeParticleConeVelocity = StringName(from: "VisualShaderNodeParticleConeVelocity")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}