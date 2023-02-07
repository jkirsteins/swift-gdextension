import godot_native

fileprivate var __godot_name_IP: StringName! = nil

/// Internet protocol (IP) support functions such as DNS resolution.
/// 
/// IP contains support functions for the Internet Protocol (IP). TCP/IP support is in different classes (see [StreamPeerTCP] and [TCPServer]). IP provides DNS hostname resolution support, both blocking and threaded.
public class IP : Object {

    public enum ResolverStatus : Int32 {
        case RESOLVER_STATUS_NONE = 0
        case RESOLVER_STATUS_WAITING = 1
        case RESOLVER_STATUS_DONE = 2
        case RESOLVER_STATUS_ERROR = 3
    }
    public enum `Typ` : Int32 {
        case TYPE_NONE = 0
        case TYPE_IPV4 = 1
        case TYPE_IPV6 = 2
        case TYPE_ANY = 3
    }

    public override class var __godot_name: StringName { __godot_name_IP }

    static var _method_resolve_hostname_396864159: GDExtensionMethodBindPtr! = nil
    static var _method_resolve_hostname_addresses_3462780090: GDExtensionMethodBindPtr! = nil
    static var _method_resolve_hostname_queue_item_3936392508: GDExtensionMethodBindPtr! = nil
    static var _method_get_resolve_item_status_3812250196: GDExtensionMethodBindPtr! = nil
    static var _method_get_resolve_item_address_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_get_resolve_item_addresses_663333327: GDExtensionMethodBindPtr! = nil
    static var _method_erase_resolve_item_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_local_addresses_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_get_local_interfaces_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_clear_cache_3005725572: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_IP = StringName(from: "IP")

        let _method_resolve_hostname_396864159_name = StringName(from: "resolve_hostname")
        self._method_resolve_hostname_396864159 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_resolve_hostname_396864159_name._native_ptr(), 396864159)
        assert(IP._method_resolve_hostname_396864159 != nil)
        let _method_resolve_hostname_addresses_3462780090_name = StringName(from: "resolve_hostname_addresses")
        self._method_resolve_hostname_addresses_3462780090 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_resolve_hostname_addresses_3462780090_name._native_ptr(), 3462780090)
        assert(IP._method_resolve_hostname_addresses_3462780090 != nil)
        let _method_resolve_hostname_queue_item_3936392508_name = StringName(from: "resolve_hostname_queue_item")
        self._method_resolve_hostname_queue_item_3936392508 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_resolve_hostname_queue_item_3936392508_name._native_ptr(), 3936392508)
        assert(IP._method_resolve_hostname_queue_item_3936392508 != nil)
        let _method_get_resolve_item_status_3812250196_name = StringName(from: "get_resolve_item_status")
        self._method_get_resolve_item_status_3812250196 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_resolve_item_status_3812250196_name._native_ptr(), 3812250196)
        assert(IP._method_get_resolve_item_status_3812250196 != nil)
        let _method_get_resolve_item_address_844755477_name = StringName(from: "get_resolve_item_address")
        self._method_get_resolve_item_address_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_resolve_item_address_844755477_name._native_ptr(), 844755477)
        assert(IP._method_get_resolve_item_address_844755477 != nil)
        let _method_get_resolve_item_addresses_663333327_name = StringName(from: "get_resolve_item_addresses")
        self._method_get_resolve_item_addresses_663333327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_resolve_item_addresses_663333327_name._native_ptr(), 663333327)
        assert(IP._method_get_resolve_item_addresses_663333327 != nil)
        let _method_erase_resolve_item_1286410249_name = StringName(from: "erase_resolve_item")
        self._method_erase_resolve_item_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_erase_resolve_item_1286410249_name._native_ptr(), 1286410249)
        assert(IP._method_erase_resolve_item_1286410249 != nil)
        let _method_get_local_addresses_1139954409_name = StringName(from: "get_local_addresses")
        self._method_get_local_addresses_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_local_addresses_1139954409_name._native_ptr(), 1139954409)
        assert(IP._method_get_local_addresses_1139954409 != nil)
        let _method_get_local_interfaces_3995934104_name = StringName(from: "get_local_interfaces")
        self._method_get_local_interfaces_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_local_interfaces_3995934104_name._native_ptr(), 3995934104)
        assert(IP._method_get_local_interfaces_3995934104 != nil)
        let _method_clear_cache_3005725572_name = StringName(from: "clear_cache")
        self._method_clear_cache_3005725572 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_cache_3005725572_name._native_ptr(), 3005725572)
        assert(IP._method_clear_cache_3005725572 != nil)
    }

    public func resolve_hostname(host: String, ip_type: IP.`Typ`) -> String {
        withUnsafePointer(to: host) { host_native in
        withUnsafePointer(to: ip_type.rawValue) { ip_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(host_native), .init(ip_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_resolve_hostname_396864159,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
        }
    }
    public func resolve_hostname_addresses(host: String, ip_type: IP.`Typ`) -> PackedStringArray {
        withUnsafePointer(to: host) { host_native in
        withUnsafePointer(to: ip_type.rawValue) { ip_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(host_native), .init(ip_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_resolve_hostname_addresses_3462780090,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
        }
        }
    }
    public func resolve_hostname_queue_item(host: String, ip_type: IP.`Typ`) -> Int64 {
        withUnsafePointer(to: host) { host_native in
        withUnsafePointer(to: ip_type.rawValue) { ip_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(host_native), .init(ip_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_resolve_hostname_queue_item_3936392508,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
    }
    public func get_resolve_item_status(id: Int64) -> IP.ResolverStatus {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_resolve_item_status_3812250196,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return IP.ResolverStatus(from: __resPtr.pointee)
        }
    }
    public func get_resolve_item_address(id: Int64) -> String {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_resolve_item_address_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
    public func get_resolve_item_addresses(id: Int64) -> Array {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_resolve_item_addresses_663333327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(from: __resPtr.pointee)
        }
    }
    public func erase_resolve_item(id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_erase_resolve_item_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_local_addresses() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_local_addresses_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func get_local_interfaces() -> [Dictionary] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_local_interfaces_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](from: __resPtr.pointee)
    }
    public func clear_cache(hostname: String)  {
        withUnsafePointer(to: hostname) { hostname_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(hostname_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_cache_3005725572,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}