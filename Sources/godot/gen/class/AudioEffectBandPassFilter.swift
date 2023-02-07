import godot_native

fileprivate var __godot_name_AudioEffectBandPassFilter: StringName! = nil

/// Adds a band pass filter to the audio bus.
/// 
/// Attenuates the frequencies inside of a range around the [member AudioEffectFilter.cutoff_hz] and cuts frequencies outside of this band.
public class AudioEffectBandPassFilter : AudioEffectFilter {

    

    public override class var __godot_name: StringName { __godot_name_AudioEffectBandPassFilter }

    
    
    public override class func initialize_class() {
        __godot_name_AudioEffectBandPassFilter = StringName(from: "AudioEffectBandPassFilter")

        
    }

    
}