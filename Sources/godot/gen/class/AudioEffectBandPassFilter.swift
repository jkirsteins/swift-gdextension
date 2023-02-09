import godot_native

fileprivate var __godot_name_AudioEffectBandPassFilter: StringName! = nil

/// Adds a band pass filter to the audio bus.
/// 
/// Attenuates the frequencies inside of a range around the [member AudioEffectFilter.cutoff_hz] and cuts frequencies outside of this band.
open class AudioEffectBandPassFilter : AudioEffectFilter {

    

    public override class var __godot_name: StringName { __godot_name_AudioEffectBandPassFilter }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AudioEffectBandPassFilter == nil)
        __godot_name_AudioEffectBandPassFilter = StringName(from: "AudioEffectBandPassFilter")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}