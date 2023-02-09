import godot_native

fileprivate var __godot_name_StreamPeerTLS: StringName! = nil

/// TLS stream peer.
/// 
/// TLS stream peer. This object can be used to connect to an TLS server or accept a single TLS client connection.
///  
/// [b]Note:[/b] When exporting to Android, make sure to enable the [code]INTERNET[/code] permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.
open class StreamPeerTLS : StreamPeer {

    public enum Status : Int32 {
        case STATUS_DISCONNECTED = 0
        case STATUS_HANDSHAKING = 1
        case STATUS_CONNECTED = 2
        case STATUS_ERROR = 3
        case STATUS_ERROR_HOSTNAME_MISMATCH = 4
    }

    public override class var __godot_name: StringName { __godot_name_StreamPeerTLS }

    static var _method_poll_3218959716: StringName! = nil
    static var _method_accept_stream_4292689651: StringName! = nil
    static var _method_connect_to_stream_1325480781: StringName! = nil
    static var _method_get_status_1128380576: StringName! = nil
    static var _method_get_stream_2741655269: StringName! = nil
    static var _method_disconnect_from_stream_3218959716: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_StreamPeerTLS == nil)
        __godot_name_StreamPeerTLS = StringName(from: "StreamPeerTLS")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_poll_3218959716 = StringName(from: "poll")
        assert(self._method_poll_3218959716 != nil)
        self._method_accept_stream_4292689651 = StringName(from: "accept_stream")
        assert(self._method_accept_stream_4292689651 != nil)
        self._method_connect_to_stream_1325480781 = StringName(from: "connect_to_stream")
        assert(self._method_connect_to_stream_1325480781 != nil)
        self._method_get_status_1128380576 = StringName(from: "get_status")
        assert(self._method_get_status_1128380576 != nil)
        self._method_get_stream_2741655269 = StringName(from: "get_stream")
        assert(self._method_get_stream_2741655269 != nil)
        self._method_disconnect_from_stream_3218959716 = StringName(from: "disconnect_from_stream")
        assert(self._method_disconnect_from_stream_3218959716 != nil)
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
    public func accept_stream(stream: StreamPeer, server_options: TLSOptions) -> Error {
        let server_options_native = server_options._native_ptr()
        let stream_native = stream._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(stream_native), .init(server_options_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_accept_stream_4292689651._native_ptr(),
                    4292689651)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func connect_to_stream(stream: StreamPeer, common_name: godot.String, client_options: TLSOptions) -> Error {
        let client_options_native = client_options._native_ptr()
        let common_name_native = common_name._native_ptr()
        let stream_native = stream._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(stream_native), .init(common_name_native), .init(client_options_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_connect_to_stream_1325480781._native_ptr(),
                    1325480781)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func get_status() -> StreamPeerTLS.Status {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_status_1128380576._native_ptr(),
                    1128380576)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StreamPeerTLS.Status(godot: __resPtr.pointee)
    }
    public func get_stream() -> StreamPeer {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_stream_2741655269._native_ptr(),
                    2741655269)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StreamPeer(godot: __resPtr.pointee)
    }
    public func disconnect_from_stream()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_disconnect_from_stream_3218959716._native_ptr(),
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