import godot_native

fileprivate var __godot_name_VisibleOnScreenNotifier3D: StringName! = nil

/// Detects approximately when the node is visible on screen.
/// 
/// The VisibleOnScreenNotifier3D detects when it is visible on the screen. It also notifies when its bounding rectangle enters or exits the screen or a [Camera3D]'s view.
///  
/// If you want nodes to be disabled automatically when they exit the screen, use [VisibleOnScreenEnabler3D] instead.
///  
/// [b]Note:[/b] VisibleOnScreenNotifier3D uses an approximate heuristic for performance reasons. It doesn't take walls and other occlusion into account. The heuristic is an implementation detail and may change in future versions. If you need precise visibility checking, use another method such as adding an [Area3D] node as a child of a [Camera3D] node and/or [method Vector3.dot].
public class VisibleOnScreenNotifier3D : VisualInstance3D {

    

    public override class var __godot_name: StringName { __godot_name_VisibleOnScreenNotifier3D }

    static var _method_set_aabb_259215842: GDExtensionMethodBindPtr! = nil
    static var _method_is_on_screen_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VisibleOnScreenNotifier3D = StringName(from: "VisibleOnScreenNotifier3D")

        let _method_set_aabb_259215842_name = StringName(from: "set_aabb")
        self._method_set_aabb_259215842 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_aabb_259215842_name._native_ptr(), 259215842)
        assert(VisibleOnScreenNotifier3D._method_set_aabb_259215842 != nil)
        let _method_is_on_screen_36873697_name = StringName(from: "is_on_screen")
        self._method_is_on_screen_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_on_screen_36873697_name._native_ptr(), 36873697)
        assert(VisibleOnScreenNotifier3D._method_is_on_screen_36873697 != nil)
    }

    public func set_aabb(rect: AABB)  {
        let rect_native = rect._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rect_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_aabb_259215842,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func is_on_screen() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_on_screen_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}