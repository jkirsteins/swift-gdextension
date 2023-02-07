import godot_native

fileprivate var __godot_name_StreamPeerTCP: StringName! = nil

/// TCP stream peer.
/// 
/// TCP stream peer. This object can be used to connect to TCP servers, or also is returned by a TCP server.
///  
/// [b]Note:[/b] When exporting to Android, make sure to enable the [code]INTERNET[/code] permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.
public class StreamPeerTCP : StreamPeer {

    public enum Status : Int32 {
        case STATUS_NONE = 0
        case STATUS_CONNECTING = 1
        case STATUS_CONNECTED = 2
        case STATUS_ERROR = 3
    }

    public override class var __godot_name: StringName { __godot_name_StreamPeerTCP }

    static var _method_bind_4025329869: GDExtensionMethodBindPtr! = nil
    static var _method_connect_to_host_993915709: GDExtensionMethodBindPtr! = nil
    static var _method_poll_166280745: GDExtensionMethodBindPtr! = nil
    static var _method_get_status_859471121: GDExtensionMethodBindPtr! = nil
    static var _method_get_connected_host_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_connected_port_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_local_port_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_disconnect_from_host_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_no_delay_2586408642: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_StreamPeerTCP = StringName(from: "StreamPeerTCP")

        let _method_bind_4025329869_name = StringName(from: "bind")
        self._method_bind_4025329869 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_bind_4025329869_name._native_ptr(), 4025329869)
        assert(StreamPeerTCP._method_bind_4025329869 != nil)
        let _method_connect_to_host_993915709_name = StringName(from: "connect_to_host")
        self._method_connect_to_host_993915709 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_connect_to_host_993915709_name._native_ptr(), 993915709)
        assert(StreamPeerTCP._method_connect_to_host_993915709 != nil)
        let _method_poll_166280745_name = StringName(from: "poll")
        self._method_poll_166280745 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_poll_166280745_name._native_ptr(), 166280745)
        assert(StreamPeerTCP._method_poll_166280745 != nil)
        let _method_get_status_859471121_name = StringName(from: "get_status")
        self._method_get_status_859471121 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_status_859471121_name._native_ptr(), 859471121)
        assert(StreamPeerTCP._method_get_status_859471121 != nil)
        let _method_get_connected_host_201670096_name = StringName(from: "get_connected_host")
        self._method_get_connected_host_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_connected_host_201670096_name._native_ptr(), 201670096)
        assert(StreamPeerTCP._method_get_connected_host_201670096 != nil)
        let _method_get_connected_port_3905245786_name = StringName(from: "get_connected_port")
        self._method_get_connected_port_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_connected_port_3905245786_name._native_ptr(), 3905245786)
        assert(StreamPeerTCP._method_get_connected_port_3905245786 != nil)
        let _method_get_local_port_3905245786_name = StringName(from: "get_local_port")
        self._method_get_local_port_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_local_port_3905245786_name._native_ptr(), 3905245786)
        assert(StreamPeerTCP._method_get_local_port_3905245786 != nil)
        let _method_disconnect_from_host_3218959716_name = StringName(from: "disconnect_from_host")
        self._method_disconnect_from_host_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_disconnect_from_host_3218959716_name._native_ptr(), 3218959716)
        assert(StreamPeerTCP._method_disconnect_from_host_3218959716 != nil)
        let _method_set_no_delay_2586408642_name = StringName(from: "set_no_delay")
        self._method_set_no_delay_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_no_delay_2586408642_name._native_ptr(), 2586408642)
        assert(StreamPeerTCP._method_set_no_delay_2586408642 != nil)
    }

    public func bind(port: Int64, host: String) -> Error {
        withUnsafePointer(to: host) { host_native in
        withUnsafePointer(to: port) { port_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(port_native), .init(host_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_bind_4025329869,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
        }
    }
    public func connect_to_host(host: String, port: Int64) -> Error {
        withUnsafePointer(to: port) { port_native in
        withUnsafePointer(to: host) { host_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(host_native), .init(port_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_connect_to_host_993915709,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
        }
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
    public func get_status() -> StreamPeerTCP.Status {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_status_859471121,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StreamPeerTCP.Status(from: __resPtr.pointee)
    }
    public func get_connected_host() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_connected_host_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func get_connected_port() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_connected_port_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            return Int64(from: __resPtr.pointee)
    }
    public func disconnect_from_host()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_disconnect_from_host_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_no_delay(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_no_delay_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}