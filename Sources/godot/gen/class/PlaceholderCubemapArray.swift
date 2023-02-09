import godot_native

fileprivate var __godot_name_PlaceholderCubemapArray: StringName! = nil

/// Placeholder class for a cubemap texture array.
/// 
/// This class is used when loading a project that uses a [CubemapArray] subclass in 2 conditions:
///  
/// - When running the project exported in dedicated server mode, only the texture's dimensions are kept (as they may be relied upon for gameplay purposes or positioning of other elements). This allows reducing the exported PCK's size significantly.
///  
/// - When this subclass is missing due to using a different engine version or build (e.g. modules disabled).
open class PlaceholderCubemapArray : PlaceholderTextureLayered {

    

    public override class var __godot_name: StringName { __godot_name_PlaceholderCubemapArray }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_PlaceholderCubemapArray == nil)
        __godot_name_PlaceholderCubemapArray = StringName(from: "PlaceholderCubemapArray")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}