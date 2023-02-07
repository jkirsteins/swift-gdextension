import godot_native

fileprivate var __godot_name_XRCamera3D: StringName! = nil

/// A camera node with a few overrules for AR/VR applied, such as location tracking.
/// 
/// This is a helper spatial node for our camera; note that, if stereoscopic rendering is applicable (VR-HMD), most of the camera properties are ignored, as the HMD information overrides them. The only properties that can be trusted are the near and far planes.
///  
/// The position and orientation of this node is automatically updated by the XR Server to represent the location of the HMD if such tracking is available and can thus be used by game logic. Note that, in contrast to the XR Controller, the render thread has access to the most up-to-date tracking data of the HMD and the location of the XRCamera3D can lag a few milliseconds behind what is used for rendering as a result.
public class XRCamera3D : Camera3D {

    

    public override class var __godot_name: StringName { __godot_name_XRCamera3D }

    
    
    public override class func initialize_class() {
        __godot_name_XRCamera3D = StringName(from: "XRCamera3D")

        
    }

    
}