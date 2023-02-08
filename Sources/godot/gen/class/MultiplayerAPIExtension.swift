import godot_native

fileprivate var __godot_name_MultiplayerAPIExtension: StringName! = nil

/// Base class used for extending the [MultiplayerAPI].
/// 
/// This class can be used to augment or replace the default [MultiplayerAPI] implementation via script or extensions.
///  
/// The following example augment the default implementation ([SceneMultiplayer]) by logging every RPC being made, and every object being configured for replication.
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// extends MultiplayerAPIExtension
///  
/// class_name LogMultiplayer
///  
///  
/// # We want to augment the default SceneMultiplayer.
///  
/// var base_multiplayer = SceneMultiplayer.new()
///  
///  
/// func _init():
///  
///     # Just passthourgh base signals (copied to var to avoid cyclic reference)
///  
///     var cts = connected_to_server
///  
///     var cf = connection_failed
///  
///     var pc = peer_connected
///  
///     var pd = peer_disconnected
///  
///     base_multiplayer.connected_to_server.connect(func(): cts.emit())
///  
///     base_multiplayer.connection_failed.connect(func(): cf.emit())
///  
///     base_multiplayer.peer_connected.connect(func(id): pc.emit(id))
///  
///     base_multiplayer.peer_disconnected.connect(func(id): pd.emit(id))
///  
///  
/// # Log RPC being made and forward it to the default multiplayer.
///  
/// func _rpc(peer: int, object: Object, method: StringName, args: Array) -> int: # Error
///  
///     print("Got RPC for %d: %s::%s(%s)" % [peer, object, method, args])
///  
///     return base_multiplayer.rpc(peer, object, method, args)
///  
///  
/// # Log configuration add. E.g. root path (nullptr, NodePath), replication (Node, Spawner|Synchronizer), custom.
///  
/// func _object_configuration_add(object, config: Variant) -> int: # Error
///  
///     if config is MultiplayerSynchronizer:
///  
///         print("Adding synchronization configuration for %s. Synchronizer: %s" % [object, config])
///  
///     elif config is MultiplayerSpawner:
///  
///         print("Adding node %s to the spawn list. Spawner: %s" % [object, config])
///  
///     return base_multiplayer.object_configuration_add(object, config)
///  
///  
/// # Log configuration remove. E.g. root path (nullptr, NodePath), replication (Node, Spawner|Synchronizer), custom.
///  
/// func _object_configuration_remove(object, config: Variant) -> int: # Error
///  
///     if config is MultiplayerSynchronizer:
///  
///         print("Removing synchronization configuration for %s. Synchronizer: %s" % [object, config])
///  
///     elif config is MultiplayerSpawner:
///  
///         print("Removing node %s from the spawn list. Spawner: %s" % [object, config])
///  
///     return base_multiplayer.object_configuration_remove(object, config)
///  
///  
/// # These can be optional, but in our case we want to augment SceneMultiplayer, so forward everything.
///  
/// func _set_multiplayer_peer(p_peer: MultiplayerPeer):
///  
///     base_multiplayer.multiplayer_peer = p_peer
///  
///  
/// func _get_multiplayer_peer() -> MultiplayerPeer:
///  
///     return base_multiplayer.multiplayer_peer
///  
///  
/// func _get_unique_id() -> int:
///  
///     return base_multiplayer.get_unique_id()
///  
///  
/// func _get_peer_ids() -> PackedInt32Array:
///  
///     return base_multiplayer.get_peers()
///  
/// [/gdscript]
///  
/// [/codeblocks]
///  
/// Then in your main scene or in an autoload call [method SceneTree.set_multiplayer] to start using your custom [MultiplayerAPI]:
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// # autoload.gd
///  
/// func _enter_tree():
///  
///     # Sets our custom multiplayer as the main one in SceneTree.
///  
/// get_tree().set_multiplayer(LogMultiplayer.new())
///  
/// [/gdscript]
///  
/// [/codeblocks]
///  
/// Native extensions can alternatively use the [method MultiplayerAPI.set_default_interface] method during initialization to configure themselves as the default implementation.
open class MultiplayerAPIExtension : MultiplayerAPI {

    

    public override class var __godot_name: StringName { __godot_name_MultiplayerAPIExtension }

    static var _method__poll_0: GDExtensionMethodBindPtr! = nil
    static var _method__set_multiplayer_peer_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_multiplayer_peer_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_unique_id_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_peer_ids_0: GDExtensionMethodBindPtr! = nil
    static var _method__rpc_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_remote_sender_id_0: GDExtensionMethodBindPtr! = nil
    static var _method__object_configuration_add_0: GDExtensionMethodBindPtr! = nil
    static var _method__object_configuration_remove_0: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_MultiplayerAPIExtension = StringName(from: "MultiplayerAPIExtension")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    public func _poll() -> Error {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__poll_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func _set_multiplayer_peer(multiplayer_peer: MultiplayerPeer)  {
        let multiplayer_peer_native = multiplayer_peer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(multiplayer_peer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__set_multiplayer_peer_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _get_multiplayer_peer() -> MultiplayerPeer {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_multiplayer_peer_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return MultiplayerPeer(godot: __resPtr.pointee)
    }
    public func _get_unique_id() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_unique_id_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func _get_peer_ids() -> PackedInt32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_peer_ids_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
    }
    public func _rpc(peer: Int64, object: Object, method: StringName, args: Array) -> Error {
        withUnsafePointer(to: peer) { peer_native in
        let args_native = args._native_ptr()
        let method_native = method._native_ptr()
        let object_native = object._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(peer_native), .init(object_native), .init(method_native), .init(args_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__rpc_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
    }
    public func _get_remote_sender_id() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_remote_sender_id_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func _object_configuration_add(object: Object, configuration: Variant) -> Error {
        let configuration_native = configuration._native_ptr()
        let object_native = object._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(object_native), .init(configuration_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__object_configuration_add_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func _object_configuration_remove(object: Object, configuration: Variant) -> Error {
        let configuration_native = configuration._native_ptr()
        let object_native = object._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(object_native), .init(configuration_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__object_configuration_remove_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
}