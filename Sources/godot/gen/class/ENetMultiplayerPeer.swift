import godot_native

fileprivate var __godot_name_ENetMultiplayerPeer: StringName! = nil

/// MISSING
/// 
/// MISSING
public class ENetMultiplayerPeer : MultiplayerPeer {

    

    public override class var __godot_name: StringName { __godot_name_ENetMultiplayerPeer }

    static var _method_create_server_1616151701: GDExtensionMethodBindPtr! = nil
    static var _method_create_client_920217784: GDExtensionMethodBindPtr! = nil
    static var _method_create_mesh_844576869: GDExtensionMethodBindPtr! = nil
    static var _method_add_mesh_peer_1293458335: GDExtensionMethodBindPtr! = nil
    static var _method_set_bind_ip_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_host_4103238886: GDExtensionMethodBindPtr! = nil
    static var _method_get_peer_3793311544: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_ENetMultiplayerPeer = StringName(from: "ENetMultiplayerPeer")

        let _method_create_server_1616151701_name = StringName(from: "create_server")
        self._method_create_server_1616151701 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_server_1616151701_name._native_ptr(), 1616151701)
        assert(ENetMultiplayerPeer._method_create_server_1616151701 != nil)
        let _method_create_client_920217784_name = StringName(from: "create_client")
        self._method_create_client_920217784 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_client_920217784_name._native_ptr(), 920217784)
        assert(ENetMultiplayerPeer._method_create_client_920217784 != nil)
        let _method_create_mesh_844576869_name = StringName(from: "create_mesh")
        self._method_create_mesh_844576869 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_mesh_844576869_name._native_ptr(), 844576869)
        assert(ENetMultiplayerPeer._method_create_mesh_844576869 != nil)
        let _method_add_mesh_peer_1293458335_name = StringName(from: "add_mesh_peer")
        self._method_add_mesh_peer_1293458335 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_mesh_peer_1293458335_name._native_ptr(), 1293458335)
        assert(ENetMultiplayerPeer._method_add_mesh_peer_1293458335 != nil)
        let _method_set_bind_ip_83702148_name = StringName(from: "set_bind_ip")
        self._method_set_bind_ip_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_bind_ip_83702148_name._native_ptr(), 83702148)
        assert(ENetMultiplayerPeer._method_set_bind_ip_83702148 != nil)
        let _method_get_host_4103238886_name = StringName(from: "get_host")
        self._method_get_host_4103238886 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_host_4103238886_name._native_ptr(), 4103238886)
        assert(ENetMultiplayerPeer._method_get_host_4103238886 != nil)
        let _method_get_peer_3793311544_name = StringName(from: "get_peer")
        self._method_get_peer_3793311544 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_peer_3793311544_name._native_ptr(), 3793311544)
        assert(ENetMultiplayerPeer._method_get_peer_3793311544 != nil)
    }

    public func create_server(port: Int64, max_clients: Int64, max_channels: Int64, in_bandwidth: Int64, out_bandwidth: Int64) -> Error {
        withUnsafePointer(to: out_bandwidth) { out_bandwidth_native in
        withUnsafePointer(to: in_bandwidth) { in_bandwidth_native in
        withUnsafePointer(to: max_channels) { max_channels_native in
        withUnsafePointer(to: max_clients) { max_clients_native in
        withUnsafePointer(to: port) { port_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(port_native), .init(max_clients_native), .init(max_channels_native), .init(in_bandwidth_native), .init(out_bandwidth_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_server_1616151701,
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
    }
    public func create_client(address: String, port: Int64, channel_count: Int64, in_bandwidth: Int64, out_bandwidth: Int64, local_port: Int64) -> Error {
        withUnsafePointer(to: local_port) { local_port_native in
        withUnsafePointer(to: out_bandwidth) { out_bandwidth_native in
        withUnsafePointer(to: in_bandwidth) { in_bandwidth_native in
        withUnsafePointer(to: channel_count) { channel_count_native in
        withUnsafePointer(to: port) { port_native in
        withUnsafePointer(to: address) { address_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(address_native), .init(port_native), .init(channel_count_native), .init(in_bandwidth_native), .init(out_bandwidth_native), .init(local_port_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_client_920217784,
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
        }
    }
    public func create_mesh(unique_id: Int64) -> Error {
        withUnsafePointer(to: unique_id) { unique_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(unique_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_mesh_844576869,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
    }
    public func add_mesh_peer(peer_id: Int64, host: ENetConnection) -> Error {
        withUnsafePointer(to: peer_id) { peer_id_native in
        let host_native = host._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(peer_id_native), .init(host_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_mesh_peer_1293458335,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
    }
    public func set_bind_ip(ip: String)  {
        withUnsafePointer(to: ip) { ip_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ip_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bind_ip_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_host() -> ENetConnection {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_host_4103238886,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ENetConnection(from: __resPtr.pointee)
    }
    public func get_peer(id: Int64) -> ENetPacketPeer {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_peer_3793311544,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ENetPacketPeer(from: __resPtr.pointee)
        }
    }
}