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
open class MultiplayerAPI : RefCounted {

    public enum RPCMode : Int32 {
        case RPC_MODE_DISABLED = 0
        case RPC_MODE_ANY_PEER = 1
        case RPC_MODE_AUTHORITY = 2
    }

    public override class var __godot_name: StringName { __godot_name_MultiplayerAPI }

    static var _method_has_multiplayer_peer_2240911060: StringName! = nil
    static var _method_get_multiplayer_peer_3223692825: StringName! = nil
    static var _method_set_multiplayer_peer_3694835298: StringName! = nil
    static var _method_get_unique_id_2455072627: StringName! = nil
    static var _method_is_server_2240911060: StringName! = nil
    static var _method_get_remote_sender_id_2455072627: StringName! = nil
    static var _method_poll_166280745: StringName! = nil
    static var _method_rpc_1833408346: StringName! = nil
    static var _method_object_configuration_add_1171879464: StringName! = nil
    static var _method_object_configuration_remove_1171879464: StringName! = nil
    static var _method_get_peers_969006518: StringName! = nil
    static var _method_set_default_interface_3304788590: StringName! = nil
    static var _method_get_default_interface_2737447660: StringName! = nil
    static var _method_create_default_interface_3294156723: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_MultiplayerAPI == nil)
        __godot_name_MultiplayerAPI = StringName(from: "MultiplayerAPI")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_has_multiplayer_peer_2240911060 = StringName(from: "has_multiplayer_peer")
        assert(self._method_has_multiplayer_peer_2240911060 != nil)
        self._method_get_multiplayer_peer_3223692825 = StringName(from: "get_multiplayer_peer")
        assert(self._method_get_multiplayer_peer_3223692825 != nil)
        self._method_set_multiplayer_peer_3694835298 = StringName(from: "set_multiplayer_peer")
        assert(self._method_set_multiplayer_peer_3694835298 != nil)
        self._method_get_unique_id_2455072627 = StringName(from: "get_unique_id")
        assert(self._method_get_unique_id_2455072627 != nil)
        self._method_is_server_2240911060 = StringName(from: "is_server")
        assert(self._method_is_server_2240911060 != nil)
        self._method_get_remote_sender_id_2455072627 = StringName(from: "get_remote_sender_id")
        assert(self._method_get_remote_sender_id_2455072627 != nil)
        self._method_poll_166280745 = StringName(from: "poll")
        assert(self._method_poll_166280745 != nil)
        self._method_rpc_1833408346 = StringName(from: "rpc")
        assert(self._method_rpc_1833408346 != nil)
        self._method_object_configuration_add_1171879464 = StringName(from: "object_configuration_add")
        assert(self._method_object_configuration_add_1171879464 != nil)
        self._method_object_configuration_remove_1171879464 = StringName(from: "object_configuration_remove")
        assert(self._method_object_configuration_remove_1171879464 != nil)
        self._method_get_peers_969006518 = StringName(from: "get_peers")
        assert(self._method_get_peers_969006518 != nil)
        self._method_set_default_interface_3304788590 = StringName(from: "set_default_interface")
        assert(self._method_set_default_interface_3304788590 != nil)
        self._method_get_default_interface_2737447660 = StringName(from: "get_default_interface")
        assert(self._method_get_default_interface_2737447660 != nil)
        self._method_create_default_interface_3294156723 = StringName(from: "create_default_interface")
        assert(self._method_create_default_interface_3294156723 != nil)
    }

    public func has_multiplayer_peer() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_multiplayer_peer_2240911060._native_ptr(),
                    2240911060)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_multiplayer_peer() -> MultiplayerPeer {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_multiplayer_peer_3223692825._native_ptr(),
                    3223692825)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return MultiplayerPeer(godot: __resPtr.pointee)
    }
    public func set_multiplayer_peer(peer: MultiplayerPeer)  {
        let peer_native = peer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(peer_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_multiplayer_peer_3694835298._native_ptr(),
                    3694835298)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_unique_id_2455072627._native_ptr(),
                    2455072627)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func is_server() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_server_2240911060._native_ptr(),
                    2240911060)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_remote_sender_id() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_remote_sender_id_2455072627._native_ptr(),
                    2455072627)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func poll() -> Error {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_poll_166280745._native_ptr(),
                    166280745)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_rpc_1833408346._native_ptr(),
                    1833408346)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_object_configuration_add_1171879464._native_ptr(),
                    1171879464)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_object_configuration_remove_1171879464._native_ptr(),
                    1171879464)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func get_peers() -> PackedInt32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_peers_969006518._native_ptr(),
                    969006518)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
    }
    public func set_default_interface(interface_name: StringName)  {
        let interface_name_native = interface_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(interface_name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_default_interface_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_default_interface_2737447660._native_ptr(),
                    2737447660)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
    }
    public func create_default_interface() -> MultiplayerAPI {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_default_interface_3294156723._native_ptr(),
                    3294156723)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return MultiplayerAPI(godot: __resPtr.pointee)
    }
}