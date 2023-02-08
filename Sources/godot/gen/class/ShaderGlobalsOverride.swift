import godot_native

fileprivate var __godot_name_ShaderGlobalsOverride: StringName! = nil

/// 
/// 
/// 
open class ShaderGlobalsOverride : Node {

    

    public override class var __godot_name: StringName { __godot_name_ShaderGlobalsOverride }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_ShaderGlobalsOverride = StringName(from: "ShaderGlobalsOverride")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}