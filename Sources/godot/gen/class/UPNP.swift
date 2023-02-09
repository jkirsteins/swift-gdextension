import godot_native

fileprivate var __godot_name_UPNP: StringName! = nil

/// MISSING
/// 
/// MISSING
open class UPNP : RefCounted {

    public enum UPNPResult : Int32 {
        case UPNP_RESULT_SUCCESS = 0
        case UPNP_RESULT_NOT_AUTHORIZED = 1
        case UPNP_RESULT_PORT_MAPPING_NOT_FOUND = 2
        case UPNP_RESULT_INCONSISTENT_PARAMETERS = 3
        case UPNP_RESULT_NO_SUCH_ENTRY_IN_ARRAY = 4
        case UPNP_RESULT_ACTION_FAILED = 5
        case UPNP_RESULT_SRC_IP_WILDCARD_NOT_PERMITTED = 6
        case UPNP_RESULT_EXT_PORT_WILDCARD_NOT_PERMITTED = 7
        case UPNP_RESULT_INT_PORT_WILDCARD_NOT_PERMITTED = 8
        case UPNP_RESULT_REMOTE_HOST_MUST_BE_WILDCARD = 9
        case UPNP_RESULT_EXT_PORT_MUST_BE_WILDCARD = 10
        case UPNP_RESULT_NO_PORT_MAPS_AVAILABLE = 11
        case UPNP_RESULT_CONFLICT_WITH_OTHER_MECHANISM = 12
        case UPNP_RESULT_CONFLICT_WITH_OTHER_MAPPING = 13
        case UPNP_RESULT_SAME_PORT_VALUES_REQUIRED = 14
        case UPNP_RESULT_ONLY_PERMANENT_LEASE_SUPPORTED = 15
        case UPNP_RESULT_INVALID_GATEWAY = 16
        case UPNP_RESULT_INVALID_PORT = 17
        case UPNP_RESULT_INVALID_PROTOCOL = 18
        case UPNP_RESULT_INVALID_DURATION = 19
        case UPNP_RESULT_INVALID_ARGS = 20
        case UPNP_RESULT_INVALID_RESPONSE = 21
        case UPNP_RESULT_INVALID_PARAM = 22
        case UPNP_RESULT_HTTP_ERROR = 23
        case UPNP_RESULT_SOCKET_ERROR = 24
        case UPNP_RESULT_MEM_ALLOC_ERROR = 25
        case UPNP_RESULT_NO_GATEWAY = 26
        case UPNP_RESULT_NO_DEVICES = 27
        case UPNP_RESULT_UNKNOWN_ERROR = 28
    }

    public override class var __godot_name: StringName { __godot_name_UPNP }

    static var _method_get_device_count_3905245786: StringName! = nil
    static var _method_get_device_2193290270: StringName! = nil
    static var _method_add_device_986715920: StringName! = nil
    static var _method_set_device_3015133723: StringName! = nil
    static var _method_remove_device_1286410249: StringName! = nil
    static var _method_clear_devices_3218959716: StringName! = nil
    static var _method_get_gateway_2276800779: StringName! = nil
    static var _method_discover_1575334765: StringName! = nil
    static var _method_query_external_address_201670096: StringName! = nil
    static var _method_add_port_mapping_3358934458: StringName! = nil
    static var _method_delete_port_mapping_760296170: StringName! = nil
    static var _method_set_discover_multicast_if_83702148: StringName! = nil
    static var _method_get_discover_multicast_if_201670096: StringName! = nil
    static var _method_set_discover_local_port_1286410249: StringName! = nil
    static var _method_get_discover_local_port_3905245786: StringName! = nil
    static var _method_set_discover_ipv6_2586408642: StringName! = nil
    static var _method_is_discover_ipv6_36873697: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_UPNP == nil)
        __godot_name_UPNP = StringName(from: "UPNP")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_device_count_3905245786 = StringName(from: "get_device_count")
        assert(self._method_get_device_count_3905245786 != nil)
        self._method_get_device_2193290270 = StringName(from: "get_device")
        assert(self._method_get_device_2193290270 != nil)
        self._method_add_device_986715920 = StringName(from: "add_device")
        assert(self._method_add_device_986715920 != nil)
        self._method_set_device_3015133723 = StringName(from: "set_device")
        assert(self._method_set_device_3015133723 != nil)
        self._method_remove_device_1286410249 = StringName(from: "remove_device")
        assert(self._method_remove_device_1286410249 != nil)
        self._method_clear_devices_3218959716 = StringName(from: "clear_devices")
        assert(self._method_clear_devices_3218959716 != nil)
        self._method_get_gateway_2276800779 = StringName(from: "get_gateway")
        assert(self._method_get_gateway_2276800779 != nil)
        self._method_discover_1575334765 = StringName(from: "discover")
        assert(self._method_discover_1575334765 != nil)
        self._method_query_external_address_201670096 = StringName(from: "query_external_address")
        assert(self._method_query_external_address_201670096 != nil)
        self._method_add_port_mapping_3358934458 = StringName(from: "add_port_mapping")
        assert(self._method_add_port_mapping_3358934458 != nil)
        self._method_delete_port_mapping_760296170 = StringName(from: "delete_port_mapping")
        assert(self._method_delete_port_mapping_760296170 != nil)
        self._method_set_discover_multicast_if_83702148 = StringName(from: "set_discover_multicast_if")
        assert(self._method_set_discover_multicast_if_83702148 != nil)
        self._method_get_discover_multicast_if_201670096 = StringName(from: "get_discover_multicast_if")
        assert(self._method_get_discover_multicast_if_201670096 != nil)
        self._method_set_discover_local_port_1286410249 = StringName(from: "set_discover_local_port")
        assert(self._method_set_discover_local_port_1286410249 != nil)
        self._method_get_discover_local_port_3905245786 = StringName(from: "get_discover_local_port")
        assert(self._method_get_discover_local_port_3905245786 != nil)
        self._method_set_discover_ipv6_2586408642 = StringName(from: "set_discover_ipv6")
        assert(self._method_set_discover_ipv6_2586408642 != nil)
        self._method_is_discover_ipv6_36873697 = StringName(from: "is_discover_ipv6")
        assert(self._method_is_discover_ipv6_36873697 != nil)
    }

    public func get_device_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_device_count_3905245786._native_ptr(),
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
    public func get_device(index: Int64) -> UPNPDevice {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_device_2193290270._native_ptr(),
                    2193290270)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UPNPDevice(godot: __resPtr.pointee)
        }
    }
    public func add_device(device: UPNPDevice)  {
        let device_native = device._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(device_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_device_986715920._native_ptr(),
                    986715920)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_device(index: Int64, device: UPNPDevice)  {
        withUnsafePointer(to: index) { index_native in
        let device_native = device._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(device_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_device_3015133723._native_ptr(),
                    3015133723)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func remove_device(index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_device_1286410249._native_ptr(),
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
    public func clear_devices()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_devices_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_gateway() -> UPNPDevice {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_gateway_2276800779._native_ptr(),
                    2276800779)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UPNPDevice(godot: __resPtr.pointee)
    }
    public func discover(timeout: Int64, ttl: Int64, device_filter: godot.String) -> Int64 {
        withUnsafePointer(to: ttl) { ttl_native in
        withUnsafePointer(to: timeout) { timeout_native in
        let device_filter_native = device_filter._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(timeout_native), .init(ttl_native), .init(device_filter_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_discover_1575334765._native_ptr(),
                    1575334765)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
        }
    }
    public func query_external_address() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_query_external_address_201670096._native_ptr(),
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
    public func add_port_mapping(port: Int64, port_internal: Int64, desc: godot.String, proto: godot.String, duration: Int64) -> Int64 {
        withUnsafePointer(to: duration) { duration_native in
        withUnsafePointer(to: port_internal) { port_internal_native in
        withUnsafePointer(to: port) { port_native in
        let proto_native = proto._native_ptr()
        let desc_native = desc._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(port_native), .init(port_internal_native), .init(desc_native), .init(proto_native), .init(duration_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_port_mapping_3358934458._native_ptr(),
                    3358934458)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
        }
        }
    }
    public func delete_port_mapping(port: Int64, proto: godot.String) -> Int64 {
        withUnsafePointer(to: port) { port_native in
        let proto_native = proto._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(port_native), .init(proto_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_delete_port_mapping_760296170._native_ptr(),
                    760296170)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func set_discover_multicast_if(m_if: godot.String)  {
        let m_if_native = m_if._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(m_if_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_discover_multicast_if_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_discover_multicast_if() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_discover_multicast_if_201670096._native_ptr(),
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
    public func set_discover_local_port(port: Int64)  {
        withUnsafePointer(to: port) { port_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(port_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_discover_local_port_1286410249._native_ptr(),
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
    public func get_discover_local_port() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_discover_local_port_3905245786._native_ptr(),
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
    public func set_discover_ipv6(ipv6: UInt8)  {
        withUnsafePointer(to: ipv6) { ipv6_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ipv6_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_discover_ipv6_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_discover_ipv6() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_discover_ipv6_36873697._native_ptr(),
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