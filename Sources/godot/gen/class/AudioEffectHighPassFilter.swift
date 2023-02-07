import godot_native

fileprivate var __godot_name_AudioEffectHighPassFilter: StringName! = nil

/// Adds a high-pass filter to the audio bus.
/// 
/// Cuts frequencies lower than the [member AudioEffectFilter.cutoff_hz] and allows higher frequencies to pass.
public class AudioEffectHighPassFilter : AudioEffectFilter {

    

    public override class var __godot_name: StringName { __godot_name_AudioEffectHighPassFilter }

    
    
    public override class func initialize_class() {
        __godot_name_AudioEffectHighPassFilter = StringName(from: "AudioEffectHighPassFilter")

        
    }

    
}