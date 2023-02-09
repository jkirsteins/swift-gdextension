import godot_native

fileprivate var __godot_name_AudioEffectLowShelfFilter: StringName! = nil

/// Adds a low-shelf filter to the audio bus.
/// 
/// Reduces all frequencies below the [member AudioEffectFilter.cutoff_hz].
open class AudioEffectLowShelfFilter : AudioEffectFilter {

    

    public override class var __godot_name: StringName { __godot_name_AudioEffectLowShelfFilter }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AudioEffectLowShelfFilter == nil)
        __godot_name_AudioEffectLowShelfFilter = StringName(from: "AudioEffectLowShelfFilter")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}