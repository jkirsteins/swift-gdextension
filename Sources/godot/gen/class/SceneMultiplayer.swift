import godot_native

fileprivate var __godot_name_SceneMultiplayer: StringName! = nil

/// MISSING
/// 
/// MISSING
public class SceneMultiplayer : MultiplayerAPI {

    

    public override class var __godot_name: StringName { __godot_name_SceneMultiplayer }

    static var _method_set_root_path_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_root_path_4075236667: GDExtensionMethodBindPtr! = nil
    static var _method_clear_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_disconnect_peer_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_authenticating_peers_969006518: GDExtensionMethodBindPtr! = nil
    static var _method_send_auth_506032537: GDExtensionMethodBindPtr! = nil
    static var _method_complete_auth_844576869: GDExtensionMethodBindPtr! = nil
    static var _method_set_auth_callback_1611583062: GDExtensionMethodBindPtr! = nil
    static var _method_get_auth_callback_1307783378: GDExtensionMethodBindPtr! = nil
    static var _method_set_auth_timeout_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_auth_timeout_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_refuse_new_connections_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_refusing_new_connections_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_allow_object_decoding_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_object_decoding_allowed_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_server_relay_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_server_relay_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_send_bytes_2742700601: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_SceneMultiplayer = StringName(from: "SceneMultiplayer")

        let _method_set_root_path_1348162250_name = StringName(from: "set_root_path")
        self._method_set_root_path_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_root_path_1348162250_name._native_ptr(), 1348162250)
        assert(SceneMultiplayer._method_set_root_path_1348162250 != nil)
        let _method_get_root_path_4075236667_name = StringName(from: "get_root_path")
        self._method_get_root_path_4075236667 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_root_path_4075236667_name._native_ptr(), 4075236667)
        assert(SceneMultiplayer._method_get_root_path_4075236667 != nil)
        let _method_clear_3218959716_name = StringName(from: "clear")
        self._method_clear_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_3218959716_name._native_ptr(), 3218959716)
        assert(SceneMultiplayer._method_clear_3218959716 != nil)
        let _method_disconnect_peer_1286410249_name = StringName(from: "disconnect_peer")
        self._method_disconnect_peer_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_disconnect_peer_1286410249_name._native_ptr(), 1286410249)
        assert(SceneMultiplayer._method_disconnect_peer_1286410249 != nil)
        let _method_get_authenticating_peers_969006518_name = StringName(from: "get_authenticating_peers")
        self._method_get_authenticating_peers_969006518 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_authenticating_peers_969006518_name._native_ptr(), 969006518)
        assert(SceneMultiplayer._method_get_authenticating_peers_969006518 != nil)
        let _method_send_auth_506032537_name = StringName(from: "send_auth")
        self._method_send_auth_506032537 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_send_auth_506032537_name._native_ptr(), 506032537)
        assert(SceneMultiplayer._method_send_auth_506032537 != nil)
        let _method_complete_auth_844576869_name = StringName(from: "complete_auth")
        self._method_complete_auth_844576869 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_complete_auth_844576869_name._native_ptr(), 844576869)
        assert(SceneMultiplayer._method_complete_auth_844576869 != nil)
        let _method_set_auth_callback_1611583062_name = StringName(from: "set_auth_callback")
        self._method_set_auth_callback_1611583062 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_auth_callback_1611583062_name._native_ptr(), 1611583062)
        assert(SceneMultiplayer._method_set_auth_callback_1611583062 != nil)
        let _method_get_auth_callback_1307783378_name = StringName(from: "get_auth_callback")
        self._method_get_auth_callback_1307783378 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_auth_callback_1307783378_name._native_ptr(), 1307783378)
        assert(SceneMultiplayer._method_get_auth_callback_1307783378 != nil)
        let _method_set_auth_timeout_373806689_name = StringName(from: "set_auth_timeout")
        self._method_set_auth_timeout_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_auth_timeout_373806689_name._native_ptr(), 373806689)
        assert(SceneMultiplayer._method_set_auth_timeout_373806689 != nil)
        let _method_get_auth_timeout_1740695150_name = StringName(from: "get_auth_timeout")
        self._method_get_auth_timeout_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_auth_timeout_1740695150_name._native_ptr(), 1740695150)
        assert(SceneMultiplayer._method_get_auth_timeout_1740695150 != nil)
        let _method_set_refuse_new_connections_2586408642_name = StringName(from: "set_refuse_new_connections")
        self._method_set_refuse_new_connections_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_refuse_new_connections_2586408642_name._native_ptr(), 2586408642)
        assert(SceneMultiplayer._method_set_refuse_new_connections_2586408642 != nil)
        let _method_is_refusing_new_connections_36873697_name = StringName(from: "is_refusing_new_connections")
        self._method_is_refusing_new_connections_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_refusing_new_connections_36873697_name._native_ptr(), 36873697)
        assert(SceneMultiplayer._method_is_refusing_new_connections_36873697 != nil)
        let _method_set_allow_object_decoding_2586408642_name = StringName(from: "set_allow_object_decoding")
        self._method_set_allow_object_decoding_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_allow_object_decoding_2586408642_name._native_ptr(), 2586408642)
        assert(SceneMultiplayer._method_set_allow_object_decoding_2586408642 != nil)
        let _method_is_object_decoding_allowed_36873697_name = StringName(from: "is_object_decoding_allowed")
        self._method_is_object_decoding_allowed_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_object_decoding_allowed_36873697_name._native_ptr(), 36873697)
        assert(SceneMultiplayer._method_is_object_decoding_allowed_36873697 != nil)
        let _method_set_server_relay_enabled_2586408642_name = StringName(from: "set_server_relay_enabled")
        self._method_set_server_relay_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_server_relay_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(SceneMultiplayer._method_set_server_relay_enabled_2586408642 != nil)
        let _method_is_server_relay_enabled_36873697_name = StringName(from: "is_server_relay_enabled")
        self._method_is_server_relay_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_server_relay_enabled_36873697_name._native_ptr(), 36873697)
        assert(SceneMultiplayer._method_is_server_relay_enabled_36873697 != nil)
        let _method_send_bytes_2742700601_name = StringName(from: "send_bytes")
        self._method_send_bytes_2742700601 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_send_bytes_2742700601_name._native_ptr(), 2742700601)
        assert(SceneMultiplayer._method_send_bytes_2742700601 != nil)
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
    public func clear()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func disconnect_peer(id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_disconnect_peer_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_authenticating_peers() -> PackedInt32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_authenticating_peers_969006518,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(from: __resPtr.pointee)
    }
    public func send_auth(id: Int64, data: PackedByteArray) -> Error {
        withUnsafePointer(to: id) { id_native in
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(data_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_send_auth_506032537,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
    }
    public func complete_auth(id: Int64) -> Error {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_complete_auth_844576869,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
    }
    public func set_auth_callback(callback: Callable)  {
        let callback_native = callback._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(callback_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_auth_callback_1611583062,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_auth_callback() -> Callable {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_auth_callback_1307783378,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Callable(from: __resPtr.pointee)
    }
    public func set_auth_timeout(timeout: Float64)  {
        withUnsafePointer(to: timeout) { timeout_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(timeout_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_auth_timeout_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_auth_timeout() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_auth_timeout_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_refuse_new_connections(refuse: UInt8)  {
        withUnsafePointer(to: refuse) { refuse_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(refuse_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_refuse_new_connections_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_refusing_new_connections() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_refusing_new_connections_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_allow_object_decoding(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_allow_object_decoding_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_object_decoding_allowed() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_object_decoding_allowed_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_server_relay_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_server_relay_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_server_relay_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_server_relay_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func send_bytes(bytes: PackedByteArray, id: Int64, mode: MultiplayerPeer.TransferMode, channel: Int64) -> Error {
        withUnsafePointer(to: channel) { channel_native in
        withUnsafePointer(to: id) { id_native in
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let bytes_native = bytes._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bytes_native), .init(id_native), .init(mode_native), .init(channel_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_send_bytes_2742700601,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
        }
        }
    }
}