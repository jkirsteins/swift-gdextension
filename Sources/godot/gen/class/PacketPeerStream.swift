import godot_native

fileprivate var __godot_name_PacketPeerStream: StringName! = nil

/// Wrapper to use a PacketPeer over a StreamPeer.
/// 
/// PacketStreamPeer provides a wrapper for working using packets over a stream. This allows for using packet based code with StreamPeers. PacketPeerStream implements a custom protocol over the StreamPeer, so the user should not read or write to the wrapped StreamPeer directly.
///  
/// [b]Note:[/b] When exporting to Android, make sure to enable the [code]INTERNET[/code] permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.
open class PacketPeerStream : PacketPeer {

    

    public override class var __godot_name: StringName { __godot_name_PacketPeerStream }

    static var _method_set_stream_peer_3281897016: StringName! = nil
    static var _method_get_stream_peer_2741655269: StringName! = nil
    static var _method_set_input_buffer_max_size_1286410249: StringName! = nil
    static var _method_set_output_buffer_max_size_1286410249: StringName! = nil
    static var _method_get_input_buffer_max_size_3905245786: StringName! = nil
    static var _method_get_output_buffer_max_size_3905245786: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_PacketPeerStream == nil)
        __godot_name_PacketPeerStream = StringName(from: "PacketPeerStream")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_stream_peer_3281897016 = StringName(from: "set_stream_peer")
        assert(self._method_set_stream_peer_3281897016 != nil)
        self._method_get_stream_peer_2741655269 = StringName(from: "get_stream_peer")
        assert(self._method_get_stream_peer_2741655269 != nil)
        self._method_set_input_buffer_max_size_1286410249 = StringName(from: "set_input_buffer_max_size")
        assert(self._method_set_input_buffer_max_size_1286410249 != nil)
        self._method_set_output_buffer_max_size_1286410249 = StringName(from: "set_output_buffer_max_size")
        assert(self._method_set_output_buffer_max_size_1286410249 != nil)
        self._method_get_input_buffer_max_size_3905245786 = StringName(from: "get_input_buffer_max_size")
        assert(self._method_get_input_buffer_max_size_3905245786 != nil)
        self._method_get_output_buffer_max_size_3905245786 = StringName(from: "get_output_buffer_max_size")
        assert(self._method_get_output_buffer_max_size_3905245786 != nil)
    }

    public func set_stream_peer(peer: StreamPeer)  {
        let peer_native = peer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(peer_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_stream_peer_3281897016._native_ptr(),
                    3281897016)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_stream_peer_2741655269._native_ptr(),
                    2741655269)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StreamPeer(godot: __resPtr.pointee)
    }
    public func set_input_buffer_max_size(max_size_bytes: Int64)  {
        withUnsafePointer(to: max_size_bytes) { max_size_bytes_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_size_bytes_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_input_buffer_max_size_1286410249._native_ptr(),
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
    public func set_output_buffer_max_size(max_size_bytes: Int64)  {
        withUnsafePointer(to: max_size_bytes) { max_size_bytes_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_size_bytes_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_output_buffer_max_size_1286410249._native_ptr(),
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
    public func get_input_buffer_max_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_input_buffer_max_size_3905245786._native_ptr(),
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
    public func get_output_buffer_max_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_output_buffer_max_size_3905245786._native_ptr(),
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
}