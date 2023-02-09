import godot_native

fileprivate var __godot_name_Texture: StringName! = nil

/// Base class for all texture types.
/// 
/// [Texture] is the base class for all texture types. Common texture types are [Texture2D] and [ImageTexture]. See also [Image].
open class Texture : Resource {

    

    public override class var __godot_name: StringName { __godot_name_Texture }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_Texture == nil)
        __godot_name_Texture = StringName(from: "Texture")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}