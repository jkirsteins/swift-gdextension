import godot_native

fileprivate var __godot_name_UPNPDevice: StringName! = nil

/// MISSING
/// 
/// MISSING
public class UPNPDevice : RefCounted {

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

    static var _method_is_valid_gateway_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_query_external_address_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_add_port_mapping_3358934458: GDExtensionMethodBindPtr! = nil
    static var _method_delete_port_mapping_760296170: GDExtensionMethodBindPtr! = nil
    static var _method_set_description_url_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_description_url_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_service_type_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_service_type_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_igd_control_url_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_igd_control_url_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_igd_service_type_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_igd_service_type_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_igd_our_addr_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_igd_our_addr_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_igd_status_519504122: GDExtensionMethodBindPtr! = nil
    static var _method_get_igd_status_180887011: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_UPNPDevice = StringName(from: "UPNPDevice")

        let _method_is_valid_gateway_36873697_name = StringName(from: "is_valid_gateway")
        self._method_is_valid_gateway_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_valid_gateway_36873697_name._native_ptr(), 36873697)
        assert(UPNPDevice._method_is_valid_gateway_36873697 != nil)
        let _method_query_external_address_201670096_name = StringName(from: "query_external_address")
        self._method_query_external_address_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_query_external_address_201670096_name._native_ptr(), 201670096)
        assert(UPNPDevice._method_query_external_address_201670096 != nil)
        let _method_add_port_mapping_3358934458_name = StringName(from: "add_port_mapping")
        self._method_add_port_mapping_3358934458 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_port_mapping_3358934458_name._native_ptr(), 3358934458)
        assert(UPNPDevice._method_add_port_mapping_3358934458 != nil)
        let _method_delete_port_mapping_760296170_name = StringName(from: "delete_port_mapping")
        self._method_delete_port_mapping_760296170 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_delete_port_mapping_760296170_name._native_ptr(), 760296170)
        assert(UPNPDevice._method_delete_port_mapping_760296170 != nil)
        let _method_set_description_url_83702148_name = StringName(from: "set_description_url")
        self._method_set_description_url_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_description_url_83702148_name._native_ptr(), 83702148)
        assert(UPNPDevice._method_set_description_url_83702148 != nil)
        let _method_get_description_url_201670096_name = StringName(from: "get_description_url")
        self._method_get_description_url_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_description_url_201670096_name._native_ptr(), 201670096)
        assert(UPNPDevice._method_get_description_url_201670096 != nil)
        let _method_set_service_type_83702148_name = StringName(from: "set_service_type")
        self._method_set_service_type_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_service_type_83702148_name._native_ptr(), 83702148)
        assert(UPNPDevice._method_set_service_type_83702148 != nil)
        let _method_get_service_type_201670096_name = StringName(from: "get_service_type")
        self._method_get_service_type_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_service_type_201670096_name._native_ptr(), 201670096)
        assert(UPNPDevice._method_get_service_type_201670096 != nil)
        let _method_set_igd_control_url_83702148_name = StringName(from: "set_igd_control_url")
        self._method_set_igd_control_url_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_igd_control_url_83702148_name._native_ptr(), 83702148)
        assert(UPNPDevice._method_set_igd_control_url_83702148 != nil)
        let _method_get_igd_control_url_201670096_name = StringName(from: "get_igd_control_url")
        self._method_get_igd_control_url_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_igd_control_url_201670096_name._native_ptr(), 201670096)
        assert(UPNPDevice._method_get_igd_control_url_201670096 != nil)
        let _method_set_igd_service_type_83702148_name = StringName(from: "set_igd_service_type")
        self._method_set_igd_service_type_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_igd_service_type_83702148_name._native_ptr(), 83702148)
        assert(UPNPDevice._method_set_igd_service_type_83702148 != nil)
        let _method_get_igd_service_type_201670096_name = StringName(from: "get_igd_service_type")
        self._method_get_igd_service_type_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_igd_service_type_201670096_name._native_ptr(), 201670096)
        assert(UPNPDevice._method_get_igd_service_type_201670096 != nil)
        let _method_set_igd_our_addr_83702148_name = StringName(from: "set_igd_our_addr")
        self._method_set_igd_our_addr_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_igd_our_addr_83702148_name._native_ptr(), 83702148)
        assert(UPNPDevice._method_set_igd_our_addr_83702148 != nil)
        let _method_get_igd_our_addr_201670096_name = StringName(from: "get_igd_our_addr")
        self._method_get_igd_our_addr_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_igd_our_addr_201670096_name._native_ptr(), 201670096)
        assert(UPNPDevice._method_get_igd_our_addr_201670096 != nil)
        let _method_set_igd_status_519504122_name = StringName(from: "set_igd_status")
        self._method_set_igd_status_519504122 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_igd_status_519504122_name._native_ptr(), 519504122)
        assert(UPNPDevice._method_set_igd_status_519504122 != nil)
        let _method_get_igd_status_180887011_name = StringName(from: "get_igd_status")
        self._method_get_igd_status_180887011 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_igd_status_180887011_name._native_ptr(), 180887011)
        assert(UPNPDevice._method_get_igd_status_180887011 != nil)
    }

    public func is_valid_gateway() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_valid_gateway_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func query_external_address() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_query_external_address_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func add_port_mapping(port: Int64, port_internal: Int64, desc: String, proto: String, duration: Int64) -> Int64 {
        withUnsafePointer(to: duration) { duration_native in
        withUnsafePointer(to: proto) { proto_native in
        withUnsafePointer(to: desc) { desc_native in
        withUnsafePointer(to: port_internal) { port_internal_native in
        withUnsafePointer(to: port) { port_native in
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
            return Int64(from: __resPtr.pointee)
        }
        }
        }
        }
        }
    }
    public func delete_port_mapping(port: Int64, proto: String) -> Int64 {
        withUnsafePointer(to: proto) { proto_native in
        withUnsafePointer(to: port) { port_native in
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
            return Int64(from: __resPtr.pointee)
        }
        }
    }
    public func set_description_url(url: String)  {
        withUnsafePointer(to: url) { url_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(url_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_description_url_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_description_url() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_description_url_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_service_type(`type`: String)  {
        withUnsafePointer(to: `type`) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_service_type_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_service_type() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_service_type_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_igd_control_url(url: String)  {
        withUnsafePointer(to: url) { url_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(url_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_igd_control_url_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_igd_control_url() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_igd_control_url_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_igd_service_type(`type`: String)  {
        withUnsafePointer(to: `type`) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_igd_service_type_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_igd_service_type() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_igd_service_type_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_igd_our_addr(addr: String)  {
        withUnsafePointer(to: addr) { addr_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(addr_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_igd_our_addr_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_igd_our_addr() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_igd_our_addr_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_igd_status(status: UPNPDevice.IGDStatus)  {
        withUnsafePointer(to: status.rawValue) { status_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(status_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_igd_status_519504122,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_igd_status_180887011,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UPNPDevice.IGDStatus(from: __resPtr.pointee)
    }
}