import godot_native

fileprivate var __godot_name_VisualShaderNodeLinearSceneDepth: StringName! = nil

/// A visual shader node that returns the depth value of the DEPTH_TEXTURE node in a linear space.
/// 
/// This node can be used in fragment shaders.
open class VisualShaderNodeLinearSceneDepth : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeLinearSceneDepth }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VisualShaderNodeLinearSceneDepth = StringName(from: "VisualShaderNodeLinearSceneDepth")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}