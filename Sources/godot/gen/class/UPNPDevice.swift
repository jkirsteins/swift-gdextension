import godot_native

fileprivate var __godot_name_UPNPDevice: StringName! = nil

/// MISSING
/// 
/// MISSING
open class UPNPDevice : RefCounted {

    public enum IGDStatus : Int32 {
        case IGD_STATUS_OK = 0
        case IGD_STATUS_HTTP_ERROR = 1
        case IGD_STATUS_HTTP_EMPTY = 2
        case IGD_STATUS_NO_URLS = 3
        case IGD_STATUS_NO_IGD = 4
        case IGD_STATUS_DISCONNECTED = 5
        case IGD_STATUS_UNKNOWN_DEVICE = 6
        case IGD_STATUS_INVALID_CONTROL = 7
        case IGD_STATUS_MALLOC_ERROR = 8
        case IGD_STATUS_UNKNOWN_ERROR = 9
    }

    public override class var __godot_name: StringName { __godot_name_UPNPDevice }

    static var _method_is_valid_gateway_36873697: StringName! = nil
    static var _method_query_external_address_201670096: StringName! = nil
    static var _method_add_port_mapping_3358934458: StringName! = nil
    static var _method_delete_port_mapping_760296170: StringName! = nil
    static var _method_set_description_url_83702148: StringName! = nil
    static var _method_get_description_url_201670096: StringName! = nil
    static var _method_set_service_type_83702148: StringName! = nil
    static var _method_get_service_type_201670096: StringName! = nil
    static var _method_set_igd_control_url_83702148: StringName! = nil
    static var _method_get_igd_control_url_201670096: StringName! = nil
    static var _method_set_igd_service_type_83702148: StringName! = nil
    static var _method_get_igd_service_type_201670096: StringName! = nil
    static var _method_set_igd_our_addr_83702148: StringName! = nil
    static var _method_get_igd_our_addr_201670096: StringName! = nil
    static var _method_set_igd_status_519504122: StringName! = nil
    static var _method_get_igd_status_180887011: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_UPNPDevice == nil)
        __godot_name_UPNPDevice = StringName(from: "UPNPDevice")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_is_valid_gateway_36873697 = StringName(from: "is_valid_gateway")
        assert(self._method_is_valid_gateway_36873697 != nil)
        self._method_query_external_address_201670096 = StringName(from: "query_external_address")
        assert(self._method_query_external_address_201670096 != nil)
        self._method_add_port_mapping_3358934458 = StringName(from: "add_port_mapping")
        assert(self._method_add_port_mapping_3358934458 != nil)
        self._method_delete_port_mapping_760296170 = StringName(from: "delete_port_mapping")
        assert(self._method_delete_port_mapping_760296170 != nil)
        self._method_set_description_url_83702148 = StringName(from: "set_description_url")
        assert(self._method_set_description_url_83702148 != nil)
        self._method_get_description_url_201670096 = StringName(from: "get_description_url")
        assert(self._method_get_description_url_201670096 != nil)
        self._method_set_service_type_83702148 = StringName(from: "set_service_type")
        assert(self._method_set_service_type_83702148 != nil)
        self._method_get_service_type_201670096 = StringName(from: "get_service_type")
        assert(self._method_get_service_type_201670096 != nil)
        self._method_set_igd_control_url_83702148 = StringName(from: "set_igd_control_url")
        assert(self._method_set_igd_control_url_83702148 != nil)
        self._method_get_igd_control_url_201670096 = StringName(from: "get_igd_control_url")
        assert(self._method_get_igd_control_url_201670096 != nil)
        self._method_set_igd_service_type_83702148 = StringName(from: "set_igd_service_type")
        assert(self._method_set_igd_service_type_83702148 != nil)
        self._method_get_igd_service_type_201670096 = StringName(from: "get_igd_service_type")
        assert(self._method_get_igd_service_type_201670096 != nil)
        self._method_set_igd_our_addr_83702148 = StringName(from: "set_igd_our_addr")
        assert(self._method_set_igd_our_addr_83702148 != nil)
        self._method_get_igd_our_addr_201670096 = StringName(from: "get_igd_our_addr")
        assert(self._method_get_igd_our_addr_201670096 != nil)
        self._method_set_igd_status_519504122 = StringName(from: "set_igd_status")
        assert(self._method_set_igd_status_519504122 != nil)
        self._method_get_igd_status_180887011 = StringName(from: "get_igd_status")
        assert(self._method_get_igd_status_180887011 != nil)
    }

    public func is_valid_gateway() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_valid_gateway_36873697._native_ptr(),
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
    public func set_description_url(url: godot.String)  {
        let url_native = url._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(url_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_description_url_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_description_url() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_description_url_201670096._native_ptr(),
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
    public func set_service_type(`type`: godot.String)  {
        let type_native = `type`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_service_type_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_service_type() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_service_type_201670096._native_ptr(),
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
    public func set_igd_control_url(url: godot.String)  {
        let url_native = url._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(url_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_igd_control_url_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_igd_control_url() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_igd_control_url_201670096._native_ptr(),
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
    public func set_igd_service_type(`type`: godot.String)  {
        let type_native = `type`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_igd_service_type_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_igd_service_type() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_igd_service_type_201670096._native_ptr(),
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
    public func set_igd_our_addr(addr: godot.String)  {
        let addr_native = addr._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(addr_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_igd_our_addr_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_igd_our_addr() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_igd_our_addr_201670096._native_ptr(),
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
    public func set_igd_status(status: UPNPDevice.IGDStatus)  {
        withUnsafePointer(to: status.rawValue) { status_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(status_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_igd_status_519504122._native_ptr(),
                    519504122)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_igd_status() -> UPNPDevice.IGDStatus {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_igd_status_180887011._native_ptr(),
                    180887011)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UPNPDevice.IGDStatus(godot: __resPtr.pointee)
    }
}