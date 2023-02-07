import godot_native

fileprivate var __godot_name_MultiplayerSynchronizer: StringName! = nil

/// MISSING
/// 
/// MISSING
public class MultiplayerSynchronizer : Node {

    public enum VisibilityUpdateMode : Int32 {
        case VISIBILITY_PROCESS_IDLE = 0
        case VISIBILITY_PROCESS_PHYSICS = 1
        case VISIBILITY_PROCESS_NONE = 2
    }

    public override class var __godot_name: StringName { __godot_name_MultiplayerSynchronizer }

    static var _method_set_root_path_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_root_path_4075236667: GDExtensionMethodBindPtr! = nil
    static var _method_set_replication_interval_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_replication_interval_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_replication_config_3889206742: GDExtensionMethodBindPtr! = nil
    static var _method_get_replication_config_3200254614: GDExtensionMethodBindPtr! = nil
    static var _method_set_visibility_update_mode_3494860300: GDExtensionMethodBindPtr! = nil
    static var _method_get_visibility_update_mode_3352241418: GDExtensionMethodBindPtr! = nil
    static var _method_update_visibility_1995695955: GDExtensionMethodBindPtr! = nil
    static var _method_set_visibility_public_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_visibility_public_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_add_visibility_filter_1611583062: GDExtensionMethodBindPtr! = nil
    static var _method_remove_visibility_filter_1611583062: GDExtensionMethodBindPtr! = nil
    static var _method_set_visibility_for_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_get_visibility_for_1116898809: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_MultiplayerSynchronizer = StringName(from: "MultiplayerSynchronizer")

        let _method_set_root_path_1348162250_name = StringName(from: "set_root_path")
        self._method_set_root_path_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_root_path_1348162250_name._native_ptr(), 1348162250)
        assert(MultiplayerSynchronizer._method_set_root_path_1348162250 != nil)
        let _method_get_root_path_4075236667_name = StringName(from: "get_root_path")
        self._method_get_root_path_4075236667 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_root_path_4075236667_name._native_ptr(), 4075236667)
        assert(MultiplayerSynchronizer._method_get_root_path_4075236667 != nil)
        let _method_set_replication_interval_373806689_name = StringName(from: "set_replication_interval")
        self._method_set_replication_interval_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_replication_interval_373806689_name._native_ptr(), 373806689)
        assert(MultiplayerSynchronizer._method_set_replication_interval_373806689 != nil)
        let _method_get_replication_interval_1740695150_name = StringName(from: "get_replication_interval")
        self._method_get_replication_interval_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_replication_interval_1740695150_name._native_ptr(), 1740695150)
        assert(MultiplayerSynchronizer._method_get_replication_interval_1740695150 != nil)
        let _method_set_replication_config_3889206742_name = StringName(from: "set_replication_config")
        self._method_set_replication_config_3889206742 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_replication_config_3889206742_name._native_ptr(), 3889206742)
        assert(MultiplayerSynchronizer._method_set_replication_config_3889206742 != nil)
        let _method_get_replication_config_3200254614_name = StringName(from: "get_replication_config")
        self._method_get_replication_config_3200254614 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_replication_config_3200254614_name._native_ptr(), 3200254614)
        assert(MultiplayerSynchronizer._method_get_replication_config_3200254614 != nil)
        let _method_set_visibility_update_mode_3494860300_name = StringName(from: "set_visibility_update_mode")
        self._method_set_visibility_update_mode_3494860300 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_visibility_update_mode_3494860300_name._native_ptr(), 3494860300)
        assert(MultiplayerSynchronizer._method_set_visibility_update_mode_3494860300 != nil)
        let _method_get_visibility_update_mode_3352241418_name = StringName(from: "get_visibility_update_mode")
        self._method_get_visibility_update_mode_3352241418 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_visibility_update_mode_3352241418_name._native_ptr(), 3352241418)
        assert(MultiplayerSynchronizer._method_get_visibility_update_mode_3352241418 != nil)
        let _method_update_visibility_1995695955_name = StringName(from: "update_visibility")
        self._method_update_visibility_1995695955 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_update_visibility_1995695955_name._native_ptr(), 1995695955)
        assert(MultiplayerSynchronizer._method_update_visibility_1995695955 != nil)
        let _method_set_visibility_public_2586408642_name = StringName(from: "set_visibility_public")
        self._method_set_visibility_public_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_visibility_public_2586408642_name._native_ptr(), 2586408642)
        assert(MultiplayerSynchronizer._method_set_visibility_public_2586408642 != nil)
        let _method_is_visibility_public_36873697_name = StringName(from: "is_visibility_public")
        self._method_is_visibility_public_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_visibility_public_36873697_name._native_ptr(), 36873697)
        assert(MultiplayerSynchronizer._method_is_visibility_public_36873697 != nil)
        let _method_add_visibility_filter_1611583062_name = StringName(from: "add_visibility_filter")
        self._method_add_visibility_filter_1611583062 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_visibility_filter_1611583062_name._native_ptr(), 1611583062)
        assert(MultiplayerSynchronizer._method_add_visibility_filter_1611583062 != nil)
        let _method_remove_visibility_filter_1611583062_name = StringName(from: "remove_visibility_filter")
        self._method_remove_visibility_filter_1611583062 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_visibility_filter_1611583062_name._native_ptr(), 1611583062)
        assert(MultiplayerSynchronizer._method_remove_visibility_filter_1611583062 != nil)
        let _method_set_visibility_for_300928843_name = StringName(from: "set_visibility_for")
        self._method_set_visibility_for_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_visibility_for_300928843_name._native_ptr(), 300928843)
        assert(MultiplayerSynchronizer._method_set_visibility_for_300928843 != nil)
        let _method_get_visibility_for_1116898809_name = StringName(from: "get_visibility_for")
        self._method_get_visibility_for_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_visibility_for_1116898809_name._native_ptr(), 1116898809)
        assert(MultiplayerSynchronizer._method_get_visibility_for_1116898809 != nil)
    }

    public func set_root_path(path: NodePath)  {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_root_path_1348162250,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_root_path_4075236667,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(from: __resPtr.pointee)
    }
    public func set_replication_interval(milliseconds: Float64)  {
        withUnsafePointer(to: milliseconds) { milliseconds_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(milliseconds_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_replication_interval_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_replication_interval_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_replication_config(config: SceneReplicationConfig)  {
        let config_native = config._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(config_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_replication_config_3889206742,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_replication_config_3200254614,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return SceneReplicationConfig(from: __resPtr.pointee)
    }
    public func set_visibility_update_mode(mode: MultiplayerSynchronizer.VisibilityUpdateMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_visibility_update_mode_3494860300,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_visibility_update_mode_3352241418,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return MultiplayerSynchronizer.VisibilityUpdateMode(from: __resPtr.pointee)
    }
    public func update_visibility(for_peer: Int64)  {
        withUnsafePointer(to: for_peer) { for_peer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(for_peer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_update_visibility_1995695955,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_visibility_public_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_visibility_public_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func add_visibility_filter(filter: Callable)  {
        let filter_native = filter._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(filter_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_visibility_filter_1611583062,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_visibility_filter_1611583062,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_visibility_for_300928843,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_visibility_for_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
}