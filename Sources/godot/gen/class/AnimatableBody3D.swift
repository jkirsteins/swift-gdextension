import godot_native

fileprivate var __godot_name_AnimatableBody3D: StringName! = nil

/// Physics body for 3D physics which moves only by script or animation. Useful for moving platforms and doors.
/// 
/// Animatable body for 3D physics.
///  
/// An animatable body can't be moved by external forces or contacts, but can be moved by script or animation to affect other bodies in its path. It is ideal for implementing moving objects in the environment, such as moving platforms or doors.
///  
/// When the body is moved manually, either from code or from an [AnimationPlayer] (with [member AnimationPlayer.playback_process_mode] set to [code]physics[/code]), the physics will automatically compute an estimate of their linear and angular velocity. This makes them very useful for moving platforms or other AnimationPlayer-controlled objects (like a door, a bridge that opens, etc).
///  
/// [b]Warning:[/b] With a non-uniform scale this node will probably not function as expected. Please make sure to keep its scale uniform (i.e. the same on all axes), and change the size(s) of its collision shape(s) instead.
public class AnimatableBody3D : StaticBody3D {

    

    public override class var __godot_name: StringName { __godot_name_AnimatableBody3D }

    static var _method_set_sync_to_physics_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_sync_to_physics_enabled_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_AnimatableBody3D = StringName(from: "AnimatableBody3D")

        let _method_set_sync_to_physics_2586408642_name = StringName(from: "set_sync_to_physics")
        self._method_set_sync_to_physics_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_sync_to_physics_2586408642_name._native_ptr(), 2586408642)
        assert(AnimatableBody3D._method_set_sync_to_physics_2586408642 != nil)
        let _method_is_sync_to_physics_enabled_36873697_name = StringName(from: "is_sync_to_physics_enabled")
        self._method_is_sync_to_physics_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_sync_to_physics_enabled_36873697_name._native_ptr(), 36873697)
        assert(AnimatableBody3D._method_is_sync_to_physics_enabled_36873697 != nil)
    }

    public func set_sync_to_physics(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sync_to_physics_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_sync_to_physics_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_sync_to_physics_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}