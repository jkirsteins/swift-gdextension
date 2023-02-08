import godot_native

fileprivate var __godot_name_SkeletonProfileHumanoid: StringName! = nil

/// A humanoid [SkeletonProfile] preset.
/// 
/// A [SkeletonProfile] as a preset that is optimized for the human form. This exists for standardization, so all parameters are read-only.
open class SkeletonProfileHumanoid : SkeletonProfile {

    

    public override class var __godot_name: StringName { __godot_name_SkeletonProfileHumanoid }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_SkeletonProfileHumanoid = StringName(from: "SkeletonProfileHumanoid")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}