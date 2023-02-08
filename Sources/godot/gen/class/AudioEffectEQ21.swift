import godot_native

fileprivate var __godot_name_AudioEffectEQ21: StringName! = nil

/// Adds a 21-band equalizer audio effect to an Audio bus. Gives you control over frequencies from 22 Hz to 22000 Hz.
///  
/// Each frequency can be modulated between -60/+24 dB.
/// 
/// Frequency bands:
///  
/// Band 1: 22 Hz
///  
/// Band 2: 32 Hz
///  
/// Band 3: 44 Hz
///  
/// Band 4: 63 Hz
///  
/// Band 5: 90 Hz
///  
/// Band 6: 125 Hz
///  
/// Band 7: 175 Hz
///  
/// Band 8: 250 Hz
///  
/// Band 9: 350 Hz
///  
/// Band 10: 500 Hz
///  
/// Band 11: 700 Hz
///  
/// Band 12: 1000 Hz
///  
/// Band 13: 1400 Hz
///  
/// Band 14: 2000 Hz
///  
/// Band 15: 2800 Hz
///  
/// Band 16: 4000 Hz
///  
/// Band 17: 5600 Hz
///  
/// Band 18: 8000 Hz
///  
/// Band 19: 11000 Hz
///  
/// Band 20: 16000 Hz
///  
/// Band 21: 22000 Hz
///  
/// See also [AudioEffectEQ], [AudioEffectEQ6], [AudioEffectEQ10].
open class AudioEffectEQ21 : AudioEffectEQ {

    

    public override class var __godot_name: StringName { __godot_name_AudioEffectEQ21 }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_AudioEffectEQ21 = StringName(from: "AudioEffectEQ21")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}