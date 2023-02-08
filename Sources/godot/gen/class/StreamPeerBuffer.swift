import godot_native

fileprivate var __godot_name_StreamPeerBuffer: StringName! = nil

/// Data buffer stream peer.
/// 
/// Data buffer stream peer that uses a byte array as the stream. This object can be used to handle binary data from network sessions. To handle binary data stored in files, [FileAccess] can be used directly.
///  
/// A [StreamPeerBuffer] object keeps an internal cursor which is the offset in bytes to the start of the buffer. Get and put operations are performed at the cursor position and will move the cursor accordingly.
open class StreamPeerBuffer : StreamPeer {

    

    public override class var __godot_name: StringName { __godot_name_StreamPeerBuffer }

    static var _method_seek_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_size_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_position_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_resize_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_data_array_2971499966: GDExtensionMethodBindPtr! = nil
    static var _method_get_data_array_2362200018: GDExtensionMethodBindPtr! = nil
    static var _method_clear_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_duplicate_2474064677: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_StreamPeerBuffer = StringName(from: "StreamPeerBuffer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_seek_1286410249_name = StringName(from: "seek")
        self._method_seek_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeerBuffer._native_ptr(), _method_seek_1286410249_name._native_ptr(), 1286410249)
        assert(StreamPeerBuffer._method_seek_1286410249 != nil)
        let _method_get_size_3905245786_name = StringName(from: "get_size")
        self._method_get_size_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeerBuffer._native_ptr(), _method_get_size_3905245786_name._native_ptr(), 3905245786)
        assert(StreamPeerBuffer._method_get_size_3905245786 != nil)
        let _method_get_position_3905245786_name = StringName(from: "get_position")
        self._method_get_position_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeerBuffer._native_ptr(), _method_get_position_3905245786_name._native_ptr(), 3905245786)
        assert(StreamPeerBuffer._method_get_position_3905245786 != nil)
        let _method_resize_1286410249_name = StringName(from: "resize")
        self._method_resize_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeerBuffer._native_ptr(), _method_resize_1286410249_name._native_ptr(), 1286410249)
        assert(StreamPeerBuffer._method_resize_1286410249 != nil)
        let _method_set_data_array_2971499966_name = StringName(from: "set_data_array")
        self._method_set_data_array_2971499966 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeerBuffer._native_ptr(), _method_set_data_array_2971499966_name._native_ptr(), 2971499966)
        assert(StreamPeerBuffer._method_set_data_array_2971499966 != nil)
        let _method_get_data_array_2362200018_name = StringName(from: "get_data_array")
        self._method_get_data_array_2362200018 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeerBuffer._native_ptr(), _method_get_data_array_2362200018_name._native_ptr(), 2362200018)
        assert(StreamPeerBuffer._method_get_data_array_2362200018 != nil)
        let _method_clear_3218959716_name = StringName(from: "clear")
        self._method_clear_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeerBuffer._native_ptr(), _method_clear_3218959716_name._native_ptr(), 3218959716)
        assert(StreamPeerBuffer._method_clear_3218959716 != nil)
        let _method_duplicate_2474064677_name = StringName(from: "duplicate")
        self._method_duplicate_2474064677 = self.interface.pointee.classdb_get_method_bind(__godot_name_StreamPeerBuffer._native_ptr(), _method_duplicate_2474064677_name._native_ptr(), 2474064677)
        assert(StreamPeerBuffer._method_duplicate_2474064677 != nil)
    }

    public func seek(position: Int64)  {
        withUnsafePointer(to: position) { position_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_seek_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_size_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_position() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_position_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func resize(size: Int64)  {
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_resize_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_data_array(data: PackedByteArray)  {
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(data_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_data_array_2971499966,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_data_array() -> PackedByteArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_data_array_2362200018,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(godot: __resPtr.pointee)
    }
    public func clear()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func duplicate() -> StreamPeerBuffer {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_duplicate_2474064677,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StreamPeerBuffer(godot: __resPtr.pointee)
    }
}