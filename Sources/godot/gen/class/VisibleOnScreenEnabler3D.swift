import godot_native

fileprivate var __godot_name_VisibleOnScreenEnabler3D: StringName! = nil

/// Enables certain nodes only when approximately visible.
/// 
/// The VisibleOnScreenEnabler3D will disable [RigidBody3D] and [AnimationPlayer] nodes when they are not visible. It will only affect other nodes within the same scene as the VisibleOnScreenEnabler3D itself.
///  
/// If you just want to receive notifications, use [VisibleOnScreenNotifier3D] instead.
///  
/// [b]Note:[/b] VisibleOnScreenEnabler3D uses an approximate heuristic for performance reasons. It doesn't take walls and other occlusion into account. The heuristic is an implementation detail and may change in future versions. If you need precise visibility checking, use another method such as adding an [Area3D] node as a child of a [Camera3D] node and/or [method Vector3.dot].
///  
/// [b]Note:[/b] VisibleOnScreenEnabler3D will not affect nodes added after scene initialization.
public class VisibleOnScreenEnabler3D : VisibleOnScreenNotifier3D {

    public enum EnableMode : Int32 {
        case ENABLE_MODE_INHERIT = 0
        case ENABLE_MODE_ALWAYS = 1
        case ENABLE_MODE_WHEN_PAUSED = 2
    }

    public override class var __godot_name: StringName { __godot_name_VisibleOnScreenEnabler3D }

    static var _method_set_enable_mode_320303646: GDExtensionMethodBindPtr! = nil
    static var _method_get_enable_mode_3352990031: GDExtensionMethodBindPtr! = nil
    static var _method_set_enable_node_path_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_enable_node_path_277076166: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VisibleOnScreenEnabler3D = StringName(from: "VisibleOnScreenEnabler3D")

        let _method_set_enable_mode_320303646_name = StringName(from: "set_enable_mode")
        self._method_set_enable_mode_320303646 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_enable_mode_320303646_name._native_ptr(), 320303646)
        assert(VisibleOnScreenEnabler3D._method_set_enable_mode_320303646 != nil)
        let _method_get_enable_mode_3352990031_name = StringName(from: "get_enable_mode")
        self._method_get_enable_mode_3352990031 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_enable_mode_3352990031_name._native_ptr(), 3352990031)
        assert(VisibleOnScreenEnabler3D._method_get_enable_mode_3352990031 != nil)
        let _method_set_enable_node_path_1348162250_name = StringName(from: "set_enable_node_path")
        self._method_set_enable_node_path_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_enable_node_path_1348162250_name._native_ptr(), 1348162250)
        assert(VisibleOnScreenEnabler3D._method_set_enable_node_path_1348162250 != nil)
        let _method_get_enable_node_path_277076166_name = StringName(from: "get_enable_node_path")
        self._method_get_enable_node_path_277076166 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_enable_node_path_277076166_name._native_ptr(), 277076166)
        assert(VisibleOnScreenEnabler3D._method_get_enable_node_path_277076166 != nil)
    }

    public func set_enable_mode(mode: VisibleOnScreenEnabler3D.EnableMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_enable_mode_320303646,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_enable_mode() -> VisibleOnScreenEnabler3D.EnableMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_enable_mode_3352990031,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisibleOnScreenEnabler3D.EnableMode(from: __resPtr.pointee)
    }
    public func set_enable_node_path(path: NodePath)  {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_enable_node_path_1348162250,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_enable_node_path() -> NodePath {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_enable_node_path_277076166,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(from: __resPtr.pointee)
    }
}