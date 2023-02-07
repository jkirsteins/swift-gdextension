import godot_native

fileprivate var __godot_name_WebSocketMultiplayerPeer: StringName! = nil

/// MISSING
/// 
/// MISSING
public class WebSocketMultiplayerPeer : MultiplayerPeer {

    

    public override class var __godot_name: StringName { __godot_name_WebSocketMultiplayerPeer }

    static var _method_create_client_3097527179: GDExtensionMethodBindPtr! = nil
    static var _method_create_server_337374795: GDExtensionMethodBindPtr! = nil
    static var _method_get_peer_1381378851: GDExtensionMethodBindPtr! = nil
    static var _method_get_peer_address_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_get_peer_port_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_get_supported_protocols_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_set_supported_protocols_4015028928: GDExtensionMethodBindPtr! = nil
    static var _method_get_handshake_headers_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_set_handshake_headers_4015028928: GDExtensionMethodBindPtr! = nil
    static var _method_get_inbound_buffer_size_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_inbound_buffer_size_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_outbound_buffer_size_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_outbound_buffer_size_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_handshake_timeout_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_handshake_timeout_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_set_max_queued_packets_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_queued_packets_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_WebSocketMultiplayerPeer = StringName(from: "WebSocketMultiplayerPeer")

        let _method_create_client_3097527179_name = StringName(from: "create_client")
        self._method_create_client_3097527179 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_client_3097527179_name._native_ptr(), 3097527179)
        assert(WebSocketMultiplayerPeer._method_create_client_3097527179 != nil)
        let _method_create_server_337374795_name = StringName(from: "create_server")
        self._method_create_server_337374795 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_server_337374795_name._native_ptr(), 337374795)
        assert(WebSocketMultiplayerPeer._method_create_server_337374795 != nil)
        let _method_get_peer_1381378851_name = StringName(from: "get_peer")
        self._method_get_peer_1381378851 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_peer_1381378851_name._native_ptr(), 1381378851)
        assert(WebSocketMultiplayerPeer._method_get_peer_1381378851 != nil)
        let _method_get_peer_address_844755477_name = StringName(from: "get_peer_address")
        self._method_get_peer_address_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_peer_address_844755477_name._native_ptr(), 844755477)
        assert(WebSocketMultiplayerPeer._method_get_peer_address_844755477 != nil)
        let _method_get_peer_port_923996154_name = StringName(from: "get_peer_port")
        self._method_get_peer_port_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_peer_port_923996154_name._native_ptr(), 923996154)
        assert(WebSocketMultiplayerPeer._method_get_peer_port_923996154 != nil)
        let _method_get_supported_protocols_1139954409_name = StringName(from: "get_supported_protocols")
        self._method_get_supported_protocols_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_supported_protocols_1139954409_name._native_ptr(), 1139954409)
        assert(WebSocketMultiplayerPeer._method_get_supported_protocols_1139954409 != nil)
        let _method_set_supported_protocols_4015028928_name = StringName(from: "set_supported_protocols")
        self._method_set_supported_protocols_4015028928 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_supported_protocols_4015028928_name._native_ptr(), 4015028928)
        assert(WebSocketMultiplayerPeer._method_set_supported_protocols_4015028928 != nil)
        let _method_get_handshake_headers_1139954409_name = StringName(from: "get_handshake_headers")
        self._method_get_handshake_headers_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_handshake_headers_1139954409_name._native_ptr(), 1139954409)
        assert(WebSocketMultiplayerPeer._method_get_handshake_headers_1139954409 != nil)
        let _method_set_handshake_headers_4015028928_name = StringName(from: "set_handshake_headers")
        self._method_set_handshake_headers_4015028928 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_handshake_headers_4015028928_name._native_ptr(), 4015028928)
        assert(WebSocketMultiplayerPeer._method_set_handshake_headers_4015028928 != nil)
        let _method_get_inbound_buffer_size_3905245786_name = StringName(from: "get_inbound_buffer_size")
        self._method_get_inbound_buffer_size_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_inbound_buffer_size_3905245786_name._native_ptr(), 3905245786)
        assert(WebSocketMultiplayerPeer._method_get_inbound_buffer_size_3905245786 != nil)
        let _method_set_inbound_buffer_size_1286410249_name = StringName(from: "set_inbound_buffer_size")
        self._method_set_inbound_buffer_size_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_inbound_buffer_size_1286410249_name._native_ptr(), 1286410249)
        assert(WebSocketMultiplayerPeer._method_set_inbound_buffer_size_1286410249 != nil)
        let _method_get_outbound_buffer_size_3905245786_name = StringName(from: "get_outbound_buffer_size")
        self._method_get_outbound_buffer_size_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_outbound_buffer_size_3905245786_name._native_ptr(), 3905245786)
        assert(WebSocketMultiplayerPeer._method_get_outbound_buffer_size_3905245786 != nil)
        let _method_set_outbound_buffer_size_1286410249_name = StringName(from: "set_outbound_buffer_size")
        self._method_set_outbound_buffer_size_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_outbound_buffer_size_1286410249_name._native_ptr(), 1286410249)
        assert(WebSocketMultiplayerPeer._method_set_outbound_buffer_size_1286410249 != nil)
        let _method_get_handshake_timeout_1740695150_name = StringName(from: "get_handshake_timeout")
        self._method_get_handshake_timeout_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_handshake_timeout_1740695150_name._native_ptr(), 1740695150)
        assert(WebSocketMultiplayerPeer._method_get_handshake_timeout_1740695150 != nil)
        let _method_set_handshake_timeout_373806689_name = StringName(from: "set_handshake_timeout")
        self._method_set_handshake_timeout_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_handshake_timeout_373806689_name._native_ptr(), 373806689)
        assert(WebSocketMultiplayerPeer._method_set_handshake_timeout_373806689 != nil)
        let _method_set_max_queued_packets_1286410249_name = StringName(from: "set_max_queued_packets")
        self._method_set_max_queued_packets_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_max_queued_packets_1286410249_name._native_ptr(), 1286410249)
        assert(WebSocketMultiplayerPeer._method_set_max_queued_packets_1286410249 != nil)
        let _method_get_max_queued_packets_3905245786_name = StringName(from: "get_max_queued_packets")
        self._method_get_max_queued_packets_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_max_queued_packets_3905245786_name._native_ptr(), 3905245786)
        assert(WebSocketMultiplayerPeer._method_get_max_queued_packets_3905245786 != nil)
    }

    public func create_client(url: String, tls_client_options: TLSOptions) -> Error {
        withUnsafePointer(to: url) { url_native in
        let tls_client_options_native = tls_client_options._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(url_native), .init(tls_client_options_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_client_3097527179,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
    }
    public func create_server(port: Int64, bind_address: String, tls_server_options: TLSOptions) -> Error {
        withUnsafePointer(to: bind_address) { bind_address_native in
        withUnsafePointer(to: port) { port_native in
        let tls_server_options_native = tls_server_options._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(port_native), .init(bind_address_native), .init(tls_server_options_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_server_337374795,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
        }
    }
    public func get_peer(peer_id: Int64) -> WebSocketPeer {
        withUnsafePointer(to: peer_id) { peer_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(peer_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_peer_1381378851,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return WebSocketPeer(from: __resPtr.pointee)
        }
    }
    public func get_peer_address(id: Int64) -> String {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_peer_address_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
    public func get_peer_port(id: Int64) -> Int64 {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_peer_port_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func get_supported_protocols() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_supported_protocols_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func set_supported_protocols(protocols: PackedStringArray)  {
        let protocols_native = protocols._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(protocols_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_supported_protocols_4015028928,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_handshake_headers() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_handshake_headers_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func set_handshake_headers(protocols: PackedStringArray)  {
        let protocols_native = protocols._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(protocols_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_handshake_headers_4015028928,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_inbound_buffer_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_inbound_buffer_size_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_inbound_buffer_size(buffer_size: Int64)  {
        withUnsafePointer(to: buffer_size) { buffer_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(buffer_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_inbound_buffer_size_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_outbound_buffer_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_outbound_buffer_size_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_outbound_buffer_size(buffer_size: Int64)  {
        withUnsafePointer(to: buffer_size) { buffer_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(buffer_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_outbound_buffer_size_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_handshake_timeout() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_handshake_timeout_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_handshake_timeout(timeout: Float64)  {
        withUnsafePointer(to: timeout) { timeout_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(timeout_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_handshake_timeout_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_max_queued_packets(max_queued_packets: Int64)  {
        withUnsafePointer(to: max_queued_packets) { max_queued_packets_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_queued_packets_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_max_queued_packets_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_max_queued_packets() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_max_queued_packets_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
}