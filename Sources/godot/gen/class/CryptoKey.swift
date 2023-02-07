import godot_native

fileprivate var __godot_name_CryptoKey: StringName! = nil

/// A cryptographic key (RSA).
/// 
/// The CryptoKey class represents a cryptographic key. Keys can be loaded and saved like any other [Resource].
///  
/// They can be used to generate a self-signed [X509Certificate] via [method Crypto.generate_self_signed_certificate] and as private key in [method StreamPeerTLS.accept_stream] along with the appropriate certificate.
public class CryptoKey : Resource {

    

    public override class var __godot_name: StringName { __godot_name_CryptoKey }

    static var _method_save_885841341: GDExtensionMethodBindPtr! = nil
    static var _method_load_885841341: GDExtensionMethodBindPtr! = nil
    static var _method_is_public_only_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_save_to_string_32795936: GDExtensionMethodBindPtr! = nil
    static var _method_load_from_string_885841341: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_CryptoKey = StringName(from: "CryptoKey")

        let _method_save_885841341_name = StringName(from: "save")
        self._method_save_885841341 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_save_885841341_name._native_ptr(), 885841341)
        assert(CryptoKey._method_save_885841341 != nil)
        let _method_load_885841341_name = StringName(from: "load")
        self._method_load_885841341 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_load_885841341_name._native_ptr(), 885841341)
        assert(CryptoKey._method_load_885841341 != nil)
        let _method_is_public_only_36873697_name = StringName(from: "is_public_only")
        self._method_is_public_only_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_public_only_36873697_name._native_ptr(), 36873697)
        assert(CryptoKey._method_is_public_only_36873697 != nil)
        let _method_save_to_string_32795936_name = StringName(from: "save_to_string")
        self._method_save_to_string_32795936 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_save_to_string_32795936_name._native_ptr(), 32795936)
        assert(CryptoKey._method_save_to_string_32795936 != nil)
        let _method_load_from_string_885841341_name = StringName(from: "load_from_string")
        self._method_load_from_string_885841341 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_load_from_string_885841341_name._native_ptr(), 885841341)
        assert(CryptoKey._method_load_from_string_885841341 != nil)
    }

    public func save(path: String, public_only: UInt8) -> Error {
        withUnsafePointer(to: public_only) { public_only_native in
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(public_only_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_save_885841341,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
        }
    }
    public func load(path: String, public_only: UInt8) -> Error {
        withUnsafePointer(to: public_only) { public_only_native in
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(public_only_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_load_885841341,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_public_only_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func save_to_string(public_only: UInt8) -> String {
        withUnsafePointer(to: public_only) { public_only_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(public_only_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_save_to_string_32795936,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
    public func load_from_string(string_key: String, public_only: UInt8) -> Error {
        withUnsafePointer(to: public_only) { public_only_native in
        withUnsafePointer(to: string_key) { string_key_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(string_key_native), .init(public_only_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_load_from_string_885841341,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
        }
    }
}