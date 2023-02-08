import godot_native

fileprivate var __godot_name_LightmapProbe: StringName! = nil

/// Represents a single manually placed probe for dynamic object lighting with [LightmapGI].
/// 
/// [LightmapProbe] represents the position of a single manually placed probe for dynamic object lighting with [LightmapGI].
///  
/// Typically, [LightmapGI] probes are placed automatically by setting [member LightmapGI.generate_probes_subdiv] to a value other than [constant LightmapGI.GENERATE_PROBES_DISABLED]. By creating [LightmapProbe] nodes before baking lightmaps, you can add more probes in specific areas for greater detail, or disable automatic generation and rely only on manually placed probes instead.
open class LightmapProbe : Node3D {

    

    public override class var __godot_name: StringName { __godot_name_LightmapProbe }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_LightmapProbe = StringName(from: "LightmapProbe")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}