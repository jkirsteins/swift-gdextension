import godot_native

fileprivate var __godot_name_PacketPeerDTLS: StringName! = nil

/// DTLS packet peer.
/// 
/// This class represents a DTLS peer connection. It can be used to connect to a DTLS server, and is returned by [method DTLSServer.take_connection].
///  
/// [b]Note:[/b] When exporting to Android, make sure to enable the [code]INTERNET[/code] permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.
///  
/// [b]Warning:[/b] TLS certificate revocation and certificate pinning are currently not supported. Revoked certificates are accepted as long as they are otherwise valid. If this is a concern, you may want to use automatically managed certificates with a short validity period.
open class PacketPeerDTLS : PacketPeer {

    public enum Status : Int32 {
        case STATUS_DISCONNECTED = 0
        case STATUS_HANDSHAKING = 1
        case STATUS_CONNECTED = 2
        case STATUS_ERROR = 3
        case STATUS_ERROR_HOSTNAME_MISMATCH = 4
    }

    public override class var __godot_name: StringName { __godot_name_PacketPeerDTLS }

    static var _method_poll_3218959716: StringName! = nil
    static var _method_connect_to_peer_1801538152: StringName! = nil
    static var _method_get_status_3248654679: StringName! = nil
    static var _method_disconnect_from_peer_3218959716: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_PacketPeerDTLS == nil)
        __godot_name_PacketPeerDTLS = StringName(from: "PacketPeerDTLS")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_poll_3218959716 = StringName(from: "poll")
        assert(self._method_poll_3218959716 != nil)
        self._method_connect_to_peer_1801538152 = StringName(from: "connect_to_peer")
        assert(self._method_connect_to_peer_1801538152 != nil)
        self._method_get_status_3248654679 = StringName(from: "get_status")
        assert(self._method_get_status_3248654679 != nil)
        self._method_disconnect_from_peer_3218959716 = StringName(from: "disconnect_from_peer")
        assert(self._method_disconnect_from_peer_3218959716 != nil)
    }

    public func poll()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_poll_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func connect_to_peer(packet_peer: PacketPeerUDP, hostname: godot.String, client_options: TLSOptions) -> Error {
        let client_options_native = client_options._native_ptr()
        let hostname_native = hostname._native_ptr()
        let packet_peer_native = packet_peer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(packet_peer_native), .init(hostname_native), .init(client_options_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_connect_to_peer_1801538152._native_ptr(),
                    1801538152)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func get_status() -> PacketPeerDTLS.Status {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_status_3248654679._native_ptr(),
                    3248654679)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PacketPeerDTLS.Status(godot: __resPtr.pointee)
    }
    public func disconnect_from_peer()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_disconnect_from_peer_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}