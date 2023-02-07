import godot_native

fileprivate var __godot_name_ENetPacketPeer: StringName! = nil

/// MISSING
/// 
/// MISSING
public class ENetPacketPeer : PacketPeer {

    public enum PeerState : Int32 {
        case STATE_DISCONNECTED = 0
        case STATE_CONNECTING = 1
        case STATE_ACKNOWLEDGING_CONNECT = 2
        case STATE_CONNECTION_PENDING = 3
        case STATE_CONNECTION_SUCCEEDED = 4
        case STATE_CONNECTED = 5
        case STATE_DISCONNECT_LATER = 6
        case STATE_DISCONNECTING = 7
        case STATE_ACKNOWLEDGING_DISCONNECT = 8
        case STATE_ZOMBIE = 9
    }
    public enum PeerStatistic : Int32 {
        case PEER_PACKET_LOSS = 0
        case PEER_PACKET_LOSS_VARIANCE = 1
        case PEER_PACKET_LOSS_EPOCH = 2
        case PEER_ROUND_TRIP_TIME = 3
        case PEER_ROUND_TRIP_TIME_VARIANCE = 4
        case PEER_LAST_ROUND_TRIP_TIME = 5
        case PEER_LAST_ROUND_TRIP_TIME_VARIANCE = 6
        case PEER_PACKET_THROTTLE = 7
        case PEER_PACKET_THROTTLE_LIMIT = 8
        case PEER_PACKET_THROTTLE_COUNTER = 9
        case PEER_PACKET_THROTTLE_EPOCH = 10
        case PEER_PACKET_THROTTLE_ACCELERATION = 11
        case PEER_PACKET_THROTTLE_DECELERATION = 12
        case PEER_PACKET_THROTTLE_INTERVAL = 13
    }

    public override class var __godot_name: StringName { __godot_name_ENetPacketPeer }

    static var _method_peer_disconnect_1995695955: GDExtensionMethodBindPtr! = nil
    static var _method_peer_disconnect_later_1995695955: GDExtensionMethodBindPtr! = nil
    static var _method_peer_disconnect_now_1995695955: GDExtensionMethodBindPtr! = nil
    static var _method_ping_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_ping_interval_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_reset_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_send_120522849: GDExtensionMethodBindPtr! = nil
    static var _method_throttle_configure_1649997291: GDExtensionMethodBindPtr! = nil
    static var _method_set_timeout_1649997291: GDExtensionMethodBindPtr! = nil
    static var _method_get_remote_address_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_remote_port_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_statistic_1642578323: GDExtensionMethodBindPtr! = nil
    static var _method_get_state_711068532: GDExtensionMethodBindPtr! = nil
    static var _method_get_channels_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_is_active_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_ENetPacketPeer = StringName(from: "ENetPacketPeer")

        let _method_peer_disconnect_1995695955_name = StringName(from: "peer_disconnect")
        self._method_peer_disconnect_1995695955 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_peer_disconnect_1995695955_name._native_ptr(), 1995695955)
        assert(ENetPacketPeer._method_peer_disconnect_1995695955 != nil)
        let _method_peer_disconnect_later_1995695955_name = StringName(from: "peer_disconnect_later")
        self._method_peer_disconnect_later_1995695955 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_peer_disconnect_later_1995695955_name._native_ptr(), 1995695955)
        assert(ENetPacketPeer._method_peer_disconnect_later_1995695955 != nil)
        let _method_peer_disconnect_now_1995695955_name = StringName(from: "peer_disconnect_now")
        self._method_peer_disconnect_now_1995695955 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_peer_disconnect_now_1995695955_name._native_ptr(), 1995695955)
        assert(ENetPacketPeer._method_peer_disconnect_now_1995695955 != nil)
        let _method_ping_3218959716_name = StringName(from: "ping")
        self._method_ping_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_ping_3218959716_name._native_ptr(), 3218959716)
        assert(ENetPacketPeer._method_ping_3218959716 != nil)
        let _method_ping_interval_1286410249_name = StringName(from: "ping_interval")
        self._method_ping_interval_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_ping_interval_1286410249_name._native_ptr(), 1286410249)
        assert(ENetPacketPeer._method_ping_interval_1286410249 != nil)
        let _method_reset_3218959716_name = StringName(from: "reset")
        self._method_reset_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_reset_3218959716_name._native_ptr(), 3218959716)
        assert(ENetPacketPeer._method_reset_3218959716 != nil)
        let _method_send_120522849_name = StringName(from: "send")
        self._method_send_120522849 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_send_120522849_name._native_ptr(), 120522849)
        assert(ENetPacketPeer._method_send_120522849 != nil)
        let _method_throttle_configure_1649997291_name = StringName(from: "throttle_configure")
        self._method_throttle_configure_1649997291 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_throttle_configure_1649997291_name._native_ptr(), 1649997291)
        assert(ENetPacketPeer._method_throttle_configure_1649997291 != nil)
        let _method_set_timeout_1649997291_name = StringName(from: "set_timeout")
        self._method_set_timeout_1649997291 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_timeout_1649997291_name._native_ptr(), 1649997291)
        assert(ENetPacketPeer._method_set_timeout_1649997291 != nil)
        let _method_get_remote_address_201670096_name = StringName(from: "get_remote_address")
        self._method_get_remote_address_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_remote_address_201670096_name._native_ptr(), 201670096)
        assert(ENetPacketPeer._method_get_remote_address_201670096 != nil)
        let _method_get_remote_port_3905245786_name = StringName(from: "get_remote_port")
        self._method_get_remote_port_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_remote_port_3905245786_name._native_ptr(), 3905245786)
        assert(ENetPacketPeer._method_get_remote_port_3905245786 != nil)
        let _method_get_statistic_1642578323_name = StringName(from: "get_statistic")
        self._method_get_statistic_1642578323 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_statistic_1642578323_name._native_ptr(), 1642578323)
        assert(ENetPacketPeer._method_get_statistic_1642578323 != nil)
        let _method_get_state_711068532_name = StringName(from: "get_state")
        self._method_get_state_711068532 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_state_711068532_name._native_ptr(), 711068532)
        assert(ENetPacketPeer._method_get_state_711068532 != nil)
        let _method_get_channels_3905245786_name = StringName(from: "get_channels")
        self._method_get_channels_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_channels_3905245786_name._native_ptr(), 3905245786)
        assert(ENetPacketPeer._method_get_channels_3905245786 != nil)
        let _method_is_active_36873697_name = StringName(from: "is_active")
        self._method_is_active_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_active_36873697_name._native_ptr(), 36873697)
        assert(ENetPacketPeer._method_is_active_36873697 != nil)
    }

    public func peer_disconnect(data: Int64)  {
        withUnsafePointer(to: data) { data_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(data_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_peer_disconnect_1995695955,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func peer_disconnect_later(data: Int64)  {
        withUnsafePointer(to: data) { data_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(data_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_peer_disconnect_later_1995695955,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func peer_disconnect_now(data: Int64)  {
        withUnsafePointer(to: data) { data_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(data_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_peer_disconnect_now_1995695955,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func ping()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_ping_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func ping_interval(ping_interval: Int64)  {
        withUnsafePointer(to: ping_interval) { ping_interval_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ping_interval_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_ping_interval_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func reset()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_reset_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func send(channel: Int64, packet: PackedByteArray, flags: Int64) -> Error {
        withUnsafePointer(to: flags) { flags_native in
        withUnsafePointer(to: channel) { channel_native in
        let packet_native = packet._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(channel_native), .init(packet_native), .init(flags_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_send_120522849,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
        }
    }
    public func throttle_configure(interval: Int64, acceleration: Int64, deceleration: Int64)  {
        withUnsafePointer(to: deceleration) { deceleration_native in
        withUnsafePointer(to: acceleration) { acceleration_native in
        withUnsafePointer(to: interval) { interval_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(interval_native), .init(acceleration_native), .init(deceleration_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_throttle_configure_1649997291,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func set_timeout(timeout: Int64, timeout_min: Int64, timeout_max: Int64)  {
        withUnsafePointer(to: timeout_max) { timeout_max_native in
        withUnsafePointer(to: timeout_min) { timeout_min_native in
        withUnsafePointer(to: timeout) { timeout_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(timeout_native), .init(timeout_min_native), .init(timeout_max_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_timeout_1649997291,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func get_remote_address() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_remote_address_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func get_remote_port() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_remote_port_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_statistic(statistic: ENetPacketPeer.PeerStatistic) -> Float64 {
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
                    Self._method_get_statistic_1642578323,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func get_state() -> ENetPacketPeer.PeerState {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_state_711068532,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ENetPacketPeer.PeerState(from: __resPtr.pointee)
    }
    public func get_channels() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_channels_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func is_active() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_active_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}