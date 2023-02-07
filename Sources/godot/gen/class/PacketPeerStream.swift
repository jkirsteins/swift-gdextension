import godot_native

fileprivate var __godot_name_PacketPeerStream: StringName! = nil

/// Wrapper to use a PacketPeer over a StreamPeer.
/// 
/// PacketStreamPeer provides a wrapper for working using packets over a stream. This allows for using packet based code with StreamPeers. PacketPeerStream implements a custom protocol over the StreamPeer, so the user should not read or write to the wrapped StreamPeer directly.
///  
/// [b]Note:[/b] When exporting to Android, make sure to enable the [code]INTERNET[/code] permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.
public class PacketPeerStream : PacketPeer {

    

    public override class var __godot_name: StringName { __godot_name_PacketPeerStream }

    static var _method_set_stream_peer_3281897016: GDExtensionMethodBindPtr! = nil
    static var _method_get_stream_peer_2741655269: GDExtensionMethodBindPtr! = nil
    static var _method_set_input_buffer_max_size_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_output_buffer_max_size_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_input_buffer_max_size_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_output_buffer_max_size_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_PacketPeerStream = StringName(from: "PacketPeerStream")

        let _method_set_stream_peer_3281897016_name = StringName(from: "set_stream_peer")
        self._method_set_stream_peer_3281897016 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_stream_peer_3281897016_name._native_ptr(), 3281897016)
        assert(PacketPeerStream._method_set_stream_peer_3281897016 != nil)
        let _method_get_stream_peer_2741655269_name = StringName(from: "get_stream_peer")
        self._method_get_stream_peer_2741655269 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_stream_peer_2741655269_name._native_ptr(), 2741655269)
        assert(PacketPeerStream._method_get_stream_peer_2741655269 != nil)
        let _method_set_input_buffer_max_size_1286410249_name = StringName(from: "set_input_buffer_max_size")
        self._method_set_input_buffer_max_size_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_input_buffer_max_size_1286410249_name._native_ptr(), 1286410249)
        assert(PacketPeerStream._method_set_input_buffer_max_size_1286410249 != nil)
        let _method_set_output_buffer_max_size_1286410249_name = StringName(from: "set_output_buffer_max_size")
        self._method_set_output_buffer_max_size_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_output_buffer_max_size_1286410249_name._native_ptr(), 1286410249)
        assert(PacketPeerStream._method_set_output_buffer_max_size_1286410249 != nil)
        let _method_get_input_buffer_max_size_3905245786_name = StringName(from: "get_input_buffer_max_size")
        self._method_get_input_buffer_max_size_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_input_buffer_max_size_3905245786_name._native_ptr(), 3905245786)
        assert(PacketPeerStream._method_get_input_buffer_max_size_3905245786 != nil)
        let _method_get_output_buffer_max_size_3905245786_name = StringName(from: "get_output_buffer_max_size")
        self._method_get_output_buffer_max_size_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_output_buffer_max_size_3905245786_name._native_ptr(), 3905245786)
        assert(PacketPeerStream._method_get_output_buffer_max_size_3905245786 != nil)
    }

    public func set_stream_peer(peer: StreamPeer)  {
        let peer_native = peer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(peer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_stream_peer_3281897016,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_stream_peer() -> StreamPeer {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_stream_peer_2741655269,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StreamPeer(from: __resPtr.pointee)
    }
    public func set_input_buffer_max_size(max_size_bytes: Int64)  {
        withUnsafePointer(to: max_size_bytes) { max_size_bytes_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_size_bytes_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_input_buffer_max_size_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_output_buffer_max_size(max_size_bytes: Int64)  {
        withUnsafePointer(to: max_size_bytes) { max_size_bytes_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_size_bytes_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_output_buffer_max_size_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_input_buffer_max_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_input_buffer_max_size_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_output_buffer_max_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_output_buffer_max_size_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
}