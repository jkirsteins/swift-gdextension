import godot_native

fileprivate var __godot_name_ScriptLanguage: StringName! = nil

/// 
/// 
/// 
open class ScriptLanguage : Object {

    

    public override class var __godot_name: StringName { __godot_name_ScriptLanguage }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_ScriptLanguage == nil)
        __godot_name_ScriptLanguage = StringName(from: "ScriptLanguage")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}