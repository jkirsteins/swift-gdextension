import godot_native

fileprivate var __godot_name_IntervalTweener: StringName! = nil

/// Creates an idle interval in a [Tween] animation.
/// 
/// [IntervalTweener] is used to make delays in a tweening sequence. See [method Tween.tween_interval] for more usage information.
///  
/// [b]Note:[/b] [method Tween.tween_interval] is the only correct way to create [IntervalTweener]. Any [IntervalTweener] created manually will not function correctly.
public class IntervalTweener : Tweener {

    

    public override class var __godot_name: StringName { __godot_name_IntervalTweener }

    
    
    public override class func initialize_class() {
        __godot_name_IntervalTweener = StringName(from: "IntervalTweener")

        
    }

    
}