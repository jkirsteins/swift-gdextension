import godot_native

fileprivate var __godot_name_AnimationNodeOutput: StringName! = nil

/// Generic output node to be added to [AnimationNodeBlendTree].
/// 
/// 
open class AnimationNodeOutput : AnimationNode {

    

    public override class var __godot_name: StringName { __godot_name_AnimationNodeOutput }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AnimationNodeOutput == nil)
        __godot_name_AnimationNodeOutput = StringName(from: "AnimationNodeOutput")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}