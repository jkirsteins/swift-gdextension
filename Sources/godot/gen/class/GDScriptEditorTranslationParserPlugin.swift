import godot_native

fileprivate var __godot_name_GDScriptEditorTranslationParserPlugin: StringName! = nil

/// MISSING
/// 
/// MISSING
open class GDScriptEditorTranslationParserPlugin : EditorTranslationParserPlugin {

    

    public override class var __godot_name: StringName { __godot_name_GDScriptEditorTranslationParserPlugin }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_GDScriptEditorTranslationParserPlugin == nil)
        __godot_name_GDScriptEditorTranslationParserPlugin = StringName(from: "GDScriptEditorTranslationParserPlugin")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}