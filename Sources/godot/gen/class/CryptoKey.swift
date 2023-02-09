import godot_native

fileprivate var __godot_name_CryptoKey: StringName! = nil

/// A cryptographic key (RSA).
/// 
/// The CryptoKey class represents a cryptographic key. Keys can be loaded and saved like any other [Resource].
///  
/// They can be used to generate a self-signed [X509Certificate] via [method Crypto.generate_self_signed_certificate] and as private key in [method StreamPeerTLS.accept_stream] along with the appropriate certificate.
open class CryptoKey : Resource {

    

    public override class var __godot_name: StringName { __godot_name_CryptoKey }

    static var _method_save_885841341: StringName! = nil
    static var _method_load_885841341: StringName! = nil
    static var _method_is_public_only_36873697: StringName! = nil
    static var _method_save_to_string_32795936: StringName! = nil
    static var _method_load_from_string_885841341: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_CryptoKey == nil)
        __godot_name_CryptoKey = StringName(from: "CryptoKey")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_save_885841341 = StringName(from: "save")
        assert(self._method_save_885841341 != nil)
        self._method_load_885841341 = StringName(from: "load")
        assert(self._method_load_885841341 != nil)
        self._method_is_public_only_36873697 = StringName(from: "is_public_only")
        assert(self._method_is_public_only_36873697 != nil)
        self._method_save_to_string_32795936 = StringName(from: "save_to_string")
        assert(self._method_save_to_string_32795936 != nil)
        self._method_load_from_string_885841341 = StringName(from: "load_from_string")
        assert(self._method_load_from_string_885841341 != nil)
    }

    public func save(path: godot.String, public_only: UInt8) -> Error {
        withUnsafePointer(to: public_only) { public_only_native in
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(public_only_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_save_885841341._native_ptr(),
                    885841341)
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
    public func load(path: godot.String, public_only: UInt8) -> Error {
        withUnsafePointer(to: public_only) { public_only_native in
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(public_only_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_load_885841341._native_ptr(),
                    885841341)
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
    public func is_public_only() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_public_only_36873697._native_ptr(),
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
    public func save_to_string(public_only: UInt8) -> godot.String {
        withUnsafePointer(to: public_only) { public_only_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(public_only_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_save_to_string_32795936._native_ptr(),
                    32795936)
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
    public func load_from_string(string_key: godot.String, public_only: UInt8) -> Error {
        withUnsafePointer(to: public_only) { public_only_native in
        let string_key_native = string_key._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(string_key_native), .init(public_only_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_load_from_string_885841341._native_ptr(),
                    885841341)
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