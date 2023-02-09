import godot_native

fileprivate var __godot_name_Separator: StringName! = nil

/// Base class for separators.
/// 
/// Separator is a [Control] used for separating other controls. It's purely a visual decoration. Horizontal ([HSeparator]) and Vertical ([VSeparator]) versions are available.
open class Separator : Control {

    

    public override class var __godot_name: StringName { __godot_name_Separator }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_Separator == nil)
        __godot_name_Separator = StringName(from: "Separator")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}