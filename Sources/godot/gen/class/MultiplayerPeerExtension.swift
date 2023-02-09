import godot_native

fileprivate var __godot_name_MultiplayerPeerExtension: StringName! = nil

/// Class that can be inherited to implement custom multiplayer API networking layers via GDExtension.
/// 
/// This class is designed to be inherited from a GDExtension plugin to implement custom networking layers for the multiplayer API (such as WebRTC). All the methods below [b]must[/b] be implemented to have a working custom multiplayer implementation. See also [MultiplayerAPI].
open class MultiplayerPeerExtension : MultiplayerPeer {

    

    public override class var __godot_name: StringName { __godot_name_MultiplayerPeerExtension }

    static var _method__get_packet_0: StringName! = nil
    static var _method__put_packet_0: StringName! = nil
    static var _method__get_available_packet_count_0: StringName! = nil
    static var _method__get_max_packet_size_0: StringName! = nil
    static var _method__get_packet_script_0: StringName! = nil
    static var _method__put_packet_script_0: StringName! = nil
    static var _method__set_transfer_channel_0: StringName! = nil
    static var _method__get_transfer_channel_0: StringName! = nil
    static var _method__set_transfer_mode_0: StringName! = nil
    static var _method__get_transfer_mode_0: StringName! = nil
    static var _method__set_target_peer_0: StringName! = nil
    static var _method__get_packet_peer_0: StringName! = nil
    static var _method__is_server_0: StringName! = nil
    static var _method__poll_0: StringName! = nil
    static var _method__close_0: StringName! = nil
    static var _method__disconnect_peer_0: StringName! = nil
    static var _method__get_unique_id_0: StringName! = nil
    static var _method__set_refuse_new_connections_0: StringName! = nil
    static var _method__is_refusing_new_connections_0: StringName! = nil
    static var _method__get_connection_status_0: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_MultiplayerPeerExtension == nil)
        __godot_name_MultiplayerPeerExtension = StringName(from: "MultiplayerPeerExtension")
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
            fatalError("Not implemented: virtual default results")
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
            fatalError("Not implemented: virtual default results")
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
            fatalError("Not implemented: virtual default results")
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
            fatalError("Not implemented: virtual default results")
            return Int64(godot: __resPtr.pointee)
    }
    public func _get_packet_script() -> PackedByteArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return PackedByteArray(godot: __resPtr.pointee)
    }
    public func _put_packet_script(p_buffer: PackedByteArray) -> Error {
        let p_buffer_native = p_buffer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_buffer_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return Error(godot: __resPtr.pointee)
    }
    public func _set_transfer_channel(p_channel: Int64)  {
        withUnsafePointer(to: p_channel) { p_channel_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_channel_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
        }
    }
    public func _get_transfer_channel() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return Int64(godot: __resPtr.pointee)
    }
    public func _set_transfer_mode(p_mode: MultiplayerPeer.TransferMode)  {
        withUnsafePointer(to: p_mode.rawValue) { p_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_mode_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
        }
    }
    public func _get_transfer_mode() -> MultiplayerPeer.TransferMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return MultiplayerPeer.TransferMode(godot: __resPtr.pointee)
    }
    public func _set_target_peer(p_peer: Int64)  {
        withUnsafePointer(to: p_peer) { p_peer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_peer_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
        }
    }
    public func _get_packet_peer() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return Int64(godot: __resPtr.pointee)
    }
    public func _is_server() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return UInt8(godot: __resPtr.pointee)
    }
    public func _poll()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _close()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _disconnect_peer(p_peer: Int64, p_force: UInt8)  {
        withUnsafePointer(to: p_force) { p_force_native in
        withUnsafePointer(to: p_peer) { p_peer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_peer_native), .init(p_force_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
        }
        }
    }
    public func _get_unique_id() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return Int64(godot: __resPtr.pointee)
    }
    public func _set_refuse_new_connections(p_enable: UInt8)  {
        withUnsafePointer(to: p_enable) { p_enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_enable_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
        }
    }
    public func _is_refusing_new_connections() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return UInt8(godot: __resPtr.pointee)
    }
    public func _get_connection_status() -> MultiplayerPeer.ConnectionStatus {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return MultiplayerPeer.ConnectionStatus(godot: __resPtr.pointee)
    }
}