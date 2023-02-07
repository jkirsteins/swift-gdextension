import godot_native

fileprivate var __godot_name_WebRTCPeerConnection: StringName! = nil

/// MISSING
/// 
/// MISSING
public class WebRTCPeerConnection : RefCounted {

    public enum ConnectionState : Int32 {
        case STATE_NEW = 0
        case STATE_CONNECTING = 1
        case STATE_CONNECTED = 2
        case STATE_DISCONNECTED = 3
        case STATE_FAILED = 4
        case STATE_CLOSED = 5
    }
    public enum GatheringState : Int32 {
        case GATHERING_STATE_NEW = 0
        case GATHERING_STATE_GATHERING = 1
        case GATHERING_STATE_COMPLETE = 2
    }
    public enum SignalingState : Int32 {
        case SIGNALING_STATE_STABLE = 0
        case SIGNALING_STATE_HAVE_LOCAL_OFFER = 1
        case SIGNALING_STATE_HAVE_REMOTE_OFFER = 2
        case SIGNALING_STATE_HAVE_LOCAL_PRANSWER = 3
        case SIGNALING_STATE_HAVE_REMOTE_PRANSWER = 4
        case SIGNALING_STATE_CLOSED = 5
    }

    public override class var __godot_name: StringName { __godot_name_WebRTCPeerConnection }

    static var _method_set_default_extension_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_initialize_2625064318: GDExtensionMethodBindPtr! = nil
    static var _method_create_data_channel_3997447457: GDExtensionMethodBindPtr! = nil
    static var _method_create_offer_166280745: GDExtensionMethodBindPtr! = nil
    static var _method_set_local_description_852856452: GDExtensionMethodBindPtr! = nil
    static var _method_set_remote_description_852856452: GDExtensionMethodBindPtr! = nil
    static var _method_add_ice_candidate_3958950400: GDExtensionMethodBindPtr! = nil
    static var _method_poll_166280745: GDExtensionMethodBindPtr! = nil
    static var _method_close_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_connection_state_2275710506: GDExtensionMethodBindPtr! = nil
    static var _method_get_gathering_state_4262591401: GDExtensionMethodBindPtr! = nil
    static var _method_get_signaling_state_3342956226: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_WebRTCPeerConnection = StringName(from: "WebRTCPeerConnection")

        let _method_set_default_extension_3304788590_name = StringName(from: "set_default_extension")
        self._method_set_default_extension_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_default_extension_3304788590_name._native_ptr(), 3304788590)
        assert(WebRTCPeerConnection._method_set_default_extension_3304788590 != nil)
        let _method_initialize_2625064318_name = StringName(from: "initialize")
        self._method_initialize_2625064318 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_initialize_2625064318_name._native_ptr(), 2625064318)
        assert(WebRTCPeerConnection._method_initialize_2625064318 != nil)
        let _method_create_data_channel_3997447457_name = StringName(from: "create_data_channel")
        self._method_create_data_channel_3997447457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_data_channel_3997447457_name._native_ptr(), 3997447457)
        assert(WebRTCPeerConnection._method_create_data_channel_3997447457 != nil)
        let _method_create_offer_166280745_name = StringName(from: "create_offer")
        self._method_create_offer_166280745 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_offer_166280745_name._native_ptr(), 166280745)
        assert(WebRTCPeerConnection._method_create_offer_166280745 != nil)
        let _method_set_local_description_852856452_name = StringName(from: "set_local_description")
        self._method_set_local_description_852856452 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_local_description_852856452_name._native_ptr(), 852856452)
        assert(WebRTCPeerConnection._method_set_local_description_852856452 != nil)
        let _method_set_remote_description_852856452_name = StringName(from: "set_remote_description")
        self._method_set_remote_description_852856452 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_remote_description_852856452_name._native_ptr(), 852856452)
        assert(WebRTCPeerConnection._method_set_remote_description_852856452 != nil)
        let _method_add_ice_candidate_3958950400_name = StringName(from: "add_ice_candidate")
        self._method_add_ice_candidate_3958950400 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_ice_candidate_3958950400_name._native_ptr(), 3958950400)
        assert(WebRTCPeerConnection._method_add_ice_candidate_3958950400 != nil)
        let _method_poll_166280745_name = StringName(from: "poll")
        self._method_poll_166280745 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_poll_166280745_name._native_ptr(), 166280745)
        assert(WebRTCPeerConnection._method_poll_166280745 != nil)
        let _method_close_3218959716_name = StringName(from: "close")
        self._method_close_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_close_3218959716_name._native_ptr(), 3218959716)
        assert(WebRTCPeerConnection._method_close_3218959716 != nil)
        let _method_get_connection_state_2275710506_name = StringName(from: "get_connection_state")
        self._method_get_connection_state_2275710506 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_connection_state_2275710506_name._native_ptr(), 2275710506)
        assert(WebRTCPeerConnection._method_get_connection_state_2275710506 != nil)
        let _method_get_gathering_state_4262591401_name = StringName(from: "get_gathering_state")
        self._method_get_gathering_state_4262591401 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_gathering_state_4262591401_name._native_ptr(), 4262591401)
        assert(WebRTCPeerConnection._method_get_gathering_state_4262591401 != nil)
        let _method_get_signaling_state_3342956226_name = StringName(from: "get_signaling_state")
        self._method_get_signaling_state_3342956226 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_signaling_state_3342956226_name._native_ptr(), 3342956226)
        assert(WebRTCPeerConnection._method_get_signaling_state_3342956226 != nil)
    }

    public func set_default_extension(extension_class: StringName)  {
        let extension_class_native = extension_class._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(extension_class_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_default_extension_3304788590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func initialize(configuration: Dictionary) -> Error {
        let configuration_native = configuration._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(configuration_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_initialize_2625064318,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
    }
    public func create_data_channel(label: String, options: Dictionary) -> WebRTCDataChannel {
        withUnsafePointer(to: label) { label_native in
        let options_native = options._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(label_native), .init(options_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_data_channel_3997447457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return WebRTCDataChannel(from: __resPtr.pointee)
        }
    }
    public func create_offer() -> Error {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_offer_166280745,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
    }
    public func set_local_description(`type`: String, sdp: String) -> Error {
        withUnsafePointer(to: sdp) { sdp_native in
        withUnsafePointer(to: `type`) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native), .init(sdp_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_local_description_852856452,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
        }
    }
    public func set_remote_description(`type`: String, sdp: String) -> Error {
        withUnsafePointer(to: sdp) { sdp_native in
        withUnsafePointer(to: `type`) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native), .init(sdp_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_remote_description_852856452,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
        }
    }
    public func add_ice_candidate(media: String, index: Int64, name: String) -> Error {
        withUnsafePointer(to: name) { name_native in
        withUnsafePointer(to: index) { index_native in
        withUnsafePointer(to: media) { media_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(media_native), .init(index_native), .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_ice_candidate_3958950400,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
        }
        }
    }
    public func poll() -> Error {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_poll_166280745,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
    }
    public func close()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_close_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_connection_state() -> WebRTCPeerConnection.ConnectionState {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_connection_state_2275710506,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return WebRTCPeerConnection.ConnectionState(from: __resPtr.pointee)
    }
    public func get_gathering_state() -> WebRTCPeerConnection.GatheringState {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_gathering_state_4262591401,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return WebRTCPeerConnection.GatheringState(from: __resPtr.pointee)
    }
    public func get_signaling_state() -> WebRTCPeerConnection.SignalingState {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_signaling_state_3342956226,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return WebRTCPeerConnection.SignalingState(from: __resPtr.pointee)
    }
}