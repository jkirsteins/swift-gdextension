import godot_native

fileprivate var __godot_name_VisualShaderNodeParticleOutput: StringName! = nil

/// Visual shader node that defines output values for particle emitting.
/// 
/// This node defines how particles are emitted. It allows to customize e.g. position and velocity. Available ports are different depending on which function this node is inside (start, process, collision) and whether custom data is enabled.
open class VisualShaderNodeParticleOutput : VisualShaderNodeOutput {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeParticleOutput }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeParticleOutput == nil)
        __godot_name_VisualShaderNodeParticleOutput = StringName(from: "VisualShaderNodeParticleOutput")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}