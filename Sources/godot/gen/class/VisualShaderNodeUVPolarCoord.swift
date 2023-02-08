import godot_native

fileprivate var __godot_name_VisualShaderNodeUVPolarCoord: StringName! = nil

/// A visual shader node that modifies the texture UV using polar coordinates.
/// 
/// UV polar coord node will transform UV values into polar coordinates, with specified scale, zoom strength and repeat parameters. It can be used to create various swirl distortions.
open class VisualShaderNodeUVPolarCoord : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeUVPolarCoord }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VisualShaderNodeUVPolarCoord = StringName(from: "VisualShaderNodeUVPolarCoord")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}