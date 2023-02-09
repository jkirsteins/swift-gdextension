import godot_native

fileprivate var __godot_name_VisibleOnScreenNotifier3D: StringName! = nil

/// Detects approximately when the node is visible on screen.
/// 
/// The VisibleOnScreenNotifier3D detects when it is visible on the screen. It also notifies when its bounding rectangle enters or exits the screen or a [Camera3D]'s view.
///  
/// If you want nodes to be disabled automatically when they exit the screen, use [VisibleOnScreenEnabler3D] instead.
///  
/// [b]Note:[/b] VisibleOnScreenNotifier3D uses an approximate heuristic for performance reasons. It doesn't take walls and other occlusion into account. The heuristic is an implementation detail and may change in future versions. If you need precise visibility checking, use another method such as adding an [Area3D] node as a child of a [Camera3D] node and/or [method Vector3.dot].
open class VisibleOnScreenNotifier3D : VisualInstance3D {

    

    public override class var __godot_name: StringName { __godot_name_VisibleOnScreenNotifier3D }

    static var _method_set_aabb_259215842: StringName! = nil
    static var _method_is_on_screen_36873697: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisibleOnScreenNotifier3D == nil)
        __godot_name_VisibleOnScreenNotifier3D = StringName(from: "VisibleOnScreenNotifier3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_aabb_259215842 = StringName(from: "set_aabb")
        assert(self._method_set_aabb_259215842 != nil)
        self._method_is_on_screen_36873697 = StringName(from: "is_on_screen")
        assert(self._method_is_on_screen_36873697 != nil)
    }

    public func set_aabb(rect: AABB)  {
        let rect_native = rect._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rect_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_aabb_259215842._native_ptr(),
                    259215842)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_on_screen_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}