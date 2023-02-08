import godot_native

fileprivate var __godot_name_PacketPeerExtension: StringName! = nil

/// 
/// 
/// 
open class PacketPeerExtension : PacketPeer {

    

    public override class var __godot_name: StringName { __godot_name_PacketPeerExtension }

    static var _method__get_packet_0: GDExtensionMethodBindPtr! = nil
    static var _method__put_packet_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_available_packet_count_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_max_packet_size_0: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_PacketPeerExtension = StringName(from: "PacketPeerExtension")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    public func _get_packet(r_buffer: UnsafePointer<UnsafePointer<UInt8>>, r_buffer_size: UnsafeMutablePointer<Int32>) -> Error {
        withUnsafePointer(to: r_buffer_size) { r_buffer_size_native in
        withUnsafePointer(to: r_buffer) { r_buffer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(r_buffer_native), .init(r_buffer_size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_packet_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
        }
    }
    public func _put_packet(p_buffer: UnsafePointer<UInt8>, p_buffer_size: Int64) -> Error {
        withUnsafePointer(to: p_buffer_size) { p_buffer_size_native in
        withUnsafePointer(to: p_buffer) { p_buffer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_buffer_native), .init(p_buffer_size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__put_packet_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
        }
    }
    public func _get_available_packet_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_available_packet_count_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func _get_max_packet_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_max_packet_size_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
}