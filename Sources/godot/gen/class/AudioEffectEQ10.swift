import godot_native

fileprivate var __godot_name_AudioEffectEQ10: StringName! = nil

/// Adds a 10-band equalizer audio effect to an Audio bus. Gives you control over frequencies from 31 Hz to 16000 Hz.
///  
/// Each frequency can be modulated between -60/+24 dB.
/// 
/// Frequency bands:
///  
/// Band 1: 31 Hz
///  
/// Band 2: 62 Hz
///  
/// Band 3: 125 Hz
///  
/// Band 4: 250 Hz
///  
/// Band 5: 500 Hz
///  
/// Band 6: 1000 Hz
///  
/// Band 7: 2000 Hz
///  
/// Band 8: 4000 Hz
///  
/// Band 9: 8000 Hz
///  
/// Band 10: 16000 Hz
///  
/// See also [AudioEffectEQ], [AudioEffectEQ6], [AudioEffectEQ21].
public class AudioEffectEQ10 : AudioEffectEQ {

    

    public override class var __godot_name: StringName { __godot_name_AudioEffectEQ10 }

    
    
    public override class func initialize_class() {
        __godot_name_AudioEffectEQ10 = StringName(from: "AudioEffectEQ10")

        
    }

    
}