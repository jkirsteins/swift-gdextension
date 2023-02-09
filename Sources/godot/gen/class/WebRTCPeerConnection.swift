import godot_native

fileprivate var __godot_name_WebRTCPeerConnection: StringName! = nil

/// MISSING
/// 
/// MISSING
open class WebRTCPeerConnection : RefCounted {

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

    static var _method_set_default_extension_3304788590: StringName! = nil
    static var _method_initialize_2625064318: StringName! = nil
    static var _method_create_data_channel_3997447457: StringName! = nil
    static var _method_create_offer_166280745: StringName! = nil
    static var _method_set_local_description_852856452: StringName! = nil
    static var _method_set_remote_description_852856452: StringName! = nil
    static var _method_add_ice_candidate_3958950400: StringName! = nil
    static var _method_poll_166280745: StringName! = nil
    static var _method_close_3218959716: StringName! = nil
    static var _method_get_connection_state_2275710506: StringName! = nil
    static var _method_get_gathering_state_4262591401: StringName! = nil
    static var _method_get_signaling_state_3342956226: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_WebRTCPeerConnection == nil)
        __godot_name_WebRTCPeerConnection = StringName(from: "WebRTCPeerConnection")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_default_extension_3304788590 = StringName(from: "set_default_extension")
        assert(self._method_set_default_extension_3304788590 != nil)
        self._method_initialize_2625064318 = StringName(from: "initialize")
        assert(self._method_initialize_2625064318 != nil)
        self._method_create_data_channel_3997447457 = StringName(from: "create_data_channel")
        assert(self._method_create_data_channel_3997447457 != nil)
        self._method_create_offer_166280745 = StringName(from: "create_offer")
        assert(self._method_create_offer_166280745 != nil)
        self._method_set_local_description_852856452 = StringName(from: "set_local_description")
        assert(self._method_set_local_description_852856452 != nil)
        self._method_set_remote_description_852856452 = StringName(from: "set_remote_description")
        assert(self._method_set_remote_description_852856452 != nil)
        self._method_add_ice_candidate_3958950400 = StringName(from: "add_ice_candidate")
        assert(self._method_add_ice_candidate_3958950400 != nil)
        self._method_poll_166280745 = StringName(from: "poll")
        assert(self._method_poll_166280745 != nil)
        self._method_close_3218959716 = StringName(from: "close")
        assert(self._method_close_3218959716 != nil)
        self._method_get_connection_state_2275710506 = StringName(from: "get_connection_state")
        assert(self._method_get_connection_state_2275710506 != nil)
        self._method_get_gathering_state_4262591401 = StringName(from: "get_gathering_state")
        assert(self._method_get_gathering_state_4262591401 != nil)
        self._method_get_signaling_state_3342956226 = StringName(from: "get_signaling_state")
        assert(self._method_get_signaling_state_3342956226 != nil)
    }

    public func set_default_extension(extension_class: StringName)  {
        let extension_class_native = extension_class._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(extension_class_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_default_extension_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_initialize_2625064318._native_ptr(),
                    2625064318)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func create_data_channel(label: godot.String, options: Dictionary) -> WebRTCDataChannel {
        let options_native = options._native_ptr()
        let label_native = label._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(label_native), .init(options_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_data_channel_3997447457._native_ptr(),
                    3997447457)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return WebRTCDataChannel(godot: __resPtr.pointee)
    }
    public func create_offer() -> Error {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_offer_166280745._native_ptr(),
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
    public func set_local_description(`type`: godot.String, sdp: godot.String) -> Error {
        let sdp_native = sdp._native_ptr()
        let type_native = `type`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native), .init(sdp_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_local_description_852856452._native_ptr(),
                    852856452)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func set_remote_description(`type`: godot.String, sdp: godot.String) -> Error {
        let sdp_native = sdp._native_ptr()
        let type_native = `type`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native), .init(sdp_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_remote_description_852856452._native_ptr(),
                    852856452)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func add_ice_candidate(media: godot.String, index: Int64, name: godot.String) -> Error {
        withUnsafePointer(to: index) { index_native in
        let name_native = name._native_ptr()
        let media_native = media._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(media_native), .init(index_native), .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_ice_candidate_3958950400._native_ptr(),
                    3958950400)
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
    public func poll() -> Error {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_poll_166280745._native_ptr(),
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
    public func close()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_close_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_connection_state_2275710506._native_ptr(),
                    2275710506)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return WebRTCPeerConnection.ConnectionState(godot: __resPtr.pointee)
    }
    public func get_gathering_state() -> WebRTCPeerConnection.GatheringState {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_gathering_state_4262591401._native_ptr(),
                    4262591401)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return WebRTCPeerConnection.GatheringState(godot: __resPtr.pointee)
    }
    public func get_signaling_state() -> WebRTCPeerConnection.SignalingState {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_signaling_state_3342956226._native_ptr(),
                    3342956226)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return WebRTCPeerConnection.SignalingState(godot: __resPtr.pointee)
    }
}