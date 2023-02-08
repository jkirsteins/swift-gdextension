import godot_native

fileprivate var __godot_name_VisualShaderNodeDistanceFade: StringName! = nil

/// A visual shader node representing distance fade effect.
/// 
/// The distance fade effect fades out each pixel based on its distance to another object.
open class VisualShaderNodeDistanceFade : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeDistanceFade }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VisualShaderNodeDistanceFade = StringName(from: "VisualShaderNodeDistanceFade")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}