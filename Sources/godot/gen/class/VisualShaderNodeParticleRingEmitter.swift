import godot_native

fileprivate var __godot_name_VisualShaderNodeParticleRingEmitter: StringName! = nil

/// A visual shader node that makes particles emitted in a ring shape.
/// 
/// [VisualShaderNodeParticleEmitter] that makes the particles emitted in ring shape with the specified inner and outer radii and height.
open class VisualShaderNodeParticleRingEmitter : VisualShaderNodeParticleEmitter {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeParticleRingEmitter }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeParticleRingEmitter == nil)
        __godot_name_VisualShaderNodeParticleRingEmitter = StringName(from: "VisualShaderNodeParticleRingEmitter")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}