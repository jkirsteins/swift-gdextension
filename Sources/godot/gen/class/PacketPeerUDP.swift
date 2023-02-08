import godot_native

fileprivate var __godot_name_PacketPeerUDP: StringName! = nil

/// UDP packet peer.
/// 
/// UDP packet peer. Can be used to send raw UDP packets as well as [Variant]s.
///  
/// [b]Note:[/b] When exporting to Android, make sure to enable the [code]INTERNET[/code] permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.
open class PacketPeerUDP : PacketPeer {

    

    public override class var __godot_name: StringName { __godot_name_PacketPeerUDP }

    static var _method_bind_4290438434: GDExtensionMethodBindPtr! = nil
    static var _method_close_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_wait_166280745: GDExtensionMethodBindPtr! = nil
    static var _method_is_bound_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_connect_to_host_993915709: GDExtensionMethodBindPtr! = nil
    static var _method_is_socket_connected_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_packet_ip_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_packet_port_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_local_port_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_dest_address_993915709: GDExtensionMethodBindPtr! = nil
    static var _method_set_broadcast_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_join_multicast_group_852856452: GDExtensionMethodBindPtr! = nil
    static var _method_leave_multicast_group_852856452: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_PacketPeerUDP = StringName(from: "PacketPeerUDP")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_bind_4290438434_name = StringName(from: "bind")
        self._method_bind_4290438434 = self.interface.pointee.classdb_get_method_bind(__godot_name_PacketPeerUDP._native_ptr(), _method_bind_4290438434_name._native_ptr(), 4290438434)
        assert(PacketPeerUDP._method_bind_4290438434 != nil)
        let _method_close_3218959716_name = StringName(from: "close")
        self._method_close_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_PacketPeerUDP._native_ptr(), _method_close_3218959716_name._native_ptr(), 3218959716)
        assert(PacketPeerUDP._method_close_3218959716 != nil)
        let _method_wait_166280745_name = StringName(from: "wait")
        self._method_wait_166280745 = self.interface.pointee.classdb_get_method_bind(__godot_name_PacketPeerUDP._native_ptr(), _method_wait_166280745_name._native_ptr(), 166280745)
        assert(PacketPeerUDP._method_wait_166280745 != nil)
        let _method_is_bound_36873697_name = StringName(from: "is_bound")
        self._method_is_bound_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_PacketPeerUDP._native_ptr(), _method_is_bound_36873697_name._native_ptr(), 36873697)
        assert(PacketPeerUDP._method_is_bound_36873697 != nil)
        let _method_connect_to_host_993915709_name = StringName(from: "connect_to_host")
        self._method_connect_to_host_993915709 = self.interface.pointee.classdb_get_method_bind(__godot_name_PacketPeerUDP._native_ptr(), _method_connect_to_host_993915709_name._native_ptr(), 993915709)
        assert(PacketPeerUDP._method_connect_to_host_993915709 != nil)
        let _method_is_socket_connected_36873697_name = StringName(from: "is_socket_connected")
        self._method_is_socket_connected_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_PacketPeerUDP._native_ptr(), _method_is_socket_connected_36873697_name._native_ptr(), 36873697)
        assert(PacketPeerUDP._method_is_socket_connected_36873697 != nil)
        let _method_get_packet_ip_201670096_name = StringName(from: "get_packet_ip")
        self._method_get_packet_ip_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_PacketPeerUDP._native_ptr(), _method_get_packet_ip_201670096_name._native_ptr(), 201670096)
        assert(PacketPeerUDP._method_get_packet_ip_201670096 != nil)
        let _method_get_packet_port_3905245786_name = StringName(from: "get_packet_port")
        self._method_get_packet_port_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_PacketPeerUDP._native_ptr(), _method_get_packet_port_3905245786_name._native_ptr(), 3905245786)
        assert(PacketPeerUDP._method_get_packet_port_3905245786 != nil)
        let _method_get_local_port_3905245786_name = StringName(from: "get_local_port")
        self._method_get_local_port_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_PacketPeerUDP._native_ptr(), _method_get_local_port_3905245786_name._native_ptr(), 3905245786)
        assert(PacketPeerUDP._method_get_local_port_3905245786 != nil)
        let _method_set_dest_address_993915709_name = StringName(from: "set_dest_address")
        self._method_set_dest_address_993915709 = self.interface.pointee.classdb_get_method_bind(__godot_name_PacketPeerUDP._native_ptr(), _method_set_dest_address_993915709_name._native_ptr(), 993915709)
        assert(PacketPeerUDP._method_set_dest_address_993915709 != nil)
        let _method_set_broadcast_enabled_2586408642_name = StringName(from: "set_broadcast_enabled")
        self._method_set_broadcast_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_PacketPeerUDP._native_ptr(), _method_set_broadcast_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(PacketPeerUDP._method_set_broadcast_enabled_2586408642 != nil)
        let _method_join_multicast_group_852856452_name = StringName(from: "join_multicast_group")
        self._method_join_multicast_group_852856452 = self.interface.pointee.classdb_get_method_bind(__godot_name_PacketPeerUDP._native_ptr(), _method_join_multicast_group_852856452_name._native_ptr(), 852856452)
        assert(PacketPeerUDP._method_join_multicast_group_852856452 != nil)
        let _method_leave_multicast_group_852856452_name = StringName(from: "leave_multicast_group")
        self._method_leave_multicast_group_852856452 = self.interface.pointee.classdb_get_method_bind(__godot_name_PacketPeerUDP._native_ptr(), _method_leave_multicast_group_852856452_name._native_ptr(), 852856452)
        assert(PacketPeerUDP._method_leave_multicast_group_852856452 != nil)
    }

    public func bind(port: Int64, bind_address: godot.String, recv_buf_size: Int64) -> Error {
        withUnsafePointer(to: recv_buf_size) { recv_buf_size_native in
        withUnsafePointer(to: port) { port_native in
        let bind_address_native = bind_address._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(port_native), .init(bind_address_native), .init(recv_buf_size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_bind_4290438434,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
        }
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
    public func wait() -> Error {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_wait_166280745,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func is_bound() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_bound_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func connect_to_host(host: godot.String, port: Int64) -> Error {
        withUnsafePointer(to: port) { port_native in
        let host_native = host._native_ptr()
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
            return Error(godot: __resPtr.pointee)
        }
    }
    public func is_socket_connected() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_socket_connected_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_packet_ip() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_packet_ip_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_packet_port() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_packet_port_3905245786,
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
    public func set_dest_address(host: godot.String, port: Int64) -> Error {
        withUnsafePointer(to: port) { port_native in
        let host_native = host._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(host_native), .init(port_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_dest_address_993915709,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
    }
    public func set_broadcast_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_broadcast_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func join_multicast_group(multicast_address: godot.String, interface_name: godot.String) -> Error {
        let interface_name_native = interface_name._native_ptr()
        let multicast_address_native = multicast_address._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(multicast_address_native), .init(interface_name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_join_multicast_group_852856452,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func leave_multicast_group(multicast_address: godot.String, interface_name: godot.String) -> Error {
        let interface_name_native = interface_name._native_ptr()
        let multicast_address_native = multicast_address._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(multicast_address_native), .init(interface_name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_leave_multicast_group_852856452,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
}