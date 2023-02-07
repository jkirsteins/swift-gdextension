import godot_native

fileprivate var __godot_name_VisibleOnScreenEnabler2D: StringName! = nil

/// Automatically disables another node if not visible on screen.
/// 
/// VisibleOnScreenEnabler2D detects when it is visible on screen (just like [VisibleOnScreenNotifier2D]) and automatically enables or disables the target node. The target node is disabled when [VisibleOnScreenEnabler2D] is not visible on screen (including when [member CanvasItem.visible] is [code]false[/code]), and enabled when the enabler is visible. The disabling is achieved by changing [member Node.process_mode].
public class VisibleOnScreenEnabler2D : VisibleOnScreenNotifier2D {

    public enum EnableMode : Int32 {
        case ENABLE_MODE_INHERIT = 0
        case ENABLE_MODE_ALWAYS = 1
        case ENABLE_MODE_WHEN_PAUSED = 2
    }

    public override class var __godot_name: StringName { __godot_name_VisibleOnScreenEnabler2D }

    static var _method_set_enable_mode_2961788752: GDExtensionMethodBindPtr! = nil
    static var _method_get_enable_mode_2650445576: GDExtensionMethodBindPtr! = nil
    static var _method_set_enable_node_path_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_enable_node_path_277076166: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VisibleOnScreenEnabler2D = StringName(from: "VisibleOnScreenEnabler2D")

        let _method_set_enable_mode_2961788752_name = StringName(from: "set_enable_mode")
        self._method_set_enable_mode_2961788752 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_enable_mode_2961788752_name._native_ptr(), 2961788752)
        assert(VisibleOnScreenEnabler2D._method_set_enable_mode_2961788752 != nil)
        let _method_get_enable_mode_2650445576_name = StringName(from: "get_enable_mode")
        self._method_get_enable_mode_2650445576 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_enable_mode_2650445576_name._native_ptr(), 2650445576)
        assert(VisibleOnScreenEnabler2D._method_get_enable_mode_2650445576 != nil)
        let _method_set_enable_node_path_1348162250_name = StringName(from: "set_enable_node_path")
        self._method_set_enable_node_path_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_enable_node_path_1348162250_name._native_ptr(), 1348162250)
        assert(VisibleOnScreenEnabler2D._method_set_enable_node_path_1348162250 != nil)
        let _method_get_enable_node_path_277076166_name = StringName(from: "get_enable_node_path")
        self._method_get_enable_node_path_277076166 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_enable_node_path_277076166_name._native_ptr(), 277076166)
        assert(VisibleOnScreenEnabler2D._method_get_enable_node_path_277076166 != nil)
    }

    public func set_enable_mode(mode: VisibleOnScreenEnabler2D.EnableMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_enable_mode_2961788752,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_enable_mode() -> VisibleOnScreenEnabler2D.EnableMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_enable_mode_2650445576,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisibleOnScreenEnabler2D.EnableMode(from: __resPtr.pointee)
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