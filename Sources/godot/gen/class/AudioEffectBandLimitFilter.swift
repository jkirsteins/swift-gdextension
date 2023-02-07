import godot_native

fileprivate var __godot_name_AudioEffectBandLimitFilter: StringName! = nil

/// Adds a band limit filter to the audio bus.
/// 
/// Limits the frequencies in a range around the [member AudioEffectFilter.cutoff_hz] and allows frequencies outside of this range to pass.
public class AudioEffectBandLimitFilter : AudioEffectFilter {

    

    public override class var __godot_name: StringName { __godot_name_AudioEffectBandLimitFilter }

    
    
    public override class func initialize_class() {
        __godot_name_AudioEffectBandLimitFilter = StringName(from: "AudioEffectBandLimitFilter")

        
    }

    
}