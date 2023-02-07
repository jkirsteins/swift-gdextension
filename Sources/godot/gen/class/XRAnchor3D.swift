import godot_native

fileprivate var __godot_name_XRAnchor3D: StringName! = nil

/// An anchor point in AR space.
/// 
/// The [XRAnchor3D] point is a spatial node that maps a real world location identified by the AR platform to a position within the game world. For example, as long as plane detection in ARKit is on, ARKit will identify and update the position of planes (tables, floors, etc) and create anchors for them.
///  
/// This node is mapped to one of the anchors through its unique ID. When you receive a signal that a new anchor is available, you should add this node to your scene for that anchor. You can predefine nodes and set the ID; the nodes will simply remain on 0,0,0 until a plane is recognized.
///  
/// Keep in mind that, as long as plane detection is enabled, the size, placing and orientation of an anchor will be updated as the detection logic learns more about the real world out there especially if only part of the surface is in view.
public class XRAnchor3D : XRNode3D {

    

    public override class var __godot_name: StringName { __godot_name_XRAnchor3D }

    static var _method_get_size_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_get_plane_2753500971: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_XRAnchor3D = StringName(from: "XRAnchor3D")

        let _method_get_size_3360562783_name = StringName(from: "get_size")
        self._method_get_size_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_size_3360562783_name._native_ptr(), 3360562783)
        assert(XRAnchor3D._method_get_size_3360562783 != nil)
        let _method_get_plane_2753500971_name = StringName(from: "get_plane")
        self._method_get_plane_2753500971 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_plane_2753500971_name._native_ptr(), 2753500971)
        assert(XRAnchor3D._method_get_plane_2753500971 != nil)
    }

    public func get_size() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_size_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func get_plane() -> Plane {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_plane_2753500971,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Plane(from: __resPtr.pointee)
    }
}