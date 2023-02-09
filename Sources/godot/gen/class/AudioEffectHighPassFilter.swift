import godot_native

fileprivate var __godot_name_AudioEffectHighPassFilter: StringName! = nil

/// Adds a high-pass filter to the audio bus.
/// 
/// Cuts frequencies lower than the [member AudioEffectFilter.cutoff_hz] and allows higher frequencies to pass.
open class AudioEffectHighPassFilter : AudioEffectFilter {

    

    public override class var __godot_name: StringName { __godot_name_AudioEffectHighPassFilter }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AudioEffectHighPassFilter == nil)
        __godot_name_AudioEffectHighPassFilter = StringName(from: "AudioEffectHighPassFilter")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}