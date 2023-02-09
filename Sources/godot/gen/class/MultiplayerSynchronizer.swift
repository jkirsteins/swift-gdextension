import godot_native

fileprivate var __godot_name_MultiplayerSynchronizer: StringName! = nil

/// MISSING
/// 
/// MISSING
open class MultiplayerSynchronizer : Node {

    public enum VisibilityUpdateMode : Int32 {
        case VISIBILITY_PROCESS_IDLE = 0
        case VISIBILITY_PROCESS_PHYSICS = 1
        case VISIBILITY_PROCESS_NONE = 2
    }

    public override class var __godot_name: StringName { __godot_name_MultiplayerSynchronizer }

    static var _method_set_root_path_1348162250: StringName! = nil
    static var _method_get_root_path_4075236667: StringName! = nil
    static var _method_set_replication_interval_373806689: StringName! = nil
    static var _method_get_replication_interval_1740695150: StringName! = nil
    static var _method_set_replication_config_3889206742: StringName! = nil
    static var _method_get_replication_config_3200254614: StringName! = nil
    static var _method_set_visibility_update_mode_3494860300: StringName! = nil
    static var _method_get_visibility_update_mode_3352241418: StringName! = nil
    static var _method_update_visibility_1995695955: StringName! = nil
    static var _method_set_visibility_public_2586408642: StringName! = nil
    static var _method_is_visibility_public_36873697: StringName! = nil
    static var _method_add_visibility_filter_1611583062: StringName! = nil
    static var _method_remove_visibility_filter_1611583062: StringName! = nil
    static var _method_set_visibility_for_300928843: StringName! = nil
    static var _method_get_visibility_for_1116898809: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_MultiplayerSynchronizer == nil)
        __godot_name_MultiplayerSynchronizer = StringName(from: "MultiplayerSynchronizer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_root_path_1348162250 = StringName(from: "set_root_path")
        assert(self._method_set_root_path_1348162250 != nil)
        self._method_get_root_path_4075236667 = StringName(from: "get_root_path")
        assert(self._method_get_root_path_4075236667 != nil)
        self._method_set_replication_interval_373806689 = StringName(from: "set_replication_interval")
        assert(self._method_set_replication_interval_373806689 != nil)
        self._method_get_replication_interval_1740695150 = StringName(from: "get_replication_interval")
        assert(self._method_get_replication_interval_1740695150 != nil)
        self._method_set_replication_config_3889206742 = StringName(from: "set_replication_config")
        assert(self._method_set_replication_config_3889206742 != nil)
        self._method_get_replication_config_3200254614 = StringName(from: "get_replication_config")
        assert(self._method_get_replication_config_3200254614 != nil)
        self._method_set_visibility_update_mode_3494860300 = StringName(from: "set_visibility_update_mode")
        assert(self._method_set_visibility_update_mode_3494860300 != nil)
        self._method_get_visibility_update_mode_3352241418 = StringName(from: "get_visibility_update_mode")
        assert(self._method_get_visibility_update_mode_3352241418 != nil)
        self._method_update_visibility_1995695955 = StringName(from: "update_visibility")
        assert(self._method_update_visibility_1995695955 != nil)
        self._method_set_visibility_public_2586408642 = StringName(from: "set_visibility_public")
        assert(self._method_set_visibility_public_2586408642 != nil)
        self._method_is_visibility_public_36873697 = StringName(from: "is_visibility_public")
        assert(self._method_is_visibility_public_36873697 != nil)
        self._method_add_visibility_filter_1611583062 = StringName(from: "add_visibility_filter")
        assert(self._method_add_visibility_filter_1611583062 != nil)
        self._method_remove_visibility_filter_1611583062 = StringName(from: "remove_visibility_filter")
        assert(self._method_remove_visibility_filter_1611583062 != nil)
        self._method_set_visibility_for_300928843 = StringName(from: "set_visibility_for")
        assert(self._method_set_visibility_for_300928843 != nil)
        self._method_get_visibility_for_1116898809 = StringName(from: "get_visibility_for")
        assert(self._method_get_visibility_for_1116898809 != nil)
    }

    public func set_root_path(path: NodePath)  {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_root_path_1348162250._native_ptr(),
                    1348162250)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_root_path() -> NodePath {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_root_path_4075236667._native_ptr(),
                    4075236667)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(godot: __resPtr.pointee)
    }
    public func set_replication_interval(milliseconds: Float64)  {
        withUnsafePointer(to: milliseconds) { milliseconds_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(milliseconds_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_replication_interval_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_replication_interval() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_replication_interval_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_replication_config(config: SceneReplicationConfig)  {
        let config_native = config._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(config_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_replication_config_3889206742._native_ptr(),
                    3889206742)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_replication_config() -> SceneReplicationConfig {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_replication_config_3200254614._native_ptr(),
                    3200254614)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return SceneReplicationConfig(godot: __resPtr.pointee)
    }
    public func set_visibility_update_mode(mode: MultiplayerSynchronizer.VisibilityUpdateMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_visibility_update_mode_3494860300._native_ptr(),
                    3494860300)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_visibility_update_mode() -> MultiplayerSynchronizer.VisibilityUpdateMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_visibility_update_mode_3352241418._native_ptr(),
                    3352241418)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return MultiplayerSynchronizer.VisibilityUpdateMode(godot: __resPtr.pointee)
    }
    public func update_visibility(for_peer: Int64)  {
        withUnsafePointer(to: for_peer) { for_peer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(for_peer_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_update_visibility_1995695955._native_ptr(),
                    1995695955)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_visibility_public(visible: UInt8)  {
        withUnsafePointer(to: visible) { visible_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(visible_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_visibility_public_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_visibility_public() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_visibility_public_36873697._native_ptr(),
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
    public func add_visibility_filter(filter: Callable)  {
        let filter_native = filter._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(filter_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_visibility_filter_1611583062._native_ptr(),
                    1611583062)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_visibility_filter(filter: Callable)  {
        let filter_native = filter._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(filter_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_visibility_filter_1611583062._native_ptr(),
                    1611583062)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_visibility_for(peer: Int64, visible: UInt8)  {
        withUnsafePointer(to: visible) { visible_native in
        withUnsafePointer(to: peer) { peer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(peer_native), .init(visible_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_visibility_for_300928843._native_ptr(),
                    300928843)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_visibility_for(peer: Int64) -> UInt8 {
        withUnsafePointer(to: peer) { peer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(peer_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_visibility_for_1116898809._native_ptr(),
                    1116898809)
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
}