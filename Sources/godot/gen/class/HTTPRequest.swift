import godot_native

fileprivate var __godot_name_HTTPRequest: StringName! = nil

/// A node with the ability to send HTTP(S) requests.
/// 
/// A node with the ability to send HTTP requests. Uses [HTTPClient] internally.
///  
/// Can be used to make HTTP requests, i.e. download or upload files or web content via HTTP.
///  
/// [b]Warning:[/b] See the notes and warnings on [HTTPClient] for limitations, especially regarding TLS security.
///  
/// [b]Note:[/b] When exporting to Android, make sure to enable the [code]INTERNET[/code] permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.
///  
/// [b]Example of contacting a REST API and printing one of its returned fields:[/b]
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// func _ready():
///  
///     # Create an HTTP request node and connect its completion signal.
///  
///     var http_request = HTTPRequest.new()
///  
///     add_child(http_request)
///  
///     http_request.request_completed.connect(self._http_request_completed)
///  
///  
///     # Perform a GET request. The URL below returns JSON as of writing.
///  
///     var error = http_request.request("https://httpbin.org/get")
///  
///     if error != OK:
///  
///         push_error("An error occurred in the HTTP request.")
///  
///  
///     # Perform a POST request. The URL below returns JSON as of writing.
///  
///     # Note: Don't make simultaneous requests using a single HTTPRequest node.
///  
///     # The snippet below is provided for reference only.
///  
///     var body = JSON.new().stringify({"name": "Godette"})
///  
///     error = http_request.request("https://httpbin.org/post", [], true, HTTPClient.METHOD_POST, body)
///  
///     if error != OK:
///  
///         push_error("An error occurred in the HTTP request.")
///  
///  
/// # Called when the HTTP request is completed.
///  
/// func _http_request_completed(result, response_code, headers, body):
///  
///     var json = JSON.new()
///  
///     json.parse(body.get_string_from_utf8())
///  
///     var response = json.get_data()
///  
///  
///     # Will print the user agent string used by the HTTPRequest node (as recognized by httpbin.org).
///  
///     print(response.headers["User-Agent"])
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// public override void _Ready()
///  
/// {
///  
///     // Create an HTTP request node and connect its completion signal.
///  
///     var httpRequest = new HTTPRequest();
///  
///     AddChild(httpRequest);
///  
///     httpRequest.RequestCompleted += HttpRequestCompleted;
///  
///  
///     // Perform a GET request. The URL below returns JSON as of writing.
///  
///     Error error = httpRequest.Request("https://httpbin.org/get");
///  
///     if (error != Error.Ok)
///  
///     {
///  
///         GD.PushError("An error occurred in the HTTP request.");
///  
///     }
///  
///  
///     // Perform a POST request. The URL below returns JSON as of writing.
///  
///     // Note: Don't make simultaneous requests using a single HTTPRequest node.
///  
///     // The snippet below is provided for reference only.
///  
///     string body = new Json().Stringify(new Godot.Collections.Dictionary
///  
///     {
///  
///         { "name", "Godette" }
///  
///     });
///  
///     error = httpRequest.Request("https://httpbin.org/post", null, true, HTTPClient.Method.Post, body);
///  
///     if (error != Error.Ok)
///  
///     {
///  
///         GD.PushError("An error occurred in the HTTP request.");
///  
///     }
///  
/// }
///  
///  
/// // Called when the HTTP request is completed.
///  
/// private void HttpRequestCompleted(long result, long responseCode, string[] headers, byte[] body)
///  
/// {
///  
///     var json = new Json();
///  
///     json.Parse(body.GetStringFromUtf8());
///  
///     var response = json.GetData().AsGodotDictionary();
///  
///  
///     // Will print the user agent string used by the HTTPRequest node (as recognized by httpbin.org).
///  
///     GD.Print((response["headers"].AsGodotDictionary())["User-Agent"]);
///  
/// }
///  
/// [/csharp]
///  
/// [/codeblocks]
///  
/// [b]Example of loading and displaying an image using HTTPRequest:[/b]
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// func _ready():
///  
///     # Create an HTTP request node and connect its completion signal.
///  
///     var http_request = HTTPRequest.new()
///  
///     add_child(http_request)
///  
///     http_request.request_completed.connect(self._http_request_completed)
///  
///  
///     # Perform the HTTP request. The URL below returns a PNG image as of writing.
///  
///     var error = http_request.request("https://via.placeholder.com/512")
///  
///     if error != OK:
///  
///         push_error("An error occurred in the HTTP request.")
///  
///  
/// # Called when the HTTP request is completed.
///  
/// func _http_request_completed(result, response_code, headers, body):
///  
///     if result != HTTPRequest.RESULT_SUCCESS:
///  
///         push_error("Image couldn't be downloaded. Try a different image.")
///  
///  
///     var image = Image.new()
///  
///     var error = image.load_png_from_buffer(body)
///  
///     if error != OK:
///  
///         push_error("Couldn't load the image.")
///  
///  
///     var texture = ImageTexture.create_from_image(image)
///  
///  
///     # Display the image in a TextureRect node.
///  
///     var texture_rect = TextureRect.new()
///  
///     add_child(texture_rect)
///  
///     texture_rect.texture = texture
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// public override void _Ready()
///  
/// {
///  
///     // Create an HTTP request node and connect its completion signal.
///  
///     var httpRequest = new HTTPRequest();
///  
///     AddChild(httpRequest);
///  
///     httpRequest.RequestCompleted += HttpRequestCompleted;
///  
///  
///     // Perform the HTTP request. The URL below returns a PNG image as of writing.
///  
///     Error error = httpRequest.Request("https://via.placeholder.com/512");
///  
///     if (error != Error.Ok)
///  
///     {
///  
///         GD.PushError("An error occurred in the HTTP request.");
///  
///     }
///  
/// }
///  
///  
/// // Called when the HTTP request is completed.
///  
/// private void HttpRequestCompleted(long result, long responseCode, string[] headers, byte[] body)
///  
/// {
///  
///     if (result != (long)HTTPRequest.Result.Success)
///  
///     {
///  
///         GD.PushError("Image couldn't be downloaded. Try a different image.");
///  
///     }
///  
///     var image = new Image();
///  
///     Error error = image.LoadPngFromBuffer(body);
///  
///     if (error != Error.Ok)
///  
///     {
///  
///         GD.PushError("Couldn't load the image.");
///  
///     }
///  
///  
///     var texture = new ImageTexture();
///  
///     texture.CreateFromImage(image);
///  
///  
///     // Display the image in a TextureRect node.
///  
///     var textureRect = new TextureRect();
///  
///     AddChild(textureRect);
///  
///     textureRect.Texture = texture;
///  
/// }
///  
/// [/csharp]
///  
/// [/codeblocks]
///  
/// [b]Gzipped response bodies[/b]: HTTPRequest will automatically handle decompression of response bodies. A [code]Accept-Encoding[/code] header will be automatically added to each of your requests, unless one is already specified. Any response with a [code]Content-Encoding: gzip[/code] header will automatically be decompressed and delivered to you as uncompressed bytes.
open class HTTPRequest : Node {

    public enum Result : Int32 {
        case RESULT_SUCCESS = 0
        case RESULT_CHUNKED_BODY_SIZE_MISMATCH = 1
        case RESULT_CANT_CONNECT = 2
        case RESULT_CANT_RESOLVE = 3
        case RESULT_CONNECTION_ERROR = 4
        case RESULT_TLS_HANDSHAKE_ERROR = 5
        case RESULT_NO_RESPONSE = 6
        case RESULT_BODY_SIZE_LIMIT_EXCEEDED = 7
        case RESULT_BODY_DECOMPRESS_FAILED = 8
        case RESULT_REQUEST_FAILED = 9
        case RESULT_DOWNLOAD_FILE_CANT_OPEN = 10
        case RESULT_DOWNLOAD_FILE_WRITE_ERROR = 11
        case RESULT_REDIRECT_LIMIT_REACHED = 12
        case RESULT_TIMEOUT = 13
    }

    public override class var __godot_name: StringName { __godot_name_HTTPRequest }

    static var _method_request_2720304520: StringName! = nil
    static var _method_request_raw_4282724657: StringName! = nil
    static var _method_cancel_request_3218959716: StringName! = nil
    static var _method_set_tls_options_2210231844: StringName! = nil
    static var _method_get_http_client_status_1426656811: StringName! = nil
    static var _method_set_use_threads_2586408642: StringName! = nil
    static var _method_is_using_threads_36873697: StringName! = nil
    static var _method_set_accept_gzip_2586408642: StringName! = nil
    static var _method_is_accepting_gzip_36873697: StringName! = nil
    static var _method_set_body_size_limit_1286410249: StringName! = nil
    static var _method_get_body_size_limit_3905245786: StringName! = nil
    static var _method_set_max_redirects_1286410249: StringName! = nil
    static var _method_get_max_redirects_3905245786: StringName! = nil
    static var _method_set_download_file_83702148: StringName! = nil
    static var _method_get_download_file_201670096: StringName! = nil
    static var _method_get_downloaded_bytes_3905245786: StringName! = nil
    static var _method_get_body_size_3905245786: StringName! = nil
    static var _method_set_timeout_373806689: StringName! = nil
    static var _method_get_timeout_191475506: StringName! = nil
    static var _method_set_download_chunk_size_1286410249: StringName! = nil
    static var _method_get_download_chunk_size_3905245786: StringName! = nil
    static var _method_set_http_proxy_2956805083: StringName! = nil
    static var _method_set_https_proxy_2956805083: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_HTTPRequest == nil)
        __godot_name_HTTPRequest = StringName(from: "HTTPRequest")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_request_2720304520 = StringName(from: "request")
        assert(self._method_request_2720304520 != nil)
        self._method_request_raw_4282724657 = StringName(from: "request_raw")
        assert(self._method_request_raw_4282724657 != nil)
        self._method_cancel_request_3218959716 = StringName(from: "cancel_request")
        assert(self._method_cancel_request_3218959716 != nil)
        self._method_set_tls_options_2210231844 = StringName(from: "set_tls_options")
        assert(self._method_set_tls_options_2210231844 != nil)
        self._method_get_http_client_status_1426656811 = StringName(from: "get_http_client_status")
        assert(self._method_get_http_client_status_1426656811 != nil)
        self._method_set_use_threads_2586408642 = StringName(from: "set_use_threads")
        assert(self._method_set_use_threads_2586408642 != nil)
        self._method_is_using_threads_36873697 = StringName(from: "is_using_threads")
        assert(self._method_is_using_threads_36873697 != nil)
        self._method_set_accept_gzip_2586408642 = StringName(from: "set_accept_gzip")
        assert(self._method_set_accept_gzip_2586408642 != nil)
        self._method_is_accepting_gzip_36873697 = StringName(from: "is_accepting_gzip")
        assert(self._method_is_accepting_gzip_36873697 != nil)
        self._method_set_body_size_limit_1286410249 = StringName(from: "set_body_size_limit")
        assert(self._method_set_body_size_limit_1286410249 != nil)
        self._method_get_body_size_limit_3905245786 = StringName(from: "get_body_size_limit")
        assert(self._method_get_body_size_limit_3905245786 != nil)
        self._method_set_max_redirects_1286410249 = StringName(from: "set_max_redirects")
        assert(self._method_set_max_redirects_1286410249 != nil)
        self._method_get_max_redirects_3905245786 = StringName(from: "get_max_redirects")
        assert(self._method_get_max_redirects_3905245786 != nil)
        self._method_set_download_file_83702148 = StringName(from: "set_download_file")
        assert(self._method_set_download_file_83702148 != nil)
        self._method_get_download_file_201670096 = StringName(from: "get_download_file")
        assert(self._method_get_download_file_201670096 != nil)
        self._method_get_downloaded_bytes_3905245786 = StringName(from: "get_downloaded_bytes")
        assert(self._method_get_downloaded_bytes_3905245786 != nil)
        self._method_get_body_size_3905245786 = StringName(from: "get_body_size")
        assert(self._method_get_body_size_3905245786 != nil)
        self._method_set_timeout_373806689 = StringName(from: "set_timeout")
        assert(self._method_set_timeout_373806689 != nil)
        self._method_get_timeout_191475506 = StringName(from: "get_timeout")
        assert(self._method_get_timeout_191475506 != nil)
        self._method_set_download_chunk_size_1286410249 = StringName(from: "set_download_chunk_size")
        assert(self._method_set_download_chunk_size_1286410249 != nil)
        self._method_get_download_chunk_size_3905245786 = StringName(from: "get_download_chunk_size")
        assert(self._method_get_download_chunk_size_3905245786 != nil)
        self._method_set_http_proxy_2956805083 = StringName(from: "set_http_proxy")
        assert(self._method_set_http_proxy_2956805083 != nil)
        self._method_set_https_proxy_2956805083 = StringName(from: "set_https_proxy")
        assert(self._method_set_https_proxy_2956805083 != nil)
    }

    public func request(url: godot.String, custom_headers: PackedStringArray, method: HTTPClient.Method, request_data: godot.String) -> Error {
        withUnsafePointer(to: method.rawValue) { method_native in
        let request_data_native = request_data._native_ptr()
        let custom_headers_native = custom_headers._native_ptr()
        let url_native = url._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(url_native), .init(custom_headers_native), .init(method_native), .init(request_data_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_request_2720304520._native_ptr(),
                    2720304520)
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
    public func request_raw(url: godot.String, custom_headers: PackedStringArray, method: HTTPClient.Method, request_data_raw: PackedByteArray) -> Error {
        withUnsafePointer(to: method.rawValue) { method_native in
        let request_data_raw_native = request_data_raw._native_ptr()
        let custom_headers_native = custom_headers._native_ptr()
        let url_native = url._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(url_native), .init(custom_headers_native), .init(method_native), .init(request_data_raw_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_request_raw_4282724657._native_ptr(),
                    4282724657)
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
    public func cancel_request()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_cancel_request_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_tls_options(client_options: TLSOptions)  {
        let client_options_native = client_options._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(client_options_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tls_options_2210231844._native_ptr(),
                    2210231844)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_http_client_status() -> HTTPClient.Status {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_http_client_status_1426656811._native_ptr(),
                    1426656811)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return HTTPClient.Status(godot: __resPtr.pointee)
    }
    public func set_use_threads(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_use_threads_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_using_threads() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_using_threads_36873697._native_ptr(),
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
    public func set_accept_gzip(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_accept_gzip_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_accepting_gzip() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_accepting_gzip_36873697._native_ptr(),
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
    public func set_body_size_limit(bytes: Int64)  {
        withUnsafePointer(to: bytes) { bytes_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bytes_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_body_size_limit_1286410249._native_ptr(),
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
    public func get_body_size_limit() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_body_size_limit_3905245786._native_ptr(),
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
    public func set_max_redirects(amount: Int64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_max_redirects_1286410249._native_ptr(),
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
    public func get_max_redirects() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_max_redirects_3905245786._native_ptr(),
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
    public func set_download_file(path: godot.String)  {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_download_file_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_download_file() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_download_file_201670096._native_ptr(),
                    201670096)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_downloaded_bytes() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_downloaded_bytes_3905245786._native_ptr(),
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
    public func get_body_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_body_size_3905245786._native_ptr(),
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
    public func set_timeout(timeout: Float64)  {
        withUnsafePointer(to: timeout) { timeout_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(timeout_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_timeout_373806689._native_ptr(),
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
    public func get_timeout() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_timeout_191475506._native_ptr(),
                    191475506)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_download_chunk_size(chunk_size: Int64)  {
        withUnsafePointer(to: chunk_size) { chunk_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(chunk_size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_download_chunk_size_1286410249._native_ptr(),
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
    public func get_download_chunk_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_download_chunk_size_3905245786._native_ptr(),
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
    public func set_http_proxy(host: godot.String, port: Int64)  {
        withUnsafePointer(to: port) { port_native in
        let host_native = host._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(host_native), .init(port_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_http_proxy_2956805083._native_ptr(),
                    2956805083)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_https_proxy(host: godot.String, port: Int64)  {
        withUnsafePointer(to: port) { port_native in
        let host_native = host._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(host_native), .init(port_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_https_proxy_2956805083._native_ptr(),
                    2956805083)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}