import godot_native

fileprivate var __godot_name_PlaceholderCubemap: StringName! = nil

/// Placeholder class for a cubemap texture.
/// 
/// This class is used when loading a project that uses a [Cubemap] subclass in 2 conditions:
///  
/// - When running the project exported in dedicated server mode, only the texture's dimensions are kept (as they may be relied upon for gameplay purposes or positioning of other elements). This allows reducing the exported PCK's size significantly.
///  
/// - When this subclass is missing due to using a different engine version or build (e.g. modules disabled).
public class PlaceholderCubemap : PlaceholderTextureLayered {

    

    public override class var __godot_name: StringName { __godot_name_PlaceholderCubemap }

    
    
    public override class func initialize_class() {
        __godot_name_PlaceholderCubemap = StringName(from: "PlaceholderCubemap")

        
    }

    
}