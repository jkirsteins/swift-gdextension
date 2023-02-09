import godot_native

fileprivate var __godot_name_IntervalTweener: StringName! = nil

/// Creates an idle interval in a [Tween] animation.
/// 
/// [IntervalTweener] is used to make delays in a tweening sequence. See [method Tween.tween_interval] for more usage information.
///  
/// [b]Note:[/b] [method Tween.tween_interval] is the only correct way to create [IntervalTweener]. Any [IntervalTweener] created manually will not function correctly.
open class IntervalTweener : Tweener {

    

    public override class var __godot_name: StringName { __godot_name_IntervalTweener }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_IntervalTweener == nil)
        __godot_name_IntervalTweener = StringName(from: "IntervalTweener")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}