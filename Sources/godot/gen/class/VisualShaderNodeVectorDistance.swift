import godot_native

fileprivate var __godot_name_VisualShaderNodeVectorDistance: StringName! = nil

/// Returns the distance between two points. To be used within the visual shader graph.
/// 
/// Calculates distance from point represented by vector [code]p0[/code] to vector [code]p1[/code].
///  
/// Translated to [code]distance(p0, p1)[/code] in the shader language.
open class VisualShaderNodeVectorDistance : VisualShaderNodeVectorBase {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeVectorDistance }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VisualShaderNodeVectorDistance = StringName(from: "VisualShaderNodeVectorDistance")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}