import godot_native

fileprivate var __godot_name_Lightmapper: StringName! = nil

/// Abstract class extended by lightmappers, for use in [LightmapGI].
/// 
/// This class should be extended by custom lightmapper classes. Lightmappers can then be used with [LightmapGI] to provide fast baked global illumination in 3D.
///  
/// Godot contains a built-in GPU-based lightmapper [LightmapperRD] that uses compute shaders, but custom lightmappers can be implemented by C++ modules.
public class Lightmapper : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_Lightmapper }

    
    
    public override class func initialize_class() {
        __godot_name_Lightmapper = StringName(from: "Lightmapper")

        
    }

    
}