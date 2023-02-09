import godot_native

fileprivate var __godot_name_StyleBoxEmpty: StringName! = nil

/// Empty stylebox (does not display anything).
/// 
/// Empty stylebox (really does not display anything).
open class StyleBoxEmpty : StyleBox {

    

    public override class var __godot_name: StringName { __godot_name_StyleBoxEmpty }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_StyleBoxEmpty == nil)
        __godot_name_StyleBoxEmpty = StringName(from: "StyleBoxEmpty")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}