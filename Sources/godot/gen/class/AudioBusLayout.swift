import godot_native

fileprivate var __godot_name_AudioBusLayout: StringName! = nil

/// Stores information about the audio buses.
/// 
/// Stores position, muting, solo, bypass, effects, effect position, volume, and the connections between buses. See [AudioServer] for usage.
public class AudioBusLayout : Resource {

    

    public override class var __godot_name: StringName { __godot_name_AudioBusLayout }

    
    
    public override class func initialize_class() {
        __godot_name_AudioBusLayout = StringName(from: "AudioBusLayout")

        
    }

    
}