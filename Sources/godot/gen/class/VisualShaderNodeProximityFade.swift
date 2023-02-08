import godot_native

fileprivate var __godot_name_VisualShaderNodeProximityFade: StringName! = nil

/// A visual shader node representing proximity fade effect.
/// 
/// The proximity fade effect fades out each pixel based on its distance to another object.
open class VisualShaderNodeProximityFade : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeProximityFade }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VisualShaderNodeProximityFade = StringName(from: "VisualShaderNodeProximityFade")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}