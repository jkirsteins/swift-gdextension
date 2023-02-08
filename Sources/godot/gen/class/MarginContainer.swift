import godot_native

fileprivate var __godot_name_MarginContainer: StringName! = nil

/// Simple margin container.
/// 
/// Adds a top, left, bottom, and right margin to all [Control] nodes that are direct children of the container. To control the [MarginContainer]'s margin, use the [code]margin_*[/code] theme properties listed below.
///  
/// [b]Note:[/b] Be careful, [Control] margin values are different from the constant margin values. If you want to change the custom margin values of the [MarginContainer] by code, you should use the following examples:
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// # This code sample assumes the current script is extending MarginContainer.
///  
/// var margin_value = 100
///  
/// add_theme_constant_override("margin_top", margin_value)
///  
/// add_theme_constant_override("margin_left", margin_value)
///  
/// add_theme_constant_override("margin_bottom", margin_value)
///  
/// add_theme_constant_override("margin_right", margin_value)
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// // This code sample assumes the current script is extending MarginContainer.
///  
/// int marginValue = 100;
///  
/// AddThemeConstantOverride("margin_top", marginValue);
///  
/// AddThemeConstantOverride("margin_left", marginValue);
///  
/// AddThemeConstantOverride("margin_bottom", marginValue);
///  
/// AddThemeConstantOverride("margin_right", marginValue);
///  
/// [/csharp]
///  
/// [/codeblocks]
open class MarginContainer : Container {

    

    public override class var __godot_name: StringName { __godot_name_MarginContainer }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_MarginContainer = StringName(from: "MarginContainer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}