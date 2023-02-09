import godot_native

fileprivate var __godot_name_WebSocketMultiplayerPeer: StringName! = nil

/// MISSING
/// 
/// MISSING
open class WebSocketMultiplayerPeer : MultiplayerPeer {

    

    public override class var __godot_name: StringName { __godot_name_WebSocketMultiplayerPeer }

    static var _method_create_client_3097527179: StringName! = nil
    static var _method_create_server_337374795: StringName! = nil
    static var _method_get_peer_1381378851: StringName! = nil
    static var _method_get_peer_address_844755477: StringName! = nil
    static var _method_get_peer_port_923996154: StringName! = nil
    static var _method_get_supported_protocols_1139954409: StringName! = nil
    static var _method_set_supported_protocols_4015028928: StringName! = nil
    static var _method_get_handshake_headers_1139954409: StringName! = nil
    static var _method_set_handshake_headers_4015028928: StringName! = nil
    static var _method_get_inbound_buffer_size_3905245786: StringName! = nil
    static var _method_set_inbound_buffer_size_1286410249: StringName! = nil
    static var _method_get_outbound_buffer_size_3905245786: StringName! = nil
    static var _method_set_outbound_buffer_size_1286410249: StringName! = nil
    static var _method_get_handshake_timeout_1740695150: StringName! = nil
    static var _method_set_handshake_timeout_373806689: StringName! = nil
    static var _method_set_max_queued_packets_1286410249: StringName! = nil
    static var _method_get_max_queued_packets_3905245786: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_WebSocketMultiplayerPeer == nil)
        __godot_name_WebSocketMultiplayerPeer = StringName(from: "WebSocketMultiplayerPeer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_create_client_3097527179 = StringName(from: "create_client")
        assert(self._method_create_client_3097527179 != nil)
        self._method_create_server_337374795 = StringName(from: "create_server")
        assert(self._method_create_server_337374795 != nil)
        self._method_get_peer_1381378851 = StringName(from: "get_peer")
        assert(self._method_get_peer_1381378851 != nil)
        self._method_get_peer_address_844755477 = StringName(from: "get_peer_address")
        assert(self._method_get_peer_address_844755477 != nil)
        self._method_get_peer_port_923996154 = StringName(from: "get_peer_port")
        assert(self._method_get_peer_port_923996154 != nil)
        self._method_get_supported_protocols_1139954409 = StringName(from: "get_supported_protocols")
        assert(self._method_get_supported_protocols_1139954409 != nil)
        self._method_set_supported_protocols_4015028928 = StringName(from: "set_supported_protocols")
        assert(self._method_set_supported_protocols_4015028928 != nil)
        self._method_get_handshake_headers_1139954409 = StringName(from: "get_handshake_headers")
        assert(self._method_get_handshake_headers_1139954409 != nil)
        self._method_set_handshake_headers_4015028928 = StringName(from: "set_handshake_headers")
        assert(self._method_set_handshake_headers_4015028928 != nil)
        self._method_get_inbound_buffer_size_3905245786 = StringName(from: "get_inbound_buffer_size")
        assert(self._method_get_inbound_buffer_size_3905245786 != nil)
        self._method_set_inbound_buffer_size_1286410249 = StringName(from: "set_inbound_buffer_size")
        assert(self._method_set_inbound_buffer_size_1286410249 != nil)
        self._method_get_outbound_buffer_size_3905245786 = StringName(from: "get_outbound_buffer_size")
        assert(self._method_get_outbound_buffer_size_3905245786 != nil)
        self._method_set_outbound_buffer_size_1286410249 = StringName(from: "set_outbound_buffer_size")
        assert(self._method_set_outbound_buffer_size_1286410249 != nil)
        self._method_get_handshake_timeout_1740695150 = StringName(from: "get_handshake_timeout")
        assert(self._method_get_handshake_timeout_1740695150 != nil)
        self._method_set_handshake_timeout_373806689 = StringName(from: "set_handshake_timeout")
        assert(self._method_set_handshake_timeout_373806689 != nil)
        self._method_set_max_queued_packets_1286410249 = StringName(from: "set_max_queued_packets")
        assert(self._method_set_max_queued_packets_1286410249 != nil)
        self._method_get_max_queued_packets_3905245786 = StringName(from: "get_max_queued_packets")
        assert(self._method_get_max_queued_packets_3905245786 != nil)
    }

    public func create_client(url: godot.String, tls_client_options: TLSOptions) -> Error {
        let tls_client_options_native = tls_client_options._native_ptr()
        let url_native = url._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(url_native), .init(tls_client_options_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_client_3097527179._native_ptr(),
                    3097527179)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func create_server(port: Int64, bind_address: godot.String, tls_server_options: TLSOptions) -> Error {
        withUnsafePointer(to: port) { port_native in
        let tls_server_options_native = tls_server_options._native_ptr()
        let bind_address_native = bind_address._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(port_native), .init(bind_address_native), .init(tls_server_options_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_server_337374795._native_ptr(),
                    337374795)
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
    public func get_peer(peer_id: Int64) -> WebSocketPeer {
        withUnsafePointer(to: peer_id) { peer_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(peer_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_peer_1381378851._native_ptr(),
                    1381378851)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return WebSocketPeer(godot: __resPtr.pointee)
        }
    }
    public func get_peer_address(id: Int64) -> godot.String {
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
                    Self._method_get_peer_address_844755477._native_ptr(),
                    844755477)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_peer_port_923996154._native_ptr(),
                    923996154)
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
    public func get_supported_protocols() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_supported_protocols_1139954409._native_ptr(),
                    1139954409)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func set_supported_protocols(protocols: PackedStringArray)  {
        let protocols_native = protocols._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(protocols_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_supported_protocols_4015028928._native_ptr(),
                    4015028928)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_handshake_headers_1139954409._native_ptr(),
                    1139954409)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func set_handshake_headers(protocols: PackedStringArray)  {
        let protocols_native = protocols._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(protocols_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_handshake_headers_4015028928._native_ptr(),
                    4015028928)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_inbound_buffer_size_3905245786._native_ptr(),
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
    public func set_inbound_buffer_size(buffer_size: Int64)  {
        withUnsafePointer(to: buffer_size) { buffer_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(buffer_size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_inbound_buffer_size_1286410249._native_ptr(),
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
    public func get_outbound_buffer_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_outbound_buffer_size_3905245786._native_ptr(),
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
    public func set_outbound_buffer_size(buffer_size: Int64)  {
        withUnsafePointer(to: buffer_size) { buffer_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(buffer_size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_outbound_buffer_size_1286410249._native_ptr(),
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
    public func get_handshake_timeout() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_handshake_timeout_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_handshake_timeout(timeout: Float64)  {
        withUnsafePointer(to: timeout) { timeout_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(timeout_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_handshake_timeout_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_max_queued_packets_1286410249._native_ptr(),
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
    public func get_max_queued_packets() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_max_queued_packets_3905245786._native_ptr(),
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