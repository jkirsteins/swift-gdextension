import godot_native

fileprivate var __godot_name_AudioStreamMicrophone: StringName! = nil

/// Plays real-time audio input data.
/// 
/// When used directly in an [AudioStreamPlayer] node, [AudioStreamMicrophone] plays back microphone input in real-time. This can be used in conjunction with [AudioEffectCapture] to process the data or save it.
///  
/// [b]Note:[/b] [member ProjectSettings.audio/driver/enable_input] must be [code]true[/code] for audio input to work. See also that setting's description for caveats related to permissions and operating system privacy settings.
public class AudioStreamMicrophone : AudioStream {

    

    public override class var __godot_name: StringName { __godot_name_AudioStreamMicrophone }

    
    
    public override class func initialize_class() {
        __godot_name_AudioStreamMicrophone = StringName(from: "AudioStreamMicrophone")

        
    }

    
}