import godot_native

fileprivate var __godot_name_PointMesh: StringName! = nil

/// Mesh with a single Point primitive.
/// 
/// The PointMesh is made from a single point. Instead of relying on triangles, points are rendered as a single rectangle on the screen with a constant size. They are intended to be used with Particle systems, but can be used as a cheap way to render constant size billboarded sprites (for example in a point cloud).
///  
/// PointMeshes, must be used with a material that has a point size. Point size can be accessed in a shader with [code]POINT_SIZE[/code], or in a [BaseMaterial3D] by setting [member BaseMaterial3D.use_point_size] and the variable [member BaseMaterial3D.point_size].
///  
/// When using PointMeshes, properties that normally alter vertices will be ignored, including billboard mode, grow, and cull face.
open class PointMesh : PrimitiveMesh {

    

    public override class var __godot_name: StringName { __godot_name_PointMesh }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_PointMesh = StringName(from: "PointMesh")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}