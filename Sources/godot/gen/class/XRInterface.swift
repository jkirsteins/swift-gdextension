import godot_native

fileprivate var __godot_name_XRInterface: StringName! = nil

/// Base class for an XR interface implementation.
/// 
/// This class needs to be implemented to make an AR or VR platform available to Godot and these should be implemented as C++ modules or GDExtension modules. Part of the interface is exposed to GDScript so you can detect, enable and configure an AR or VR platform.
///  
/// Interfaces should be written in such a way that simply enabling them will give us a working setup. You can query the available interfaces through [XRServer].
open class XRInterface : RefCounted {

    public enum Capabilities : Int32 {
        case XR_NONE = 0
        case XR_MONO = 1
        case XR_STEREO = 2
        case XR_QUAD = 4
        case XR_VR = 8
        case XR_AR = 16
        case XR_EXTERNAL = 32
    }
    public enum TrackingStatus : Int32 {
        case XR_NORMAL_TRACKING = 0
        case XR_EXCESSIVE_MOTION = 1
        case XR_INSUFFICIENT_FEATURES = 2
        case XR_UNKNOWN_TRACKING = 3
        case XR_NOT_TRACKING = 4
    }
    public enum PlayAreaMode : Int32 {
        case XR_PLAY_AREA_UNKNOWN = 0
        case XR_PLAY_AREA_3DOF = 1
        case XR_PLAY_AREA_SITTING = 2
        case XR_PLAY_AREA_ROOMSCALE = 3
        case XR_PLAY_AREA_STAGE = 4
    }
    public enum EnvironmentBlendMode : Int32 {
        case XR_ENV_BLEND_MODE_OPAQUE = 0
        case XR_ENV_BLEND_MODE_ADDITIVE = 1
        case XR_ENV_BLEND_MODE_ALPHA_BLEND = 2
    }

    public override class var __godot_name: StringName { __godot_name_XRInterface }

    static var _method_get_name_2002593661: StringName! = nil
    static var _method_get_capabilities_3905245786: StringName! = nil
    static var _method_is_primary_2240911060: StringName! = nil
    static var _method_set_primary_2586408642: StringName! = nil
    static var _method_is_initialized_36873697: StringName! = nil
    static var _method_initialize_2240911060: StringName! = nil
    static var _method_uninitialize_3218959716: StringName! = nil
    static var _method_get_tracking_status_167423259: StringName! = nil
    static var _method_get_render_target_size_1497962370: StringName! = nil
    static var _method_get_view_count_2455072627: StringName! = nil
    static var _method_trigger_haptic_pulse_3752640163: StringName! = nil
    static var _method_supports_play_area_mode_3429955281: StringName! = nil
    static var _method_get_play_area_mode_1615132885: StringName! = nil
    static var _method_set_play_area_mode_3429955281: StringName! = nil
    static var _method_get_play_area_497664490: StringName! = nil
    static var _method_get_anchor_detection_is_enabled_36873697: StringName! = nil
    static var _method_set_anchor_detection_is_enabled_2586408642: StringName! = nil
    static var _method_get_camera_feed_id_2455072627: StringName! = nil
    static var _method_is_passthrough_supported_2240911060: StringName! = nil
    static var _method_is_passthrough_enabled_2240911060: StringName! = nil
    static var _method_start_passthrough_2240911060: StringName! = nil
    static var _method_stop_passthrough_3218959716: StringName! = nil
    static var _method_get_transform_for_view_518934792: StringName! = nil
    static var _method_get_projection_for_view_3766090294: StringName! = nil
    static var _method_get_supported_environment_blend_modes_2915620761: StringName! = nil
    static var _method_set_environment_blend_mode_551152418: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_XRInterface == nil)
        __godot_name_XRInterface = StringName(from: "XRInterface")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_name_2002593661 = StringName(from: "get_name")
        assert(self._method_get_name_2002593661 != nil)
        self._method_get_capabilities_3905245786 = StringName(from: "get_capabilities")
        assert(self._method_get_capabilities_3905245786 != nil)
        self._method_is_primary_2240911060 = StringName(from: "is_primary")
        assert(self._method_is_primary_2240911060 != nil)
        self._method_set_primary_2586408642 = StringName(from: "set_primary")
        assert(self._method_set_primary_2586408642 != nil)
        self._method_is_initialized_36873697 = StringName(from: "is_initialized")
        assert(self._method_is_initialized_36873697 != nil)
        self._method_initialize_2240911060 = StringName(from: "initialize")
        assert(self._method_initialize_2240911060 != nil)
        self._method_uninitialize_3218959716 = StringName(from: "uninitialize")
        assert(self._method_uninitialize_3218959716 != nil)
        self._method_get_tracking_status_167423259 = StringName(from: "get_tracking_status")
        assert(self._method_get_tracking_status_167423259 != nil)
        self._method_get_render_target_size_1497962370 = StringName(from: "get_render_target_size")
        assert(self._method_get_render_target_size_1497962370 != nil)
        self._method_get_view_count_2455072627 = StringName(from: "get_view_count")
        assert(self._method_get_view_count_2455072627 != nil)
        self._method_trigger_haptic_pulse_3752640163 = StringName(from: "trigger_haptic_pulse")
        assert(self._method_trigger_haptic_pulse_3752640163 != nil)
        self._method_supports_play_area_mode_3429955281 = StringName(from: "supports_play_area_mode")
        assert(self._method_supports_play_area_mode_3429955281 != nil)
        self._method_get_play_area_mode_1615132885 = StringName(from: "get_play_area_mode")
        assert(self._method_get_play_area_mode_1615132885 != nil)
        self._method_set_play_area_mode_3429955281 = StringName(from: "set_play_area_mode")
        assert(self._method_set_play_area_mode_3429955281 != nil)
        self._method_get_play_area_497664490 = StringName(from: "get_play_area")
        assert(self._method_get_play_area_497664490 != nil)
        self._method_get_anchor_detection_is_enabled_36873697 = StringName(from: "get_anchor_detection_is_enabled")
        assert(self._method_get_anchor_detection_is_enabled_36873697 != nil)
        self._method_set_anchor_detection_is_enabled_2586408642 = StringName(from: "set_anchor_detection_is_enabled")
        assert(self._method_set_anchor_detection_is_enabled_2586408642 != nil)
        self._method_get_camera_feed_id_2455072627 = StringName(from: "get_camera_feed_id")
        assert(self._method_get_camera_feed_id_2455072627 != nil)
        self._method_is_passthrough_supported_2240911060 = StringName(from: "is_passthrough_supported")
        assert(self._method_is_passthrough_supported_2240911060 != nil)
        self._method_is_passthrough_enabled_2240911060 = StringName(from: "is_passthrough_enabled")
        assert(self._method_is_passthrough_enabled_2240911060 != nil)
        self._method_start_passthrough_2240911060 = StringName(from: "start_passthrough")
        assert(self._method_start_passthrough_2240911060 != nil)
        self._method_stop_passthrough_3218959716 = StringName(from: "stop_passthrough")
        assert(self._method_stop_passthrough_3218959716 != nil)
        self._method_get_transform_for_view_518934792 = StringName(from: "get_transform_for_view")
        assert(self._method_get_transform_for_view_518934792 != nil)
        self._method_get_projection_for_view_3766090294 = StringName(from: "get_projection_for_view")
        assert(self._method_get_projection_for_view_3766090294 != nil)
        self._method_get_supported_environment_blend_modes_2915620761 = StringName(from: "get_supported_environment_blend_modes")
        assert(self._method_get_supported_environment_blend_modes_2915620761 != nil)
        self._method_set_environment_blend_mode_551152418 = StringName(from: "set_environment_blend_mode")
        assert(self._method_set_environment_blend_mode_551152418 != nil)
    }

    public func get_name() -> StringName {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_name_2002593661._native_ptr(),
                    2002593661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
    }
    public func get_capabilities() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_capabilities_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func is_primary() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_primary_2240911060._native_ptr(),
                    2240911060)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_primary(primary: UInt8)  {
        withUnsafePointer(to: primary) { primary_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(primary_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_primary_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_initialized() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_initialized_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func initialize() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_initialize_2240911060._native_ptr(),
                    2240911060)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func uninitialize()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_uninitialize_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_tracking_status() -> XRInterface.TrackingStatus {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tracking_status_167423259._native_ptr(),
                    167423259)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return XRInterface.TrackingStatus(godot: __resPtr.pointee)
    }
    public func get_render_target_size() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_render_target_size_1497962370._native_ptr(),
                    1497962370)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func get_view_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_view_count_2455072627._native_ptr(),
                    2455072627)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func trigger_haptic_pulse(action_name: godot.String, tracker_name: StringName, frequency: Float64, amplitude: Float64, duration_sec: Float64, delay_sec: Float64)  {
        withUnsafePointer(to: delay_sec) { delay_sec_native in
        withUnsafePointer(to: duration_sec) { duration_sec_native in
        withUnsafePointer(to: amplitude) { amplitude_native in
        withUnsafePointer(to: frequency) { frequency_native in
        let tracker_name_native = tracker_name._native_ptr()
        let action_name_native = action_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(action_name_native), .init(tracker_name_native), .init(frequency_native), .init(amplitude_native), .init(duration_sec_native), .init(delay_sec_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_trigger_haptic_pulse_3752640163._native_ptr(),
                    3752640163)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
        }
    }
    public func supports_play_area_mode(mode: XRInterface.PlayAreaMode) -> UInt8 {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_supports_play_area_mode_3429955281._native_ptr(),
                    3429955281)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func get_play_area_mode() -> XRInterface.PlayAreaMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_play_area_mode_1615132885._native_ptr(),
                    1615132885)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return XRInterface.PlayAreaMode(godot: __resPtr.pointee)
    }
    public func set_play_area_mode(mode: XRInterface.PlayAreaMode) -> UInt8 {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_play_area_mode_3429955281._native_ptr(),
                    3429955281)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func get_play_area() -> PackedVector3Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_play_area_497664490._native_ptr(),
                    497664490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector3Array(godot: __resPtr.pointee)
    }
    public func get_anchor_detection_is_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_anchor_detection_is_enabled_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_anchor_detection_is_enabled(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_anchor_detection_is_enabled_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_camera_feed_id() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_camera_feed_id_2455072627._native_ptr(),
                    2455072627)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func is_passthrough_supported() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_passthrough_supported_2240911060._native_ptr(),
                    2240911060)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func is_passthrough_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_passthrough_enabled_2240911060._native_ptr(),
                    2240911060)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func start_passthrough() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_start_passthrough_2240911060._native_ptr(),
                    2240911060)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func stop_passthrough()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_stop_passthrough_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_transform_for_view(view: Int64, cam_transform: Transform3D) -> Transform3D {
        withUnsafePointer(to: view) { view_native in
        let cam_transform_native = cam_transform._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(view_native), .init(cam_transform_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_transform_for_view_518934792._native_ptr(),
                    518934792)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(godot: __resPtr.pointee)
        }
    }
    public func get_projection_for_view(view: Int64, aspect: Float64, near: Float64, far: Float64) -> Projection {
        withUnsafePointer(to: far) { far_native in
        withUnsafePointer(to: near) { near_native in
        withUnsafePointer(to: aspect) { aspect_native in
        withUnsafePointer(to: view) { view_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(view_native), .init(aspect_native), .init(near_native), .init(far_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_projection_for_view_3766090294._native_ptr(),
                    3766090294)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Projection(godot: __resPtr.pointee)
        }
        }
        }
        }
    }
    public func get_supported_environment_blend_modes() -> Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_supported_environment_blend_modes_2915620761._native_ptr(),
                    2915620761)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(godot: __resPtr.pointee)
    }
    public func set_environment_blend_mode(mode: XRInterface.EnvironmentBlendMode) -> UInt8 {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_environment_blend_mode_551152418._native_ptr(),
                    551152418)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
}