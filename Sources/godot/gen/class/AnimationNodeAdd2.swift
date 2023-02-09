import godot_native

fileprivate var __godot_name_AnimationNodeAdd2: StringName! = nil

/// Blends two animations additively inside of an [AnimationNodeBlendTree].
/// 
/// A resource to add to an [AnimationNodeBlendTree]. Blends two animations additively based on an amount value in the [code][0.0, 1.0][/code] range.
open class AnimationNodeAdd2 : AnimationNodeSync {

    

    public override class var __godot_name: StringName { __godot_name_AnimationNodeAdd2 }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AnimationNodeAdd2 == nil)
        __godot_name_AnimationNodeAdd2 = StringName(from: "AnimationNodeAdd2")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}