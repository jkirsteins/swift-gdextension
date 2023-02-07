import godot_native

fileprivate var __godot_name_AudioEffectLowShelfFilter: StringName! = nil

/// Adds a low-shelf filter to the audio bus.
/// 
/// Reduces all frequencies below the [member AudioEffectFilter.cutoff_hz].
public class AudioEffectLowShelfFilter : AudioEffectFilter {

    

    public override class var __godot_name: StringName { __godot_name_AudioEffectLowShelfFilter }

    
    
    public override class func initialize_class() {
        __godot_name_AudioEffectLowShelfFilter = StringName(from: "AudioEffectLowShelfFilter")

        
    }

    
}