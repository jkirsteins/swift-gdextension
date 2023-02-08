import godot_native

fileprivate var __godot_name_StreamPeer: StringName! = nil

/// Abstraction and base class for stream-based protocols.
/// 
/// StreamPeer is an abstraction and base class for stream-based protocols (such as TCP). It provides an API for sending and receiving data through streams as raw data or strings.
///  
/// [b]Note:[/b] When exporting to Android, make sure to enable the [code]INTERNET[/code] permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.
open class StreamPeer : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_StreamPeer }

    static var _method_put_data_680677267: GDExtensionMethodBindPtr! = nil
    static var _method_put_partial_data_2934048347: GDExtensionMethodBindPtr! = nil
    static var _method_get_data_1171824711: GDExtensionMethodBindPtr! = nil
    static var _method_get_partial_data_1171824711: GDExtensionMethodBindPtr! = nil
    static var _method_get_available_bytes_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_big_endian_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_big_endian_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_put_8_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_put_u8_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_put_16_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_put_u16_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_put_32_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_put_u32_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_put_64_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_put_u64_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_put_float_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_put_double_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_put_string_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_put_utf8_string_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_put_var_738511890: GDExtensionMethodBindPtr! = nil
    static var _method_get_8_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_get_u8_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_get_16_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_get_u16_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_get_32_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_get_u32_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_get_64_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_get_u64_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_get_float_191475506: GDExtensionMethodBindPtr! = nil
    static var _method_get_double_191475506: GDExtensionMethodBindPtr! = nil
    static var _method_get_string_2309358862: GDExtensionMethodBindPtr! = nil
    static var _method_get_utf8_string_2309358862: GDExtensionMethodBindPtr! = nil
    static var _method_get_var_3442865206: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_StreamPeer = StringName(from: "StreamPeer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_put_data_680677267_name = StringName(from: "put_data")
        self._method_put_data_680677267 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeer._native_ptr(), _method_put_data_680677267_name._native_ptr(), 680677267)
        assert(StreamPeer._method_put_data_680677267 != nil)
        let _method_put_partial_data_2934048347_name = StringName(from: "put_partial_data")
        self._method_put_partial_data_2934048347 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeer._native_ptr(), _method_put_partial_data_2934048347_name._native_ptr(), 2934048347)
        assert(StreamPeer._method_put_partial_data_2934048347 != nil)
        let _method_get_data_1171824711_name = StringName(from: "get_data")
        self._method_get_data_1171824711 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeer._native_ptr(), _method_get_data_1171824711_name._native_ptr(), 1171824711)
        assert(StreamPeer._method_get_data_1171824711 != nil)
        let _method_get_partial_data_1171824711_name = StringName(from: "get_partial_data")
        self._method_get_partial_data_1171824711 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeer._native_ptr(), _method_get_partial_data_1171824711_name._native_ptr(), 1171824711)
        assert(StreamPeer._method_get_partial_data_1171824711 != nil)
        let _method_get_available_bytes_3905245786_name = StringName(from: "get_available_bytes")
        self._method_get_available_bytes_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeer._native_ptr(), _method_get_available_bytes_3905245786_name._native_ptr(), 3905245786)
        assert(StreamPeer._method_get_available_bytes_3905245786 != nil)
        let _method_set_big_endian_2586408642_name = StringName(from: "set_big_endian")
        self._method_set_big_endian_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeer._native_ptr(), _method_set_big_endian_2586408642_name._native_ptr(), 2586408642)
        assert(StreamPeer._method_set_big_endian_2586408642 != nil)
        let _method_is_big_endian_enabled_36873697_name = StringName(from: "is_big_endian_enabled")
        self._method_is_big_endian_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeer._native_ptr(), _method_is_big_endian_enabled_36873697_name._native_ptr(), 36873697)
        assert(StreamPeer._method_is_big_endian_enabled_36873697 != nil)
        let _method_put_8_1286410249_name = StringName(from: "put_8")
        self._method_put_8_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeer._native_ptr(), _method_put_8_1286410249_name._native_ptr(), 1286410249)
        assert(StreamPeer._method_put_8_1286410249 != nil)
        let _method_put_u8_1286410249_name = StringName(from: "put_u8")
        self._method_put_u8_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeer._native_ptr(), _method_put_u8_1286410249_name._native_ptr(), 1286410249)
        assert(StreamPeer._method_put_u8_1286410249 != nil)
        let _method_put_16_1286410249_name = StringName(from: "put_16")
        self._method_put_16_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeer._native_ptr(), _method_put_16_1286410249_name._native_ptr(), 1286410249)
        assert(StreamPeer._method_put_16_1286410249 != nil)
        let _method_put_u16_1286410249_name = StringName(from: "put_u16")
        self._method_put_u16_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeer._native_ptr(), _method_put_u16_1286410249_name._native_ptr(), 1286410249)
        assert(StreamPeer._method_put_u16_1286410249 != nil)
        let _method_put_32_1286410249_name = StringName(from: "put_32")
        self._method_put_32_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeer._native_ptr(), _method_put_32_1286410249_name._native_ptr(), 1286410249)
        assert(StreamPeer._method_put_32_1286410249 != nil)
        let _method_put_u32_1286410249_name = StringName(from: "put_u32")
        self._method_put_u32_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeer._native_ptr(), _method_put_u32_1286410249_name._native_ptr(), 1286410249)
        assert(StreamPeer._method_put_u32_1286410249 != nil)
        let _method_put_64_1286410249_name = StringName(from: "put_64")
        self._method_put_64_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeer._native_ptr(), _method_put_64_1286410249_name._native_ptr(), 1286410249)
        assert(StreamPeer._method_put_64_1286410249 != nil)
        let _method_put_u64_1286410249_name = StringName(from: "put_u64")
        self._method_put_u64_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeer._native_ptr(), _method_put_u64_1286410249_name._native_ptr(), 1286410249)
        assert(StreamPeer._method_put_u64_1286410249 != nil)
        let _method_put_float_373806689_name = StringName(from: "put_float")
        self._method_put_float_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeer._native_ptr(), _method_put_float_373806689_name._native_ptr(), 373806689)
        assert(StreamPeer._method_put_float_373806689 != nil)
        let _method_put_double_373806689_name = StringName(from: "put_double")
        self._method_put_double_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeer._native_ptr(), _method_put_double_373806689_name._native_ptr(), 373806689)
        assert(StreamPeer._method_put_double_373806689 != nil)
        let _method_put_string_83702148_name = StringName(from: "put_string")
        self._method_put_string_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeer._native_ptr(), _method_put_string_83702148_name._native_ptr(), 83702148)
        assert(StreamPeer._method_put_string_83702148 != nil)
        let _method_put_utf8_string_83702148_name = StringName(from: "put_utf8_string")
        self._method_put_utf8_string_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeer._native_ptr(), _method_put_utf8_string_83702148_name._native_ptr(), 83702148)
        assert(StreamPeer._method_put_utf8_string_83702148 != nil)
        let _method_put_var_738511890_name = StringName(from: "put_var")
        self._method_put_var_738511890 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeer._native_ptr(), _method_put_var_738511890_name._native_ptr(), 738511890)
        assert(StreamPeer._method_put_var_738511890 != nil)
        let _method_get_8_2455072627_name = StringName(from: "get_8")
        self._method_get_8_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeer._native_ptr(), _method_get_8_2455072627_name._native_ptr(), 2455072627)
        assert(StreamPeer._method_get_8_2455072627 != nil)
        let _method_get_u8_2455072627_name = StringName(from: "get_u8")
        self._method_get_u8_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeer._native_ptr(), _method_get_u8_2455072627_name._native_ptr(), 2455072627)
        assert(StreamPeer._method_get_u8_2455072627 != nil)
        let _method_get_16_2455072627_name = StringName(from: "get_16")
        self._method_get_16_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeer._native_ptr(), _method_get_16_2455072627_name._native_ptr(), 2455072627)
        assert(StreamPeer._method_get_16_2455072627 != nil)
        let _method_get_u16_2455072627_name = StringName(from: "get_u16")
        self._method_get_u16_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeer._native_ptr(), _method_get_u16_2455072627_name._native_ptr(), 2455072627)
        assert(StreamPeer._method_get_u16_2455072627 != nil)
        let _method_get_32_2455072627_name = StringName(from: "get_32")
        self._method_get_32_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeer._native_ptr(), _method_get_32_2455072627_name._native_ptr(), 2455072627)
        assert(StreamPeer._method_get_32_2455072627 != nil)
        let _method_get_u32_2455072627_name = StringName(from: "get_u32")
        self._method_get_u32_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeer._native_ptr(), _method_get_u32_2455072627_name._native_ptr(), 2455072627)
        assert(StreamPeer._method_get_u32_2455072627 != nil)
        let _method_get_64_2455072627_name = StringName(from: "get_64")
        self._method_get_64_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeer._native_ptr(), _method_get_64_2455072627_name._native_ptr(), 2455072627)
        assert(StreamPeer._method_get_64_2455072627 != nil)
        let _method_get_u64_2455072627_name = StringName(from: "get_u64")
        self._method_get_u64_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeer._native_ptr(), _method_get_u64_2455072627_name._native_ptr(), 2455072627)
        assert(StreamPeer._method_get_u64_2455072627 != nil)
        let _method_get_float_191475506_name = StringName(from: "get_float")
        self._method_get_float_191475506 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeer._native_ptr(), _method_get_float_191475506_name._native_ptr(), 191475506)
        assert(StreamPeer._method_get_float_191475506 != nil)
        let _method_get_double_191475506_name = StringName(from: "get_double")
        self._method_get_double_191475506 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeer._native_ptr(), _method_get_double_191475506_name._native_ptr(), 191475506)
        assert(StreamPeer._method_get_double_191475506 != nil)
        let _method_get_string_2309358862_name = StringName(from: "get_string")
        self._method_get_string_2309358862 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeer._native_ptr(), _method_get_string_2309358862_name._native_ptr(), 2309358862)
        assert(StreamPeer._method_get_string_2309358862 != nil)
        let _method_get_utf8_string_2309358862_name = StringName(from: "get_utf8_string")
        self._method_get_utf8_string_2309358862 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeer._native_ptr(), _method_get_utf8_string_2309358862_name._native_ptr(), 2309358862)
        assert(StreamPeer._method_get_utf8_string_2309358862 != nil)
        let _method_get_var_3442865206_name = StringName(from: "get_var")
        self._method_get_var_3442865206 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeer._native_ptr(), _method_get_var_3442865206_name._native_ptr(), 3442865206)
        assert(StreamPeer._method_get_var_3442865206 != nil)
    }

    public func put_data(data: PackedByteArray) -> Error {
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(data_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_put_data_680677267,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func put_partial_data(data: PackedByteArray) -> Array {
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(data_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_put_partial_data_2934048347,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(godot: __resPtr.pointee)
    }
    public func get_data(bytes: Int64) -> Array {
        withUnsafePointer(to: bytes) { bytes_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bytes_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_data_1171824711,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(godot: __resPtr.pointee)
        }
    }
    public func get_partial_data(bytes: Int64) -> Array {
        withUnsafePointer(to: bytes) { bytes_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bytes_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_partial_data_1171824711,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(godot: __resPtr.pointee)
        }
    }
    public func get_available_bytes() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_available_bytes_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_big_endian(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_big_endian_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_big_endian_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_big_endian_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func put_8(value: Int64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_put_8_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func put_u8(value: Int64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_put_u8_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func put_16(value: Int64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_put_16_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func put_u16(value: Int64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_put_u16_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func put_32(value: Int64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_put_32_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func put_u32(value: Int64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_put_u32_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func put_64(value: Int64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_put_64_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func put_u64(value: Int64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_put_u64_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func put_float(value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_put_float_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func put_double(value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_put_double_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func put_string(value: godot.String)  {
        let value_native = value._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_put_string_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func put_utf8_string(value: godot.String)  {
        let value_native = value._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_put_utf8_string_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func put_var(value: Variant, full_objects: UInt8)  {
        withUnsafePointer(to: full_objects) { full_objects_native in
        let value_native = value._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native), .init(full_objects_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_put_var_738511890,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_8() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_8_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_u8() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_u8_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_16() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_16_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_u16() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_u16_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_32() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_32_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_u32() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_u32_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_64() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_64_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_u64() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_u64_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_float() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_float_191475506,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func get_double() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_double_191475506,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func get_string(bytes: Int64) -> godot.String {
        withUnsafePointer(to: bytes) { bytes_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bytes_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_string_2309358862,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func get_utf8_string(bytes: Int64) -> godot.String {
        withUnsafePointer(to: bytes) { bytes_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bytes_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_utf8_string_2309358862,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func get_var(allow_objects: UInt8) -> Variant {
        withUnsafePointer(to: allow_objects) { allow_objects_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(allow_objects_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_var_3442865206,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
        }
    }
}