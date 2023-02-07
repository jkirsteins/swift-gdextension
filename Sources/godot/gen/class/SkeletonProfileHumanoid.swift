import godot_native

fileprivate var __godot_name_SkeletonProfileHumanoid: StringName! = nil

/// A humanoid [SkeletonProfile] preset.
/// 
/// A [SkeletonProfile] as a preset that is optimized for the human form. This exists for standardization, so all parameters are read-only.
public class SkeletonProfileHumanoid : SkeletonProfile {

    

    public override class var __godot_name: StringName { __godot_name_SkeletonProfileHumanoid }

    
    
    public override class func initialize_class() {
        __godot_name_SkeletonProfileHumanoid = StringName(from: "SkeletonProfileHumanoid")

        
    }

    
}