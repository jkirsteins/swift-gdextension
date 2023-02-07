import godot_native

fileprivate var __godot_name_MultiplayerAPI: StringName! = nil

/// High-level multiplayer API interface.
/// 
/// Base class for high-level multiplayer API implementations. See also [MultiplayerPeer].
///  
/// By default, [SceneTree] has a reference to an implementation of this class and uses it to provide multiplayer capabilities (i.e. RPCs) across the whole scene.
///  
/// It is possible to override the MultiplayerAPI instance used by specific tree branches by calling the [method SceneTree.set_multiplayer] method, effectively allowing to run both client and server in the same scene.
///  
/// It is also possible to extend or replace the default implementation via scripting or native extensions. See [MultiplayerAPIExtension] for details about extensions, [SceneMultiplayer] for the details about the default implementation.
public class MultiplayerAPI : RefCounted {

    public enum RPCMode : Int32 {
        case RPC_MODE_DISABLED = 0
        case RPC_MODE_ANY_PEER = 1
        case RPC_MODE_AUTHORITY = 2
    }

    public override class var __godot_name: StringName { __godot_name_MultiplayerAPI }

    static var _method_has_multiplayer_peer_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_get_multiplayer_peer_3223692825: GDExtensionMethodBindPtr! = nil
    static var _method_set_multiplayer_peer_3694835298: GDExtensionMethodBindPtr! = nil
    static var _method_get_unique_id_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_is_server_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_get_remote_sender_id_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_poll_166280745: GDExtensionMethodBindPtr! = nil
    static var _method_rpc_1833408346: GDExtensionMethodBindPtr! = nil
    static var _method_object_configuration_add_1171879464: GDExtensionMethodBindPtr! = nil
    static var _method_object_configuration_remove_1171879464: GDExtensionMethodBindPtr! = nil
    static var _method_get_peers_969006518: GDExtensionMethodBindPtr! = nil
    static var _method_set_default_interface_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_get_default_interface_2737447660: GDExtensionMethodBindPtr! = nil
    static var _method_create_default_interface_3294156723: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_MultiplayerAPI = StringName(from: "MultiplayerAPI")

        let _method_has_multiplayer_peer_2240911060_name = StringName(from: "has_multiplayer_peer")
        self._method_has_multiplayer_peer_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_multiplayer_peer_2240911060_name._native_ptr(), 2240911060)
        assert(MultiplayerAPI._method_has_multiplayer_peer_2240911060 != nil)
        let _method_get_multiplayer_peer_3223692825_name = StringName(from: "get_multiplayer_peer")
        self._method_get_multiplayer_peer_3223692825 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_multiplayer_peer_3223692825_name._native_ptr(), 3223692825)
        assert(MultiplayerAPI._method_get_multiplayer_peer_3223692825 != nil)
        let _method_set_multiplayer_peer_3694835298_name = StringName(from: "set_multiplayer_peer")
        self._method_set_multiplayer_peer_3694835298 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_multiplayer_peer_3694835298_name._native_ptr(), 3694835298)
        assert(MultiplayerAPI._method_set_multiplayer_peer_3694835298 != nil)
        let _method_get_unique_id_2455072627_name = StringName(from: "get_unique_id")
        self._method_get_unique_id_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_unique_id_2455072627_name._native_ptr(), 2455072627)
        assert(MultiplayerAPI._method_get_unique_id_2455072627 != nil)
        let _method_is_server_2240911060_name = StringName(from: "is_server")
        self._method_is_server_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_server_2240911060_name._native_ptr(), 2240911060)
        assert(MultiplayerAPI._method_is_server_2240911060 != nil)
        let _method_get_remote_sender_id_2455072627_name = StringName(from: "get_remote_sender_id")
        self._method_get_remote_sender_id_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_remote_sender_id_2455072627_name._native_ptr(), 2455072627)
        assert(MultiplayerAPI._method_get_remote_sender_id_2455072627 != nil)
        let _method_poll_166280745_name = StringName(from: "poll")
        self._method_poll_166280745 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_poll_166280745_name._native_ptr(), 166280745)
        assert(MultiplayerAPI._method_poll_166280745 != nil)
        let _method_rpc_1833408346_name = StringName(from: "rpc")
        self._method_rpc_1833408346 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_rpc_1833408346_name._native_ptr(), 1833408346)
        assert(MultiplayerAPI._method_rpc_1833408346 != nil)
        let _method_object_configuration_add_1171879464_name = StringName(from: "object_configuration_add")
        self._method_object_configuration_add_1171879464 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_object_configuration_add_1171879464_name._native_ptr(), 1171879464)
        assert(MultiplayerAPI._method_object_configuration_add_1171879464 != nil)
        let _method_object_configuration_remove_1171879464_name = StringName(from: "object_configuration_remove")
        self._method_object_configuration_remove_1171879464 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_object_configuration_remove_1171879464_name._native_ptr(), 1171879464)
        assert(MultiplayerAPI._method_object_configuration_remove_1171879464 != nil)
        let _method_get_peers_969006518_name = StringName(from: "get_peers")
        self._method_get_peers_969006518 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_peers_969006518_name._native_ptr(), 969006518)
        assert(MultiplayerAPI._method_get_peers_969006518 != nil)
        let _method_set_default_interface_3304788590_name = StringName(from: "set_default_interface")
        self._method_set_default_interface_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_default_interface_3304788590_name._native_ptr(), 3304788590)
        assert(MultiplayerAPI._method_set_default_interface_3304788590 != nil)
        let _method_get_default_interface_2737447660_name = StringName(from: "get_default_interface")
        self._method_get_default_interface_2737447660 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_default_interface_2737447660_name._native_ptr(), 2737447660)
        assert(MultiplayerAPI._method_get_default_interface_2737447660 != nil)
        let _method_create_default_interface_3294156723_name = StringName(from: "create_default_interface")
        self._method_create_default_interface_3294156723 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_default_interface_3294156723_name._native_ptr(), 3294156723)
        assert(MultiplayerAPI._method_create_default_interface_3294156723 != nil)
    }

    public func has_multiplayer_peer() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_multiplayer_peer_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_multiplayer_peer() -> MultiplayerPeer {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_multiplayer_peer_3223692825,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return MultiplayerPeer(from: __resPtr.pointee)
    }
    public func set_multiplayer_peer(peer: MultiplayerPeer)  {
        let peer_native = peer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(peer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_multiplayer_peer_3694835298,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_unique_id() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_unique_id_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func is_server() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_server_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_remote_sender_id() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_remote_sender_id_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func poll() -> Error {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_poll_166280745,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
    }
    public func rpc(peer: Int64, object: Object, method: StringName, arguments: Array) -> Error {
        withUnsafePointer(to: peer) { peer_native in
        let arguments_native = arguments._native_ptr()
        let method_native = method._native_ptr()
        let object_native = object._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(peer_native), .init(object_native), .init(method_native), .init(arguments_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_rpc_1833408346,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
    }
    public func object_configuration_add(object: Object, configuration: Variant) -> Error {
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
                    Self._method_object_configuration_add_1171879464,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
    }
    public func object_configuration_remove(object: Object, configuration: Variant) -> Error {
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
                    Self._method_object_configuration_remove_1171879464,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
    }
    public func get_peers() -> PackedInt32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_peers_969006518,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(from: __resPtr.pointee)
    }
    public func set_default_interface(interface_name: StringName)  {
        let interface_name_native = interface_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(interface_name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_default_interface_3304788590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_default_interface() -> StringName {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_default_interface_2737447660,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(from: __resPtr.pointee)
    }
    public func create_default_interface() -> MultiplayerAPI {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_default_interface_3294156723,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return MultiplayerAPI(from: __resPtr.pointee)
    }
}