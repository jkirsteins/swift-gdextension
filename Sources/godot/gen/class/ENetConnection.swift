import godot_native

fileprivate var __godot_name_ENetConnection: StringName! = nil

/// MISSING
/// 
/// MISSING
open class ENetConnection : RefCounted {

    public enum CompressionMode : Int32 {
        case COMPRESS_NONE = 0
        case COMPRESS_RANGE_CODER = 1
        case COMPRESS_FASTLZ = 2
        case COMPRESS_ZLIB = 3
        case COMPRESS_ZSTD = 4
    }
    public enum EventType : Int32 {
        case EVENT_ERROR = -1
        case EVENT_NONE = 0
        case EVENT_CONNECT = 1
        case EVENT_DISCONNECT = 2
        case EVENT_RECEIVE = 3
    }
    public enum HostStatistic : Int32 {
        case HOST_TOTAL_SENT_DATA = 0
        case HOST_TOTAL_SENT_PACKETS = 1
        case HOST_TOTAL_RECEIVED_DATA = 2
        case HOST_TOTAL_RECEIVED_PACKETS = 3
    }

    public override class var __godot_name: StringName { __godot_name_ENetConnection }

    static var _method_create_host_bound_866250949: GDExtensionMethodBindPtr! = nil
    static var _method_create_host_117198950: GDExtensionMethodBindPtr! = nil
    static var _method_destroy_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_connect_to_host_385984708: GDExtensionMethodBindPtr! = nil
    static var _method_service_2402345344: GDExtensionMethodBindPtr! = nil
    static var _method_flush_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_bandwidth_limit_2302169788: GDExtensionMethodBindPtr! = nil
    static var _method_channel_limit_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_broadcast_2772371345: GDExtensionMethodBindPtr! = nil
    static var _method_compress_2660215187: GDExtensionMethodBindPtr! = nil
    static var _method_dtls_server_setup_1262296096: GDExtensionMethodBindPtr! = nil
    static var _method_dtls_client_setup_3097527179: GDExtensionMethodBindPtr! = nil
    static var _method_refuse_new_connections_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_pop_statistic_2166904170: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_channels_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_local_port_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_peers_2915620761: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_ENetConnection = StringName(from: "ENetConnection")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_create_host_bound_866250949_name = StringName(from: "create_host_bound")
        self._method_create_host_bound_866250949 = self.interface.pointee.classdb_get_method_bind(__godot_name_ENetConnection._native_ptr(), _method_create_host_bound_866250949_name._native_ptr(), 866250949)
        assert(ENetConnection._method_create_host_bound_866250949 != nil)
        let _method_create_host_117198950_name = StringName(from: "create_host")
        self._method_create_host_117198950 = self.interface.pointee.classdb_get_method_bind(__godot_name_ENetConnection._native_ptr(), _method_create_host_117198950_name._native_ptr(), 117198950)
        assert(ENetConnection._method_create_host_117198950 != nil)
        let _method_destroy_3218959716_name = StringName(from: "destroy")
        self._method_destroy_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_ENetConnection._native_ptr(), _method_destroy_3218959716_name._native_ptr(), 3218959716)
        assert(ENetConnection._method_destroy_3218959716 != nil)
        let _method_connect_to_host_385984708_name = StringName(from: "connect_to_host")
        self._method_connect_to_host_385984708 = self.interface.pointee.classdb_get_method_bind(__godot_name_ENetConnection._native_ptr(), _method_connect_to_host_385984708_name._native_ptr(), 385984708)
        assert(ENetConnection._method_connect_to_host_385984708 != nil)
        let _method_service_2402345344_name = StringName(from: "service")
        self._method_service_2402345344 = self.interface.pointee.classdb_get_method_bind(__godot_name_ENetConnection._native_ptr(), _method_service_2402345344_name._native_ptr(), 2402345344)
        assert(ENetConnection._method_service_2402345344 != nil)
        let _method_flush_3218959716_name = StringName(from: "flush")
        self._method_flush_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_ENetConnection._native_ptr(), _method_flush_3218959716_name._native_ptr(), 3218959716)
        assert(ENetConnection._method_flush_3218959716 != nil)
        let _method_bandwidth_limit_2302169788_name = StringName(from: "bandwidth_limit")
        self._method_bandwidth_limit_2302169788 = self.interface.pointee.classdb_get_method_bind(__godot_name_ENetConnection._native_ptr(), _method_bandwidth_limit_2302169788_name._native_ptr(), 2302169788)
        assert(ENetConnection._method_bandwidth_limit_2302169788 != nil)
        let _method_channel_limit_1286410249_name = StringName(from: "channel_limit")
        self._method_channel_limit_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_ENetConnection._native_ptr(), _method_channel_limit_1286410249_name._native_ptr(), 1286410249)
        assert(ENetConnection._method_channel_limit_1286410249 != nil)
        let _method_broadcast_2772371345_name = StringName(from: "broadcast")
        self._method_broadcast_2772371345 = self.interface.pointee.classdb_get_method_bind(__godot_name_ENetConnection._native_ptr(), _method_broadcast_2772371345_name._native_ptr(), 2772371345)
        assert(ENetConnection._method_broadcast_2772371345 != nil)
        let _method_compress_2660215187_name = StringName(from: "compress")
        self._method_compress_2660215187 = self.interface.pointee.classdb_get_method_bind(__godot_name_ENetConnection._native_ptr(), _method_compress_2660215187_name._native_ptr(), 2660215187)
        assert(ENetConnection._method_compress_2660215187 != nil)
        let _method_dtls_server_setup_1262296096_name = StringName(from: "dtls_server_setup")
        self._method_dtls_server_setup_1262296096 = self.interface.pointee.classdb_get_method_bind(__godot_name_ENetConnection._native_ptr(), _method_dtls_server_setup_1262296096_name._native_ptr(), 1262296096)
        assert(ENetConnection._method_dtls_server_setup_1262296096 != nil)
        let _method_dtls_client_setup_3097527179_name = StringName(from: "dtls_client_setup")
        self._method_dtls_client_setup_3097527179 = self.interface.pointee.classdb_get_method_bind(__godot_name_ENetConnection._native_ptr(), _method_dtls_client_setup_3097527179_name._native_ptr(), 3097527179)
        assert(ENetConnection._method_dtls_client_setup_3097527179 != nil)
        let _method_refuse_new_connections_2586408642_name = StringName(from: "refuse_new_connections")
        self._method_refuse_new_connections_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_ENetConnection._native_ptr(), _method_refuse_new_connections_2586408642_name._native_ptr(), 2586408642)
        assert(ENetConnection._method_refuse_new_connections_2586408642 != nil)
        let _method_pop_statistic_2166904170_name = StringName(from: "pop_statistic")
        self._method_pop_statistic_2166904170 = self.interface.pointee.classdb_get_method_bind(__godot_name_ENetConnection._native_ptr(), _method_pop_statistic_2166904170_name._native_ptr(), 2166904170)
        assert(ENetConnection._method_pop_statistic_2166904170 != nil)
        let _method_get_max_channels_3905245786_name = StringName(from: "get_max_channels")
        self._method_get_max_channels_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_ENetConnection._native_ptr(), _method_get_max_channels_3905245786_name._native_ptr(), 3905245786)
        assert(ENetConnection._method_get_max_channels_3905245786 != nil)
        let _method_get_local_port_3905245786_name = StringName(from: "get_local_port")
        self._method_get_local_port_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_ENetConnection._native_ptr(), _method_get_local_port_3905245786_name._native_ptr(), 3905245786)
        assert(ENetConnection._method_get_local_port_3905245786 != nil)
        let _method_get_peers_2915620761_name = StringName(from: "get_peers")
        self._method_get_peers_2915620761 = self.interface.pointee.classdb_get_method_bind(__godot_name_ENetConnection._native_ptr(), _method_get_peers_2915620761_name._native_ptr(), 2915620761)
        assert(ENetConnection._method_get_peers_2915620761 != nil)
    }

    public func create_host_bound(bind_address: godot.String, bind_port: Int64, max_peers: Int64, max_channels: Int64, in_bandwidth: Int64, out_bandwidth: Int64) -> Error {
        withUnsafePointer(to: out_bandwidth) { out_bandwidth_native in
        withUnsafePointer(to: in_bandwidth) { in_bandwidth_native in
        withUnsafePointer(to: max_channels) { max_channels_native in
        withUnsafePointer(to: max_peers) { max_peers_native in
        withUnsafePointer(to: bind_port) { bind_port_native in
        let bind_address_native = bind_address._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bind_address_native), .init(bind_port_native), .init(max_peers_native), .init(max_channels_native), .init(in_bandwidth_native), .init(out_bandwidth_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_host_bound_866250949,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
        }
        }
        }
        }
    }
    public func create_host(max_peers: Int64, max_channels: Int64, in_bandwidth: Int64, out_bandwidth: Int64) -> Error {
        withUnsafePointer(to: out_bandwidth) { out_bandwidth_native in
        withUnsafePointer(to: in_bandwidth) { in_bandwidth_native in
        withUnsafePointer(to: max_channels) { max_channels_native in
        withUnsafePointer(to: max_peers) { max_peers_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_peers_native), .init(max_channels_native), .init(in_bandwidth_native), .init(out_bandwidth_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_host_117198950,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
        }
        }
        }
    }
    public func destroy()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_destroy_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func connect_to_host(address: godot.String, port: Int64, channels: Int64, data: Int64) -> ENetPacketPeer {
        withUnsafePointer(to: data) { data_native in
        withUnsafePointer(to: channels) { channels_native in
        withUnsafePointer(to: port) { port_native in
        let address_native = address._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(address_native), .init(port_native), .init(channels_native), .init(data_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_connect_to_host_385984708,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ENetPacketPeer(godot: __resPtr.pointee)
        }
        }
        }
    }
    public func service(timeout: Int64) -> Array {
        withUnsafePointer(to: timeout) { timeout_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(timeout_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_service_2402345344,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(godot: __resPtr.pointee)
        }
    }
    public func flush()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_flush_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func bandwidth_limit(in_bandwidth: Int64, out_bandwidth: Int64)  {
        withUnsafePointer(to: out_bandwidth) { out_bandwidth_native in
        withUnsafePointer(to: in_bandwidth) { in_bandwidth_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(in_bandwidth_native), .init(out_bandwidth_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_bandwidth_limit_2302169788,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func channel_limit(limit: Int64)  {
        withUnsafePointer(to: limit) { limit_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(limit_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_channel_limit_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func broadcast(channel: Int64, packet: PackedByteArray, flags: Int64)  {
        withUnsafePointer(to: flags) { flags_native in
        withUnsafePointer(to: channel) { channel_native in
        let packet_native = packet._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(channel_native), .init(packet_native), .init(flags_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_broadcast_2772371345,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func compress(mode: ENetConnection.CompressionMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_compress_2660215187,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func dtls_server_setup(server_options: TLSOptions) -> Error {
        let server_options_native = server_options._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(server_options_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_dtls_server_setup_1262296096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func dtls_client_setup(hostname: godot.String, client_options: TLSOptions) -> Error {
        let client_options_native = client_options._native_ptr()
        let hostname_native = hostname._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(hostname_native), .init(client_options_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_dtls_client_setup_3097527179,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func refuse_new_connections(refuse: UInt8)  {
        withUnsafePointer(to: refuse) { refuse_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(refuse_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_refuse_new_connections_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func pop_statistic(statistic: ENetConnection.HostStatistic) -> Float64 {
        withUnsafePointer(to: statistic.rawValue) { statistic_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(statistic_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_pop_statistic_2166904170,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func get_max_channels() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_max_channels_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
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
    public func get_peers() -> [ENetPacketPeer] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_peers_2915620761,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [ENetPacketPeer](godot: __resPtr.pointee)
    }
}