import godot_native

fileprivate var __godot_name_MovieWriterPNGWAV: StringName! = nil

/// MISSING
/// 
/// MISSING
open class MovieWriterPNGWAV : MovieWriter {

    

    public override class var __godot_name: StringName { __godot_name_MovieWriterPNGWAV }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_MovieWriterPNGWAV == nil)
        __godot_name_MovieWriterPNGWAV = StringName(from: "MovieWriterPNGWAV")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}