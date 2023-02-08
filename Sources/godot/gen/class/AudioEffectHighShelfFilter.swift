import godot_native

fileprivate var __godot_name_AudioEffectHighShelfFilter: StringName! = nil

/// Adds a high-shelf filter to the audio bus.
/// 
/// Reduces all frequencies above the [member AudioEffectFilter.cutoff_hz].
open class AudioEffectHighShelfFilter : AudioEffectFilter {

    

    public override class var __godot_name: StringName { __godot_name_AudioEffectHighShelfFilter }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_AudioEffectHighShelfFilter = StringName(from: "AudioEffectHighShelfFilter")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}