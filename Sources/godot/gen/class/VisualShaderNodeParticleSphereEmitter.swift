import godot_native

fileprivate var __godot_name_VisualShaderNodeParticleSphereEmitter: StringName! = nil

/// A visual shader node that makes particles emitted in a sphere shape.
/// 
/// [VisualShaderNodeParticleEmitter] that makes the particles emitted in sphere shape with the specified inner and outer radii.
open class VisualShaderNodeParticleSphereEmitter : VisualShaderNodeParticleEmitter {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeParticleSphereEmitter }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VisualShaderNodeParticleSphereEmitter = StringName(from: "VisualShaderNodeParticleSphereEmitter")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}