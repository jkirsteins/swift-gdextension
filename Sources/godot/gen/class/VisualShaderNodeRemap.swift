import godot_native

fileprivate var __godot_name_VisualShaderNodeRemap: StringName! = nil

/// A visual shader node for remap function.
/// 
/// Remap will transform the input range into output range, e.g. you can change a [code]0..1[/code] value to [code]-2..2[/code] etc. See [method @GlobalScope.remap] for more details.
open class VisualShaderNodeRemap : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeRemap }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VisualShaderNodeRemap = StringName(from: "VisualShaderNodeRemap")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}