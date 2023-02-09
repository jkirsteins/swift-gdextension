import godot_native

fileprivate var __godot_name_HSeparator: StringName! = nil

/// Horizontal separator.
/// 
/// Horizontal separator. See [Separator]. Even though it looks horizontal, it is used to separate objects vertically.
open class HSeparator : Separator {

    

    public override class var __godot_name: StringName { __godot_name_HSeparator }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_HSeparator == nil)
        __godot_name_HSeparator = StringName(from: "HSeparator")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}