import godot_native

fileprivate var __godot_name_VisualShaderNodeConstant: StringName! = nil

/// A base type for the constants within the visual shader graph.
/// 
/// This is an abstract class. See the derived types for descriptions of the possible values.
open class VisualShaderNodeConstant : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeConstant }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeConstant == nil)
        __godot_name_VisualShaderNodeConstant = StringName(from: "VisualShaderNodeConstant")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}