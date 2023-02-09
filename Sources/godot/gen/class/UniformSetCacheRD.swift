import godot_native

fileprivate var __godot_name_UniformSetCacheRD: StringName! = nil

/// MISSING
/// 
/// MISSING
open class UniformSetCacheRD : Object {

    

    public override class var __godot_name: StringName { __godot_name_UniformSetCacheRD }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_UniformSetCacheRD == nil)
        __godot_name_UniformSetCacheRD = StringName(from: "UniformSetCacheRD")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}