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
public class Crypto : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_Crypto }

    static var _method_generate_random_bytes_47165747: GDExtensionMethodBindPtr! = nil
    static var _method_generate_rsa_1237515462: GDExtensionMethodBindPtr! = nil
    static var _method_generate_self_signed_certificate_947314696: GDExtensionMethodBindPtr! = nil
    static var _method_sign_1673662703: GDExtensionMethodBindPtr! = nil
    static var _method_verify_2805902225: GDExtensionMethodBindPtr! = nil
    static var _method_encrypt_2361793670: GDExtensionMethodBindPtr! = nil
    static var _method_decrypt_2361793670: GDExtensionMethodBindPtr! = nil
    static var _method_hmac_digest_2368951203: GDExtensionMethodBindPtr! = nil
    static var _method_constant_time_compare_1024142237: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Crypto = StringName(from: "Crypto")

        let _method_generate_random_bytes_47165747_name = StringName(from: "generate_random_bytes")
        self._method_generate_random_bytes_47165747 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_generate_random_bytes_47165747_name._native_ptr(), 47165747)
        assert(Crypto._method_generate_random_bytes_47165747 != nil)
        let _method_generate_rsa_1237515462_name = StringName(from: "generate_rsa")
        self._method_generate_rsa_1237515462 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_generate_rsa_1237515462_name._native_ptr(), 1237515462)
        assert(Crypto._method_generate_rsa_1237515462 != nil)
        let _method_generate_self_signed_certificate_947314696_name = StringName(from: "generate_self_signed_certificate")
        self._method_generate_self_signed_certificate_947314696 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_generate_self_signed_certificate_947314696_name._native_ptr(), 947314696)
        assert(Crypto._method_generate_self_signed_certificate_947314696 != nil)
        let _method_sign_1673662703_name = StringName(from: "sign")
        self._method_sign_1673662703 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_sign_1673662703_name._native_ptr(), 1673662703)
        assert(Crypto._method_sign_1673662703 != nil)
        let _method_verify_2805902225_name = StringName(from: "verify")
        self._method_verify_2805902225 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_verify_2805902225_name._native_ptr(), 2805902225)
        assert(Crypto._method_verify_2805902225 != nil)
        let _method_encrypt_2361793670_name = StringName(from: "encrypt")
        self._method_encrypt_2361793670 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_encrypt_2361793670_name._native_ptr(), 2361793670)
        assert(Crypto._method_encrypt_2361793670 != nil)
        let _method_decrypt_2361793670_name = StringName(from: "decrypt")
        self._method_decrypt_2361793670 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_decrypt_2361793670_name._native_ptr(), 2361793670)
        assert(Crypto._method_decrypt_2361793670 != nil)
        let _method_hmac_digest_2368951203_name = StringName(from: "hmac_digest")
        self._method_hmac_digest_2368951203 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_hmac_digest_2368951203_name._native_ptr(), 2368951203)
        assert(Crypto._method_hmac_digest_2368951203 != nil)
        let _method_constant_time_compare_1024142237_name = StringName(from: "constant_time_compare")
        self._method_constant_time_compare_1024142237 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_constant_time_compare_1024142237_name._native_ptr(), 1024142237)
        assert(Crypto._method_constant_time_compare_1024142237 != nil)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_generate_random_bytes_47165747,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_generate_rsa_1237515462,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CryptoKey(from: __resPtr.pointee)
        }
    }
    public func generate_self_signed_certificate(key: CryptoKey, issuer_name: String, not_before: String, not_after: String) -> X509Certificate {
        withUnsafePointer(to: not_after) { not_after_native in
        withUnsafePointer(to: not_before) { not_before_native in
        withUnsafePointer(to: issuer_name) { issuer_name_native in
        let key_native = key._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(key_native), .init(issuer_name_native), .init(not_before_native), .init(not_after_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_generate_self_signed_certificate_947314696,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return X509Certificate(from: __resPtr.pointee)
        }
        }
        }
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_sign_1673662703,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_verify_2805902225,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_encrypt_2361793670,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_decrypt_2361793670,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_hmac_digest_2368951203,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_constant_time_compare_1024142237,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}