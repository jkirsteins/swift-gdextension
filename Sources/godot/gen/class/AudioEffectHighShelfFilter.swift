import godot_native

fileprivate var __godot_name_AudioEffectHighShelfFilter: StringName! = nil

/// Adds a high-shelf filter to the audio bus.
/// 
/// Reduces all frequencies above the [member AudioEffectFilter.cutoff_hz].
public class AudioEffectHighShelfFilter : AudioEffectFilter {

    

    public override class var __godot_name: StringName { __godot_name_AudioEffectHighShelfFilter }

    
    
    public override class func initialize_class() {
        __godot_name_AudioEffectHighShelfFilter = StringName(from: "AudioEffectHighShelfFilter")

        
    }

    
}