import godot_native

fileprivate var __godot_name_WebXRInterface: StringName! = nil

/// MISSING
/// 
/// MISSING
public class WebXRInterface : XRInterface {

    public enum TargetRayMode : Int32 {
        case TARGET_RAY_MODE_UNKNOWN = 0
        case TARGET_RAY_MODE_GAZE = 1
        case TARGET_RAY_MODE_TRACKED_POINTER = 2
        case TARGET_RAY_MODE_SCREEN = 3
    }

    public override class var __godot_name: StringName { __godot_name_WebXRInterface }

    static var _method_is_session_supported_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_set_session_mode_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_session_mode_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_required_features_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_required_features_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_optional_features_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_optional_features_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_reference_space_type_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_requested_reference_space_types_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_requested_reference_space_types_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_is_input_source_active_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_get_input_source_tracker_636011756: GDExtensionMethodBindPtr! = nil
    static var _method_get_input_source_target_ray_mode_2852387453: GDExtensionMethodBindPtr! = nil
    static var _method_get_visibility_state_201670096: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_WebXRInterface = StringName(from: "WebXRInterface")

        let _method_is_session_supported_83702148_name = StringName(from: "is_session_supported")
        self._method_is_session_supported_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_session_supported_83702148_name._native_ptr(), 83702148)
        assert(WebXRInterface._method_is_session_supported_83702148 != nil)
        let _method_set_session_mode_83702148_name = StringName(from: "set_session_mode")
        self._method_set_session_mode_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_session_mode_83702148_name._native_ptr(), 83702148)
        assert(WebXRInterface._method_set_session_mode_83702148 != nil)
        let _method_get_session_mode_201670096_name = StringName(from: "get_session_mode")
        self._method_get_session_mode_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_session_mode_201670096_name._native_ptr(), 201670096)
        assert(WebXRInterface._method_get_session_mode_201670096 != nil)
        let _method_set_required_features_83702148_name = StringName(from: "set_required_features")
        self._method_set_required_features_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_required_features_83702148_name._native_ptr(), 83702148)
        assert(WebXRInterface._method_set_required_features_83702148 != nil)
        let _method_get_required_features_201670096_name = StringName(from: "get_required_features")
        self._method_get_required_features_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_required_features_201670096_name._native_ptr(), 201670096)
        assert(WebXRInterface._method_get_required_features_201670096 != nil)
        let _method_set_optional_features_83702148_name = StringName(from: "set_optional_features")
        self._method_set_optional_features_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_optional_features_83702148_name._native_ptr(), 83702148)
        assert(WebXRInterface._method_set_optional_features_83702148 != nil)
        let _method_get_optional_features_201670096_name = StringName(from: "get_optional_features")
        self._method_get_optional_features_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_optional_features_201670096_name._native_ptr(), 201670096)
        assert(WebXRInterface._method_get_optional_features_201670096 != nil)
        let _method_get_reference_space_type_201670096_name = StringName(from: "get_reference_space_type")
        self._method_get_reference_space_type_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_reference_space_type_201670096_name._native_ptr(), 201670096)
        assert(WebXRInterface._method_get_reference_space_type_201670096 != nil)
        let _method_set_requested_reference_space_types_83702148_name = StringName(from: "set_requested_reference_space_types")
        self._method_set_requested_reference_space_types_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_requested_reference_space_types_83702148_name._native_ptr(), 83702148)
        assert(WebXRInterface._method_set_requested_reference_space_types_83702148 != nil)
        let _method_get_requested_reference_space_types_201670096_name = StringName(from: "get_requested_reference_space_types")
        self._method_get_requested_reference_space_types_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_requested_reference_space_types_201670096_name._native_ptr(), 201670096)
        assert(WebXRInterface._method_get_requested_reference_space_types_201670096 != nil)
        let _method_is_input_source_active_1116898809_name = StringName(from: "is_input_source_active")
        self._method_is_input_source_active_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_input_source_active_1116898809_name._native_ptr(), 1116898809)
        assert(WebXRInterface._method_is_input_source_active_1116898809 != nil)
        let _method_get_input_source_tracker_636011756_name = StringName(from: "get_input_source_tracker")
        self._method_get_input_source_tracker_636011756 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_input_source_tracker_636011756_name._native_ptr(), 636011756)
        assert(WebXRInterface._method_get_input_source_tracker_636011756 != nil)
        let _method_get_input_source_target_ray_mode_2852387453_name = StringName(from: "get_input_source_target_ray_mode")
        self._method_get_input_source_target_ray_mode_2852387453 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_input_source_target_ray_mode_2852387453_name._native_ptr(), 2852387453)
        assert(WebXRInterface._method_get_input_source_target_ray_mode_2852387453 != nil)
        let _method_get_visibility_state_201670096_name = StringName(from: "get_visibility_state")
        self._method_get_visibility_state_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_visibility_state_201670096_name._native_ptr(), 201670096)
        assert(WebXRInterface._method_get_visibility_state_201670096 != nil)
    }

    public func is_session_supported(session_mode: String)  {
        withUnsafePointer(to: session_mode) { session_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(session_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_session_supported_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_session_mode(session_mode: String)  {
        withUnsafePointer(to: session_mode) { session_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(session_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_session_mode_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_session_mode() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_session_mode_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_required_features(required_features: String)  {
        withUnsafePointer(to: required_features) { required_features_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(required_features_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_required_features_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_required_features() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_required_features_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_optional_features(optional_features: String)  {
        withUnsafePointer(to: optional_features) { optional_features_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(optional_features_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_optional_features_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_optional_features() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_optional_features_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func get_reference_space_type() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_reference_space_type_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_requested_reference_space_types(requested_reference_space_types: String)  {
        withUnsafePointer(to: requested_reference_space_types) { requested_reference_space_types_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(requested_reference_space_types_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_requested_reference_space_types_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_requested_reference_space_types() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_requested_reference_space_types_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func is_input_source_active(input_source_id: Int64) -> UInt8 {
        withUnsafePointer(to: input_source_id) { input_source_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(input_source_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_input_source_active_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func get_input_source_tracker(input_source_id: Int64) -> XRPositionalTracker {
        withUnsafePointer(to: input_source_id) { input_source_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(input_source_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_input_source_tracker_636011756,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return XRPositionalTracker(from: __resPtr.pointee)
        }
    }
    public func get_input_source_target_ray_mode(input_source_id: Int64) -> WebXRInterface.TargetRayMode {
        withUnsafePointer(to: input_source_id) { input_source_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(input_source_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_input_source_target_ray_mode_2852387453,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return WebXRInterface.TargetRayMode(from: __resPtr.pointee)
        }
    }
    public func get_visibility_state() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_visibility_state_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
}