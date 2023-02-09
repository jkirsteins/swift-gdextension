import godot_native

fileprivate var __godot_name_AnimationNodeTimeSeek: StringName! = nil

/// A time-seeking animation node to be used with [AnimationTree].
/// 
/// This node can be used to cause a seek command to happen to any sub-children of the animation graph. Use this node type to play an [Animation] from the start or a certain playback position inside the [AnimationNodeBlendTree]. After setting the time and changing the animation playback, the seek node automatically goes into sleep mode on the next process frame by setting its [code]seek_position[/code] value to [code]-1.0[/code].
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// # Play child animation from the start.
///  
/// animation_tree.set("parameters/Seek/seek_position", 0.0)
///  
/// # Alternative syntax (same result as above).
///  
/// animation_tree["parameters/Seek/seek_position"] = 0.0
///  
///  
/// # Play child animation from 12 second timestamp.
///  
/// animation_tree.set("parameters/Seek/seek_position", 12.0)
///  
/// # Alternative syntax (same result as above).
///  
/// animation_tree["parameters/Seek/seek_position"] = 12.0
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// // Play child animation from the start.
///  
/// animationTree.Set("parameters/Seek/seek_position", 0.0);
///  
///  
/// // Play child animation from 12 second timestamp.
///  
/// animationTree.Set("parameters/Seek/seek_position", 12.0);
///  
/// [/csharp]
///  
/// [/codeblocks]
open class AnimationNodeTimeSeek : AnimationNode {

    

    public override class var __godot_name: StringName { __godot_name_AnimationNodeTimeSeek }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AnimationNodeTimeSeek == nil)
        __godot_name_AnimationNodeTimeSeek = StringName(from: "AnimationNodeTimeSeek")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}