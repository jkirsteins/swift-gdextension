import godot_native

fileprivate var __godot_name_X509Certificate: StringName! = nil

/// An X509 certificate (e.g. for TLS).
/// 
/// The X509Certificate class represents an X509 certificate. Certificates can be loaded and saved like any other [Resource].
///  
/// They can be used as the server certificate in [method StreamPeerTLS.accept_stream] (along with the proper [CryptoKey]), and to specify the only certificate that should be accepted when connecting to an TLS server via [method StreamPeerTLS.connect_to_stream].
public class X509Certificate : Resource {

    

    public override class var __godot_name: StringName { __godot_name_X509Certificate }

    static var _method_save_166001499: GDExtensionMethodBindPtr! = nil
    static var _method_load_166001499: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_X509Certificate = StringName(from: "X509Certificate")

        let _method_save_166001499_name = StringName(from: "save")
        self._method_save_166001499 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_save_166001499_name._native_ptr(), 166001499)
        assert(X509Certificate._method_save_166001499 != nil)
        let _method_load_166001499_name = StringName(from: "load")
        self._method_load_166001499 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_load_166001499_name._native_ptr(), 166001499)
        assert(X509Certificate._method_load_166001499 != nil)
    }

    public func save(path: String) -> Error {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_save_166001499,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
    }
    public func load(path: String) -> Error {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_load_166001499,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
    }
}