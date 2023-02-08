import godot_native

fileprivate var __godot_name_AnimationNodeBlend2: StringName! = nil

/// Blends two animations linearly inside of an [AnimationNodeBlendTree].
/// 
/// A resource to add to an [AnimationNodeBlendTree]. Blends two animations linearly based on an amount value in the [code][0.0, 1.0][/code] range.
open class AnimationNodeBlend2 : AnimationNodeSync {

    

    public override class var __godot_name: StringName { __godot_name_AnimationNodeBlend2 }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_AnimationNodeBlend2 = StringName(from: "AnimationNodeBlend2")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}