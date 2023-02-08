import godot_native

fileprivate var __godot_name_WebRTCDataChannel: StringName! = nil

/// MISSING
/// 
/// MISSING
open class WebRTCDataChannel : PacketPeer {

    public enum WriteMode : Int32 {
        case WRITE_MODE_TEXT = 0
        case WRITE_MODE_BINARY = 1
    }
    public enum ChannelState : Int32 {
        case STATE_CONNECTING = 0
        case STATE_OPEN = 1
        case STATE_CLOSING = 2
        case STATE_CLOSED = 3
    }

    public override class var __godot_name: StringName { __godot_name_WebRTCDataChannel }

    static var _method_poll_166280745: GDExtensionMethodBindPtr! = nil
    static var _method_close_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_was_string_packet_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_write_mode_1999768052: GDExtensionMethodBindPtr! = nil
    static var _method_get_write_mode_2848495172: GDExtensionMethodBindPtr! = nil
    static var _method_get_ready_state_3501143017: GDExtensionMethodBindPtr! = nil
    static var _method_get_label_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_is_ordered_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_id_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_packet_life_time_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_retransmits_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_protocol_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_is_negotiated_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_buffered_amount_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_WebRTCDataChannel = StringName(from: "WebRTCDataChannel")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_poll_166280745_name = StringName(from: "poll")
        self._method_poll_166280745 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebRTCDataChannel._native_ptr(), _method_poll_166280745_name._native_ptr(), 166280745)
        assert(WebRTCDataChannel._method_poll_166280745 != nil)
        let _method_close_3218959716_name = StringName(from: "close")
        self._method_close_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebRTCDataChannel._native_ptr(), _method_close_3218959716_name._native_ptr(), 3218959716)
        assert(WebRTCDataChannel._method_close_3218959716 != nil)
        let _method_was_string_packet_36873697_name = StringName(from: "was_string_packet")
        self._method_was_string_packet_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebRTCDataChannel._native_ptr(), _method_was_string_packet_36873697_name._native_ptr(), 36873697)
        assert(WebRTCDataChannel._method_was_string_packet_36873697 != nil)
        let _method_set_write_mode_1999768052_name = StringName(from: "set_write_mode")
        self._method_set_write_mode_1999768052 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebRTCDataChannel._native_ptr(), _method_set_write_mode_1999768052_name._native_ptr(), 1999768052)
        assert(WebRTCDataChannel._method_set_write_mode_1999768052 != nil)
        let _method_get_write_mode_2848495172_name = StringName(from: "get_write_mode")
        self._method_get_write_mode_2848495172 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebRTCDataChannel._native_ptr(), _method_get_write_mode_2848495172_name._native_ptr(), 2848495172)
        assert(WebRTCDataChannel._method_get_write_mode_2848495172 != nil)
        let _method_get_ready_state_3501143017_name = StringName(from: "get_ready_state")
        self._method_get_ready_state_3501143017 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebRTCDataChannel._native_ptr(), _method_get_ready_state_3501143017_name._native_ptr(), 3501143017)
        assert(WebRTCDataChannel._method_get_ready_state_3501143017 != nil)
        let _method_get_label_201670096_name = StringName(from: "get_label")
        self._method_get_label_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebRTCDataChannel._native_ptr(), _method_get_label_201670096_name._native_ptr(), 201670096)
        assert(WebRTCDataChannel._method_get_label_201670096 != nil)
        let _method_is_ordered_36873697_name = StringName(from: "is_ordered")
        self._method_is_ordered_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebRTCDataChannel._native_ptr(), _method_is_ordered_36873697_name._native_ptr(), 36873697)
        assert(WebRTCDataChannel._method_is_ordered_36873697 != nil)
        let _method_get_id_3905245786_name = StringName(from: "get_id")
        self._method_get_id_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebRTCDataChannel._native_ptr(), _method_get_id_3905245786_name._native_ptr(), 3905245786)
        assert(WebRTCDataChannel._method_get_id_3905245786 != nil)
        let _method_get_max_packet_life_time_3905245786_name = StringName(from: "get_max_packet_life_time")
        self._method_get_max_packet_life_time_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebRTCDataChannel._native_ptr(), _method_get_max_packet_life_time_3905245786_name._native_ptr(), 3905245786)
        assert(WebRTCDataChannel._method_get_max_packet_life_time_3905245786 != nil)
        let _method_get_max_retransmits_3905245786_name = StringName(from: "get_max_retransmits")
        self._method_get_max_retransmits_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebRTCDataChannel._native_ptr(), _method_get_max_retransmits_3905245786_name._native_ptr(), 3905245786)
        assert(WebRTCDataChannel._method_get_max_retransmits_3905245786 != nil)
        let _method_get_protocol_201670096_name = StringName(from: "get_protocol")
        self._method_get_protocol_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebRTCDataChannel._native_ptr(), _method_get_protocol_201670096_name._native_ptr(), 201670096)
        assert(WebRTCDataChannel._method_get_protocol_201670096 != nil)
        let _method_is_negotiated_36873697_name = StringName(from: "is_negotiated")
        self._method_is_negotiated_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebRTCDataChannel._native_ptr(), _method_is_negotiated_36873697_name._native_ptr(), 36873697)
        assert(WebRTCDataChannel._method_is_negotiated_36873697 != nil)
        let _method_get_buffered_amount_3905245786_name = StringName(from: "get_buffered_amount")
        self._method_get_buffered_amount_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_WebRTCDataChannel._native_ptr(), _method_get_buffered_amount_3905245786_name._native_ptr(), 3905245786)
        assert(WebRTCDataChannel._method_get_buffered_amount_3905245786 != nil)
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
            return Error(godot: __resPtr.pointee)
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
    public func was_string_packet() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_was_string_packet_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_write_mode(write_mode: WebRTCDataChannel.WriteMode)  {
        withUnsafePointer(to: write_mode.rawValue) { write_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(write_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_write_mode_1999768052,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_write_mode() -> WebRTCDataChannel.WriteMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_write_mode_2848495172,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return WebRTCDataChannel.WriteMode(godot: __resPtr.pointee)
    }
    public func get_ready_state() -> WebRTCDataChannel.ChannelState {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ready_state_3501143017,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return WebRTCDataChannel.ChannelState(godot: __resPtr.pointee)
    }
    public func get_label() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_label_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func is_ordered() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_ordered_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_id() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_id_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_max_packet_life_time() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_max_packet_life_time_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_max_retransmits() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_max_retransmits_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_protocol() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_protocol_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func is_negotiated() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_negotiated_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_buffered_amount() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_buffered_amount_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
}