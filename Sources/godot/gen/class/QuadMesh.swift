import godot_native

fileprivate var __godot_name_QuadMesh: StringName! = nil

/// Class representing a square mesh facing the camera.
/// 
/// Class representing a square [PrimitiveMesh]. This flat mesh does not have a thickness. By default, this mesh is aligned on the X and Y axes; this rotation is more suited for use with billboarded materials. A [QuadMesh] is equivalent to a [PlaneMesh] except its default [member PlaneMesh.orientation] is [constant PlaneMesh.FACE_Z].
open class QuadMesh : PlaneMesh {

    

    public override class var __godot_name: StringName { __godot_name_QuadMesh }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_QuadMesh == nil)
        __godot_name_QuadMesh = StringName(from: "QuadMesh")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}