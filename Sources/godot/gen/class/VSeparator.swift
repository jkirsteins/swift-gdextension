import godot_native

fileprivate var __godot_name_VSeparator: StringName! = nil

/// Vertical version of [Separator].
/// 
/// Vertical version of [Separator]. Even though it looks vertical, it is used to separate objects horizontally.
open class VSeparator : Separator {

    

    public override class var __godot_name: StringName { __godot_name_VSeparator }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VSeparator = StringName(from: "VSeparator")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}