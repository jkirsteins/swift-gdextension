import godot_native

fileprivate var __godot_name_TLSOptions: StringName! = nil

/// TLS configuration for clients and servers.
/// 
/// TLSOptions abstracts the configuration options for the [StreamPeerTLS] and [PacketPeerDTLS] classes.
///  
/// Objects of this class cannot be instantiated directly, and one of the static methods [method client], [method client_unsafe], or [method server] should be used instead.
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// # Create a TLS client configuration which uses our custom trusted CA chain.
///  
/// var client_trusted_cas = load("res://my_trusted_cas.crt")
///  
/// var client_tls_options = TLSOptions.client(client_trusted_cas)
///  
///  
/// # Create a TLS server configuration.
///  
/// var server_certs = load("res://my_server_cas.crt")
///  
/// var server_key = load("res://my_server_key.key")
///  
/// var server_tls_options = TLSOptions.server(server_certs, server_key)
///  
/// [/gdscript]
///  
/// [/codeblocks]
open class TLSOptions : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_TLSOptions }

    static var _method_client_3565000357: StringName! = nil
    static var _method_client_unsafe_2090251749: StringName! = nil
    static var _method_server_36969539: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_TLSOptions == nil)
        __godot_name_TLSOptions = StringName(from: "TLSOptions")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_client_3565000357 = StringName(from: "client")
        assert(self._method_client_3565000357 != nil)
        self._method_client_unsafe_2090251749 = StringName(from: "client_unsafe")
        assert(self._method_client_unsafe_2090251749 != nil)
        self._method_server_36969539 = StringName(from: "server")
        assert(self._method_server_36969539 != nil)
    }

    public func client(trusted_chain: X509Certificate, common_name_override: godot.String) -> TLSOptions {
        let common_name_override_native = common_name_override._native_ptr()
        let trusted_chain_native = trusted_chain._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(trusted_chain_native), .init(common_name_override_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_client_3565000357._native_ptr(),
                    3565000357)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TLSOptions(godot: __resPtr.pointee)
    }
    public func client_unsafe(trusted_chain: X509Certificate) -> TLSOptions {
        let trusted_chain_native = trusted_chain._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(trusted_chain_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_client_unsafe_2090251749._native_ptr(),
                    2090251749)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TLSOptions(godot: __resPtr.pointee)
    }
    public func server(key: CryptoKey, certificate: X509Certificate) -> TLSOptions {
        let certificate_native = certificate._native_ptr()
        let key_native = key._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(key_native), .init(certificate_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_server_36969539._native_ptr(),
                    36969539)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TLSOptions(godot: __resPtr.pointee)
    }
}