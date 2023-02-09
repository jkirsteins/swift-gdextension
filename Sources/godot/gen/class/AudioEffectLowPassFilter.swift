import godot_native

fileprivate var __godot_name_AudioEffectLowPassFilter: StringName! = nil

/// Adds a low-pass filter to the audio bus.
/// 
/// Cuts frequencies higher than the [member AudioEffectFilter.cutoff_hz] and allows lower frequencies to pass.
open class AudioEffectLowPassFilter : AudioEffectFilter {

    

    public override class var __godot_name: StringName { __godot_name_AudioEffectLowPassFilter }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AudioEffectLowPassFilter == nil)
        __godot_name_AudioEffectLowPassFilter = StringName(from: "AudioEffectLowPassFilter")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}