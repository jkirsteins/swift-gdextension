import godot_native

fileprivate var __godot_name_AudioStreamPlaybackOggVorbis: StringName! = nil

/// MISSING
/// 
/// MISSING
open class AudioStreamPlaybackOggVorbis : AudioStreamPlaybackResampled {

    

    public override class var __godot_name: StringName { __godot_name_AudioStreamPlaybackOggVorbis }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AudioStreamPlaybackOggVorbis == nil)
        __godot_name_AudioStreamPlaybackOggVorbis = StringName(from: "AudioStreamPlaybackOggVorbis")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}