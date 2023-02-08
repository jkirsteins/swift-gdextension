import godot_native

fileprivate var __godot_name_VisualShaderNodeParticleBoxEmitter: StringName! = nil

/// A visual shader node that makes particles emitted in a box shape.
/// 
/// [VisualShaderNodeParticleEmitter] that makes the particles emitted in box shape with the specified extents.
open class VisualShaderNodeParticleBoxEmitter : VisualShaderNodeParticleEmitter {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeParticleBoxEmitter }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VisualShaderNodeParticleBoxEmitter = StringName(from: "VisualShaderNodeParticleBoxEmitter")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}