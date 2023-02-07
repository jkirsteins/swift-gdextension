import godot_native

fileprivate var __godot_name_PacketPeer: StringName! = nil

/// Abstraction and base class for packet-based protocols.
/// 
/// PacketPeer is an abstraction and base class for packet-based protocols (such as UDP). It provides an API for sending and receiving packets both as raw data or variables. This makes it easy to transfer data over a protocol, without having to encode data as low-level bytes or having to worry about network ordering.
///  
/// [b]Note:[/b] When exporting to Android, make sure to enable the [code]INTERNET[/code] permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.
public class PacketPeer : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_PacketPeer }

    static var _method_get_var_3442865206: GDExtensionMethodBindPtr! = nil
    static var _method_put_var_2436251611: GDExtensionMethodBindPtr! = nil
    static var _method_get_packet_2115431945: GDExtensionMethodBindPtr! = nil
    static var _method_put_packet_680677267: GDExtensionMethodBindPtr! = nil
    static var _method_get_packet_error_3185525595: GDExtensionMethodBindPtr! = nil
    static var _method_get_available_packet_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_encode_buffer_max_size_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_encode_buffer_max_size_1286410249: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_PacketPeer = StringName(from: "PacketPeer")

        let _method_get_var_3442865206_name = StringName(from: "get_var")
        self._method_get_var_3442865206 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_var_3442865206_name._native_ptr(), 3442865206)
        assert(PacketPeer._method_get_var_3442865206 != nil)
        let _method_put_var_2436251611_name = StringName(from: "put_var")
        self._method_put_var_2436251611 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_put_var_2436251611_name._native_ptr(), 2436251611)
        assert(PacketPeer._method_put_var_2436251611 != nil)
        let _method_get_packet_2115431945_name = StringName(from: "get_packet")
        self._method_get_packet_2115431945 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_packet_2115431945_name._native_ptr(), 2115431945)
        assert(PacketPeer._method_get_packet_2115431945 != nil)
        let _method_put_packet_680677267_name = StringName(from: "put_packet")
        self._method_put_packet_680677267 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_put_packet_680677267_name._native_ptr(), 680677267)
        assert(PacketPeer._method_put_packet_680677267 != nil)
        let _method_get_packet_error_3185525595_name = StringName(from: "get_packet_error")
        self._method_get_packet_error_3185525595 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_packet_error_3185525595_name._native_ptr(), 3185525595)
        assert(PacketPeer._method_get_packet_error_3185525595 != nil)
        let _method_get_available_packet_count_3905245786_name = StringName(from: "get_available_packet_count")
        self._method_get_available_packet_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_available_packet_count_3905245786_name._native_ptr(), 3905245786)
        assert(PacketPeer._method_get_available_packet_count_3905245786 != nil)
        let _method_get_encode_buffer_max_size_3905245786_name = StringName(from: "get_encode_buffer_max_size")
        self._method_get_encode_buffer_max_size_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_encode_buffer_max_size_3905245786_name._native_ptr(), 3905245786)
        assert(PacketPeer._method_get_encode_buffer_max_size_3905245786 != nil)
        let _method_set_encode_buffer_max_size_1286410249_name = StringName(from: "set_encode_buffer_max_size")
        self._method_set_encode_buffer_max_size_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_encode_buffer_max_size_1286410249_name._native_ptr(), 1286410249)
        assert(PacketPeer._method_set_encode_buffer_max_size_1286410249 != nil)
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
            return Variant(from: __resPtr.pointee)
        }
    }
    public func put_var(`var`: Variant, full_objects: UInt8) -> Error {
        withUnsafePointer(to: full_objects) { full_objects_native in
        let var_native = `var`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(var_native), .init(full_objects_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_put_var_2436251611,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
    }
    public func get_packet() -> PackedByteArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_packet_2115431945,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(from: __resPtr.pointee)
    }
    public func put_packet(buffer: PackedByteArray) -> Error {
        let buffer_native = buffer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(buffer_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_put_packet_680677267,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
    }
    public func get_packet_error() -> Error {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_packet_error_3185525595,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
    }
    public func get_available_packet_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_available_packet_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_encode_buffer_max_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_encode_buffer_max_size_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_encode_buffer_max_size(max_size: Int64)  {
        withUnsafePointer(to: max_size) { max_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_encode_buffer_max_size_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}