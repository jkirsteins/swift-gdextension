import godot_native

fileprivate var __godot_name_WebRTCPeerConnectionExtension: StringName! = nil

/// MISSING
/// 
/// MISSING
public class WebRTCPeerConnectionExtension : WebRTCPeerConnection {

    

    public override class var __godot_name: StringName { __godot_name_WebRTCPeerConnectionExtension }

    static var _method__get_connection_state_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_gathering_state_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_signaling_state_0: GDExtensionMethodBindPtr! = nil
    static var _method__initialize_0: GDExtensionMethodBindPtr! = nil
    static var _method__create_data_channel_0: GDExtensionMethodBindPtr! = nil
    static var _method__create_offer_0: GDExtensionMethodBindPtr! = nil
    static var _method__set_remote_description_0: GDExtensionMethodBindPtr! = nil
    static var _method__set_local_description_0: GDExtensionMethodBindPtr! = nil
    static var _method__add_ice_candidate_0: GDExtensionMethodBindPtr! = nil
    static var _method__poll_0: GDExtensionMethodBindPtr! = nil
    static var _method__close_0: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_WebRTCPeerConnectionExtension = StringName(from: "WebRTCPeerConnectionExtension")

        
    }

    public func _get_connection_state() -> WebRTCPeerConnection.ConnectionState {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_connection_state_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return WebRTCPeerConnection.ConnectionState(from: __resPtr.pointee)
    }
    public func _get_gathering_state() -> WebRTCPeerConnection.GatheringState {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_gathering_state_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return WebRTCPeerConnection.GatheringState(from: __resPtr.pointee)
    }
    public func _get_signaling_state() -> WebRTCPeerConnection.SignalingState {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_signaling_state_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return WebRTCPeerConnection.SignalingState(from: __resPtr.pointee)
    }
    public func _initialize(p_config: Dictionary) -> Error {
        let p_config_native = p_config._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_config_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__initialize_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
    }
    public func _create_data_channel(p_label: String, p_config: Dictionary) -> Object {
        withUnsafePointer(to: p_label) { p_label_native in
        let p_config_native = p_config._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_label_native), .init(p_config_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__create_data_channel_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Object(from: __resPtr.pointee)
        }
    }
    public func _create_offer() -> Error {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__create_offer_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
    }
    public func _set_remote_description(p_type: String, p_sdp: String) -> Error {
        withUnsafePointer(to: p_sdp) { p_sdp_native in
        withUnsafePointer(to: p_type) { p_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_type_native), .init(p_sdp_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__set_remote_description_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
        }
    }
    public func _set_local_description(p_type: String, p_sdp: String) -> Error {
        withUnsafePointer(to: p_sdp) { p_sdp_native in
        withUnsafePointer(to: p_type) { p_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_type_native), .init(p_sdp_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__set_local_description_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
        }
    }
    public func _add_ice_candidate(p_sdp_mid_name: String, p_sdp_mline_index: Int64, p_sdp_name: String) -> Error {
        withUnsafePointer(to: p_sdp_name) { p_sdp_name_native in
        withUnsafePointer(to: p_sdp_mline_index) { p_sdp_mline_index_native in
        withUnsafePointer(to: p_sdp_mid_name) { p_sdp_mid_name_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_sdp_mid_name_native), .init(p_sdp_mline_index_native), .init(p_sdp_name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__add_ice_candidate_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
        }
        }
    }
    public func _poll() -> Error {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__poll_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
    }
    public func _close()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__close_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}