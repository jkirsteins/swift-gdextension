import godot_native

fileprivate var __godot_name_AudioEffectBandLimitFilter: StringName! = nil

/// Adds a band limit filter to the audio bus.
/// 
/// Limits the frequencies in a range around the [member AudioEffectFilter.cutoff_hz] and allows frequencies outside of this range to pass.
open class AudioEffectBandLimitFilter : AudioEffectFilter {

    

    public override class var __godot_name: StringName { __godot_name_AudioEffectBandLimitFilter }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AudioEffectBandLimitFilter == nil)
        __godot_name_AudioEffectBandLimitFilter = StringName(from: "AudioEffectBandLimitFilter")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}