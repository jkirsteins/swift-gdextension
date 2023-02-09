import godot_native

fileprivate var __godot_name_IP: StringName! = nil

/// Internet protocol (IP) support functions such as DNS resolution.
/// 
/// IP contains support functions for the Internet Protocol (IP). TCP/IP support is in different classes (see [StreamPeerTCP] and [TCPServer]). IP provides DNS hostname resolution support, both blocking and threaded.
open class IP : Object {

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

    static var _method_resolve_hostname_396864159: StringName! = nil
    static var _method_resolve_hostname_addresses_3462780090: StringName! = nil
    static var _method_resolve_hostname_queue_item_3936392508: StringName! = nil
    static var _method_get_resolve_item_status_3812250196: StringName! = nil
    static var _method_get_resolve_item_address_844755477: StringName! = nil
    static var _method_get_resolve_item_addresses_663333327: StringName! = nil
    static var _method_erase_resolve_item_1286410249: StringName! = nil
    static var _method_get_local_addresses_1139954409: StringName! = nil
    static var _method_get_local_interfaces_3995934104: StringName! = nil
    static var _method_clear_cache_3005725572: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_IP == nil)
        __godot_name_IP = StringName(from: "IP")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_resolve_hostname_396864159 = StringName(from: "resolve_hostname")
        assert(self._method_resolve_hostname_396864159 != nil)
        self._method_resolve_hostname_addresses_3462780090 = StringName(from: "resolve_hostname_addresses")
        assert(self._method_resolve_hostname_addresses_3462780090 != nil)
        self._method_resolve_hostname_queue_item_3936392508 = StringName(from: "resolve_hostname_queue_item")
        assert(self._method_resolve_hostname_queue_item_3936392508 != nil)
        self._method_get_resolve_item_status_3812250196 = StringName(from: "get_resolve_item_status")
        assert(self._method_get_resolve_item_status_3812250196 != nil)
        self._method_get_resolve_item_address_844755477 = StringName(from: "get_resolve_item_address")
        assert(self._method_get_resolve_item_address_844755477 != nil)
        self._method_get_resolve_item_addresses_663333327 = StringName(from: "get_resolve_item_addresses")
        assert(self._method_get_resolve_item_addresses_663333327 != nil)
        self._method_erase_resolve_item_1286410249 = StringName(from: "erase_resolve_item")
        assert(self._method_erase_resolve_item_1286410249 != nil)
        self._method_get_local_addresses_1139954409 = StringName(from: "get_local_addresses")
        assert(self._method_get_local_addresses_1139954409 != nil)
        self._method_get_local_interfaces_3995934104 = StringName(from: "get_local_interfaces")
        assert(self._method_get_local_interfaces_3995934104 != nil)
        self._method_clear_cache_3005725572 = StringName(from: "clear_cache")
        assert(self._method_clear_cache_3005725572 != nil)
    }

    public func resolve_hostname(host: godot.String, ip_type: IP.`Typ`) -> godot.String {
        withUnsafePointer(to: ip_type.rawValue) { ip_type_native in
        let host_native = host._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(host_native), .init(ip_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_resolve_hostname_396864159._native_ptr(),
                    396864159)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func resolve_hostname_addresses(host: godot.String, ip_type: IP.`Typ`) -> PackedStringArray {
        withUnsafePointer(to: ip_type.rawValue) { ip_type_native in
        let host_native = host._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(host_native), .init(ip_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_resolve_hostname_addresses_3462780090._native_ptr(),
                    3462780090)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
        }
    }
    public func resolve_hostname_queue_item(host: godot.String, ip_type: IP.`Typ`) -> Int64 {
        withUnsafePointer(to: ip_type.rawValue) { ip_type_native in
        let host_native = host._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(host_native), .init(ip_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_resolve_hostname_queue_item_3936392508._native_ptr(),
                    3936392508)
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
    public func get_resolve_item_status(id: Int64) -> IP.ResolverStatus {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_resolve_item_status_3812250196._native_ptr(),
                    3812250196)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return IP.ResolverStatus(godot: __resPtr.pointee)
        }
    }
    public func get_resolve_item_address(id: Int64) -> godot.String {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_resolve_item_address_844755477._native_ptr(),
                    844755477)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_resolve_item_addresses_663333327._native_ptr(),
                    663333327)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_erase_resolve_item_1286410249._native_ptr(),
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
    public func get_local_addresses() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_local_addresses_1139954409._native_ptr(),
                    1139954409)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func get_local_interfaces() -> [Dictionary] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_local_interfaces_3995934104._native_ptr(),
                    3995934104)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](godot: __resPtr.pointee)
    }
    public func clear_cache(hostname: godot.String)  {
        let hostname_native = hostname._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(hostname_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_cache_3005725572._native_ptr(),
                    3005725572)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}