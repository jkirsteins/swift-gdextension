import godot_native

fileprivate var __godot_name_AnimationTrackEditPlugin: StringName! = nil

/// 
/// 
/// 
open class AnimationTrackEditPlugin : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_AnimationTrackEditPlugin }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        __godot_name_AnimationTrackEditPlugin = StringName(from: "AnimationTrackEditPlugin")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}