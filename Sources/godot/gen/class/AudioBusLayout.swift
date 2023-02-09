import godot_native

fileprivate var __godot_name_AudioBusLayout: StringName! = nil

/// Stores information about the audio buses.
/// 
/// Stores position, muting, solo, bypass, effects, effect position, volume, and the connections between buses. See [AudioServer] for usage.
open class AudioBusLayout : Resource {

    

    public override class var __godot_name: StringName { __godot_name_AudioBusLayout }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AudioBusLayout == nil)
        __godot_name_AudioBusLayout = StringName(from: "AudioBusLayout")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}