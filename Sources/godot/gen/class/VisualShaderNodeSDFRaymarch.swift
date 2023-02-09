import godot_native

fileprivate var __godot_name_VisualShaderNodeSDFRaymarch: StringName! = nil

/// SDF raymarching algorithm to be used within the visual shader graph.
/// 
/// Casts a ray against the screen SDF (signed-distance field) and returns the distance travelled.
open class VisualShaderNodeSDFRaymarch : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeSDFRaymarch }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeSDFRaymarch == nil)
        __godot_name_VisualShaderNodeSDFRaymarch = StringName(from: "VisualShaderNodeSDFRaymarch")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}