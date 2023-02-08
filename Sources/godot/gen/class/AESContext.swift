import godot_native

fileprivate var __godot_name_AESContext: StringName! = nil

/// Interface to low level AES encryption features.
/// 
/// This class provides access to AES encryption/decryption of raw data. Both AES-ECB and AES-CBC mode are supported.
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// extends Node
///  
///  
/// var aes = AESContext.new()
///  
///  
/// func _ready():
///  
///     var key = "My secret key!!!" # Key must be either 16 or 32 bytes.
///  
///     var data = "My secret text!!" # Data size must be multiple of 16 bytes, apply padding if needed.
///  
///     # Encrypt ECB
///  
///     aes.start(AESContext.MODE_ECB_ENCRYPT, key.to_utf8())
///  
///     var encrypted = aes.update(data.to_utf8())
///  
///     aes.finish()
///  
///     # Decrypt ECB
///  
///     aes.start(AESContext.MODE_ECB_DECRYPT, key.to_utf8())
///  
///     var decrypted = aes.update(encrypted)
///  
///     aes.finish()
///  
///     # Check ECB
///  
///     assert(decrypted == data.to_utf8())
///  
///  
///     var iv = "My secret iv!!!!" # IV must be of exactly 16 bytes.
///  
///     # Encrypt CBC
///  
///     aes.start(AESContext.MODE_CBC_ENCRYPT, key.to_utf8(), iv.to_utf8())
///  
///     encrypted = aes.update(data.to_utf8())
///  
///     aes.finish()
///  
///     # Decrypt CBC
///  
///     aes.start(AESContext.MODE_CBC_DECRYPT, key.to_utf8(), iv.to_utf8())
///  
///     decrypted = aes.update(encrypted)
///  
///     aes.finish()
///  
///     # Check CBC
///  
///     assert(decrypted == data.to_utf8())
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
///     private AesContext _aes = new AesContext();
///  
///  
///     public override void _Ready()
///  
///     {
///  
///         string key = "My secret key!!!"; // Key must be either 16 or 32 bytes.
///  
///         string data = "My secret text!!"; // Data size must be multiple of 16 bytes, apply padding if needed.
///  
///         // Encrypt ECB
///  
///         _aes.Start(AesContext.Mode.EcbEncrypt, key.ToUtf8());
///  
///         byte[] encrypted = _aes.Update(data.ToUtf8());
///  
///         _aes.Finish();
///  
///         // Decrypt ECB
///  
///         _aes.Start(AesContext.Mode.EcbDecrypt, key.ToUtf8());
///  
///         byte[] decrypted = _aes.Update(encrypted);
///  
///         _aes.Finish();
///  
///         // Check ECB
///  
///         Debug.Assert(decrypted == data.ToUtf8());
///  
///  
///         string iv = "My secret iv!!!!"; // IV must be of exactly 16 bytes.
///  
///         // Encrypt CBC
///  
///         _aes.Start(AesContext.Mode.EcbEncrypt, key.ToUtf8(), iv.ToUtf8());
///  
///         encrypted = _aes.Update(data.ToUtf8());
///  
///         _aes.Finish();
///  
///         // Decrypt CBC
///  
///         _aes.Start(AesContext.Mode.EcbDecrypt, key.ToUtf8(), iv.ToUtf8());
///  
///         decrypted = _aes.Update(encrypted);
///  
///         _aes.Finish();
///  
///         // Check CBC
///  
///         Debug.Assert(decrypted == data.ToUtf8());
///  
///     }
///  
/// }
///  
/// [/csharp]
///  
/// [/codeblocks]
open class AESContext : RefCounted {

    public enum Mode : Int32 {
        case MODE_ECB_ENCRYPT = 0
        case MODE_ECB_DECRYPT = 1
        case MODE_CBC_ENCRYPT = 2
        case MODE_CBC_DECRYPT = 3
        case MODE_MAX = 4
    }

    public override class var __godot_name: StringName { __godot_name_AESContext }

    static var _method_start_3167574919: GDExtensionMethodBindPtr! = nil
    static var _method_update_527836100: GDExtensionMethodBindPtr! = nil
    static var _method_get_iv_state_2115431945: GDExtensionMethodBindPtr! = nil
    static var _method_finish_3218959716: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_AESContext = StringName(from: "AESContext")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_start_3167574919_name = StringName(from: "start")
        self._method_start_3167574919 = self.interface.pointee.classdb_get_method_bind(__godot_name_AESContext._native_ptr(), _method_start_3167574919_name._native_ptr(), 3167574919)
        assert(AESContext._method_start_3167574919 != nil)
        let _method_update_527836100_name = StringName(from: "update")
        self._method_update_527836100 = self.interface.pointee.classdb_get_method_bind(__godot_name_AESContext._native_ptr(), _method_update_527836100_name._native_ptr(), 527836100)
        assert(AESContext._method_update_527836100 != nil)
        let _method_get_iv_state_2115431945_name = StringName(from: "get_iv_state")
        self._method_get_iv_state_2115431945 = self.interface.pointee.classdb_get_method_bind(__godot_name_AESContext._native_ptr(), _method_get_iv_state_2115431945_name._native_ptr(), 2115431945)
        assert(AESContext._method_get_iv_state_2115431945 != nil)
        let _method_finish_3218959716_name = StringName(from: "finish")
        self._method_finish_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_AESContext._native_ptr(), _method_finish_3218959716_name._native_ptr(), 3218959716)
        assert(AESContext._method_finish_3218959716 != nil)
    }

    public func start(mode: AESContext.Mode, key: PackedByteArray, iv: PackedByteArray) -> Error {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let iv_native = iv._native_ptr()
        let key_native = key._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native), .init(key_native), .init(iv_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_start_3167574919,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
    }
    public func update(src: PackedByteArray) -> PackedByteArray {
        let src_native = src._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(src_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_update_527836100,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(godot: __resPtr.pointee)
    }
    public func get_iv_state() -> PackedByteArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_iv_state_2115431945,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(godot: __resPtr.pointee)
    }
    public func finish()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_finish_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}