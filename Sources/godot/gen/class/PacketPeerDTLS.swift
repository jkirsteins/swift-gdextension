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

    static var _method_poll_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_connect_to_peer_1801538152: GDExtensionMethodBindPtr! = nil
    static var _method_get_status_3248654679: GDExtensionMethodBindPtr! = nil
    static var _method_disconnect_from_peer_3218959716: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_PacketPeerDTLS = StringName(from: "PacketPeerDTLS")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_poll_3218959716_name = StringName(from: "poll")
        self._method_poll_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_PacketPeerDTLS._native_ptr(), _method_poll_3218959716_name._native_ptr(), 3218959716)
        assert(PacketPeerDTLS._method_poll_3218959716 != nil)
        let _method_connect_to_peer_1801538152_name = StringName(from: "connect_to_peer")
        self._method_connect_to_peer_1801538152 = self.interface.pointee.classdb_get_method_bind(__godot_name_PacketPeerDTLS._native_ptr(), _method_connect_to_peer_1801538152_name._native_ptr(), 1801538152)
        assert(PacketPeerDTLS._method_connect_to_peer_1801538152 != nil)
        let _method_get_status_3248654679_name = StringName(from: "get_status")
        self._method_get_status_3248654679 = self.interface.pointee.classdb_get_method_bind(__godot_name_PacketPeerDTLS._native_ptr(), _method_get_status_3248654679_name._native_ptr(), 3248654679)
        assert(PacketPeerDTLS._method_get_status_3248654679 != nil)
        let _method_disconnect_from_peer_3218959716_name = StringName(from: "disconnect_from_peer")
        self._method_disconnect_from_peer_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_PacketPeerDTLS._native_ptr(), _method_disconnect_from_peer_3218959716_name._native_ptr(), 3218959716)
        assert(PacketPeerDTLS._method_disconnect_from_peer_3218959716 != nil)
    }

    public func poll()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_poll_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_connect_to_peer_1801538152,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_status_3248654679,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_disconnect_from_peer_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}