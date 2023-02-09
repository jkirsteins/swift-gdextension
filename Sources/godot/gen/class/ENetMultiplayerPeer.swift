import godot_native

fileprivate var __godot_name_ENetMultiplayerPeer: StringName! = nil

/// MISSING
/// 
/// MISSING
open class ENetMultiplayerPeer : MultiplayerPeer {

    

    public override class var __godot_name: StringName { __godot_name_ENetMultiplayerPeer }

    static var _method_create_server_1616151701: StringName! = nil
    static var _method_create_client_920217784: StringName! = nil
    static var _method_create_mesh_844576869: StringName! = nil
    static var _method_add_mesh_peer_1293458335: StringName! = nil
    static var _method_set_bind_ip_83702148: StringName! = nil
    static var _method_get_host_4103238886: StringName! = nil
    static var _method_get_peer_3793311544: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_ENetMultiplayerPeer == nil)
        __godot_name_ENetMultiplayerPeer = StringName(from: "ENetMultiplayerPeer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_create_server_1616151701 = StringName(from: "create_server")
        assert(self._method_create_server_1616151701 != nil)
        self._method_create_client_920217784 = StringName(from: "create_client")
        assert(self._method_create_client_920217784 != nil)
        self._method_create_mesh_844576869 = StringName(from: "create_mesh")
        assert(self._method_create_mesh_844576869 != nil)
        self._method_add_mesh_peer_1293458335 = StringName(from: "add_mesh_peer")
        assert(self._method_add_mesh_peer_1293458335 != nil)
        self._method_set_bind_ip_83702148 = StringName(from: "set_bind_ip")
        assert(self._method_set_bind_ip_83702148 != nil)
        self._method_get_host_4103238886 = StringName(from: "get_host")
        assert(self._method_get_host_4103238886 != nil)
        self._method_get_peer_3793311544 = StringName(from: "get_peer")
        assert(self._method_get_peer_3793311544 != nil)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_server_1616151701._native_ptr(),
                    1616151701)
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
        }
        }
        }
    }
    public func create_client(address: godot.String, port: Int64, channel_count: Int64, in_bandwidth: Int64, out_bandwidth: Int64, local_port: Int64) -> Error {
        withUnsafePointer(to: local_port) { local_port_native in
        withUnsafePointer(to: out_bandwidth) { out_bandwidth_native in
        withUnsafePointer(to: in_bandwidth) { in_bandwidth_native in
        withUnsafePointer(to: channel_count) { channel_count_native in
        withUnsafePointer(to: port) { port_native in
        let address_native = address._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(address_native), .init(port_native), .init(channel_count_native), .init(in_bandwidth_native), .init(out_bandwidth_native), .init(local_port_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_client_920217784._native_ptr(),
                    920217784)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_mesh_844576869._native_ptr(),
                    844576869)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_mesh_peer_1293458335._native_ptr(),
                    1293458335)
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
    public func set_bind_ip(ip: godot.String)  {
        let ip_native = ip._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ip_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_bind_ip_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_host() -> ENetConnection {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_host_4103238886._native_ptr(),
                    4103238886)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ENetConnection(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_peer_3793311544._native_ptr(),
                    3793311544)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ENetPacketPeer(godot: __resPtr.pointee)
        }
    }
}