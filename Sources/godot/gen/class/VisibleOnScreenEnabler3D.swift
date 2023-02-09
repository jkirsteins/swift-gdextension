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
open class VisibleOnScreenEnabler3D : VisibleOnScreenNotifier3D {

    public enum EnableMode : Int32 {
        case ENABLE_MODE_INHERIT = 0
        case ENABLE_MODE_ALWAYS = 1
        case ENABLE_MODE_WHEN_PAUSED = 2
    }

    public override class var __godot_name: StringName { __godot_name_VisibleOnScreenEnabler3D }

    static var _method_set_enable_mode_320303646: StringName! = nil
    static var _method_get_enable_mode_3352990031: StringName! = nil
    static var _method_set_enable_node_path_1348162250: StringName! = nil
    static var _method_get_enable_node_path_277076166: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisibleOnScreenEnabler3D == nil)
        __godot_name_VisibleOnScreenEnabler3D = StringName(from: "VisibleOnScreenEnabler3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_enable_mode_320303646 = StringName(from: "set_enable_mode")
        assert(self._method_set_enable_mode_320303646 != nil)
        self._method_get_enable_mode_3352990031 = StringName(from: "get_enable_mode")
        assert(self._method_get_enable_mode_3352990031 != nil)
        self._method_set_enable_node_path_1348162250 = StringName(from: "set_enable_node_path")
        assert(self._method_set_enable_node_path_1348162250 != nil)
        self._method_get_enable_node_path_277076166 = StringName(from: "get_enable_node_path")
        assert(self._method_get_enable_node_path_277076166 != nil)
    }

    public func set_enable_mode(mode: VisibleOnScreenEnabler3D.EnableMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_enable_mode_320303646._native_ptr(),
                    320303646)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_enable_mode_3352990031._native_ptr(),
                    3352990031)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisibleOnScreenEnabler3D.EnableMode(godot: __resPtr.pointee)
    }
    public func set_enable_node_path(path: NodePath)  {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_enable_node_path_1348162250._native_ptr(),
                    1348162250)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_enable_node_path_277076166._native_ptr(),
                    277076166)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(godot: __resPtr.pointee)
    }
}