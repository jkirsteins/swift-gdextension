import godot_native

fileprivate var __godot_name_UDPServer: StringName! = nil

/// Helper class to implement a UDP server.
/// 
/// A simple server that opens a UDP socket and returns connected [PacketPeerUDP] upon receiving new packets. See also [method PacketPeerUDP.connect_to_host].
///  
/// After starting the server ([method listen]), you will need to [method poll] it at regular intervals (e.g. inside [method Node._process]) for it to process new packets, delivering them to the appropriate [PacketPeerUDP], and taking new connections.
///  
/// Below a small example of how it can be used:
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// # server_node.gd
///  
/// class_name ServerNode
///  
/// extends Node
///  
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
///  
/// func _process(delta):
///  
///     server.poll() # Important!
///  
///     if server.is_connection_available():
///  
///         var peer : PacketPeerUDP = server.take_connection()
///  
///         var packet = peer.get_packet()
///  
///         print("Accepted peer: %s:%s" % [peer.get_packet_ip(), peer.get_packet_port()])
///  
///         print("Received data: %s" % [packet.get_string_from_utf8()])
///  
///         # Reply so it knows we received the message.
///  
///         peer.put_packet(packet)
///  
///         # Keep a reference so we can keep contacting the remote peer.
///  
///         peers.append(peer)
///  
///  
///     for i in range(0, peers.size()):
///  
///         pass # Do something with the connected peers.
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// // ServerNode.cs
///  
/// using Godot;
///  
/// using System.Collections.Generic;
///  
///  
/// public partial class ServerNode : Node
///  
/// {
///  
///     private UdpServer _server = new UdpServer();
///  
///     private List<PacketPeerUdp> _peers  = new List<PacketPeerUdp>();
///  
///  
///     public override void _Ready()
///  
///     {
///  
///         _server.Listen(4242);
///  
///     }
///  
///  
///     public override void _Process(double delta)
///  
///     {
///  
///         _server.Poll(); // Important!
///  
///         if (_server.IsConnectionAvailable())
///  
///         {
///  
///             PacketPeerUdp peer = _server.TakeConnection();
///  
///             byte[] packet = peer.GetPacket();
///  
///             GD.Print($"Accepted Peer: {peer.GetPacketIP()}:{peer.GetPacketPort()}");
///  
///             GD.Print($"Received Data: {packet.GetStringFromUtf8()}");
///  
///             // Reply so it knows we received the message.
///  
///             peer.PutPacket(packet);
///  
///             // Keep a reference so we can keep contacting the remote peer.
///  
///             _peers.Add(peer);
///  
///         }
///  
///         foreach (var peer in _peers)
///  
///         {
///  
///             // Do something with the peers.
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
/// class_name ClientNode
///  
/// extends Node
///  
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
///  
/// func _process(delta):
///  
///     if !connected:
///  
///         # Try to contact server
///  
///         udp.put_packet("The answer is... 42!".to_utf8())
///  
///     if udp.get_available_packet_count() > 0:
///  
///         print("Connected: %s" % udp.get_packet().get_string_from_utf8())
///  
///         connected = true
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// // ClientNode.cs
///  
/// using Godot;
///  
///  
/// public partial class ClientNode : Node
///  
/// {
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
///     }
///  
///  
///     public override void _Process(double delta)
///  
///     {
///  
///         if (!_connected)
///  
///         {
///  
///             // Try to contact server
///  
///             _udp.PutPacket("The Answer Is..42!".ToUtf8());
///  
///         }
///  
///         if (_udp.GetAvailablePacketCount() > 0)
///  
///         {
///  
///             GD.Print($"Connected: {_udp.GetPacket().GetStringFromUtf8()}");
///  
///             _connected = true;
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
open class UDPServer : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_UDPServer }

    static var _method_listen_4025329869: StringName! = nil
    static var _method_poll_166280745: StringName! = nil
    static var _method_is_connection_available_36873697: StringName! = nil
    static var _method_get_local_port_3905245786: StringName! = nil
    static var _method_is_listening_36873697: StringName! = nil
    static var _method_take_connection_808734560: StringName! = nil
    static var _method_stop_3218959716: StringName! = nil
    static var _method_set_max_pending_connections_1286410249: StringName! = nil
    static var _method_get_max_pending_connections_3905245786: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_UDPServer == nil)
        __godot_name_UDPServer = StringName(from: "UDPServer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_listen_4025329869 = StringName(from: "listen")
        assert(self._method_listen_4025329869 != nil)
        self._method_poll_166280745 = StringName(from: "poll")
        assert(self._method_poll_166280745 != nil)
        self._method_is_connection_available_36873697 = StringName(from: "is_connection_available")
        assert(self._method_is_connection_available_36873697 != nil)
        self._method_get_local_port_3905245786 = StringName(from: "get_local_port")
        assert(self._method_get_local_port_3905245786 != nil)
        self._method_is_listening_36873697 = StringName(from: "is_listening")
        assert(self._method_is_listening_36873697 != nil)
        self._method_take_connection_808734560 = StringName(from: "take_connection")
        assert(self._method_take_connection_808734560 != nil)
        self._method_stop_3218959716 = StringName(from: "stop")
        assert(self._method_stop_3218959716 != nil)
        self._method_set_max_pending_connections_1286410249 = StringName(from: "set_max_pending_connections")
        assert(self._method_set_max_pending_connections_1286410249 != nil)
        self._method_get_max_pending_connections_3905245786 = StringName(from: "get_max_pending_connections")
        assert(self._method_get_max_pending_connections_3905245786 != nil)
    }

    public func listen(port: Int64, bind_address: godot.String) -> Error {
        withUnsafePointer(to: port) { port_native in
        let bind_address_native = bind_address._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(port_native), .init(bind_address_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_listen_4025329869._native_ptr(),
                    4025329869)
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
    public func is_connection_available() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_connection_available_36873697._native_ptr(),
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
    public func get_local_port() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_local_port_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func is_listening() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_listening_36873697._native_ptr(),
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
    public func take_connection() -> PacketPeerUDP {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_take_connection_808734560._native_ptr(),
                    808734560)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PacketPeerUDP(godot: __resPtr.pointee)
    }
    public func stop()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_stop_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_max_pending_connections(max_pending_connections: Int64)  {
        withUnsafePointer(to: max_pending_connections) { max_pending_connections_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_pending_connections_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_max_pending_connections_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_max_pending_connections() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_max_pending_connections_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
}