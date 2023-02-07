import godot_native

fileprivate var __godot_name_MultiplayerPeer: StringName! = nil

/// Abstract class for specialized [PacketPeer]s used by the [MultiplayerAPI].
/// 
/// Manages the connection with one or more remote peers acting as server or client and assigning unique IDs to each of them. See also [MultiplayerAPI].
///  
/// [b]Note:[/b] The [MultiplayerAPI] protocol is an implementation detail and isn't meant to be used by non-Godot servers. It may change without notice.
///  
/// [b]Note:[/b] When exporting to Android, make sure to enable the [code]INTERNET[/code] permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.
public class MultiplayerPeer : PacketPeer {

    public enum ConnectionStatus : Int32 {
        case CONNECTION_DISCONNECTED = 0
        case CONNECTION_CONNECTING = 1
        case CONNECTION_CONNECTED = 2
    }
    public enum TransferMode : Int32 {
        case TRANSFER_MODE_UNRELIABLE = 0
        case TRANSFER_MODE_UNRELIABLE_ORDERED = 1
        case TRANSFER_MODE_RELIABLE = 2
    }

    public override class var __godot_name: StringName { __godot_name_MultiplayerPeer }

    static var _method_set_transfer_channel_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_transfer_channel_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_transfer_mode_950411049: GDExtensionMethodBindPtr! = nil
    static var _method_get_transfer_mode_3369852622: GDExtensionMethodBindPtr! = nil
    static var _method_set_target_peer_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_packet_peer_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_packet_channel_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_packet_mode_3369852622: GDExtensionMethodBindPtr! = nil
    static var _method_poll_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_close_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_disconnect_peer_4023243586: GDExtensionMethodBindPtr! = nil
    static var _method_get_connection_status_2147374275: GDExtensionMethodBindPtr! = nil
    static var _method_get_unique_id_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_generate_unique_id_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_refuse_new_connections_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_refusing_new_connections_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_is_server_relay_supported_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_MultiplayerPeer = StringName(from: "MultiplayerPeer")

        let _method_set_transfer_channel_1286410249_name = StringName(from: "set_transfer_channel")
        self._method_set_transfer_channel_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_transfer_channel_1286410249_name._native_ptr(), 1286410249)
        assert(MultiplayerPeer._method_set_transfer_channel_1286410249 != nil)
        let _method_get_transfer_channel_3905245786_name = StringName(from: "get_transfer_channel")
        self._method_get_transfer_channel_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_transfer_channel_3905245786_name._native_ptr(), 3905245786)
        assert(MultiplayerPeer._method_get_transfer_channel_3905245786 != nil)
        let _method_set_transfer_mode_950411049_name = StringName(from: "set_transfer_mode")
        self._method_set_transfer_mode_950411049 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_transfer_mode_950411049_name._native_ptr(), 950411049)
        assert(MultiplayerPeer._method_set_transfer_mode_950411049 != nil)
        let _method_get_transfer_mode_3369852622_name = StringName(from: "get_transfer_mode")
        self._method_get_transfer_mode_3369852622 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_transfer_mode_3369852622_name._native_ptr(), 3369852622)
        assert(MultiplayerPeer._method_get_transfer_mode_3369852622 != nil)
        let _method_set_target_peer_1286410249_name = StringName(from: "set_target_peer")
        self._method_set_target_peer_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_target_peer_1286410249_name._native_ptr(), 1286410249)
        assert(MultiplayerPeer._method_set_target_peer_1286410249 != nil)
        let _method_get_packet_peer_3905245786_name = StringName(from: "get_packet_peer")
        self._method_get_packet_peer_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_packet_peer_3905245786_name._native_ptr(), 3905245786)
        assert(MultiplayerPeer._method_get_packet_peer_3905245786 != nil)
        let _method_get_packet_channel_3905245786_name = StringName(from: "get_packet_channel")
        self._method_get_packet_channel_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_packet_channel_3905245786_name._native_ptr(), 3905245786)
        assert(MultiplayerPeer._method_get_packet_channel_3905245786 != nil)
        let _method_get_packet_mode_3369852622_name = StringName(from: "get_packet_mode")
        self._method_get_packet_mode_3369852622 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_packet_mode_3369852622_name._native_ptr(), 3369852622)
        assert(MultiplayerPeer._method_get_packet_mode_3369852622 != nil)
        let _method_poll_3218959716_name = StringName(from: "poll")
        self._method_poll_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_poll_3218959716_name._native_ptr(), 3218959716)
        assert(MultiplayerPeer._method_poll_3218959716 != nil)
        let _method_close_3218959716_name = StringName(from: "close")
        self._method_close_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_close_3218959716_name._native_ptr(), 3218959716)
        assert(MultiplayerPeer._method_close_3218959716 != nil)
        let _method_disconnect_peer_4023243586_name = StringName(from: "disconnect_peer")
        self._method_disconnect_peer_4023243586 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_disconnect_peer_4023243586_name._native_ptr(), 4023243586)
        assert(MultiplayerPeer._method_disconnect_peer_4023243586 != nil)
        let _method_get_connection_status_2147374275_name = StringName(from: "get_connection_status")
        self._method_get_connection_status_2147374275 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_connection_status_2147374275_name._native_ptr(), 2147374275)
        assert(MultiplayerPeer._method_get_connection_status_2147374275 != nil)
        let _method_get_unique_id_3905245786_name = StringName(from: "get_unique_id")
        self._method_get_unique_id_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_unique_id_3905245786_name._native_ptr(), 3905245786)
        assert(MultiplayerPeer._method_get_unique_id_3905245786 != nil)
        let _method_generate_unique_id_3905245786_name = StringName(from: "generate_unique_id")
        self._method_generate_unique_id_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_generate_unique_id_3905245786_name._native_ptr(), 3905245786)
        assert(MultiplayerPeer._method_generate_unique_id_3905245786 != nil)
        let _method_set_refuse_new_connections_2586408642_name = StringName(from: "set_refuse_new_connections")
        self._method_set_refuse_new_connections_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_refuse_new_connections_2586408642_name._native_ptr(), 2586408642)
        assert(MultiplayerPeer._method_set_refuse_new_connections_2586408642 != nil)
        let _method_is_refusing_new_connections_36873697_name = StringName(from: "is_refusing_new_connections")
        self._method_is_refusing_new_connections_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_refusing_new_connections_36873697_name._native_ptr(), 36873697)
        assert(MultiplayerPeer._method_is_refusing_new_connections_36873697 != nil)
        let _method_is_server_relay_supported_36873697_name = StringName(from: "is_server_relay_supported")
        self._method_is_server_relay_supported_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_server_relay_supported_36873697_name._native_ptr(), 36873697)
        assert(MultiplayerPeer._method_is_server_relay_supported_36873697 != nil)
    }

    public func set_transfer_channel(channel: Int64)  {
        withUnsafePointer(to: channel) { channel_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(channel_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_transfer_channel_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_transfer_channel() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_transfer_channel_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_transfer_mode(mode: MultiplayerPeer.TransferMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_transfer_mode_950411049,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_transfer_mode() -> MultiplayerPeer.TransferMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_transfer_mode_3369852622,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return MultiplayerPeer.TransferMode(from: __resPtr.pointee)
    }
    public func set_target_peer(id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_target_peer_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_packet_peer() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_packet_peer_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_packet_channel() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_packet_channel_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_packet_mode() -> MultiplayerPeer.TransferMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_packet_mode_3369852622,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return MultiplayerPeer.TransferMode(from: __resPtr.pointee)
    }
    public func poll()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_poll_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func close()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_close_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func disconnect_peer(peer: Int64, force: UInt8)  {
        withUnsafePointer(to: force) { force_native in
        withUnsafePointer(to: peer) { peer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(peer_native), .init(force_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_disconnect_peer_4023243586,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_connection_status() -> MultiplayerPeer.ConnectionStatus {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_connection_status_2147374275,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return MultiplayerPeer.ConnectionStatus(from: __resPtr.pointee)
    }
    public func get_unique_id() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_unique_id_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func generate_unique_id() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_generate_unique_id_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_refuse_new_connections(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_refuse_new_connections_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_refusing_new_connections() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_refusing_new_connections_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func is_server_relay_supported() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_server_relay_supported_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}