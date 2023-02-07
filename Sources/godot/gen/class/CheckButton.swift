import godot_native

fileprivate var __godot_name_CheckButton: StringName! = nil

/// Checkable button. See also [CheckBox].
/// 
/// CheckButton is a toggle button displayed as a check field. It's similar to [CheckBox] in functionality, but it has a different appearance. To follow established UX patterns, it's recommended to use CheckButton when toggling it has an [b]immediate[/b] effect on something. For example, it could be used if toggling it enables/disables a setting without requiring the user to press a confirmation button.
///  
/// See also [BaseButton] which contains common properties and methods associated with this node.
public class CheckButton : Button {

    

    public override class var __godot_name: StringName { __godot_name_CheckButton }

    
    
    public override class func initialize_class() {
        __godot_name_CheckButton = StringName(from: "CheckButton")

        
    }

    
}