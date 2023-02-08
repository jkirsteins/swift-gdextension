import godot_native

fileprivate var __godot_name_WebSocketPeer: StringName! = nil

/// MISSING
/// 
/// MISSING
open class WebSocketPeer : PacketPeer {

    public enum WriteMode : Int32 {
        case WRITE_MODE_TEXT = 0
        case WRITE_MODE_BINARY = 1
    }
    public enum State : Int32 {
        case STATE_CONNECTING = 0
        case STATE_OPEN = 1
        case STATE_CLOSING = 2
        case STATE_CLOSED = 3
    }

    public override class var __godot_name: StringName { __godot_name_WebSocketPeer }

    static var _method_connect_to_url_3097527179: GDExtensionMethodBindPtr! = nil
    static var _method_accept_stream_255125695: GDExtensionMethodBindPtr! = nil
    static var _method_send_3440492527: GDExtensionMethodBindPtr! = nil
    static var _method_send_text_166001499: GDExtensionMethodBindPtr! = nil
    static var _method_was_string_packet_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_poll_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_close_1047156615: GDExtensionMethodBindPtr! = nil
    static var _method_get_connected_host_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_connected_port_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_selected_protocol_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_requested_url_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_no_delay_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_current_outbound_buffered_amount_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_ready_state_346482985: GDExtensionMethodBindPtr! = nil
    static var _method_get_close_code_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_close_reason_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_supported_protocols_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_set_supported_protocols_4015028928: GDExtensionMethodBindPtr! = nil
    static var _method_get_handshake_headers_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_set_handshake_headers_4015028928: GDExtensionMethodBindPtr! = nil
    static var _method_get_inbound_buffer_size_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_inbound_buffer_size_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_outbound_buffer_size_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_outbound_buffer_size_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_max_queued_packets_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_queued_packets_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_WebSocketPeer = StringName(from: "WebSocketPeer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_connect_to_url_3097527179_name = StringName(from: "connect_to_url")
        self._method_connect_to_url_3097527179 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebSocketPeer._native_ptr(), _method_connect_to_url_3097527179_name._native_ptr(), 3097527179)
        assert(WebSocketPeer._method_connect_to_url_3097527179 != nil)
        let _method_accept_stream_255125695_name = StringName(from: "accept_stream")
        self._method_accept_stream_255125695 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebSocketPeer._native_ptr(), _method_accept_stream_255125695_name._native_ptr(), 255125695)
        assert(WebSocketPeer._method_accept_stream_255125695 != nil)
        let _method_send_3440492527_name = StringName(from: "send")
        self._method_send_3440492527 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebSocketPeer._native_ptr(), _method_send_3440492527_name._native_ptr(), 3440492527)
        assert(WebSocketPeer._method_send_3440492527 != nil)
        let _method_send_text_166001499_name = StringName(from: "send_text")
        self._method_send_text_166001499 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebSocketPeer._native_ptr(), _method_send_text_166001499_name._native_ptr(), 166001499)
        assert(WebSocketPeer._method_send_text_166001499 != nil)
        let _method_was_string_packet_36873697_name = StringName(from: "was_string_packet")
        self._method_was_string_packet_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebSocketPeer._native_ptr(), _method_was_string_packet_36873697_name._native_ptr(), 36873697)
        assert(WebSocketPeer._method_was_string_packet_36873697 != nil)
        let _method_poll_3218959716_name = StringName(from: "poll")
        self._method_poll_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebSocketPeer._native_ptr(), _method_poll_3218959716_name._native_ptr(), 3218959716)
        assert(WebSocketPeer._method_poll_3218959716 != nil)
        let _method_close_1047156615_name = StringName(from: "close")
        self._method_close_1047156615 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebSocketPeer._native_ptr(), _method_close_1047156615_name._native_ptr(), 1047156615)
        assert(WebSocketPeer._method_close_1047156615 != nil)
        let _method_get_connected_host_201670096_name = StringName(from: "get_connected_host")
        self._method_get_connected_host_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebSocketPeer._native_ptr(), _method_get_connected_host_201670096_name._native_ptr(), 201670096)
        assert(WebSocketPeer._method_get_connected_host_201670096 != nil)
        let _method_get_connected_port_3905245786_name = StringName(from: "get_connected_port")
        self._method_get_connected_port_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebSocketPeer._native_ptr(), _method_get_connected_port_3905245786_name._native_ptr(), 3905245786)
        assert(WebSocketPeer._method_get_connected_port_3905245786 != nil)
        let _method_get_selected_protocol_201670096_name = StringName(from: "get_selected_protocol")
        self._method_get_selected_protocol_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebSocketPeer._native_ptr(), _method_get_selected_protocol_201670096_name._native_ptr(), 201670096)
        assert(WebSocketPeer._method_get_selected_protocol_201670096 != nil)
        let _method_get_requested_url_201670096_name = StringName(from: "get_requested_url")
        self._method_get_requested_url_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebSocketPeer._native_ptr(), _method_get_requested_url_201670096_name._native_ptr(), 201670096)
        assert(WebSocketPeer._method_get_requested_url_201670096 != nil)
        let _method_set_no_delay_2586408642_name = StringName(from: "set_no_delay")
        self._method_set_no_delay_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebSocketPeer._native_ptr(), _method_set_no_delay_2586408642_name._native_ptr(), 2586408642)
        assert(WebSocketPeer._method_set_no_delay_2586408642 != nil)
        let _method_get_current_outbound_buffered_amount_3905245786_name = StringName(from: "get_current_outbound_buffered_amount")
        self._method_get_current_outbound_buffered_amount_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebSocketPeer._native_ptr(), _method_get_current_outbound_buffered_amount_3905245786_name._native_ptr(), 3905245786)
        assert(WebSocketPeer._method_get_current_outbound_buffered_amount_3905245786 != nil)
        let _method_get_ready_state_346482985_name = StringName(from: "get_ready_state")
        self._method_get_ready_state_346482985 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebSocketPeer._native_ptr(), _method_get_ready_state_346482985_name._native_ptr(), 346482985)
        assert(WebSocketPeer._method_get_ready_state_346482985 != nil)
        let _method_get_close_code_3905245786_name = StringName(from: "get_close_code")
        self._method_get_close_code_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebSocketPeer._native_ptr(), _method_get_close_code_3905245786_name._native_ptr(), 3905245786)
        assert(WebSocketPeer._method_get_close_code_3905245786 != nil)
        let _method_get_close_reason_201670096_name = StringName(from: "get_close_reason")
        self._method_get_close_reason_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebSocketPeer._native_ptr(), _method_get_close_reason_201670096_name._native_ptr(), 201670096)
        assert(WebSocketPeer._method_get_close_reason_201670096 != nil)
        let _method_get_supported_protocols_1139954409_name = StringName(from: "get_supported_protocols")
        self._method_get_supported_protocols_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebSocketPeer._native_ptr(), _method_get_supported_protocols_1139954409_name._native_ptr(), 1139954409)
        assert(WebSocketPeer._method_get_supported_protocols_1139954409 != nil)
        let _method_set_supported_protocols_4015028928_name = StringName(from: "set_supported_protocols")
        self._method_set_supported_protocols_4015028928 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebSocketPeer._native_ptr(), _method_set_supported_protocols_4015028928_name._native_ptr(), 4015028928)
        assert(WebSocketPeer._method_set_supported_protocols_4015028928 != nil)
        let _method_get_handshake_headers_1139954409_name = StringName(from: "get_handshake_headers")
        self._method_get_handshake_headers_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebSocketPeer._native_ptr(), _method_get_handshake_headers_1139954409_name._native_ptr(), 1139954409)
        assert(WebSocketPeer._method_get_handshake_headers_1139954409 != nil)
        let _method_set_handshake_headers_4015028928_name = StringName(from: "set_handshake_headers")
        self._method_set_handshake_headers_4015028928 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebSocketPeer._native_ptr(), _method_set_handshake_headers_4015028928_name._native_ptr(), 4015028928)
        assert(WebSocketPeer._method_set_handshake_headers_4015028928 != nil)
        let _method_get_inbound_buffer_size_3905245786_name = StringName(from: "get_inbound_buffer_size")
        self._method_get_inbound_buffer_size_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebSocketPeer._native_ptr(), _method_get_inbound_buffer_size_3905245786_name._native_ptr(), 3905245786)
        assert(WebSocketPeer._method_get_inbound_buffer_size_3905245786 != nil)
        let _method_set_inbound_buffer_size_1286410249_name = StringName(from: "set_inbound_buffer_size")
        self._method_set_inbound_buffer_size_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebSocketPeer._native_ptr(), _method_set_inbound_buffer_size_1286410249_name._native_ptr(), 1286410249)
        assert(WebSocketPeer._method_set_inbound_buffer_size_1286410249 != nil)
        let _method_get_outbound_buffer_size_3905245786_name = StringName(from: "get_outbound_buffer_size")
        self._method_get_outbound_buffer_size_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebSocketPeer._native_ptr(), _method_get_outbound_buffer_size_3905245786_name._native_ptr(), 3905245786)
        assert(WebSocketPeer._method_get_outbound_buffer_size_3905245786 != nil)
        let _method_set_outbound_buffer_size_1286410249_name = StringName(from: "set_outbound_buffer_size")
        self._method_set_outbound_buffer_size_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebSocketPeer._native_ptr(), _method_set_outbound_buffer_size_1286410249_name._native_ptr(), 1286410249)
        assert(WebSocketPeer._method_set_outbound_buffer_size_1286410249 != nil)
        let _method_set_max_queued_packets_1286410249_name = StringName(from: "set_max_queued_packets")
        self._method_set_max_queued_packets_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebSocketPeer._native_ptr(), _method_set_max_queued_packets_1286410249_name._native_ptr(), 1286410249)
        assert(WebSocketPeer._method_set_max_queued_packets_1286410249 != nil)
        let _method_get_max_queued_packets_3905245786_name = StringName(from: "get_max_queued_packets")
        self._method_get_max_queued_packets_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebSocketPeer._native_ptr(), _method_get_max_queued_packets_3905245786_name._native_ptr(), 3905245786)
        assert(WebSocketPeer._method_get_max_queued_packets_3905245786 != nil)
    }

    public func connect_to_url(url: godot.String, tls_client_options: TLSOptions) -> Error {
        let tls_client_options_native = tls_client_options._native_ptr()
        let url_native = url._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(url_native), .init(tls_client_options_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_connect_to_url_3097527179,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func accept_stream(stream: StreamPeer) -> Error {
        let stream_native = stream._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(stream_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_accept_stream_255125695,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func send(message: PackedByteArray, write_mode: WebSocketPeer.WriteMode) -> Error {
        withUnsafePointer(to: write_mode.rawValue) { write_mode_native in
        let message_native = message._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(message_native), .init(write_mode_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_send_3440492527,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
    }
    public func send_text(message: godot.String) -> Error {
        let message_native = message._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(message_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_send_text_166001499,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func was_string_packet() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_was_string_packet_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
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
    public func close(code: Int64, reason: godot.String)  {
        withUnsafePointer(to: code) { code_native in
        let reason_native = reason._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(code_native), .init(reason_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_close_1047156615,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_connected_host() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_connected_host_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_connected_port() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_connected_port_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_selected_protocol() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_selected_protocol_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_requested_url() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_requested_url_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func set_no_delay(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_no_delay_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_current_outbound_buffered_amount() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_current_outbound_buffered_amount_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_ready_state() -> WebSocketPeer.State {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ready_state_346482985,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return WebSocketPeer.State(godot: __resPtr.pointee)
    }
    public func get_close_code() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_close_code_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_close_reason() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_close_reason_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_outbound_buffer_size_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_max_queued_packets(buffer_size: Int64)  {
        withUnsafePointer(to: buffer_size) { buffer_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(buffer_size_native)
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
            return Int64(godot: __resPtr.pointee)
    }
}