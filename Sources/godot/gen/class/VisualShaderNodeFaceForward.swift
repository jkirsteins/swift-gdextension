import godot_native

fileprivate var __godot_name_VisualShaderNodeFaceForward: StringName! = nil

/// Returns the vector that points in the same direction as a reference vector within the visual shader graph.
/// 
/// Translates to [code]faceforward(N, I, Nref)[/code] in the shader language. The function has three vector parameters: [code]N[/code], the vector to orient, [code]I[/code], the incident vector, and [code]Nref[/code], the reference vector. If the dot product of [code]I[/code] and [code]Nref[/code] is smaller than zero the return value is [code]N[/code]. Otherwise, [code]-N[/code] is returned.
open class VisualShaderNodeFaceForward : VisualShaderNodeVectorBase {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeFaceForward }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeFaceForward == nil)
        __godot_name_VisualShaderNodeFaceForward = StringName(from: "VisualShaderNodeFaceForward")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}