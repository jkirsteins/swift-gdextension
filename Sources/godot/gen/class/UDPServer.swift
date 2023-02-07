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
public class UDPServer : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_UDPServer }

    static var _method_listen_4025329869: GDExtensionMethodBindPtr! = nil
    static var _method_poll_166280745: GDExtensionMethodBindPtr! = nil
    static var _method_is_connection_available_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_local_port_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_is_listening_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_take_connection_808734560: GDExtensionMethodBindPtr! = nil
    static var _method_stop_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_max_pending_connections_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_pending_connections_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_UDPServer = StringName(from: "UDPServer")

        let _method_listen_4025329869_name = StringName(from: "listen")
        self._method_listen_4025329869 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_listen_4025329869_name._native_ptr(), 4025329869)
        assert(UDPServer._method_listen_4025329869 != nil)
        let _method_poll_166280745_name = StringName(from: "poll")
        self._method_poll_166280745 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_poll_166280745_name._native_ptr(), 166280745)
        assert(UDPServer._method_poll_166280745 != nil)
        let _method_is_connection_available_36873697_name = StringName(from: "is_connection_available")
        self._method_is_connection_available_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_connection_available_36873697_name._native_ptr(), 36873697)
        assert(UDPServer._method_is_connection_available_36873697 != nil)
        let _method_get_local_port_3905245786_name = StringName(from: "get_local_port")
        self._method_get_local_port_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_local_port_3905245786_name._native_ptr(), 3905245786)
        assert(UDPServer._method_get_local_port_3905245786 != nil)
        let _method_is_listening_36873697_name = StringName(from: "is_listening")
        self._method_is_listening_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_listening_36873697_name._native_ptr(), 36873697)
        assert(UDPServer._method_is_listening_36873697 != nil)
        let _method_take_connection_808734560_name = StringName(from: "take_connection")
        self._method_take_connection_808734560 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_take_connection_808734560_name._native_ptr(), 808734560)
        assert(UDPServer._method_take_connection_808734560 != nil)
        let _method_stop_3218959716_name = StringName(from: "stop")
        self._method_stop_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_stop_3218959716_name._native_ptr(), 3218959716)
        assert(UDPServer._method_stop_3218959716 != nil)
        let _method_set_max_pending_connections_1286410249_name = StringName(from: "set_max_pending_connections")
        self._method_set_max_pending_connections_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_max_pending_connections_1286410249_name._native_ptr(), 1286410249)
        assert(UDPServer._method_set_max_pending_connections_1286410249 != nil)
        let _method_get_max_pending_connections_3905245786_name = StringName(from: "get_max_pending_connections")
        self._method_get_max_pending_connections_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_max_pending_connections_3905245786_name._native_ptr(), 3905245786)
        assert(UDPServer._method_get_max_pending_connections_3905245786 != nil)
    }

    public func listen(port: Int64, bind_address: String) -> Error {
        withUnsafePointer(to: bind_address) { bind_address_native in
        withUnsafePointer(to: port) { port_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(port_native), .init(bind_address_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_listen_4025329869,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
        }
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
    public func is_connection_available() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_connection_available_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_local_port() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_local_port_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func is_listening() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_listening_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func take_connection() -> PacketPeerUDP {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_take_connection_808734560,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PacketPeerUDP(from: __resPtr.pointee)
    }
    public func stop()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_stop_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_max_pending_connections_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_max_pending_connections_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
}