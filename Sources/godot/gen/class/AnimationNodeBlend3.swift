import godot_native

fileprivate var __godot_name_AnimationNodeBlend3: StringName! = nil

/// Blends two of three animations linearly inside of an [AnimationNodeBlendTree].
/// 
/// A resource to add to an [AnimationNodeBlendTree]. Blends two animations together linearly out of three based on a value in the [code][-1.0, 1.0][/code] range.
///  
/// This node has three inputs:
///  
/// - The base animation
///  
/// - A -blend animation to blend with when the blend amount is in the [code][-1.0, 0.0][/code] range.
///  
/// - A +blend animation to blend with when the blend amount is in the [code][0.0, 1.0][/code] range
public class AnimationNodeBlend3 : AnimationNodeSync {

    

    public override class var __godot_name: StringName { __godot_name_AnimationNodeBlend3 }

    
    
    public override class func initialize_class() {
        __godot_name_AnimationNodeBlend3 = StringName(from: "AnimationNodeBlend3")

        
    }

    
}