import godot_native

fileprivate var __godot_name_Separator: StringName! = nil

/// Base class for separators.
/// 
/// Separator is a [Control] used for separating other controls. It's purely a visual decoration. Horizontal ([HSeparator]) and Vertical ([VSeparator]) versions are available.
public class Separator : Control {

    

    public override class var __godot_name: StringName { __godot_name_Separator }

    
    
    public override class func initialize_class() {
        __godot_name_Separator = StringName(from: "Separator")

        
    }

    
}