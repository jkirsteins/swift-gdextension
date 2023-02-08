import godot_native

fileprivate var __godot_name_TCPServer: StringName! = nil

/// A TCP server.
/// 
/// A TCP server. Listens to connections on a port and returns a [StreamPeerTCP] when it gets an incoming connection.
///  
/// [b]Note:[/b] When exporting to Android, make sure to enable the [code]INTERNET[/code] permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.
open class TCPServer : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_TCPServer }

    static var _method_listen_4025329869: GDExtensionMethodBindPtr! = nil
    static var _method_is_connection_available_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_is_listening_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_local_port_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_take_connection_30545006: GDExtensionMethodBindPtr! = nil
    static var _method_stop_3218959716: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_TCPServer = StringName(from: "TCPServer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_listen_4025329869_name = StringName(from: "listen")
        self._method_listen_4025329869 = self.interface.pointee.classdb_get_method_bind(__godot_name_TCPServer._native_ptr(), _method_listen_4025329869_name._native_ptr(), 4025329869)
        assert(TCPServer._method_listen_4025329869 != nil)
        let _method_is_connection_available_36873697_name = StringName(from: "is_connection_available")
        self._method_is_connection_available_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_TCPServer._native_ptr(), _method_is_connection_available_36873697_name._native_ptr(), 36873697)
        assert(TCPServer._method_is_connection_available_36873697 != nil)
        let _method_is_listening_36873697_name = StringName(from: "is_listening")
        self._method_is_listening_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_TCPServer._native_ptr(), _method_is_listening_36873697_name._native_ptr(), 36873697)
        assert(TCPServer._method_is_listening_36873697 != nil)
        let _method_get_local_port_3905245786_name = StringName(from: "get_local_port")
        self._method_get_local_port_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_TCPServer._native_ptr(), _method_get_local_port_3905245786_name._native_ptr(), 3905245786)
        assert(TCPServer._method_get_local_port_3905245786 != nil)
        let _method_take_connection_30545006_name = StringName(from: "take_connection")
        self._method_take_connection_30545006 = self.interface.pointee.classdb_get_method_bind(__godot_name_TCPServer._native_ptr(), _method_take_connection_30545006_name._native_ptr(), 30545006)
        assert(TCPServer._method_take_connection_30545006 != nil)
        let _method_stop_3218959716_name = StringName(from: "stop")
        self._method_stop_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_TCPServer._native_ptr(), _method_stop_3218959716_name._native_ptr(), 3218959716)
        assert(TCPServer._method_stop_3218959716 != nil)
    }

    public func listen(port: Int64, bind_address: godot.String) -> Error {
        withUnsafePointer(to: port) { port_native in
        let bind_address_native = bind_address._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(port_native), .init(bind_address_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_listen_4025329869,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
    }
    public func is_connection_available() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_connection_available_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func is_listening() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_listening_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_local_port() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_local_port_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func take_connection() -> StreamPeerTCP {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_take_connection_30545006,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StreamPeerTCP(godot: __resPtr.pointee)
    }
    public func stop()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_stop_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}