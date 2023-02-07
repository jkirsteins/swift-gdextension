import godot_native

fileprivate var __godot_name_AudioEffectLowPassFilter: StringName! = nil

/// Adds a low-pass filter to the audio bus.
/// 
/// Cuts frequencies higher than the [member AudioEffectFilter.cutoff_hz] and allows lower frequencies to pass.
public class AudioEffectLowPassFilter : AudioEffectFilter {

    

    public override class var __godot_name: StringName { __godot_name_AudioEffectLowPassFilter }

    
    
    public override class func initialize_class() {
        __godot_name_AudioEffectLowPassFilter = StringName(from: "AudioEffectLowPassFilter")

        
    }

    
}