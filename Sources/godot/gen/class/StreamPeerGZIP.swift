import godot_native

fileprivate var __godot_name_StreamPeerGZIP: StringName! = nil

/// Stream peer handling GZIP and deflate compression/decompresison.
/// 
/// This class allows to compress or decompress data using GZIP/deflate in a streaming fashion. This is particularly useful when compressing or decompressing files that has to be sent through the network without having to allocate them all in memory.
///  
/// After starting the stream via [method start_compression] (or [method start_decompression]), calling [method StreamPeer.put_partial_data] on this stream will compress (or decompress) the data, writing it to the internal buffer. Calling [method StreamPeer.get_available_bytes] will return the pending bytes in the internal buffer, and [method StreamPeer.get_partial_data] will retrieve the compressed (or decompressed) bytes from it. When the stream is over, you must call [method finish] to ensure the internal buffer is properly flushed (make sure to call [method StreamPeer.get_available_bytes] on last time to check if more data needs to be read after that).
open class StreamPeerGZIP : StreamPeer {

    

    public override class var __godot_name: StringName { __godot_name_StreamPeerGZIP }

    static var _method_start_compression_781582770: StringName! = nil
    static var _method_start_decompression_781582770: StringName! = nil
    static var _method_finish_166280745: StringName! = nil
    static var _method_clear_3218959716: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_StreamPeerGZIP == nil)
        __godot_name_StreamPeerGZIP = StringName(from: "StreamPeerGZIP")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_start_compression_781582770 = StringName(from: "start_compression")
        assert(self._method_start_compression_781582770 != nil)
        self._method_start_decompression_781582770 = StringName(from: "start_decompression")
        assert(self._method_start_decompression_781582770 != nil)
        self._method_finish_166280745 = StringName(from: "finish")
        assert(self._method_finish_166280745 != nil)
        self._method_clear_3218959716 = StringName(from: "clear")
        assert(self._method_clear_3218959716 != nil)
    }

    public func start_compression(use_deflate: UInt8, buffer_size: Int64) -> Error {
        withUnsafePointer(to: buffer_size) { buffer_size_native in
        withUnsafePointer(to: use_deflate) { use_deflate_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(use_deflate_native), .init(buffer_size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_start_compression_781582770._native_ptr(),
                    781582770)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
        }
    }
    public func start_decompression(use_deflate: UInt8, buffer_size: Int64) -> Error {
        withUnsafePointer(to: buffer_size) { buffer_size_native in
        withUnsafePointer(to: use_deflate) { use_deflate_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(use_deflate_native), .init(buffer_size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_start_decompression_781582770._native_ptr(),
                    781582770)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
        }
    }
    public func finish() -> Error {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_finish_166280745._native_ptr(),
                    166280745)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func clear()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}