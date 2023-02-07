import godot_native

fileprivate var __godot_name_CheckBox: StringName! = nil

/// Binary choice user interface widget. See also [CheckButton].
/// 
/// A checkbox allows the user to make a binary choice (choosing only one of two possible options). It's similar to [CheckButton] in functionality, but it has a different appearance. To follow established UX patterns, it's recommended to use CheckBox when toggling it has [b]no[/b] immediate effect on something. For example, it could be used when toggling it will only do something once a confirmation button is pressed.
///  
/// See also [BaseButton] which contains common properties and methods associated with this node.
public class CheckBox : Button {

    

    public override class var __godot_name: StringName { __godot_name_CheckBox }

    
    
    public override class func initialize_class() {
        __godot_name_CheckBox = StringName(from: "CheckBox")

        
    }

    
}