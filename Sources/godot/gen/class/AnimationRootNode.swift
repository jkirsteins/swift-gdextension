import godot_native

fileprivate var __godot_name_AnimationRootNode: StringName! = nil

/// 
/// 
/// 
open class AnimationRootNode : AnimationNode {

    

    public override class var __godot_name: StringName { __godot_name_AnimationRootNode }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_AnimationRootNode = StringName(from: "AnimationRootNode")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}