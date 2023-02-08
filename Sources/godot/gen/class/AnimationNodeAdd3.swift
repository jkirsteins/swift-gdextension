import godot_native

fileprivate var __godot_name_AnimationNodeAdd3: StringName! = nil

/// Blends two of three animations additively inside of an [AnimationNodeBlendTree].
/// 
/// A resource to add to an [AnimationNodeBlendTree]. Blends two animations together additively out of three based on a value in the [code][-1.0, 1.0][/code] range.
///  
/// This node has three inputs:
///  
/// - The base animation to add to
///  
/// - A -add animation to blend with when the blend amount is in the [code][-1.0, 0.0][/code] range.
///  
/// - A +add animation to blend with when the blend amount is in the [code][0.0, 1.0][/code] range
open class AnimationNodeAdd3 : AnimationNodeSync {

    

    public override class var __godot_name: StringName { __godot_name_AnimationNodeAdd3 }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_AnimationNodeAdd3 = StringName(from: "AnimationNodeAdd3")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}