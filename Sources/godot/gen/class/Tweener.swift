import godot_native

fileprivate var __godot_name_Tweener: StringName! = nil

/// Abstract class for all Tweeners used by [Tween].
/// 
/// Tweeners are objects that perform a specific animating task, e.g. interpolating a property or calling a method at a given time. A [Tweener] can't be created manually, you need to use a dedicated method from [Tween].
public class Tweener : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_Tweener }

    
    
    public override class func initialize_class() {
        __godot_name_Tweener = StringName(from: "Tweener")

        
    }

    
}