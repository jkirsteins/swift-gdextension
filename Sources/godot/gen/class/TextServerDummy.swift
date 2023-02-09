import godot_native

fileprivate var __godot_name_TextServerDummy: StringName! = nil

/// 
/// 
/// 
open class TextServerDummy : TextServerExtension {

    

    public override class var __godot_name: StringName { __godot_name_TextServerDummy }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_TextServerDummy == nil)
        __godot_name_TextServerDummy = StringName(from: "TextServerDummy")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}