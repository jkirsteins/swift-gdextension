import godot_native

fileprivate var __godot_name_XROrigin3D: StringName! = nil

/// The origin point in AR/VR.
/// 
/// This is a special node within the AR/VR system that maps the physical location of the center of our tracking space to the virtual location within our game world.
///  
/// There should be only one of these nodes in your scene and you must have one. All the XRCamera3D, XRController3D and XRAnchor3D nodes should be direct children of this node for spatial tracking to work correctly.
///  
/// It is the position of this node that you update when your character needs to move through your game world while we're not moving in the real world. Movement in the real world is always in relation to this origin point.
///  
/// For example, if your character is driving a car, the XROrigin3D node should be a child node of this car. Or, if you're implementing a teleport system to move your character, you should change the position of this node.
public class XROrigin3D : Node3D {

    

    public override class var __godot_name: StringName { __godot_name_XROrigin3D }

    static var _method_set_world_scale_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_world_scale_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_current_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_current_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_XROrigin3D = StringName(from: "XROrigin3D")

        let _method_set_world_scale_373806689_name = StringName(from: "set_world_scale")
        self._method_set_world_scale_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_world_scale_373806689_name._native_ptr(), 373806689)
        assert(XROrigin3D._method_set_world_scale_373806689 != nil)
        let _method_get_world_scale_1740695150_name = StringName(from: "get_world_scale")
        self._method_get_world_scale_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_world_scale_1740695150_name._native_ptr(), 1740695150)
        assert(XROrigin3D._method_get_world_scale_1740695150 != nil)
        let _method_set_current_2586408642_name = StringName(from: "set_current")
        self._method_set_current_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_current_2586408642_name._native_ptr(), 2586408642)
        assert(XROrigin3D._method_set_current_2586408642 != nil)
        let _method_is_current_36873697_name = StringName(from: "is_current")
        self._method_is_current_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_current_36873697_name._native_ptr(), 36873697)
        assert(XROrigin3D._method_is_current_36873697 != nil)
    }

    public func set_world_scale(world_scale: Float64)  {
        withUnsafePointer(to: world_scale) { world_scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(world_scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_world_scale_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_world_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_world_scale_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_current(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_current_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_current() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_current_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}