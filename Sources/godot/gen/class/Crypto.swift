import godot_native

fileprivate var __godot_name_Crypto: StringName! = nil

/// Access to advanced cryptographic functionalities.
/// 
/// The Crypto class allows you to access some more advanced cryptographic functionalities in Godot.
///  
/// For now, this includes generating cryptographically secure random bytes, RSA keys and self-signed X509 certificates generation, asymmetric key encryption/decryption, and signing/verification.
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// extends Node
///  
///  
/// var crypto = Crypto.new()
///  
/// var key = CryptoKey.new()
///  
/// var cert = X509Certificate.new()
///  
///  
/// func _ready():
///  
///     # Generate new RSA key.
///  
///     key = crypto.generate_rsa(4096)
///  
///     # Generate new self-signed certificate with the given key.
///  
///     cert = crypto.generate_self_signed_certificate(key, "CN=mydomain.com,O=My Game Company,C=IT")
///  
///     # Save key and certificate in the user folder.
///  
///     key.save("user://generated.key")
///  
///     cert.save("user://generated.crt")
///  
///     # Encryption
///  
///     var data = "Some data"
///  
///     var encrypted = crypto.encrypt(key, data.to_utf8())
///  
///     # Decryption
///  
///     var decrypted = crypto.decrypt(key, encrypted)
///  
///     # Signing
///  
///     var signature = crypto.sign(HashingContext.HASH_SHA256, data.sha256_buffer(), key)
///  
///     # Verifying
///  
///     var verified = crypto.verify(HashingContext.HASH_SHA256, data.sha256_buffer(), signature, key)
///  
///     # Checks
///  
///     assert(verified)
///  
///     assert(data.to_utf8() == decrypted)
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// using Godot;
///  
/// using System.Diagnostics;
///  
///  
/// public partial class MyNode : Node
///  
/// {
///  
///     private Crypto _crypto = new Crypto();
///  
///     private CryptoKey _key = new CryptoKey();
///  
///     private X509Certificate _cert = new X509Certificate();
///  
///  
///     public override void _Ready()
///  
///     {
///  
///         // Generate new RSA key.
///  
///         _key = _crypto.GenerateRsa(4096);
///  
///         // Generate new self-signed certificate with the given key.
///  
///         _cert = _crypto.GenerateSelfSignedCertificate(_key, "CN=mydomain.com,O=My Game Company,C=IT");
///  
///         // Save key and certificate in the user folder.
///  
///         _key.Save("user://generated.key");
///  
///         _cert.Save("user://generated.crt");
///  
///         // Encryption
///  
///         string data = "Some data";
///  
///         byte[] encrypted = _crypto.Encrypt(_key, data.ToUtf8());
///  
///         // Decryption
///  
///         byte[] decrypted = _crypto.Decrypt(_key, encrypted);
///  
///         // Signing
///  
///         byte[] signature = _crypto.Sign(HashingContext.HashType.Sha256, Data.Sha256Buffer(), _key);
///  
///         // Verifying
///  
///         bool verified = _crypto.Verify(HashingContext.HashType.Sha256, Data.Sha256Buffer(), signature, _key);
///  
///         // Checks
///  
///         Debug.Assert(verified);
///  
///         Debug.Assert(data.ToUtf8() == decrypted);
///  
///     }
///  
/// }
///  
/// [/csharp]
///  
/// [/codeblocks]
open class Crypto : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_Crypto }

    static var _method_generate_random_bytes_47165747: StringName! = nil
    static var _method_generate_rsa_1237515462: StringName! = nil
    static var _method_generate_self_signed_certificate_947314696: StringName! = nil
    static var _method_sign_1673662703: StringName! = nil
    static var _method_verify_2805902225: StringName! = nil
    static var _method_encrypt_2361793670: StringName! = nil
    static var _method_decrypt_2361793670: StringName! = nil
    static var _method_hmac_digest_2368951203: StringName! = nil
    static var _method_constant_time_compare_1024142237: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_Crypto == nil)
        __godot_name_Crypto = StringName(from: "Crypto")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_generate_random_bytes_47165747 = StringName(from: "generate_random_bytes")
        assert(self._method_generate_random_bytes_47165747 != nil)
        self._method_generate_rsa_1237515462 = StringName(from: "generate_rsa")
        assert(self._method_generate_rsa_1237515462 != nil)
        self._method_generate_self_signed_certificate_947314696 = StringName(from: "generate_self_signed_certificate")
        assert(self._method_generate_self_signed_certificate_947314696 != nil)
        self._method_sign_1673662703 = StringName(from: "sign")
        assert(self._method_sign_1673662703 != nil)
        self._method_verify_2805902225 = StringName(from: "verify")
        assert(self._method_verify_2805902225 != nil)
        self._method_encrypt_2361793670 = StringName(from: "encrypt")
        assert(self._method_encrypt_2361793670 != nil)
        self._method_decrypt_2361793670 = StringName(from: "decrypt")
        assert(self._method_decrypt_2361793670 != nil)
        self._method_hmac_digest_2368951203 = StringName(from: "hmac_digest")
        assert(self._method_hmac_digest_2368951203 != nil)
        self._method_constant_time_compare_1024142237 = StringName(from: "constant_time_compare")
        assert(self._method_constant_time_compare_1024142237 != nil)
    }

    public func generate_random_bytes(size: Int64) -> PackedByteArray {
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_generate_random_bytes_47165747._native_ptr(),
                    47165747)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(godot: __resPtr.pointee)
        }
    }
    public func generate_rsa(size: Int64) -> CryptoKey {
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_generate_rsa_1237515462._native_ptr(),
                    1237515462)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CryptoKey(godot: __resPtr.pointee)
        }
    }
    public func generate_self_signed_certificate(key: CryptoKey, issuer_name: godot.String, not_before: godot.String, not_after: godot.String) -> X509Certificate {
        let not_after_native = not_after._native_ptr()
        let not_before_native = not_before._native_ptr()
        let issuer_name_native = issuer_name._native_ptr()
        let key_native = key._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(key_native), .init(issuer_name_native), .init(not_before_native), .init(not_after_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_generate_self_signed_certificate_947314696._native_ptr(),
                    947314696)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return X509Certificate(godot: __resPtr.pointee)
    }
    public func sign(hash_type: HashingContext.HashType, hash: PackedByteArray, key: CryptoKey) -> PackedByteArray {
        withUnsafePointer(to: hash_type.rawValue) { hash_type_native in
        let key_native = key._native_ptr()
        let hash_native = hash._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(hash_type_native), .init(hash_native), .init(key_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_sign_1673662703._native_ptr(),
                    1673662703)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(godot: __resPtr.pointee)
        }
    }
    public func verify(hash_type: HashingContext.HashType, hash: PackedByteArray, signature: PackedByteArray, key: CryptoKey) -> UInt8 {
        withUnsafePointer(to: hash_type.rawValue) { hash_type_native in
        let key_native = key._native_ptr()
        let signature_native = signature._native_ptr()
        let hash_native = hash._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(hash_type_native), .init(hash_native), .init(signature_native), .init(key_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_verify_2805902225._native_ptr(),
                    2805902225)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func encrypt(key: CryptoKey, plaintext: PackedByteArray) -> PackedByteArray {
        let plaintext_native = plaintext._native_ptr()
        let key_native = key._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(key_native), .init(plaintext_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_encrypt_2361793670._native_ptr(),
                    2361793670)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(godot: __resPtr.pointee)
    }
    public func decrypt(key: CryptoKey, ciphertext: PackedByteArray) -> PackedByteArray {
        let ciphertext_native = ciphertext._native_ptr()
        let key_native = key._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(key_native), .init(ciphertext_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_decrypt_2361793670._native_ptr(),
                    2361793670)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(godot: __resPtr.pointee)
    }
    public func hmac_digest(hash_type: HashingContext.HashType, key: PackedByteArray, msg: PackedByteArray) -> PackedByteArray {
        withUnsafePointer(to: hash_type.rawValue) { hash_type_native in
        let msg_native = msg._native_ptr()
        let key_native = key._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(hash_type_native), .init(key_native), .init(msg_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_hmac_digest_2368951203._native_ptr(),
                    2368951203)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(godot: __resPtr.pointee)
        }
    }
    public func constant_time_compare(trusted: PackedByteArray, received: PackedByteArray) -> UInt8 {
        let received_native = received._native_ptr()
        let trusted_native = trusted._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(trusted_native), .init(received_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_constant_time_compare_1024142237._native_ptr(),
                    1024142237)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}