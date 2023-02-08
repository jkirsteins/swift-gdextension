import godot_native

fileprivate var __godot_name_LightmapperRD: StringName! = nil

/// The built-in GPU-based lightmapper for use with [LightmapGI].
/// 
/// LightmapperRD ("RD" stands for [RenderingDevice]) is the built-in GPU-based lightmapper for use with [LightmapGI]. On most dedicated GPUs, it can bake lightmaps much faster than most CPU-based lightmappers. LightmapperRD uses compute shaders to bake lightmaps, so it does not require CUDA or OpenCL libraries to be installed to be usable.
///  
/// [b]Note:[/b] Only usable when using the Vulkan backend (Clustered or Mobile), not OpenGL.
open class LightmapperRD : Lightmapper {

    

    public override class var __godot_name: StringName { __godot_name_LightmapperRD }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_LightmapperRD = StringName(from: "LightmapperRD")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}