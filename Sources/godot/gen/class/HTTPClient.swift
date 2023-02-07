import godot_native

fileprivate var __godot_name_HTTPClient: StringName! = nil

/// Low-level hyper-text transfer protocol client.
/// 
/// Hyper-text transfer protocol client (sometimes called "User Agent"). Used to make HTTP requests to download web content, upload files and other data or to communicate with various services, among other use cases.
///  
/// See the [HTTPRequest] node for a higher-level alternative.
///  
/// [b]Note:[/b] This client only needs to connect to a host once (see [method connect_to_host]) to send multiple requests. Because of this, methods that take URLs usually take just the part after the host instead of the full URL, as the client is already connected to a host. See [method request] for a full example and to get started.
///  
/// A [HTTPClient] should be reused between multiple requests or to connect to different hosts instead of creating one client per request. Supports Transport Layer Security (TLS), including server certificate verification. HTTP status codes in the 2xx range indicate success, 3xx redirection (i.e. "try again, but over here"), 4xx something was wrong with the request, and 5xx something went wrong on the server's side.
///  
/// For more information on HTTP, see https://developer.mozilla.org/en-US/docs/Web/HTTP (or read RFC 2616 to get it straight from the source: https://tools.ietf.org/html/rfc2616).
///  
/// [b]Note:[/b] When exporting to Android, make sure to enable the [code]INTERNET[/code] permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.
///  
/// [b]Note:[/b] It's recommended to use transport encryption (TLS) and to avoid sending sensitive information (such as login credentials) in HTTP GET URL parameters. Consider using HTTP POST requests or HTTP headers for such information instead.
///  
/// [b]Note:[/b] When performing HTTP requests from a project exported to Web, keep in mind the remote server may not allow requests from foreign origins due to [url=https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS]CORS[/url]. If you host the server in question, you should modify its backend to allow requests from foreign origins by adding the [code]Access-Control-Allow-Origin: *[/code] HTTP header.
///  
/// [b]Note:[/b] TLS support is currently limited to TLS 1.0, TLS 1.1, and TLS 1.2. Attempting to connect to a TLS 1.3-only server will return an error.
///  
/// [b]Warning:[/b] TLS certificate revocation and certificate pinning are currently not supported. Revoked certificates are accepted as long as they are otherwise valid. If this is a concern, you may want to use automatically managed certificates with a short validity period.
public class HTTPClient : RefCounted {

    public enum Method : Int32 {
        case METHOD_GET = 0
        case METHOD_HEAD = 1
        case METHOD_POST = 2
        case METHOD_PUT = 3
        case METHOD_DELETE = 4
        case METHOD_OPTIONS = 5
        case METHOD_TRACE = 6
        case METHOD_CONNECT = 7
        case METHOD_PATCH = 8
        case METHOD_MAX = 9
    }
    public enum Status : Int32 {
        case STATUS_DISCONNECTED = 0
        case STATUS_RESOLVING = 1
        case STATUS_CANT_RESOLVE = 2
        case STATUS_CONNECTING = 3
        case STATUS_CANT_CONNECT = 4
        case STATUS_CONNECTED = 5
        case STATUS_REQUESTING = 6
        case STATUS_BODY = 7
        case STATUS_CONNECTION_ERROR = 8
        case STATUS_TLS_HANDSHAKE_ERROR = 9
    }
    public enum ResponseCode : Int32 {
        case RESPONSE_CONTINUE = 100
        case RESPONSE_SWITCHING_PROTOCOLS = 101
        case RESPONSE_PROCESSING = 102
        case RESPONSE_OK = 200
        case RESPONSE_CREATED = 201
        case RESPONSE_ACCEPTED = 202
        case RESPONSE_NON_AUTHORITATIVE_INFORMATION = 203
        case RESPONSE_NO_CONTENT = 204
        case RESPONSE_RESET_CONTENT = 205
        case RESPONSE_PARTIAL_CONTENT = 206
        case RESPONSE_MULTI_STATUS = 207
        case RESPONSE_ALREADY_REPORTED = 208
        case RESPONSE_IM_USED = 226
        case RESPONSE_MULTIPLE_CHOICES = 300
        case RESPONSE_MOVED_PERMANENTLY = 301
        case RESPONSE_FOUND = 302
        case RESPONSE_SEE_OTHER = 303
        case RESPONSE_NOT_MODIFIED = 304
        case RESPONSE_USE_PROXY = 305
        case RESPONSE_SWITCH_PROXY = 306
        case RESPONSE_TEMPORARY_REDIRECT = 307
        case RESPONSE_PERMANENT_REDIRECT = 308
        case RESPONSE_BAD_REQUEST = 400
        case RESPONSE_UNAUTHORIZED = 401
        case RESPONSE_PAYMENT_REQUIRED = 402
        case RESPONSE_FORBIDDEN = 403
        case RESPONSE_NOT_FOUND = 404
        case RESPONSE_METHOD_NOT_ALLOWED = 405
        case RESPONSE_NOT_ACCEPTABLE = 406
        case RESPONSE_PROXY_AUTHENTICATION_REQUIRED = 407
        case RESPONSE_REQUEST_TIMEOUT = 408
        case RESPONSE_CONFLICT = 409
        case RESPONSE_GONE = 410
        case RESPONSE_LENGTH_REQUIRED = 411
        case RESPONSE_PRECONDITION_FAILED = 412
        case RESPONSE_REQUEST_ENTITY_TOO_LARGE = 413
        case RESPONSE_REQUEST_URI_TOO_LONG = 414
        case RESPONSE_UNSUPPORTED_MEDIA_TYPE = 415
        case RESPONSE_REQUESTED_RANGE_NOT_SATISFIABLE = 416
        case RESPONSE_EXPECTATION_FAILED = 417
        case RESPONSE_IM_A_TEAPOT = 418
        case RESPONSE_MISDIRECTED_REQUEST = 421
        case RESPONSE_UNPROCESSABLE_ENTITY = 422
        case RESPONSE_LOCKED = 423
        case RESPONSE_FAILED_DEPENDENCY = 424
        case RESPONSE_UPGRADE_REQUIRED = 426
        case RESPONSE_PRECONDITION_REQUIRED = 428
        case RESPONSE_TOO_MANY_REQUESTS = 429
        case RESPONSE_REQUEST_HEADER_FIELDS_TOO_LARGE = 431
        case RESPONSE_UNAVAILABLE_FOR_LEGAL_REASONS = 451
        case RESPONSE_INTERNAL_SERVER_ERROR = 500
        case RESPONSE_NOT_IMPLEMENTED = 501
        case RESPONSE_BAD_GATEWAY = 502
        case RESPONSE_SERVICE_UNAVAILABLE = 503
        case RESPONSE_GATEWAY_TIMEOUT = 504
        case RESPONSE_HTTP_VERSION_NOT_SUPPORTED = 505
        case RESPONSE_VARIANT_ALSO_NEGOTIATES = 506
        case RESPONSE_INSUFFICIENT_STORAGE = 507
        case RESPONSE_LOOP_DETECTED = 508
        case RESPONSE_NOT_EXTENDED = 510
        case RESPONSE_NETWORK_AUTH_REQUIRED = 511
    }

    public override class var __godot_name: StringName { __godot_name_HTTPClient }

    static var _method_connect_to_host_1970282951: GDExtensionMethodBindPtr! = nil
    static var _method_set_connection_3281897016: GDExtensionMethodBindPtr! = nil
    static var _method_get_connection_2741655269: GDExtensionMethodBindPtr! = nil
    static var _method_request_raw_540161961: GDExtensionMethodBindPtr! = nil
    static var _method_request_3249905507: GDExtensionMethodBindPtr! = nil
    static var _method_close_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_has_response_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_is_response_chunked_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_response_code_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_response_headers_2981934095: GDExtensionMethodBindPtr! = nil
    static var _method_get_response_headers_as_dictionary_2382534195: GDExtensionMethodBindPtr! = nil
    static var _method_get_response_body_length_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_read_response_body_chunk_2115431945: GDExtensionMethodBindPtr! = nil
    static var _method_set_read_chunk_size_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_read_chunk_size_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_blocking_mode_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_blocking_mode_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_status_1426656811: GDExtensionMethodBindPtr! = nil
    static var _method_poll_166280745: GDExtensionMethodBindPtr! = nil
    static var _method_set_http_proxy_2956805083: GDExtensionMethodBindPtr! = nil
    static var _method_set_https_proxy_2956805083: GDExtensionMethodBindPtr! = nil
    static var _method_query_string_from_dict_2538086567: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_HTTPClient = StringName(from: "HTTPClient")

        let _method_connect_to_host_1970282951_name = StringName(from: "connect_to_host")
        self._method_connect_to_host_1970282951 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_connect_to_host_1970282951_name._native_ptr(), 1970282951)
        assert(HTTPClient._method_connect_to_host_1970282951 != nil)
        let _method_set_connection_3281897016_name = StringName(from: "set_connection")
        self._method_set_connection_3281897016 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_connection_3281897016_name._native_ptr(), 3281897016)
        assert(HTTPClient._method_set_connection_3281897016 != nil)
        let _method_get_connection_2741655269_name = StringName(from: "get_connection")
        self._method_get_connection_2741655269 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_connection_2741655269_name._native_ptr(), 2741655269)
        assert(HTTPClient._method_get_connection_2741655269 != nil)
        let _method_request_raw_540161961_name = StringName(from: "request_raw")
        self._method_request_raw_540161961 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_request_raw_540161961_name._native_ptr(), 540161961)
        assert(HTTPClient._method_request_raw_540161961 != nil)
        let _method_request_3249905507_name = StringName(from: "request")
        self._method_request_3249905507 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_request_3249905507_name._native_ptr(), 3249905507)
        assert(HTTPClient._method_request_3249905507 != nil)
        let _method_close_3218959716_name = StringName(from: "close")
        self._method_close_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_close_3218959716_name._native_ptr(), 3218959716)
        assert(HTTPClient._method_close_3218959716 != nil)
        let _method_has_response_36873697_name = StringName(from: "has_response")
        self._method_has_response_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_response_36873697_name._native_ptr(), 36873697)
        assert(HTTPClient._method_has_response_36873697 != nil)
        let _method_is_response_chunked_36873697_name = StringName(from: "is_response_chunked")
        self._method_is_response_chunked_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_response_chunked_36873697_name._native_ptr(), 36873697)
        assert(HTTPClient._method_is_response_chunked_36873697 != nil)
        let _method_get_response_code_3905245786_name = StringName(from: "get_response_code")
        self._method_get_response_code_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_response_code_3905245786_name._native_ptr(), 3905245786)
        assert(HTTPClient._method_get_response_code_3905245786 != nil)
        let _method_get_response_headers_2981934095_name = StringName(from: "get_response_headers")
        self._method_get_response_headers_2981934095 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_response_headers_2981934095_name._native_ptr(), 2981934095)
        assert(HTTPClient._method_get_response_headers_2981934095 != nil)
        let _method_get_response_headers_as_dictionary_2382534195_name = StringName(from: "get_response_headers_as_dictionary")
        self._method_get_response_headers_as_dictionary_2382534195 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_response_headers_as_dictionary_2382534195_name._native_ptr(), 2382534195)
        assert(HTTPClient._method_get_response_headers_as_dictionary_2382534195 != nil)
        let _method_get_response_body_length_3905245786_name = StringName(from: "get_response_body_length")
        self._method_get_response_body_length_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_response_body_length_3905245786_name._native_ptr(), 3905245786)
        assert(HTTPClient._method_get_response_body_length_3905245786 != nil)
        let _method_read_response_body_chunk_2115431945_name = StringName(from: "read_response_body_chunk")
        self._method_read_response_body_chunk_2115431945 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_read_response_body_chunk_2115431945_name._native_ptr(), 2115431945)
        assert(HTTPClient._method_read_response_body_chunk_2115431945 != nil)
        let _method_set_read_chunk_size_1286410249_name = StringName(from: "set_read_chunk_size")
        self._method_set_read_chunk_size_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_read_chunk_size_1286410249_name._native_ptr(), 1286410249)
        assert(HTTPClient._method_set_read_chunk_size_1286410249 != nil)
        let _method_get_read_chunk_size_3905245786_name = StringName(from: "get_read_chunk_size")
        self._method_get_read_chunk_size_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_read_chunk_size_3905245786_name._native_ptr(), 3905245786)
        assert(HTTPClient._method_get_read_chunk_size_3905245786 != nil)
        let _method_set_blocking_mode_2586408642_name = StringName(from: "set_blocking_mode")
        self._method_set_blocking_mode_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_blocking_mode_2586408642_name._native_ptr(), 2586408642)
        assert(HTTPClient._method_set_blocking_mode_2586408642 != nil)
        let _method_is_blocking_mode_enabled_36873697_name = StringName(from: "is_blocking_mode_enabled")
        self._method_is_blocking_mode_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_blocking_mode_enabled_36873697_name._native_ptr(), 36873697)
        assert(HTTPClient._method_is_blocking_mode_enabled_36873697 != nil)
        let _method_get_status_1426656811_name = StringName(from: "get_status")
        self._method_get_status_1426656811 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_status_1426656811_name._native_ptr(), 1426656811)
        assert(HTTPClient._method_get_status_1426656811 != nil)
        let _method_poll_166280745_name = StringName(from: "poll")
        self._method_poll_166280745 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_poll_166280745_name._native_ptr(), 166280745)
        assert(HTTPClient._method_poll_166280745 != nil)
        let _method_set_http_proxy_2956805083_name = StringName(from: "set_http_proxy")
        self._method_set_http_proxy_2956805083 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_http_proxy_2956805083_name._native_ptr(), 2956805083)
        assert(HTTPClient._method_set_http_proxy_2956805083 != nil)
        let _method_set_https_proxy_2956805083_name = StringName(from: "set_https_proxy")
        self._method_set_https_proxy_2956805083 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_https_proxy_2956805083_name._native_ptr(), 2956805083)
        assert(HTTPClient._method_set_https_proxy_2956805083 != nil)
        let _method_query_string_from_dict_2538086567_name = StringName(from: "query_string_from_dict")
        self._method_query_string_from_dict_2538086567 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_query_string_from_dict_2538086567_name._native_ptr(), 2538086567)
        assert(HTTPClient._method_query_string_from_dict_2538086567 != nil)
    }

    public func connect_to_host(host: String, port: Int64, tls_options: TLSOptions) -> Error {
        withUnsafePointer(to: port) { port_native in
        withUnsafePointer(to: host) { host_native in
        let tls_options_native = tls_options._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(host_native), .init(port_native), .init(tls_options_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_connect_to_host_1970282951,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
        }
    }
    public func set_connection(connection: StreamPeer)  {
        let connection_native = connection._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(connection_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_connection_3281897016,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_connection() -> StreamPeer {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_connection_2741655269,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StreamPeer(from: __resPtr.pointee)
    }
    public func request_raw(method: HTTPClient.Method, url: String, headers: PackedStringArray, body: PackedByteArray) -> Error {
        withUnsafePointer(to: url) { url_native in
        withUnsafePointer(to: method.rawValue) { method_native in
        let body_native = body._native_ptr()
        let headers_native = headers._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(method_native), .init(url_native), .init(headers_native), .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_request_raw_540161961,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
        }
    }
    public func request(method: HTTPClient.Method, url: String, headers: PackedStringArray, body: String) -> Error {
        withUnsafePointer(to: body) { body_native in
        withUnsafePointer(to: url) { url_native in
        withUnsafePointer(to: method.rawValue) { method_native in
        let headers_native = headers._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(method_native), .init(url_native), .init(headers_native), .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_request_3249905507,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
        }
        }
    }
    public func close()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_close_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func has_response() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_response_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func is_response_chunked() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_response_chunked_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_response_code() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_response_code_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_response_headers() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_response_headers_2981934095,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func get_response_headers_as_dictionary() -> Dictionary {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_response_headers_as_dictionary_2382534195,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
    }
    public func get_response_body_length() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_response_body_length_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func read_response_body_chunk() -> PackedByteArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_read_response_body_chunk_2115431945,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(from: __resPtr.pointee)
    }
    public func set_read_chunk_size(bytes: Int64)  {
        withUnsafePointer(to: bytes) { bytes_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bytes_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_read_chunk_size_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_read_chunk_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_read_chunk_size_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_blocking_mode(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_blocking_mode_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_blocking_mode_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_blocking_mode_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_status() -> HTTPClient.Status {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_status_1426656811,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return HTTPClient.Status(from: __resPtr.pointee)
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
    public func set_http_proxy(host: String, port: Int64)  {
        withUnsafePointer(to: port) { port_native in
        withUnsafePointer(to: host) { host_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(host_native), .init(port_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_http_proxy_2956805083,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_https_proxy(host: String, port: Int64)  {
        withUnsafePointer(to: port) { port_native in
        withUnsafePointer(to: host) { host_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(host_native), .init(port_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_https_proxy_2956805083,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func query_string_from_dict(fields: Dictionary) -> String {
        let fields_native = fields._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(fields_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_query_string_from_dict_2538086567,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
}