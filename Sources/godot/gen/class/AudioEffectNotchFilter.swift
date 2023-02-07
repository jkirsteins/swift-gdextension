import godot_native

fileprivate var __godot_name_AudioEffectNotchFilter: StringName! = nil

/// Adds a notch filter to the Audio bus.
/// 
/// Attenuates frequencies in a narrow band around the [member AudioEffectFilter.cutoff_hz] and cuts frequencies outside of this range.
public class AudioEffectNotchFilter : AudioEffectFilter {

    

    public override class var __godot_name: StringName { __godot_name_AudioEffectNotchFilter }

    
    
    public override class func initialize_class() {
        __godot_name_AudioEffectNotchFilter = StringName(from: "AudioEffectNotchFilter")

        
    }

    
}