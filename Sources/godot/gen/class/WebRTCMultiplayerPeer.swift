import godot_native

fileprivate var __godot_name_WebRTCMultiplayerPeer: StringName! = nil

/// MISSING
/// 
/// MISSING
open class WebRTCMultiplayerPeer : MultiplayerPeer {

    

    public override class var __godot_name: StringName { __godot_name_WebRTCMultiplayerPeer }

    static var _method_create_server_2865356025: GDExtensionMethodBindPtr! = nil
    static var _method_create_client_1777354631: GDExtensionMethodBindPtr! = nil
    static var _method_create_mesh_1777354631: GDExtensionMethodBindPtr! = nil
    static var _method_add_peer_2555866323: GDExtensionMethodBindPtr! = nil
    static var _method_remove_peer_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_has_peer_3067735520: GDExtensionMethodBindPtr! = nil
    static var _method_get_peer_3554694381: GDExtensionMethodBindPtr! = nil
    static var _method_get_peers_2382534195: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_WebRTCMultiplayerPeer = StringName(from: "WebRTCMultiplayerPeer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_create_server_2865356025_name = StringName(from: "create_server")
        self._method_create_server_2865356025 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebRTCMultiplayerPeer._native_ptr(), _method_create_server_2865356025_name._native_ptr(), 2865356025)
        assert(WebRTCMultiplayerPeer._method_create_server_2865356025 != nil)
        let _method_create_client_1777354631_name = StringName(from: "create_client")
        self._method_create_client_1777354631 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebRTCMultiplayerPeer._native_ptr(), _method_create_client_1777354631_name._native_ptr(), 1777354631)
        assert(WebRTCMultiplayerPeer._method_create_client_1777354631 != nil)
        let _method_create_mesh_1777354631_name = StringName(from: "create_mesh")
        self._method_create_mesh_1777354631 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebRTCMultiplayerPeer._native_ptr(), _method_create_mesh_1777354631_name._native_ptr(), 1777354631)
        assert(WebRTCMultiplayerPeer._method_create_mesh_1777354631 != nil)
        let _method_add_peer_2555866323_name = StringName(from: "add_peer")
        self._method_add_peer_2555866323 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebRTCMultiplayerPeer._native_ptr(), _method_add_peer_2555866323_name._native_ptr(), 2555866323)
        assert(WebRTCMultiplayerPeer._method_add_peer_2555866323 != nil)
        let _method_remove_peer_1286410249_name = StringName(from: "remove_peer")
        self._method_remove_peer_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebRTCMultiplayerPeer._native_ptr(), _method_remove_peer_1286410249_name._native_ptr(), 1286410249)
        assert(WebRTCMultiplayerPeer._method_remove_peer_1286410249 != nil)
        let _method_has_peer_3067735520_name = StringName(from: "has_peer")
        self._method_has_peer_3067735520 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebRTCMultiplayerPeer._native_ptr(), _method_has_peer_3067735520_name._native_ptr(), 3067735520)
        assert(WebRTCMultiplayerPeer._method_has_peer_3067735520 != nil)
        let _method_get_peer_3554694381_name = StringName(from: "get_peer")
        self._method_get_peer_3554694381 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebRTCMultiplayerPeer._native_ptr(), _method_get_peer_3554694381_name._native_ptr(), 3554694381)
        assert(WebRTCMultiplayerPeer._method_get_peer_3554694381 != nil)
        let _method_get_peers_2382534195_name = StringName(from: "get_peers")
        self._method_get_peers_2382534195 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebRTCMultiplayerPeer._native_ptr(), _method_get_peers_2382534195_name._native_ptr(), 2382534195)
        assert(WebRTCMultiplayerPeer._method_get_peers_2382534195 != nil)
    }

    public func create_server(channels_config: Array) -> Error {
        let channels_config_native = channels_config._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(channels_config_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_server_2865356025,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func create_client(peer_id: Int64, channels_config: Array) -> Error {
        withUnsafePointer(to: peer_id) { peer_id_native in
        let channels_config_native = channels_config._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(peer_id_native), .init(channels_config_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_client_1777354631,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
    }
    public func create_mesh(peer_id: Int64, channels_config: Array) -> Error {
        withUnsafePointer(to: peer_id) { peer_id_native in
        let channels_config_native = channels_config._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(peer_id_native), .init(channels_config_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_mesh_1777354631,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
    }
    public func add_peer(peer: WebRTCPeerConnection, peer_id: Int64, unreliable_lifetime: Int64) -> Error {
        withUnsafePointer(to: unreliable_lifetime) { unreliable_lifetime_native in
        withUnsafePointer(to: peer_id) { peer_id_native in
        let peer_native = peer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(peer_native), .init(peer_id_native), .init(unreliable_lifetime_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_peer_2555866323,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
        }
    }
    public func remove_peer(peer_id: Int64)  {
        withUnsafePointer(to: peer_id) { peer_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(peer_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_peer_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func has_peer(peer_id: Int64) -> UInt8 {
        withUnsafePointer(to: peer_id) { peer_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(peer_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_peer_3067735520,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func get_peer(peer_id: Int64) -> Dictionary {
        withUnsafePointer(to: peer_id) { peer_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(peer_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_peer_3554694381,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
        }
    }
    public func get_peers() -> Dictionary {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_peers_2382534195,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
    }
}