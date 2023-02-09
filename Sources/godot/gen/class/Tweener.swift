import godot_native

fileprivate var __godot_name_Tweener: StringName! = nil

/// Abstract class for all Tweeners used by [Tween].
/// 
/// Tweeners are objects that perform a specific animating task, e.g. interpolating a property or calling a method at a given time. A [Tweener] can't be created manually, you need to use a dedicated method from [Tween].
open class Tweener : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_Tweener }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_Tweener == nil)
        __godot_name_Tweener = StringName(from: "Tweener")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}