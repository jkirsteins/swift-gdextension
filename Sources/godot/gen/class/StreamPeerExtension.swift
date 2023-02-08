import godot_native

fileprivate var __godot_name_StreamPeerExtension: StringName! = nil

/// 
/// 
/// 
open class StreamPeerExtension : StreamPeer {

    

    public override class var __godot_name: StringName { __godot_name_StreamPeerExtension }

    static var _method__get_data_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_partial_data_0: GDExtensionMethodBindPtr! = nil
    static var _method__put_data_0: GDExtensionMethodBindPtr! = nil
    static var _method__put_partial_data_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_available_bytes_0: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_StreamPeerExtension = StringName(from: "StreamPeerExtension")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    public func _get_data(r_buffer: UnsafeMutablePointer<UInt8>, r_bytes: Int64, r_received: UnsafeMutablePointer<Int32>) -> Error {
        withUnsafePointer(to: r_received) { r_received_native in
        withUnsafePointer(to: r_bytes) { r_bytes_native in
        withUnsafePointer(to: r_buffer) { r_buffer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(r_buffer_native), .init(r_bytes_native), .init(r_received_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_data_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
        }
        }
    }
    public func _get_partial_data(r_buffer: UnsafeMutablePointer<UInt8>, r_bytes: Int64, r_received: UnsafeMutablePointer<Int32>) -> Error {
        withUnsafePointer(to: r_received) { r_received_native in
        withUnsafePointer(to: r_bytes) { r_bytes_native in
        withUnsafePointer(to: r_buffer) { r_buffer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(r_buffer_native), .init(r_bytes_native), .init(r_received_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_partial_data_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
        }
        }
    }
    public func _put_data(p_data: UnsafePointer<UInt8>, p_bytes: Int64, r_sent: UnsafeMutablePointer<Int32>) -> Error {
        withUnsafePointer(to: r_sent) { r_sent_native in
        withUnsafePointer(to: p_bytes) { p_bytes_native in
        withUnsafePointer(to: p_data) { p_data_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_data_native), .init(p_bytes_native), .init(r_sent_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__put_data_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
        }
        }
    }
    public func _put_partial_data(p_data: UnsafePointer<UInt8>, p_bytes: Int64, r_sent: UnsafeMutablePointer<Int32>) -> Error {
        withUnsafePointer(to: r_sent) { r_sent_native in
        withUnsafePointer(to: p_bytes) { p_bytes_native in
        withUnsafePointer(to: p_data) { p_data_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_data_native), .init(p_bytes_native), .init(r_sent_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__put_partial_data_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
        }
        }
    }
    public func _get_available_bytes() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_available_bytes_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
}