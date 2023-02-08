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

    static var _method_get_device_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_device_2193290270: GDExtensionMethodBindPtr! = nil
    static var _method_add_device_986715920: GDExtensionMethodBindPtr! = nil
    static var _method_set_device_3015133723: GDExtensionMethodBindPtr! = nil
    static var _method_remove_device_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_clear_devices_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_gateway_2276800779: GDExtensionMethodBindPtr! = nil
    static var _method_discover_1575334765: GDExtensionMethodBindPtr! = nil
    static var _method_query_external_address_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_add_port_mapping_3358934458: GDExtensionMethodBindPtr! = nil
    static var _method_delete_port_mapping_760296170: GDExtensionMethodBindPtr! = nil
    static var _method_set_discover_multicast_if_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_discover_multicast_if_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_discover_local_port_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_discover_local_port_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_discover_ipv6_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_discover_ipv6_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_UPNP = StringName(from: "UPNP")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_get_device_count_3905245786_name = StringName(from: "get_device_count")
        self._method_get_device_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_UPNP._native_ptr(), _method_get_device_count_3905245786_name._native_ptr(), 3905245786)
        assert(UPNP._method_get_device_count_3905245786 != nil)
        let _method_get_device_2193290270_name = StringName(from: "get_device")
        self._method_get_device_2193290270 = self.interface.pointee.classdb_get_method_bind(__godot_name_UPNP._native_ptr(), _method_get_device_2193290270_name._native_ptr(), 2193290270)
        assert(UPNP._method_get_device_2193290270 != nil)
        let _method_add_device_986715920_name = StringName(from: "add_device")
        self._method_add_device_986715920 = self.interface.pointee.classdb_get_method_bind(__godot_name_UPNP._native_ptr(), _method_add_device_986715920_name._native_ptr(), 986715920)
        assert(UPNP._method_add_device_986715920 != nil)
        let _method_set_device_3015133723_name = StringName(from: "set_device")
        self._method_set_device_3015133723 = self.interface.pointee.classdb_get_method_bind(__godot_name_UPNP._native_ptr(), _method_set_device_3015133723_name._native_ptr(), 3015133723)
        assert(UPNP._method_set_device_3015133723 != nil)
        let _method_remove_device_1286410249_name = StringName(from: "remove_device")
        self._method_remove_device_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_UPNP._native_ptr(), _method_remove_device_1286410249_name._native_ptr(), 1286410249)
        assert(UPNP._method_remove_device_1286410249 != nil)
        let _method_clear_devices_3218959716_name = StringName(from: "clear_devices")
        self._method_clear_devices_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_UPNP._native_ptr(), _method_clear_devices_3218959716_name._native_ptr(), 3218959716)
        assert(UPNP._method_clear_devices_3218959716 != nil)
        let _method_get_gateway_2276800779_name = StringName(from: "get_gateway")
        self._method_get_gateway_2276800779 = self.interface.pointee.classdb_get_method_bind(__godot_name_UPNP._native_ptr(), _method_get_gateway_2276800779_name._native_ptr(), 2276800779)
        assert(UPNP._method_get_gateway_2276800779 != nil)
        let _method_discover_1575334765_name = StringName(from: "discover")
        self._method_discover_1575334765 = self.interface.pointee.classdb_get_method_bind(__godot_name_UPNP._native_ptr(), _method_discover_1575334765_name._native_ptr(), 1575334765)
        assert(UPNP._method_discover_1575334765 != nil)
        let _method_query_external_address_201670096_name = StringName(from: "query_external_address")
        self._method_query_external_address_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_UPNP._native_ptr(), _method_query_external_address_201670096_name._native_ptr(), 201670096)
        assert(UPNP._method_query_external_address_201670096 != nil)
        let _method_add_port_mapping_3358934458_name = StringName(from: "add_port_mapping")
        self._method_add_port_mapping_3358934458 = self.interface.pointee.classdb_get_method_bind(__godot_name_UPNP._native_ptr(), _method_add_port_mapping_3358934458_name._native_ptr(), 3358934458)
        assert(UPNP._method_add_port_mapping_3358934458 != nil)
        let _method_delete_port_mapping_760296170_name = StringName(from: "delete_port_mapping")
        self._method_delete_port_mapping_760296170 = self.interface.pointee.classdb_get_method_bind(__godot_name_UPNP._native_ptr(), _method_delete_port_mapping_760296170_name._native_ptr(), 760296170)
        assert(UPNP._method_delete_port_mapping_760296170 != nil)
        let _method_set_discover_multicast_if_83702148_name = StringName(from: "set_discover_multicast_if")
        self._method_set_discover_multicast_if_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_UPNP._native_ptr(), _method_set_discover_multicast_if_83702148_name._native_ptr(), 83702148)
        assert(UPNP._method_set_discover_multicast_if_83702148 != nil)
        let _method_get_discover_multicast_if_201670096_name = StringName(from: "get_discover_multicast_if")
        self._method_get_discover_multicast_if_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_UPNP._native_ptr(), _method_get_discover_multicast_if_201670096_name._native_ptr(), 201670096)
        assert(UPNP._method_get_discover_multicast_if_201670096 != nil)
        let _method_set_discover_local_port_1286410249_name = StringName(from: "set_discover_local_port")
        self._method_set_discover_local_port_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_UPNP._native_ptr(), _method_set_discover_local_port_1286410249_name._native_ptr(), 1286410249)
        assert(UPNP._method_set_discover_local_port_1286410249 != nil)
        let _method_get_discover_local_port_3905245786_name = StringName(from: "get_discover_local_port")
        self._method_get_discover_local_port_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_UPNP._native_ptr(), _method_get_discover_local_port_3905245786_name._native_ptr(), 3905245786)
        assert(UPNP._method_get_discover_local_port_3905245786 != nil)
        let _method_set_discover_ipv6_2586408642_name = StringName(from: "set_discover_ipv6")
        self._method_set_discover_ipv6_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_UPNP._native_ptr(), _method_set_discover_ipv6_2586408642_name._native_ptr(), 2586408642)
        assert(UPNP._method_set_discover_ipv6_2586408642 != nil)
        let _method_is_discover_ipv6_36873697_name = StringName(from: "is_discover_ipv6")
        self._method_is_discover_ipv6_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_UPNP._native_ptr(), _method_is_discover_ipv6_36873697_name._native_ptr(), 36873697)
        assert(UPNP._method_is_discover_ipv6_36873697 != nil)
    }

    public func get_device_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_device_count_3905245786,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_device_2193290270,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_device_986715920,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_device_3015133723,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_device_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_devices_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_gateway_2276800779,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_discover_1575334765,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_query_external_address_201670096,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_port_mapping_3358934458,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_delete_port_mapping_760296170,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_discover_multicast_if_83702148,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_discover_multicast_if_201670096,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_discover_local_port_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_discover_local_port_3905245786,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_discover_ipv6_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_discover_ipv6_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}