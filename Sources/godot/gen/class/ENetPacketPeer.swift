import godot_native

fileprivate var __godot_name_ENetPacketPeer: StringName! = nil

/// MISSING
/// 
/// MISSING
open class ENetPacketPeer : PacketPeer {

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

    static var _method_peer_disconnect_1995695955: StringName! = nil
    static var _method_peer_disconnect_later_1995695955: StringName! = nil
    static var _method_peer_disconnect_now_1995695955: StringName! = nil
    static var _method_ping_3218959716: StringName! = nil
    static var _method_ping_interval_1286410249: StringName! = nil
    static var _method_reset_3218959716: StringName! = nil
    static var _method_send_120522849: StringName! = nil
    static var _method_throttle_configure_1649997291: StringName! = nil
    static var _method_set_timeout_1649997291: StringName! = nil
    static var _method_get_remote_address_201670096: StringName! = nil
    static var _method_get_remote_port_3905245786: StringName! = nil
    static var _method_get_statistic_1642578323: StringName! = nil
    static var _method_get_state_711068532: StringName! = nil
    static var _method_get_channels_3905245786: StringName! = nil
    static var _method_is_active_36873697: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_ENetPacketPeer == nil)
        __godot_name_ENetPacketPeer = StringName(from: "ENetPacketPeer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_peer_disconnect_1995695955 = StringName(from: "peer_disconnect")
        assert(self._method_peer_disconnect_1995695955 != nil)
        self._method_peer_disconnect_later_1995695955 = StringName(from: "peer_disconnect_later")
        assert(self._method_peer_disconnect_later_1995695955 != nil)
        self._method_peer_disconnect_now_1995695955 = StringName(from: "peer_disconnect_now")
        assert(self._method_peer_disconnect_now_1995695955 != nil)
        self._method_ping_3218959716 = StringName(from: "ping")
        assert(self._method_ping_3218959716 != nil)
        self._method_ping_interval_1286410249 = StringName(from: "ping_interval")
        assert(self._method_ping_interval_1286410249 != nil)
        self._method_reset_3218959716 = StringName(from: "reset")
        assert(self._method_reset_3218959716 != nil)
        self._method_send_120522849 = StringName(from: "send")
        assert(self._method_send_120522849 != nil)
        self._method_throttle_configure_1649997291 = StringName(from: "throttle_configure")
        assert(self._method_throttle_configure_1649997291 != nil)
        self._method_set_timeout_1649997291 = StringName(from: "set_timeout")
        assert(self._method_set_timeout_1649997291 != nil)
        self._method_get_remote_address_201670096 = StringName(from: "get_remote_address")
        assert(self._method_get_remote_address_201670096 != nil)
        self._method_get_remote_port_3905245786 = StringName(from: "get_remote_port")
        assert(self._method_get_remote_port_3905245786 != nil)
        self._method_get_statistic_1642578323 = StringName(from: "get_statistic")
        assert(self._method_get_statistic_1642578323 != nil)
        self._method_get_state_711068532 = StringName(from: "get_state")
        assert(self._method_get_state_711068532 != nil)
        self._method_get_channels_3905245786 = StringName(from: "get_channels")
        assert(self._method_get_channels_3905245786 != nil)
        self._method_is_active_36873697 = StringName(from: "is_active")
        assert(self._method_is_active_36873697 != nil)
    }

    public func peer_disconnect(data: Int64)  {
        withUnsafePointer(to: data) { data_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(data_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_peer_disconnect_1995695955._native_ptr(),
                    1995695955)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_peer_disconnect_later_1995695955._native_ptr(),
                    1995695955)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_peer_disconnect_now_1995695955._native_ptr(),
                    1995695955)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_ping_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_ping_interval_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_reset_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_send_120522849._native_ptr(),
                    120522849)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_throttle_configure_1649997291._native_ptr(),
                    1649997291)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_timeout_1649997291._native_ptr(),
                    1649997291)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func get_remote_address() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_remote_address_201670096._native_ptr(),
                    201670096)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_remote_port() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_remote_port_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_statistic_1642578323._native_ptr(),
                    1642578323)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func get_state() -> ENetPacketPeer.PeerState {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_state_711068532._native_ptr(),
                    711068532)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ENetPacketPeer.PeerState(godot: __resPtr.pointee)
    }
    public func get_channels() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_channels_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func is_active() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_active_36873697._native_ptr(),
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
}