import godot_native

fileprivate var __godot_name_DTLSServer: StringName! = nil

/// Helper class to implement a DTLS server.
/// 
/// This class is used to store the state of a DTLS server. Upon [method setup] it converts connected [PacketPeerUDP] to [PacketPeerDTLS] accepting them via [method take_connection] as DTLS clients. Under the hood, this class is used to store the DTLS state and cookies of the server. The reason of why the state and cookies are needed is outside of the scope of this documentation.
///  
/// Below a small example of how to use it:
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// # server_node.gd
///  
/// extends Node
///  
///  
/// var dtls := DTLSServer.new()
///  
/// var server := UDPServer.new()
///  
/// var peers = []
///  
///  
/// func _ready():
///  
///     server.listen(4242)
///  
///     var key = load("key.key") # Your private key.
///  
///     var cert = load("cert.crt") # Your X509 certificate.
///  
///     dtls.setup(key, cert)
///  
///  
/// func _process(delta):
///  
///     while server.is_connection_available():
///  
///         var peer : PacketPeerUDP = server.take_connection()
///  
///         var dtls_peer : PacketPeerDTLS = dtls.take_connection(peer)
///  
///         if dtls_peer.get_status() != PacketPeerDTLS.STATUS_HANDSHAKING:
///  
///             continue # It is normal that 50% of the connections fails due to cookie exchange.
///  
///         print("Peer connected!")
///  
///         peers.append(dtls_peer)
///  
///  
///     for p in peers:
///  
///         p.poll() # Must poll to update the state.
///  
///         if p.get_status() == PacketPeerDTLS.STATUS_CONNECTED:
///  
///             while p.get_available_packet_count() > 0:
///  
///                 print("Received message from client: %s" % p.get_packet().get_string_from_utf8())
///  
///                 p.put_packet("Hello DTLS client".to_utf8())
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// // ServerNode.cs
///  
/// using Godot;
///  
///  
/// public partial class ServerNode : Node
///  
/// {
///  
///     private DtlsServer _dtls = new DtlsServer();
///  
///     private UdpServer _server = new UdpServer();
///  
///     private Godot.Collections.Array<PacketPeerDTLS> _peers = new Godot.Collections.Array<PacketPeerDTLS>();
///  
///  
///     public override void _Ready()
///  
///     {
///  
///         _server.Listen(4242);
///  
///         var key = GD.Load<CryptoKey>("key.key"); // Your private key.
///  
///         var cert = GD.Load<X509Certificate>("cert.crt"); // Your X509 certificate.
///  
///         _dtls.Setup(key, cert);
///  
///     }
///  
///  
///     public override void _Process(double delta)
///  
///     {
///  
///         while (Server.IsConnectionAvailable())
///  
///         {
///  
///             PacketPeerUDP peer = _server.TakeConnection();
///  
///             PacketPeerDTLS dtlsPeer = _dtls.TakeConnection(peer);
///  
///             if (dtlsPeer.GetStatus() != PacketPeerDtls.Status.Handshaking)
///  
///             {
///  
///                 continue; // It is normal that 50% of the connections fails due to cookie exchange.
///  
///             }
///  
///             GD.Print("Peer connected!");
///  
///             _peers.Add(dtlsPeer);
///  
///         }
///  
///  
///         foreach (var p in _peers)
///  
///         {
///  
///             p.Poll(); // Must poll to update the state.
///  
///             if (p.GetStatus() == PacketPeerDtls.Status.Connected)
///  
///             {
///  
///                 while (p.GetAvailablePacketCount() > 0)
///  
///                 {
///  
///                     GD.Print($"Received Message From Client: {p.GetPacket().GetStringFromUtf8()}");
///  
///                     p.PutPacket("Hello DTLS Client".ToUtf8());
///  
///                 }
///  
///             }
///  
///         }
///  
///     }
///  
/// }
///  
/// [/csharp]
///  
/// [/codeblocks]
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// # client_node.gd
///  
/// extends Node
///  
///  
/// var dtls := PacketPeerDTLS.new()
///  
/// var udp := PacketPeerUDP.new()
///  
/// var connected = false
///  
///  
/// func _ready():
///  
///     udp.connect_to_host("127.0.0.1", 4242)
///  
///     dtls.connect_to_peer(udp, false) # Use true in production for certificate validation!
///  
///  
/// func _process(delta):
///  
///     dtls.poll()
///  
///     if dtls.get_status() == PacketPeerDTLS.STATUS_CONNECTED:
///  
///         if !connected:
///  
///             # Try to contact server
///  
///             dtls.put_packet("The answer is... 42!".to_utf8())
///  
///         while dtls.get_available_packet_count() > 0:
///  
///             print("Connected: %s" % dtls.get_packet().get_string_from_utf8())
///  
///             connected = true
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// // ClientNode.cs
///  
/// using Godot;
///  
/// using System.Text;
///  
///  
/// public partial class ClientNode : Node
///  
/// {
///  
///     private PacketPeerDtls _dtls = new PacketPeerDtls();
///  
///     private PacketPeerUdp _udp = new PacketPeerUdp();
///  
///     private bool _connected = false;
///  
///  
///     public override void _Ready()
///  
///     {
///  
///         _udp.ConnectToHost("127.0.0.1", 4242);
///  
///         _dtls.ConnectToPeer(_udp, validateCerts: false); // Use true in production for certificate validation!
///  
///     }
///  
///  
///     public override void _Process(double delta)
///  
///     {
///  
///         _dtls.Poll();
///  
///         if (_dtls.GetStatus() == PacketPeerDtls.Status.Connected)
///  
///         {
///  
///             if (!_connected)
///  
///             {
///  
///                 // Try to contact server
///  
///                 _dtls.PutPacket("The Answer Is..42!".ToUtf8());
///  
///             }
///  
///             while (_dtls.GetAvailablePacketCount() > 0)
///  
///             {
///  
///                 GD.Print($"Connected: {_dtls.GetPacket().GetStringFromUtf8()}");
///  
///                 _connected = true;
///  
///             }
///  
///         }
///  
///     }
///  
/// }
///  
/// [/csharp]
///  
/// [/codeblocks]
open class DTLSServer : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_DTLSServer }

    static var _method_setup_1262296096: StringName! = nil
    static var _method_take_connection_3946580474: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_DTLSServer == nil)
        __godot_name_DTLSServer = StringName(from: "DTLSServer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_setup_1262296096 = StringName(from: "setup")
        assert(self._method_setup_1262296096 != nil)
        self._method_take_connection_3946580474 = StringName(from: "take_connection")
        assert(self._method_take_connection_3946580474 != nil)
    }

    public func setup(server_options: TLSOptions) -> Error {
        let server_options_native = server_options._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(server_options_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_setup_1262296096._native_ptr(),
                    1262296096)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func take_connection(udp_peer: PacketPeerUDP) -> PacketPeerDTLS {
        let udp_peer_native = udp_peer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(udp_peer_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_take_connection_3946580474._native_ptr(),
                    3946580474)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PacketPeerDTLS(godot: __resPtr.pointee)
    }
}