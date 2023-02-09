import godot_native

fileprivate var __godot_name_AudioEffectEQ6: StringName! = nil

/// Adds a 6-band equalizer audio effect to an audio bus. Gives you control over frequencies from 32 Hz to 10000 Hz.
///  
/// Each frequency can be modulated between -60/+24 dB.
/// 
/// Frequency bands:
///  
/// Band 1: 32 Hz
///  
/// Band 2: 100 Hz
///  
/// Band 3: 320 Hz
///  
/// Band 4: 1000 Hz
///  
/// Band 5: 3200 Hz
///  
/// Band 6: 10000 Hz
///  
/// See also [AudioEffectEQ], [AudioEffectEQ10], [AudioEffectEQ21].
open class AudioEffectEQ6 : AudioEffectEQ {

    

    public override class var __godot_name: StringName { __godot_name_AudioEffectEQ6 }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AudioEffectEQ6 == nil)
        __godot_name_AudioEffectEQ6 = StringName(from: "AudioEffectEQ6")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}