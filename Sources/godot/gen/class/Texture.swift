import godot_native

fileprivate var __godot_name_Texture: StringName! = nil

/// Base class for all texture types.
/// 
/// [Texture] is the base class for all texture types. Common texture types are [Texture2D] and [ImageTexture]. See also [Image].
public class Texture : Resource {

    

    public override class var __godot_name: StringName { __godot_name_Texture }

    
    
    public override class func initialize_class() {
        __godot_name_Texture = StringName(from: "Texture")

        
    }

    
}