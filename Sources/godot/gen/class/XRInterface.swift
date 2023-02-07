import godot_native

fileprivate var __godot_name_XRInterface: StringName! = nil

/// Base class for an XR interface implementation.
/// 
/// This class needs to be implemented to make an AR or VR platform available to Godot and these should be implemented as C++ modules or GDExtension modules. Part of the interface is exposed to GDScript so you can detect, enable and configure an AR or VR platform.
///  
/// Interfaces should be written in such a way that simply enabling them will give us a working setup. You can query the available interfaces through [XRServer].
public class XRInterface : RefCounted {

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

    public override class var __godot_name: StringName { __godot_name_XRInterface }

    static var _method_get_name_2002593661: GDExtensionMethodBindPtr! = nil
    static var _method_get_capabilities_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_is_primary_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_set_primary_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_initialized_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_initialize_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_uninitialize_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_tracking_status_167423259: GDExtensionMethodBindPtr! = nil
    static var _method_get_render_target_size_1497962370: GDExtensionMethodBindPtr! = nil
    static var _method_get_view_count_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_trigger_haptic_pulse_3752640163: GDExtensionMethodBindPtr! = nil
    static var _method_supports_play_area_mode_3429955281: GDExtensionMethodBindPtr! = nil
    static var _method_get_play_area_mode_1615132885: GDExtensionMethodBindPtr! = nil
    static var _method_set_play_area_mode_3429955281: GDExtensionMethodBindPtr! = nil
    static var _method_get_play_area_497664490: GDExtensionMethodBindPtr! = nil
    static var _method_get_anchor_detection_is_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_anchor_detection_is_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_camera_feed_id_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_is_passthrough_supported_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_is_passthrough_enabled_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_start_passthrough_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_stop_passthrough_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_transform_for_view_518934792: GDExtensionMethodBindPtr! = nil
    static var _method_get_projection_for_view_3766090294: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_XRInterface = StringName(from: "XRInterface")

        let _method_get_name_2002593661_name = StringName(from: "get_name")
        self._method_get_name_2002593661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_name_2002593661_name._native_ptr(), 2002593661)
        assert(XRInterface._method_get_name_2002593661 != nil)
        let _method_get_capabilities_3905245786_name = StringName(from: "get_capabilities")
        self._method_get_capabilities_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_capabilities_3905245786_name._native_ptr(), 3905245786)
        assert(XRInterface._method_get_capabilities_3905245786 != nil)
        let _method_is_primary_2240911060_name = StringName(from: "is_primary")
        self._method_is_primary_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_primary_2240911060_name._native_ptr(), 2240911060)
        assert(XRInterface._method_is_primary_2240911060 != nil)
        let _method_set_primary_2586408642_name = StringName(from: "set_primary")
        self._method_set_primary_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_primary_2586408642_name._native_ptr(), 2586408642)
        assert(XRInterface._method_set_primary_2586408642 != nil)
        let _method_is_initialized_36873697_name = StringName(from: "is_initialized")
        self._method_is_initialized_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_initialized_36873697_name._native_ptr(), 36873697)
        assert(XRInterface._method_is_initialized_36873697 != nil)
        let _method_initialize_2240911060_name = StringName(from: "initialize")
        self._method_initialize_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_initialize_2240911060_name._native_ptr(), 2240911060)
        assert(XRInterface._method_initialize_2240911060 != nil)
        let _method_uninitialize_3218959716_name = StringName(from: "uninitialize")
        self._method_uninitialize_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_uninitialize_3218959716_name._native_ptr(), 3218959716)
        assert(XRInterface._method_uninitialize_3218959716 != nil)
        let _method_get_tracking_status_167423259_name = StringName(from: "get_tracking_status")
        self._method_get_tracking_status_167423259 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tracking_status_167423259_name._native_ptr(), 167423259)
        assert(XRInterface._method_get_tracking_status_167423259 != nil)
        let _method_get_render_target_size_1497962370_name = StringName(from: "get_render_target_size")
        self._method_get_render_target_size_1497962370 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_render_target_size_1497962370_name._native_ptr(), 1497962370)
        assert(XRInterface._method_get_render_target_size_1497962370 != nil)
        let _method_get_view_count_2455072627_name = StringName(from: "get_view_count")
        self._method_get_view_count_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_view_count_2455072627_name._native_ptr(), 2455072627)
        assert(XRInterface._method_get_view_count_2455072627 != nil)
        let _method_trigger_haptic_pulse_3752640163_name = StringName(from: "trigger_haptic_pulse")
        self._method_trigger_haptic_pulse_3752640163 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_trigger_haptic_pulse_3752640163_name._native_ptr(), 3752640163)
        assert(XRInterface._method_trigger_haptic_pulse_3752640163 != nil)
        let _method_supports_play_area_mode_3429955281_name = StringName(from: "supports_play_area_mode")
        self._method_supports_play_area_mode_3429955281 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_supports_play_area_mode_3429955281_name._native_ptr(), 3429955281)
        assert(XRInterface._method_supports_play_area_mode_3429955281 != nil)
        let _method_get_play_area_mode_1615132885_name = StringName(from: "get_play_area_mode")
        self._method_get_play_area_mode_1615132885 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_play_area_mode_1615132885_name._native_ptr(), 1615132885)
        assert(XRInterface._method_get_play_area_mode_1615132885 != nil)
        let _method_set_play_area_mode_3429955281_name = StringName(from: "set_play_area_mode")
        self._method_set_play_area_mode_3429955281 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_play_area_mode_3429955281_name._native_ptr(), 3429955281)
        assert(XRInterface._method_set_play_area_mode_3429955281 != nil)
        let _method_get_play_area_497664490_name = StringName(from: "get_play_area")
        self._method_get_play_area_497664490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_play_area_497664490_name._native_ptr(), 497664490)
        assert(XRInterface._method_get_play_area_497664490 != nil)
        let _method_get_anchor_detection_is_enabled_36873697_name = StringName(from: "get_anchor_detection_is_enabled")
        self._method_get_anchor_detection_is_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_anchor_detection_is_enabled_36873697_name._native_ptr(), 36873697)
        assert(XRInterface._method_get_anchor_detection_is_enabled_36873697 != nil)
        let _method_set_anchor_detection_is_enabled_2586408642_name = StringName(from: "set_anchor_detection_is_enabled")
        self._method_set_anchor_detection_is_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_anchor_detection_is_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(XRInterface._method_set_anchor_detection_is_enabled_2586408642 != nil)
        let _method_get_camera_feed_id_2455072627_name = StringName(from: "get_camera_feed_id")
        self._method_get_camera_feed_id_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_camera_feed_id_2455072627_name._native_ptr(), 2455072627)
        assert(XRInterface._method_get_camera_feed_id_2455072627 != nil)
        let _method_is_passthrough_supported_2240911060_name = StringName(from: "is_passthrough_supported")
        self._method_is_passthrough_supported_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_passthrough_supported_2240911060_name._native_ptr(), 2240911060)
        assert(XRInterface._method_is_passthrough_supported_2240911060 != nil)
        let _method_is_passthrough_enabled_2240911060_name = StringName(from: "is_passthrough_enabled")
        self._method_is_passthrough_enabled_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_passthrough_enabled_2240911060_name._native_ptr(), 2240911060)
        assert(XRInterface._method_is_passthrough_enabled_2240911060 != nil)
        let _method_start_passthrough_2240911060_name = StringName(from: "start_passthrough")
        self._method_start_passthrough_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_start_passthrough_2240911060_name._native_ptr(), 2240911060)
        assert(XRInterface._method_start_passthrough_2240911060 != nil)
        let _method_stop_passthrough_3218959716_name = StringName(from: "stop_passthrough")
        self._method_stop_passthrough_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_stop_passthrough_3218959716_name._native_ptr(), 3218959716)
        assert(XRInterface._method_stop_passthrough_3218959716 != nil)
        let _method_get_transform_for_view_518934792_name = StringName(from: "get_transform_for_view")
        self._method_get_transform_for_view_518934792 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_transform_for_view_518934792_name._native_ptr(), 518934792)
        assert(XRInterface._method_get_transform_for_view_518934792 != nil)
        let _method_get_projection_for_view_3766090294_name = StringName(from: "get_projection_for_view")
        self._method_get_projection_for_view_3766090294 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_projection_for_view_3766090294_name._native_ptr(), 3766090294)
        assert(XRInterface._method_get_projection_for_view_3766090294 != nil)
    }

    public func get_name() -> StringName {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_name_2002593661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(from: __resPtr.pointee)
    }
    public func get_capabilities() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_capabilities_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func is_primary() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_primary_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_primary(primary: UInt8)  {
        withUnsafePointer(to: primary) { primary_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(primary_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_primary_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_initialized_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func initialize() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_initialize_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func uninitialize()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_uninitialize_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tracking_status_167423259,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return XRInterface.TrackingStatus(from: __resPtr.pointee)
    }
    public func get_render_target_size() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_render_target_size_1497962370,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func get_view_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_view_count_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func trigger_haptic_pulse(action_name: String, tracker_name: StringName, frequency: Float64, amplitude: Float64, duration_sec: Float64, delay_sec: Float64)  {
        withUnsafePointer(to: delay_sec) { delay_sec_native in
        withUnsafePointer(to: duration_sec) { duration_sec_native in
        withUnsafePointer(to: amplitude) { amplitude_native in
        withUnsafePointer(to: frequency) { frequency_native in
        withUnsafePointer(to: action_name) { action_name_native in
        let tracker_name_native = tracker_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(action_name_native), .init(tracker_name_native), .init(frequency_native), .init(amplitude_native), .init(duration_sec_native), .init(delay_sec_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_trigger_haptic_pulse_3752640163,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_supports_play_area_mode_3429955281,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func get_play_area_mode() -> XRInterface.PlayAreaMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_play_area_mode_1615132885,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return XRInterface.PlayAreaMode(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_play_area_mode_3429955281,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func get_play_area() -> PackedVector3Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_play_area_497664490,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector3Array(from: __resPtr.pointee)
    }
    public func get_anchor_detection_is_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_anchor_detection_is_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_anchor_detection_is_enabled(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_anchor_detection_is_enabled_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_camera_feed_id_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func is_passthrough_supported() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_passthrough_supported_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func is_passthrough_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_passthrough_enabled_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func start_passthrough() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_start_passthrough_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func stop_passthrough()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_stop_passthrough_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_transform_for_view_518934792,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_projection_for_view_3766090294,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Projection(from: __resPtr.pointee)
        }
        }
        }
        }
    }
}