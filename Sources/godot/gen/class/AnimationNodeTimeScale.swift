import godot_native

fileprivate var __godot_name_AnimationNodeTimeScale: StringName! = nil

/// A time-scaling animation node to be used with [AnimationTree].
/// 
/// Allows scaling the speed of the animation (or reversing it) in any children nodes. Setting it to 0 will pause the animation.
public class AnimationNodeTimeScale : AnimationNode {

    

    public override class var __godot_name: StringName { __godot_name_AnimationNodeTimeScale }

    
    
    public override class func initialize_class() {
        __godot_name_AnimationNodeTimeScale = StringName(from: "AnimationNodeTimeScale")

        
    }

    
}