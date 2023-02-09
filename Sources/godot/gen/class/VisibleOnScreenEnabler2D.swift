import godot_native

fileprivate var __godot_name_VisibleOnScreenEnabler2D: StringName! = nil

/// Automatically disables another node if not visible on screen.
/// 
/// VisibleOnScreenEnabler2D detects when it is visible on screen (just like [VisibleOnScreenNotifier2D]) and automatically enables or disables the target node. The target node is disabled when [VisibleOnScreenEnabler2D] is not visible on screen (including when [member CanvasItem.visible] is [code]false[/code]), and enabled when the enabler is visible. The disabling is achieved by changing [member Node.process_mode].
open class VisibleOnScreenEnabler2D : VisibleOnScreenNotifier2D {

    public enum EnableMode : Int32 {
        case ENABLE_MODE_INHERIT = 0
        case ENABLE_MODE_ALWAYS = 1
        case ENABLE_MODE_WHEN_PAUSED = 2
    }

    public override class var __godot_name: StringName { __godot_name_VisibleOnScreenEnabler2D }

    static var _method_set_enable_mode_2961788752: StringName! = nil
    static var _method_get_enable_mode_2650445576: StringName! = nil
    static var _method_set_enable_node_path_1348162250: StringName! = nil
    static var _method_get_enable_node_path_277076166: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisibleOnScreenEnabler2D == nil)
        __godot_name_VisibleOnScreenEnabler2D = StringName(from: "VisibleOnScreenEnabler2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_enable_mode_2961788752 = StringName(from: "set_enable_mode")
        assert(self._method_set_enable_mode_2961788752 != nil)
        self._method_get_enable_mode_2650445576 = StringName(from: "get_enable_mode")
        assert(self._method_get_enable_mode_2650445576 != nil)
        self._method_set_enable_node_path_1348162250 = StringName(from: "set_enable_node_path")
        assert(self._method_set_enable_node_path_1348162250 != nil)
        self._method_get_enable_node_path_277076166 = StringName(from: "get_enable_node_path")
        assert(self._method_get_enable_node_path_277076166 != nil)
    }

    public func set_enable_mode(mode: VisibleOnScreenEnabler2D.EnableMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_enable_mode_2961788752._native_ptr(),
                    2961788752)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_enable_mode_2650445576._native_ptr(),
                    2650445576)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisibleOnScreenEnabler2D.EnableMode(godot: __resPtr.pointee)
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