import godot_native

fileprivate var __godot_name_MovieWriterMJPEG: StringName! = nil

/// MISSING
/// 
/// MISSING
open class MovieWriterMJPEG : MovieWriter {

    

    public override class var __godot_name: StringName { __godot_name_MovieWriterMJPEG }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_MovieWriterMJPEG == nil)
        __godot_name_MovieWriterMJPEG = StringName(from: "MovieWriterMJPEG")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}